contract main {




// =====================  Runtime code  =====================


address coldAddress;
address hotAddress;

function cold() {
    return coldAddress
}

function hot() {
    return hotAddress
}

function _fallback() payable {
    call coldAddress with:
       value 9 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call hotAddress with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    emit 0xed0d2b85: msg.sender, coldAddress, msg.value
}

function sub_ce7be2d6(?) {
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args coldAddress, 9 * arg2 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args hotAddress, arg2 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa4a78035: msg.sender, coldAddress, address(arg1), arg2
}



}
