contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function setSpender(address arg1) {
    if msg.sender == stor0:
        stor1 = arg1
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    if stor1 != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
