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

function retrieveTokens(address arg1, address arg2) {
    require msg.sender == tokenAddress
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
