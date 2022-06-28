contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address tokenAddress; offset 8
address beneficiaryAddress;
uint256 unlockedAt;

function beneficiary() {
    return beneficiaryAddress
}

function isTimeVault() {
    return bool(stor0)
}

function unlockedAt() {
    return unlockedAt
}

function token() {
    return tokenAddress
}

function _fallback() {
    revert
}

function getTokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function unlock() {
    require block.timestamp > unlockedAt
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Unlocked()
}



}
