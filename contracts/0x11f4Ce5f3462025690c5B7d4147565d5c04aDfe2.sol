contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor4;
address stor6;

function _fallback() payable {
    revert
}

function refund() {
    require msg.sender == stor0
    require ext_code.size(stor6)
    call stor6.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw() {
    require msg.sender == stor0
    require ext_code.size(stor6)
    call stor6.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
