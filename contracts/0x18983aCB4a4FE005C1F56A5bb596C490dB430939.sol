contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x725803315519de78d232265a8f1040f054e70b98
    require not msg.value
    return code.data[66 len 373]
}



// =====================  Runtime code  =====================


address tokenAddress;

function token() {
    return tokenAddress
}

function _fallback() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require not ext_call.return_data[0]
}



}
