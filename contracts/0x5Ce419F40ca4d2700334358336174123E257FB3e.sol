contract main {




// =====================  Runtime code  =====================


function sub_188aafaf(?) {
    # nil
}

function sub_dc18f9f8(?) {
    revert
}

function _fallback() payable {
    revert
}

function sub_b733d236(?) {
    require ext_code.size(arg1)
    call arg1.0x747dff42 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    return ext_call.return_data[96]
}

function sub_defe26d4(?) {
    require ext_code.size(arg1)
    call arg1.0x747dff42 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    return ext_call.return_data[236 len 20]
}

function sub_e2436cfc(?) {
    require ext_code.size(arg1)
    call arg1.0x747dff42 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    require arg2 == ext_call.return_data[236 len 20]
    require block.timestamp < ext_call.return_data[96]
    # nil
}

function sub_ea034612(?) {
    require ext_code.size(arg1)
    call arg1.0x747dff42 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 448
        require arg2 == ext_call.return_data[236 len 20]
        require block.timestamp >= ext_call.return_data[96]
        revert
}



}
