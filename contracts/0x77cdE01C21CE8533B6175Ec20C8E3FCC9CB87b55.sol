contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;

function beneficiary() payable {
    return beneficiaryAddress
}

function releaseTime() payable {
    return releaseTime
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function release() payable {
    require block.timestamp >= releaseTime
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
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
