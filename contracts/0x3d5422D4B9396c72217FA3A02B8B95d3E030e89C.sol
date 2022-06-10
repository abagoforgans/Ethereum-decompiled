contract main {




// =====================  Runtime code  =====================


address trueUSDAddress;

function trueUSD() {
    return trueUSDAddress
}

function _fallback() payable {
    revert
}

function sponsorGas() {
    require ext_code.size(trueUSDAddress)
    call trueUSDAddress.0x23f2cbb0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
