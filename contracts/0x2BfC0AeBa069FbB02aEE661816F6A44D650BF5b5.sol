contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_d4968df2(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    call stor0.0xd4968df2 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
