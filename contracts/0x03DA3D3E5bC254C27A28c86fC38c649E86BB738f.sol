contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[692 len 20]
    return code.data[75 len 605]
}



// =====================  Runtime code  =====================


address settingsAddress;

function settings() {
    return settingsAddress
}

function initialize(address arg1) {
  stop
}

function _fallback() payable {
    if not calldata.size:
        emit Deposit(msg.sender, msg.value);
    require ext_code.size(settingsAddress)
    call settingsAddress.0x206bd362 with:
         gas gas_remaining - 50 wei
        args call.func_hash
    require ext_call.success
    require ext_code.size(settingsAddress)
    call settingsAddress.target() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return delegate.return_data[0 len ext_call.return_data[0]]
}



}
