contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    require ext_code.size(stor2)
    call stor2.buy(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getBalance(address arg1) {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferTokens(address arg1) {
    if stor0 != msg.sender:
        revert with 0, 'Access Denied!'
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
