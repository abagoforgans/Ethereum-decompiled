contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(0x7598c3543ef4f27f09c98aeb3753506a0290a0fc)
    call 0x7598c3543ef4f27f09c98aeb3753506a0290a0fc.0x1d8c61c0 with:
         gas gas_remaining - 710 wei
        args 0x72a38b32532cb0191caab895997508df23e880da
    require ext_call.success
    return code.data[263 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
