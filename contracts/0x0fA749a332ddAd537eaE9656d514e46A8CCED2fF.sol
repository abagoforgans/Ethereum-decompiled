contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
