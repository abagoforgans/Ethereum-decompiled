contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;
address owner;

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
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

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeBeneficiary(address arg1) {
    require msg.sender == owner
    emit BeneficiaryChanged(beneficiaryAddress, arg1);
    beneficiaryAddress = arg1
}

function release() {
    require beneficiaryAddress
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
