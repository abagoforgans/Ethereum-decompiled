contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address beneficiaryAddress;
uint256 conversionRate;
uint256 totalRaised;
uint256 individualMinCap;
uint256 individualMaxCap;
uint256 individualMaxCapTokens;
uint256 hardCap;
uint256 gasPriceLimit;
address tokenSafeAddress;

function tokenSafe() {
    return tokenSafeAddress
}

function individualMaxCapTokens() {
    return individualMaxCapTokens
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function startTime() {
    return startTime
}

function conversionRate() {
    return conversionRate
}

function owner() {
    return owner
}

function gasPriceLimit() {
    return gasPriceLimit
}

function totalRaised() {
    return totalRaised
}

function individualMinCap() {
    return individualMinCap
}

function newOwner() {
    return newOwner
}

function getConversionRate() {
    return conversionRate
}

function individualMaxCap() {
    return individualMaxCap
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp >= endTime:
        return block.timestamp >= endTime
    return totalRaised >= hardCap
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the newOwner can accept ownership'
    emit OwnershipTransfer(owner, newOwner);
    owner = newOwner
}

function changeGasPriceLimit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    gasPriceLimit = arg1
    emit GasPriceLimitChanged(arg1);
}

function setIndividualMinCap(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    individualMinCap = arg1
    emit IndividualMinCapChanged(arg1);
}

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    if not arg1:
        revert with 0, 'The beneficiary is not set'
    beneficiaryAddress = arg1
}

function setIndividualMaxCap(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    individualMaxCap = arg1
    individualMaxCapTokens = arg1 * conversionRate
    emit IndividualMaxCapTokensChanged((arg1 * conversionRate));
}

function disableMinting() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7e5cd5c1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setConversionRate(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    if arg1 <= 0:
        revert with 0, 'Conversion rate is not set'
    conversionRate = arg1
    emit ConversionRateChanged(arg1);
    if individualMaxCap:
        individualMaxCapTokens = arg1 * individualMaxCap
        emit IndividualMaxCapTokensChanged((arg1 * individualMaxCap));
}

function _fallback() payable {
    if gasPriceLimit:
        if block.gasprice > gasPriceLimit:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction exceeds the gas price limit'
    if not msg.value:
        revert with 0, 'Transaction value is zero'
    if block.timestamp < startTime:
        revert with 0, 'The fundraiser is not active'
    if block.timestamp >= endTime:
        revert with 0, 'The fundraiser is not active'
    if msg.value < individualMinCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The transaction value does not pass the minimum contribution cap'
    if totalRaised >= hardCap:
        revert with 0, 'Hard cap has been exceeded'
    if msg.value:
        require msg.value
        require conversionRate * msg.value / msg.value == conversionRate
    if conversionRate * msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction results in zero tokens'
    require msg.value + totalRaised >= totalRaised
    totalRaised += msg.value
    require ext_code.size(tokenAddress)
    if individualMaxCapTokens:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (conversionRate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
        if (conversionRate * msg.value) + ext_call.return_data[0] > individualMaxCapTokens:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction exceeds the individual maximum cap'
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, conversionRate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundsReceived(msg.value, conversionRate * msg.value, msg.sender);
}



}
