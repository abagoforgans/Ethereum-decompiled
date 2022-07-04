contract main {




// =====================  Runtime code  =====================


address tokenAddress;

function tokenAddress() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
