contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function snipe() {
    require ext_code.size(stor0)
    call stor0.0x624ae5c0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
