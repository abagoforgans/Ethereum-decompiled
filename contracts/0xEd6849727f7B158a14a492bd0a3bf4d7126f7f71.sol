contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const getConversionRateFactor = 100


address owner;
address newOwner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address beneficiaryAddress;
uint256 conversionRate;
uint256 totalRaised;
uint256 presaleSupply;
uint256 presaleMaxSupply;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint256 presaleConversionRate;
uint256 individualMinCap;
uint256 individualMaxCap;
uint256 individualMaxCapTokens;
uint256 gasPriceLimit;
address tokenSafeAddress;

function presaleMaxSupply() {
    return presaleMaxSupply
}

function tokenSafe() {
    return tokenSafeAddress
}

function individualMaxCapTokens() {
    return individualMaxCapTokens
}

function presaleEndTime() {
    return presaleEndTime
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function presaleConversionRate() {
    return presaleConversionRate
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

function presaleStartTime() {
    return presaleStartTime
}

function presaleSupply() {
    return presaleSupply
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

function individualMaxCap() {
    return individualMaxCap
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return block.timestamp >= endTime
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

function getConversionRate() {
    if block.timestamp >= presaleEndTime:
        if not conversionRate:
            if block.timestamp < 1555049040:
                return (100 * conversionRate)
            if block.timestamp >= 1555049100:
                return (100 * conversionRate)
            if not 100 * conversionRate:
                return (10500 * conversionRate / 100)
            if 100 * conversionRate:
                if 10500 * conversionRate / 100 * conversionRate == 105:
                    return (10500 * conversionRate / 100)
        else:
            if conversionRate:
                if 100 * conversionRate / conversionRate == 100:
                    if block.timestamp < 1555049040:
                        return (100 * conversionRate)
                    if block.timestamp >= 1555049100:
                        return (100 * conversionRate)
                    if not 100 * conversionRate:
                        return (10500 * conversionRate / 100)
                    if 100 * conversionRate:
                        if 10500 * conversionRate / 100 * conversionRate == 105:
                            return (10500 * conversionRate / 100)
    else:
        if block.timestamp < presaleStartTime:
            if not conversionRate:
                if block.timestamp < 1555049040:
                    return (100 * conversionRate)
                if block.timestamp >= 1555049100:
                    return (100 * conversionRate)
                if not 100 * conversionRate:
                    return (10500 * conversionRate / 100)
                if 100 * conversionRate:
                    if 10500 * conversionRate / 100 * conversionRate == 105:
                        return (10500 * conversionRate / 100)
            else:
                if conversionRate:
                    if 100 * conversionRate / conversionRate == 100:
                        if block.timestamp < 1555049040:
                            return (100 * conversionRate)
                        if block.timestamp >= 1555049100:
                            return (100 * conversionRate)
                        if not 100 * conversionRate:
                            return (10500 * conversionRate / 100)
                        if 100 * conversionRate:
                            if 10500 * conversionRate / 100 * conversionRate == 105:
                                return (10500 * conversionRate / 100)
        else:
            if not presaleConversionRate:
                if block.timestamp < 1555049040:
                    return (100 * presaleConversionRate)
                if block.timestamp >= 1555049100:
                    return (100 * presaleConversionRate)
                if not 100 * presaleConversionRate:
                    return (10500 * presaleConversionRate / 100)
                if 100 * presaleConversionRate:
                    if 10500 * presaleConversionRate / 100 * presaleConversionRate == 105:
                        return (10500 * presaleConversionRate / 100)
            else:
                if presaleConversionRate:
                    if 100 * presaleConversionRate / presaleConversionRate == 100:
                        if block.timestamp < 1555049040:
                            return (100 * presaleConversionRate)
                        if block.timestamp >= 1555049100:
                            return (100 * presaleConversionRate)
                        if not 100 * presaleConversionRate:
                            return (10500 * presaleConversionRate / 100)
                        if 100 * presaleConversionRate:
                            if 10500 * presaleConversionRate / 100 * presaleConversionRate == 105:
                                return (10500 * presaleConversionRate / 100)
    revert
}



}
