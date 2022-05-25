contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;

function wallet() {
    return walletAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenFallback(address arg1, uint256 arg2) {
    require msg.sender == tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args walletAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
