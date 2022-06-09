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
uint8 stor12;
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
    return bool(stor12)
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

function setIndividualMaxCap(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    individualMaxCap = arg1
    individualMaxCapTokens = arg1 * conversionRate
    emit IndividualMaxCapTokensChanged((arg1 * conversionRate));
}

function getRefund() {
    if not stor12:
        revert with 0, 'The fundraiser must be finalized'
    if totalRaised >= softCap:
        revert with 0, 'Soft cap has been reached'
    require ext_code.size(refundSafeAddress)
    call refundSafeAddress.0xfa89401a with:
         gas gas_remaining wei
        args msg.sender
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

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    if not arg1:
        revert with 0, 'The beneficiary is not set'
    beneficiaryAddress = arg1
    require ext_code.size(refundSafeAddress)
    call refundSafeAddress.0x1c31f710 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalize() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this functin'
    if stor12:
        revert with 0, 'Fundraiser is already finalized'
    if block.timestamp < endTime:
        if totalRaised < hardCap:
            revert with 0, 'Fundraiser has not ended'
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
        call refundSafeAddress.0x43d726d6 with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7e5cd5c1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor12 = 1
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
