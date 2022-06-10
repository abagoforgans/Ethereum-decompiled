contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    if arg3 > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
