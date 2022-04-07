contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[316 len 32]
    return code.data[65 len 251]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    require ext_code.size(0x1a4b2b1b78a98001de4a1698392ee2dc61077750)
    call 0x1a4b2b1b78a98001de4a1698392ee2dc61077750.0x33a88266 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
