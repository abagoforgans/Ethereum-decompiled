contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 1368]
}



// =====================  Runtime code  =====================


address parentAddress;

function parentAddress() {
    return parentAddress
}

function flush() {
    call parentAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function _fallback() payable {
    call parentAddress with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining - 34710 wei
        args call.data[4 len calldata.size - 4]
    require ext_call.success
    emit ForwarderDeposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function flushTokens(address arg1) {
    require msg.sender == parentAddress
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args parentAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit TokensFlushed(address(arg1), ext_call.return_data[0]);
}



}
