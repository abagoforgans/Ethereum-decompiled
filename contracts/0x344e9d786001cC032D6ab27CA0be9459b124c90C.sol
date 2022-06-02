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
uint8 isFinalized;
uint256 softCap;
address refundSafeAddress;
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

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function gasPriceLimit() {
    return gasPriceLimit
}

function refundSafe() {
    return refundSafeAddress
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

function softCapReached() {
    return totalRaised >= softCap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransfer(owner, newOwner);
    owner = newOwner
}

function hasEnded() {
    if block.timestamp >= endTime:
        return block.timestamp >= endTime
    return totalRaised >= hardCap
}

function changeGasPriceLimit(uint256 arg1) {
    require msg.sender == owner
    gasPriceLimit = arg1
    emit GasPriceLimitChanged(arg1);
}

function setIndividualMinCap(uint256 arg1) {
    require msg.sender == owner
    individualMinCap = arg1
    emit IndividualMinCapChanged(arg1);
}

function setIndividualMaxCap(uint256 arg1) {
    require msg.sender == owner
    individualMaxCap = arg1
    individualMaxCapTokens = arg1 * conversionRate
    emit IndividualMaxCapTokensChanged((arg1 * conversionRate));
}

function setConversionRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    conversionRate = arg1
    emit ConversionRateChanged(arg1);
    if individualMaxCap:
        individualMaxCapTokens = arg1 * individualMaxCap
        emit IndividualMaxCapTokensChanged((arg1 * individualMaxCap));
}

function getRefund() {
    require isFinalized
    require totalRaised < softCap
    require ext_code.size(refundSafeAddress)
    call refundSafeAddress.refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBeneficiary(address arg1) {
    require msg.sender == owner
    require arg1
    beneficiaryAddress = arg1
    require ext_code.size(refundSafeAddress)
    call refundSafeAddress.0x1c31f710 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    if block.timestamp < endTime:
        require totalRaised >= hardCap
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(refundSafeAddress)
    if totalRaised < softCap:
        call refundSafeAddress.allowRefunds() with:
             gas gas_remaining wei
    else:
        call refundSafeAddress.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    isFinalized = 1
}

function _fallback() payable {
    if gasPriceLimit:
        require block.gasprice <= gasPriceLimit
    require msg.value
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require msg.value >= individualMinCap
    require totalRaised < hardCap
    if msg.value:
        require msg.value
        require conversionRate * msg.value / msg.value == conversionRate
    require conversionRate * msg.value > 0
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
        require (conversionRate * msg.value) + ext_call.return_data[0] <= individualMaxCapTokens
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, conversionRate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(refundSafeAddress)
    call refundSafeAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundsReceived(msg.value, conversionRate * msg.value, msg.sender);
}



}
