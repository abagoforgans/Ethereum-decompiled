contract main {




// =====================  Runtime code  =====================


address sub_e60ee967Address;

function sub_e60ee967(?) {
    return sub_e60ee967Address
}

function _fallback() payable {
    revert
}

function sub_1b187efb(?) {
    require calldata.size - 4 >= 32
    sub_e60ee967Address = arg1
}

function proxyPayment(address arg1) payable {
    require calldata.size - 4 >= 32
    return 1
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return 1
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return 1
}

function flush() {
    emit 0xda267690: eth.balance(this.address)
    call sub_e60ee967Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flushTokens(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args sub_e60ee967Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x19edbdde: sub_e60ee967Address, ext_call.return_data[0]
}



}
