contract main {




// =====================  Runtime code  =====================


address notaryAddress;

function notary() {
    return notaryAddress
}

function _fallback() payable {
    revert
}

function notaryFee() {
    require ext_code.size(notaryAddress)
    call notaryAddress.0xc9d3a885 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (2 * ext_call.return_data[0])
}

function notarizeTwo(bytes arg1, bytes arg2) payable {
    require ext_code.size(notaryAddress)
    call notaryAddress.0xfb1ace34 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(notaryAddress)
    call notaryAddress.0xfb1ace34 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
