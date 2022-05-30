contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address tokenContractAddress;
address spenderAddress;
address vaultAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address ambassadorAddress;
uint256 totalCollected;
address tokenPriceProviderAddress;
array of uint256 country;

function tokenPriceProvider() {
    return tokenPriceProviderAddress
}

function vaultAddress() {
    return vaultAddress
}

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function spenderAddress() {
    return spenderAddress
}

function ambassadorAddress() {
    return ambassadorAddress
}

function newOwner() {
    return newOwner
}

function country() {
    return country[0 len country.length]
}

function fundingEnabled() {
    return bool(uint8(stor5.field_160))
}

function totalCollected() {
    return totalCollected
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setVaultAddress(address arg1) {
    require msg.sender == owner
    require arg1
    vaultAddress = arg1
}

function setSpenderAddress(address arg1) {
    require msg.sender == owner
    require arg1
    spenderAddress = arg1
}

function setAmbassadorAddress(address arg1) {
    require msg.sender == owner
    require arg1
    ambassadorAddress = arg1
}

function setFundingEnabled(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function updateTokenPriceProvider(address arg1) {
    require msg.sender == owner
    require arg1
    tokenPriceProviderAddress = arg1
    require ext_code.size(arg1)
    call arg1.tokenPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 10^9
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function _fallback() payable {
    require uint8(stor5.field_160)
    require ambassadorAddress
    require ext_code.size(tokenPriceProviderAddress)
    call tokenPriceProviderAddress.tokenPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 10^9
    require ext_call.return_data[0] <= msg.value
    totalCollected += msg.value
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args spenderAddress, msg.sender, msg.value * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call ambassadorAddress with:
       value 20 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call vaultAddress with:
       value msg.value - (20 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
}



}
