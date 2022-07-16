contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_cb906993(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x60b5c66a with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.id() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
