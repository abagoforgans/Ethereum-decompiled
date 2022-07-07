contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_9a7c09e6(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (10000 == ext_call.return_data[0])
}



}
