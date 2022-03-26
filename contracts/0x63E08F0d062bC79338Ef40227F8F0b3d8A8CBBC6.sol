contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x6f47980674550d8c8240e6eaf3b594f562adc7a9
    return code.data[56 len 808]
}



// =====================  Runtime code  =====================


address sub_c9828ae0Address;

function sub_c9828ae0(?) {
    return sub_c9828ae0Address
}

function _fallback() payable {
    revert 
}

function totalSupply() {
    require ext_code.size(sub_c9828ae0Address)
    call sub_c9828ae0Address.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function buyPriceEth() {
    require ext_code.size(sub_c9828ae0Address)
    call sub_c9828ae0Address.0x5639bb3c with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sellPriceEth() {
    require ext_code.size(sub_c9828ae0Address)
    call sub_c9828ae0Address.sellPriceEth() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function minBalanceForAccounts() {
    require ext_code.size(sub_c9828ae0Address)
    call sub_c9828ae0Address.0x47f1d8d7 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(sub_c9828ae0Address)
    call sub_c9828ae0Address.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}



}
