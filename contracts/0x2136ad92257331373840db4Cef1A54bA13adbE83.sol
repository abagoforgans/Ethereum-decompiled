contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d1aa620f(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
         gas gas_remaining wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
