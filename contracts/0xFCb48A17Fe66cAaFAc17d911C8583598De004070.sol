contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_dd0298b6(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x2fdd26d0 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor0)
    staticcall stor0.0xe3e2abfc with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] <= 1
    require ext_call.return_data[0] <= 1
    return ext_call.return_data[0] << 248, ext_call.return_data[32], ext_call.return_data[0] << 248, ext_call.return_data[32]
}



}
