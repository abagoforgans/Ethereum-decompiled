contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xf433089366899d83a9f26a773d59ec7ecf30355e
    require not msg.value
    return code.data[66 len 438]
}



// =====================  Runtime code  =====================


address tokenAddress;

function token() {
    return tokenAddress
}

function balance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args 0xa9cb5902a29c32ed82294d88cccd0410378f878b
    require ext_call.success
    require 6658888600 * 10^6 == ext_call.return_data[0]
}

function _fallback() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args 0xa9cb5902a29c32ed82294d88cccd0410378f878b
    require ext_call.success
    require 6658888600 * 10^6 == ext_call.return_data[0]
}



}
