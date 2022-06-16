contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;

function beneficiary() {
    return beneficiaryAddress
}

function releaseTime() {
    return releaseTime
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function release() {
    require block.timestamp >= releaseTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
