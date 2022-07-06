contract main {




// =====================  Runtime code  =====================


address destinationAddress;
array of uint256 sub_3c8410a2;

function sub_3c8410a2(?) {
    return sub_3c8410a2[0 len sub_3c8410a2.length]
}

function destinationAddress() {
    return destinationAddress
}

function _fallback() payable {
    emit LogForwarded(msg.value, msg.sender);
    call destinationAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flush() {
    emit LogFlushed(eth.balance(this.address), msg.sender);
    call destinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flushTokens(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args destinationAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
