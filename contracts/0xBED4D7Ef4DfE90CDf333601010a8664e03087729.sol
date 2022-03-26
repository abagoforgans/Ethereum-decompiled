contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x6f47980674550d8c8240e6eaf3b594f562adc7a9
    return code.data[55 len 223]
}



// =====================  Runtime code  =====================


address exchangeTokenAddress;

function exchangeToken() {
    return exchangeTokenAddress
}

function _fallback() payable {
    revert 
}

function balanceOf(address arg1) {
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}



}
