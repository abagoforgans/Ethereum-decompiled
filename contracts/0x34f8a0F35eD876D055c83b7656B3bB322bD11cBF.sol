contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[941 len 20]
    return code.data[121 len 808]
}



// =====================  Runtime code  =====================


address honeypotAddress;

function honeypot() {
    return honeypotAddress
}

function kill() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if eth.balance(honeypotAddress) >= msg.value:
        require ext_code.size(honeypotAddress)
        call honeypotAddress.0x6d4ce63c with:
             gas gas_remaining - 50 wei
        require ext_call.success
}

function collect() payable {
    require ext_code.size(honeypotAddress)
    call honeypotAddress.0x549262ba with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    require ext_code.size(honeypotAddress)
    call honeypotAddress.0x6d4ce63c with:
         gas gas_remaining - 50 wei
    require ext_call.success
}



}
