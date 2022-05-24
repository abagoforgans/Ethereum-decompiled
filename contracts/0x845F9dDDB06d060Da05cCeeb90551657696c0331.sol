contract main {




// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function _fallback() payable {
    call destinationAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x931986ff: block.timestamp, msg.value, msg.sender
}

function flush() {
    call destinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogFlushed(eth.balance(this.address), msg.sender);
}



}
