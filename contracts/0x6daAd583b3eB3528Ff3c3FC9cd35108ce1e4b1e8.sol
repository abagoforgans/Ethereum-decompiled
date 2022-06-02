contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 325]
}



// =====================  Runtime code  =====================


address parentAddress;

function parentAddress() {
    return parentAddress
}

function _fallback() payable {
    call parentAddress with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require ext_call.success
    emit 0xf8089653: msg.value
}



}
