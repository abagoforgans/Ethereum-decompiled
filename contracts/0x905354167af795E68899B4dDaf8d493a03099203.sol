contract main {




// =====================  Runtime code  =====================


address dAddress;

function d() {
    return dAddress
}

function _fallback() payable {
    dAddress = 0x3239c1289c7e8b67824b90cf0ecc27d8e2459d0a
    call 0x3239c1289c7e8b67824b90cf0ecc27d8e2459d0a with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
