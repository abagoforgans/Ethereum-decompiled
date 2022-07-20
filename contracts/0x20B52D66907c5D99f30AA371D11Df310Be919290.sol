contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function price() {
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a9f1e53173de33bec727ef76afa84956ae1b25)
    call 0x66a9f1e53173de33bec727ef76afa84956ae1b25.0xbb17fa9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0]
    return (ext_call.return_data[0] / 2 * ext_call.return_data[0])
}

function priceOf(uint256 arg1) {
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a9f1e53173de33bec727ef76afa84956ae1b25)
    call 0x66a9f1e53173de33bec727ef76afa84956ae1b25.0xbb17fa9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0]
    return (ext_call.return_data[0] * arg1 / 2 * ext_call.return_data[0])
}



}
