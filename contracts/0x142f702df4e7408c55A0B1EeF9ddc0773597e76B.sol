contract main {




// =====================  Runtime code  =====================


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
            if block.timestamp < 431040 * 24 * 3600:
                return (100 * conversionRate)
            if block.timestamp >= 1556668740:
                if block.timestamp < 432408 * 24 * 3600:
                    return (100 * conversionRate)
                if block.timestamp >= 1567295940:
                    return (100 * conversionRate)
            if not 100 * conversionRate:
                return (10500 * conversionRate / 100)
            if 100 * conversionRate:
                if 10500 * conversionRate / 100 * conversionRate == 105:
                    return (10500 * conversionRate / 100)
        else:
            if conversionRate:
                if 100 * conversionRate / conversionRate == 100:
                    if block.timestamp < 431040 * 24 * 3600:
                        return (100 * conversionRate)
                    if block.timestamp >= 1556668740:
                        if block.timestamp < 432408 * 24 * 3600:
                            return (100 * conversionRate)
                        if block.timestamp >= 1567295940:
                            return (100 * conversionRate)
                    if not 100 * conversionRate:
                        return (10500 * conversionRate / 100)
                    if 100 * conversionRate:
                        if 10500 * conversionRate / 100 * conversionRate == 105:
                            return (10500 * conversionRate / 100)
    else:
        if block.timestamp < presaleStartTime:
            if not conversionRate:
                if block.timestamp < 431040 * 24 * 3600:
                    return (100 * conversionRate)
                if block.timestamp >= 1556668740:
                    if block.timestamp < 432408 * 24 * 3600:
                        return (100 * conversionRate)
                    if block.timestamp >= 1567295940:
                        return (100 * conversionRate)
                if not 100 * conversionRate:
                    return (10500 * conversionRate / 100)
                if 100 * conversionRate:
                    if 10500 * conversionRate / 100 * conversionRate == 105:
                        return (10500 * conversionRate / 100)
            else:
                if conversionRate:
                    if 100 * conversionRate / conversionRate == 100:
                        if block.timestamp < 431040 * 24 * 3600:
                            return (100 * conversionRate)
                        if block.timestamp >= 1556668740:
                            if block.timestamp < 432408 * 24 * 3600:
                                return (100 * conversionRate)
                            if block.timestamp >= 1567295940:
                                return (100 * conversionRate)
                        if not 100 * conversionRate:
                            return (10500 * conversionRate / 100)
                        if 100 * conversionRate:
                            if 10500 * conversionRate / 100 * conversionRate == 105:
                                return (10500 * conversionRate / 100)
        else:
            if not presaleConversionRate:
                if block.timestamp < 431040 * 24 * 3600:
                    return (100 * presaleConversionRate)
                if block.timestamp >= 1556668740:
                    if block.timestamp < 432408 * 24 * 3600:
                        return (100 * presaleConversionRate)
                    if block.timestamp >= 1567295940:
                        return (100 * presaleConversionRate)
                if not 100 * presaleConversionRate:
                    return (10500 * presaleConversionRate / 100)
                if 100 * presaleConversionRate:
                    if 10500 * presaleConversionRate / 100 * presaleConversionRate == 105:
                        return (10500 * presaleConversionRate / 100)
            else:
                if presaleConversionRate:
                    if 100 * presaleConversionRate / presaleConversionRate == 100:
                        if block.timestamp < 431040 * 24 * 3600:
                            return (100 * presaleConversionRate)
                        if block.timestamp >= 1556668740:
                            if block.timestamp < 432408 * 24 * 3600:
                                return (100 * presaleConversionRate)
                            if block.timestamp >= 1567295940:
                                return (100 * presaleConversionRate)
                        if not 100 * presaleConversionRate:
                            return (10500 * presaleConversionRate / 100)
                        if 100 * presaleConversionRate:
                            if 10500 * presaleConversionRate / 100 * presaleConversionRate == 105:
                                return (10500 * presaleConversionRate / 100)
    revert
}

function _fallback() payable {
    if calldata.size < 4:
        if gasPriceLimit:
            if block.gasprice > gasPriceLimit:
                revert with 0, 'Transaction exceeds the gas price limit'
        if not msg.value:
            revert with 0, 'Transaction value is zero'
        if block.timestamp < startTime:
            if block.timestamp >= presaleEndTime:
                revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
            if block.timestamp < presaleStartTime:
                revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
        else:
            if block.timestamp >= endTime:
                if block.timestamp >= presaleEndTime:
                    revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
                if block.timestamp < presaleStartTime:
                    revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
        if msg.value < individualMinCap:
            revert with 0, 'The transaction value does not pass the minimum contribution cap'
        if block.timestamp >= presaleEndTime:
            if conversionRate:
                require conversionRate
                require 100 * conversionRate / conversionRate == 100
            if block.timestamp < 431040 * 24 * 3600:
                if msg.value:
                    require msg.value
                    require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                if 100 * conversionRate * msg.value / 100 <= 0:
                    revert with 0, 'The transaction results in zero tokens'
                require msg.value + totalRaised >= totalRaised
                totalRaised += msg.value
                if individualMaxCapTokens:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                        revert with 0, 'The transaction exceeds the individual maximum cap'
                if block.timestamp < presaleEndTime:
                    if block.timestamp >= presaleStartTime:
                        require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                        presaleSupply += 100 * conversionRate * msg.value / 100
                        if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 100 * conversionRate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
            else:
                if block.timestamp < 1556668740:
                    if 100 * conversionRate:
                        require 100 * conversionRate
                        require 10500 * conversionRate / 100 * conversionRate == 105
                    if msg.value:
                        require msg.value
                        require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                    if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                        revert with 0, 'The transaction results in zero tokens'
                    require msg.value + totalRaised >= totalRaised
                    totalRaised += msg.value
                    if individualMaxCapTokens:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                            revert with 0, 'The transaction exceeds the individual maximum cap'
                    if block.timestamp < presaleEndTime:
                        if block.timestamp >= presaleStartTime:
                            require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                            presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                            if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
                else:
                    if block.timestamp < 432408 * 24 * 3600:
                        if msg.value:
                            require msg.value
                            require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                        if 100 * conversionRate * msg.value / 100 <= 0:
                            revert with 0, 'The transaction results in zero tokens'
                        require msg.value + totalRaised >= totalRaised
                        totalRaised += msg.value
                        if individualMaxCapTokens:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                revert with 0, 'The transaction exceeds the individual maximum cap'
                        if block.timestamp < presaleEndTime:
                            if block.timestamp >= presaleStartTime:
                                require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                presaleSupply += 100 * conversionRate * msg.value / 100
                                if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                    revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 100 * conversionRate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call beneficiaryAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                    else:
                        if block.timestamp >= 1567295940:
                            if msg.value:
                                require msg.value
                                require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                            if 100 * conversionRate * msg.value / 100 <= 0:
                                revert with 0, 'The transaction results in zero tokens'
                            require msg.value + totalRaised >= totalRaised
                            totalRaised += msg.value
                            if individualMaxCapTokens:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                            if block.timestamp < presaleEndTime:
                                if block.timestamp >= presaleStartTime:
                                    require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                    presaleSupply += 100 * conversionRate * msg.value / 100
                                    if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 100 * conversionRate * msg.value / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                        else:
                            if 100 * conversionRate:
                                require 100 * conversionRate
                                require 10500 * conversionRate / 100 * conversionRate == 105
                            if msg.value:
                                require msg.value
                                require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                            if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                                revert with 0, 'The transaction results in zero tokens'
                            require msg.value + totalRaised >= totalRaised
                            totalRaised += msg.value
                            if individualMaxCapTokens:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                            if block.timestamp < presaleEndTime:
                                if block.timestamp >= presaleStartTime:
                                    require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                    presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                    if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
        else:
            if block.timestamp < presaleStartTime:
                if conversionRate:
                    require conversionRate
                    require 100 * conversionRate / conversionRate == 100
                if block.timestamp < 431040 * 24 * 3600:
                    if msg.value:
                        require msg.value
                        require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                    if 100 * conversionRate * msg.value / 100 <= 0:
                        revert with 0, 'The transaction results in zero tokens'
                    require msg.value + totalRaised >= totalRaised
                    totalRaised += msg.value
                    if individualMaxCapTokens:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                            revert with 0, 'The transaction exceeds the individual maximum cap'
                    if block.timestamp < presaleEndTime:
                        if block.timestamp >= presaleStartTime:
                            require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                            presaleSupply += 100 * conversionRate * msg.value / 100
                            if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 100 * conversionRate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                else:
                    if block.timestamp < 1556668740:
                        if 100 * conversionRate:
                            require 100 * conversionRate
                            require 10500 * conversionRate / 100 * conversionRate == 105
                        if msg.value:
                            require msg.value
                            require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                        if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                            revert with 0, 'The transaction results in zero tokens'
                        require msg.value + totalRaised >= totalRaised
                        totalRaised += msg.value
                        if individualMaxCapTokens:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                revert with 0, 'The transaction exceeds the individual maximum cap'
                        if block.timestamp < presaleEndTime:
                            if block.timestamp >= presaleStartTime:
                                require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                    revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call beneficiaryAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
                    else:
                        if block.timestamp < 432408 * 24 * 3600:
                            if msg.value:
                                require msg.value
                                require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                            if 100 * conversionRate * msg.value / 100 <= 0:
                                revert with 0, 'The transaction results in zero tokens'
                            require msg.value + totalRaised >= totalRaised
                            totalRaised += msg.value
                            if individualMaxCapTokens:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                            if block.timestamp < presaleEndTime:
                                if block.timestamp >= presaleStartTime:
                                    require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                    presaleSupply += 100 * conversionRate * msg.value / 100
                                    if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 100 * conversionRate * msg.value / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                        else:
                            if block.timestamp >= 1567295940:
                                if msg.value:
                                    require msg.value
                                    require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                if 100 * conversionRate * msg.value / 100 <= 0:
                                    revert with 0, 'The transaction results in zero tokens'
                                require msg.value + totalRaised >= totalRaised
                                totalRaised += msg.value
                                if individualMaxCapTokens:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                if block.timestamp < presaleEndTime:
                                    if block.timestamp >= presaleStartTime:
                                        require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                        presaleSupply += 100 * conversionRate * msg.value / 100
                                        if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * conversionRate * msg.value / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                            else:
                                if 100 * conversionRate:
                                    require 100 * conversionRate
                                    require 10500 * conversionRate / 100 * conversionRate == 105
                                if msg.value:
                                    require msg.value
                                    require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                                if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                                    revert with 0, 'The transaction results in zero tokens'
                                require msg.value + totalRaised >= totalRaised
                                totalRaised += msg.value
                                if individualMaxCapTokens:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                if block.timestamp < presaleEndTime:
                                    if block.timestamp >= presaleStartTime:
                                        require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                        presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                        if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
            else:
                if presaleConversionRate:
                    require presaleConversionRate
                    require 100 * presaleConversionRate / presaleConversionRate == 100
                if block.timestamp < 431040 * 24 * 3600:
                    if msg.value:
                        require msg.value
                        require 100 * presaleConversionRate * msg.value / msg.value == 100 * presaleConversionRate
                    if 100 * presaleConversionRate * msg.value / 100 <= 0:
                        revert with 0, 'The transaction results in zero tokens'
                    require msg.value + totalRaised >= totalRaised
                    totalRaised += msg.value
                    if individualMaxCapTokens:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                            revert with 0, 'The transaction exceeds the individual maximum cap'
                    if block.timestamp < presaleEndTime:
                        if block.timestamp >= presaleStartTime:
                            require (100 * presaleConversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                            presaleSupply += 100 * presaleConversionRate * msg.value / 100
                            if presaleMaxSupply < (100 * presaleConversionRate * msg.value / 100) + presaleSupply:
                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 100 * presaleConversionRate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit FundsReceived(msg.value, 100 * presaleConversionRate * msg.value / 100, msg.sender);
                else:
                    if block.timestamp < 1556668740:
                        if 100 * presaleConversionRate:
                            require 100 * presaleConversionRate
                            require 10500 * presaleConversionRate / 100 * presaleConversionRate == 105
                        if msg.value:
                            require msg.value
                            require 10500 * presaleConversionRate / 100 * msg.value / msg.value == 10500 * presaleConversionRate / 100
                        if 10500 * presaleConversionRate / 100 * msg.value / 100 <= 0:
                            revert with 0, 'The transaction results in zero tokens'
                        require msg.value + totalRaised >= totalRaised
                        totalRaised += msg.value
                        if individualMaxCapTokens:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                            if (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                revert with 0, 'The transaction exceeds the individual maximum cap'
                        if block.timestamp < presaleEndTime:
                            if block.timestamp >= presaleStartTime:
                                require (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                presaleSupply += 10500 * presaleConversionRate / 100 * msg.value / 100
                                if presaleMaxSupply < (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply:
                                    revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10500 * presaleConversionRate / 100 * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call beneficiaryAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        emit FundsReceived(msg.value, 10500 * presaleConversionRate / 100 * msg.value / 100, msg.sender);
                    else:
                        if block.timestamp < 432408 * 24 * 3600:
                            if msg.value:
                                require msg.value
                                require 100 * presaleConversionRate * msg.value / msg.value == 100 * presaleConversionRate
                            if 100 * presaleConversionRate * msg.value / 100 <= 0:
                                revert with 0, 'The transaction results in zero tokens'
                            require msg.value + totalRaised >= totalRaised
                            totalRaised += msg.value
                            if individualMaxCapTokens:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                if (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                            if block.timestamp < presaleEndTime:
                                if block.timestamp >= presaleStartTime:
                                    require (100 * presaleConversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                    presaleSupply += 100 * presaleConversionRate * msg.value / 100
                                    if presaleMaxSupply < (100 * presaleConversionRate * msg.value / 100) + presaleSupply:
                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 100 * presaleConversionRate * msg.value / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            emit FundsReceived(msg.value, 100 * presaleConversionRate * msg.value / 100, msg.sender);
                        else:
                            if block.timestamp >= 1567295940:
                                if msg.value:
                                    require msg.value
                                    require 100 * presaleConversionRate * msg.value / msg.value == 100 * presaleConversionRate
                                if 100 * presaleConversionRate * msg.value / 100 <= 0:
                                    revert with 0, 'The transaction results in zero tokens'
                                require msg.value + totalRaised >= totalRaised
                                totalRaised += msg.value
                                if individualMaxCapTokens:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    if (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                if block.timestamp < presaleEndTime:
                                    if block.timestamp >= presaleStartTime:
                                        require (100 * presaleConversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                        presaleSupply += 100 * presaleConversionRate * msg.value / 100
                                        if presaleMaxSupply < (100 * presaleConversionRate * msg.value / 100) + presaleSupply:
                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * presaleConversionRate * msg.value / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit FundsReceived(msg.value, 100 * presaleConversionRate * msg.value / 100, msg.sender);
                            else:
                                if 100 * presaleConversionRate:
                                    require 100 * presaleConversionRate
                                    require 10500 * presaleConversionRate / 100 * presaleConversionRate == 105
                                if msg.value:
                                    require msg.value
                                    require 10500 * presaleConversionRate / 100 * msg.value / msg.value == 10500 * presaleConversionRate / 100
                                if 10500 * presaleConversionRate / 100 * msg.value / 100 <= 0:
                                    revert with 0, 'The transaction results in zero tokens'
                                require msg.value + totalRaised >= totalRaised
                                totalRaised += msg.value
                                if individualMaxCapTokens:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                    if (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                if block.timestamp < presaleEndTime:
                                    if block.timestamp >= presaleStartTime:
                                        require (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                        presaleSupply += 10500 * presaleConversionRate / 100 * msg.value / 100
                                        if presaleMaxSupply < (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply:
                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10500 * presaleConversionRate / 100 * msg.value / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                emit FundsReceived(msg.value, 10500 * presaleConversionRate / 100 * msg.value / 100, msg.sender);
    else:
        if uint32(call.func_hash) == presaleMaxSupply():
            require not msg.value
            return presaleMaxSupply
        if unknown_0x1c31f710(?????) == uint32(call.func_hash):
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Only owner can call this functin'
            if not arg1:
                revert with 0, 'The beneficiary is not set'
            beneficiaryAddress = arg1
        else:
            if unknown_0x1c4fda10(?????) == uint32(call.func_hash):
                require not msg.value
                return tokenSafeAddress
            if unknown_0x1fe00a15(?????) == uint32(call.func_hash):
                require not msg.value
                return individualMaxCapTokens
            if unknown_0x249b7c19(?????) == uint32(call.func_hash):
                require not msg.value
                return presaleEndTime
            if unknown_0x3197cbb6(?????) == uint32(call.func_hash):
                require not msg.value
                return endTime
            if unknown_0x38af3eed(?????) == uint32(call.func_hash):
                require not msg.value
                return beneficiaryAddress
            if unknown_0x40c10f19(?????) == uint32(call.func_hash):
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Only owner can call this functin'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x514b13f2(?????) == uint32(call.func_hash):
                    require not msg.value
                    return presaleConversionRate
                if unknown_0x6007c836(?????) == uint32(call.func_hash):
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Only owner can call this functin'
                    individualMaxCap = arg1
                    individualMaxCapTokens = arg1 * conversionRate
                    emit IndividualMaxCapTokensChanged((arg1 * conversionRate));
                else:
                    if unknown_0x65c13fdb(?????) == uint32(call.func_hash):
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Only owner can call this functin'
                        gasPriceLimit = arg1
                        emit GasPriceLimitChanged(arg1);
                    else:
                        if unknown_0x78e97925(?????) == uint32(call.func_hash):
                            require not msg.value
                            return startTime
                        if unknown_0x79ba5097(?????) == uint32(call.func_hash):
                            require not msg.value
                            if newOwner != msg.sender:
                                revert with 0, 'Only the newOwner can accept ownership'
                            emit OwnershipTransfer(owner, newOwner);
                            owner = newOwner
                        else:
                            if unknown_0x7e5cd5c1(?????) == uint32(call.func_hash):
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Only owner can call this functin'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x7e5cd5c1 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if unknown_0x7ffdf53e(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return conversionRate
                                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return owner
                                if unknown_0x961a929c(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return gasPriceLimit
                                if unknown_0xa82524b2(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return presaleStartTime
                                if unknown_0xb3a196e9(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return presaleSupply
                                if unknown_0xc27b1ed9(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return 100
                                if unknown_0xc5c4744c(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return totalRaised
                                if unknown_0xd1614df3(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return individualMinCap
                                if unknown_0xd2e80494(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    if owner != msg.sender:
                                        revert with 0, 'Only owner can call this functin'
                                    if arg1 <= 0:
                                        revert with 0, 'Conversion rate is not set'
                                    conversionRate = arg1
                                    emit ConversionRateChanged(arg1);
                                    if individualMaxCap:
                                        individualMaxCapTokens = arg1 * individualMaxCap
                                        emit IndividualMaxCapTokensChanged((arg1 * individualMaxCap));
                                else:
                                    if unknown_0xd4ee1d90(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        return newOwner
                                    if unknown_0xdaae717c(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        if owner != msg.sender:
                                            revert with 0, 'Only owner can call this functin'
                                        individualMinCap = arg1
                                        emit IndividualMinCapChanged(arg1);
                                    else:
                                        if unknown_0xecb70fb7(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            return block.timestamp >= endTime
                                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            if owner != msg.sender:
                                                revert with 0, 'Only owner can call this functin'
                                            newOwner = arg1
                                        else:
                                            if unknown_0xf36089ec(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                if block.timestamp >= presaleEndTime:
                                                    if not conversionRate:
                                                        if block.timestamp < 431040 * 24 * 3600:
                                                            return (100 * conversionRate)
                                                        if block.timestamp >= 1556668740:
                                                            if block.timestamp < 432408 * 24 * 3600:
                                                                return (100 * conversionRate)
                                                            if block.timestamp >= 1567295940:
                                                                return (100 * conversionRate)
                                                        if not 100 * conversionRate:
                                                            return (10500 * conversionRate / 100)
                                                        if 100 * conversionRate:
                                                            if 10500 * conversionRate / 100 * conversionRate == 105:
                                                                return (10500 * conversionRate / 100)
                                                    else:
                                                        if conversionRate:
                                                            if 100 * conversionRate / conversionRate == 100:
                                                                if block.timestamp < 431040 * 24 * 3600:
                                                                    return (100 * conversionRate)
                                                                if block.timestamp >= 1556668740:
                                                                    if block.timestamp < 432408 * 24 * 3600:
                                                                        return (100 * conversionRate)
                                                                    if block.timestamp >= 1567295940:
                                                                        return (100 * conversionRate)
                                                                if not 100 * conversionRate:
                                                                    return (10500 * conversionRate / 100)
                                                                if 100 * conversionRate:
                                                                    if 10500 * conversionRate / 100 * conversionRate == 105:
                                                                        return (10500 * conversionRate / 100)
                                                else:
                                                    if block.timestamp < presaleStartTime:
                                                        if not conversionRate:
                                                            if block.timestamp < 431040 * 24 * 3600:
                                                                return (100 * conversionRate)
                                                            if block.timestamp >= 1556668740:
                                                                if block.timestamp < 432408 * 24 * 3600:
                                                                    return (100 * conversionRate)
                                                                if block.timestamp >= 1567295940:
                                                                    return (100 * conversionRate)
                                                            if not 100 * conversionRate:
                                                                return (10500 * conversionRate / 100)
                                                            if 100 * conversionRate:
                                                                if 10500 * conversionRate / 100 * conversionRate == 105:
                                                                    return (10500 * conversionRate / 100)
                                                        else:
                                                            if conversionRate:
                                                                if 100 * conversionRate / conversionRate == 100:
                                                                    if block.timestamp < 431040 * 24 * 3600:
                                                                        return (100 * conversionRate)
                                                                    if block.timestamp >= 1556668740:
                                                                        if block.timestamp < 432408 * 24 * 3600:
                                                                            return (100 * conversionRate)
                                                                        if block.timestamp >= 1567295940:
                                                                            return (100 * conversionRate)
                                                                    if not 100 * conversionRate:
                                                                        return (10500 * conversionRate / 100)
                                                                    if 100 * conversionRate:
                                                                        if 10500 * conversionRate / 100 * conversionRate == 105:
                                                                            return (10500 * conversionRate / 100)
                                                    else:
                                                        if not presaleConversionRate:
                                                            if block.timestamp < 431040 * 24 * 3600:
                                                                return (100 * presaleConversionRate)
                                                            if block.timestamp >= 1556668740:
                                                                if block.timestamp < 432408 * 24 * 3600:
                                                                    return (100 * presaleConversionRate)
                                                                if block.timestamp >= 1567295940:
                                                                    return (100 * presaleConversionRate)
                                                            if not 100 * presaleConversionRate:
                                                                return (10500 * presaleConversionRate / 100)
                                                            if 100 * presaleConversionRate:
                                                                if 10500 * presaleConversionRate / 100 * presaleConversionRate == 105:
                                                                    return (10500 * presaleConversionRate / 100)
                                                        else:
                                                            if presaleConversionRate:
                                                                if 100 * presaleConversionRate / presaleConversionRate == 100:
                                                                    if block.timestamp < 431040 * 24 * 3600:
                                                                        return (100 * presaleConversionRate)
                                                                    if block.timestamp >= 1556668740:
                                                                        if block.timestamp < 432408 * 24 * 3600:
                                                                            return (100 * presaleConversionRate)
                                                                        if block.timestamp >= 1567295940:
                                                                            return (100 * presaleConversionRate)
                                                                    if not 100 * presaleConversionRate:
                                                                        return (10500 * presaleConversionRate / 100)
                                                                    if 100 * presaleConversionRate:
                                                                        if 10500 * presaleConversionRate / 100 * presaleConversionRate == 105:
                                                                            return (10500 * presaleConversionRate / 100)
                                                revert
                                            if unknown_0xf5a30cee(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return individualMaxCap
                                            if unknown_0xfc0c546a(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return tokenAddress
                                            if gasPriceLimit:
                                                if block.gasprice > gasPriceLimit:
                                                    revert with 0, 'Transaction exceeds the gas price limit'
                                            if not msg.value:
                                                revert with 0, 'Transaction value is zero'
                                            if block.timestamp < startTime:
                                                if block.timestamp >= presaleEndTime:
                                                    revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
                                                if block.timestamp < presaleStartTime:
                                                    revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
                                            else:
                                                if block.timestamp >= endTime:
                                                    if block.timestamp >= presaleEndTime:
                                                        revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
                                                    if block.timestamp < presaleStartTime:
                                                        revert with 0, 'Neither the pre-sale nor the fundraiser are currently active'
                                            if msg.value < individualMinCap:
                                                revert with 0, 'The transaction value does not pass the minimum contribution cap'
                                            if block.timestamp >= presaleEndTime:
                                                if conversionRate:
                                                    require conversionRate
                                                    require 100 * conversionRate / conversionRate == 100
                                                if block.timestamp < 431040 * 24 * 3600:
                                                    if msg.value:
                                                        require msg.value
                                                        require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                                    if 100 * conversionRate * msg.value / 100 <= 0:
                                                        revert with 0, 'The transaction results in zero tokens'
                                                    require msg.value + totalRaised >= totalRaised
                                                    totalRaised += msg.value
                                                    if individualMaxCapTokens:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x70a08231 with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                        if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                            revert with 0, 'The transaction exceeds the individual maximum cap'
                                                    if block.timestamp < presaleEndTime:
                                                        if block.timestamp >= presaleStartTime:
                                                            require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                            presaleSupply += 100 * conversionRate * msg.value / 100
                                                            if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 100 * conversionRate * msg.value / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                                                else:
                                                    if block.timestamp < 1556668740:
                                                        if 100 * conversionRate:
                                                            require 100 * conversionRate
                                                            require 10500 * conversionRate / 100 * conversionRate == 105
                                                        if msg.value:
                                                            require msg.value
                                                            require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                                                        if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                                                            revert with 0, 'The transaction results in zero tokens'
                                                        require msg.value + totalRaised >= totalRaised
                                                        totalRaised += msg.value
                                                        if individualMaxCapTokens:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x70a08231 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                            if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                revert with 0, 'The transaction exceeds the individual maximum cap'
                                                        if block.timestamp < presaleEndTime:
                                                            if block.timestamp >= presaleStartTime:
                                                                require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                                                presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                                                if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                                                    revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
                                                    else:
                                                        if block.timestamp < 432408 * 24 * 3600:
                                                            if msg.value:
                                                                require msg.value
                                                                require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                                            if 100 * conversionRate * msg.value / 100 <= 0:
                                                                revert with 0, 'The transaction results in zero tokens'
                                                            require msg.value + totalRaised >= totalRaised
                                                            totalRaised += msg.value
                                                            if individualMaxCapTokens:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x70a08231 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                                                            if block.timestamp < presaleEndTime:
                                                                if block.timestamp >= presaleStartTime:
                                                                    require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                    presaleSupply += 100 * conversionRate * msg.value / 100
                                                                    if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 100 * conversionRate * msg.value / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                                                        else:
                                                            if block.timestamp >= 1567295940:
                                                                if msg.value:
                                                                    require msg.value
                                                                    require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                                                if 100 * conversionRate * msg.value / 100 <= 0:
                                                                    revert with 0, 'The transaction results in zero tokens'
                                                                require msg.value + totalRaised >= totalRaised
                                                                totalRaised += msg.value
                                                                if individualMaxCapTokens:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x70a08231 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                if block.timestamp < presaleEndTime:
                                                                    if block.timestamp >= presaleStartTime:
                                                                        require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                        presaleSupply += 100 * conversionRate * msg.value / 100
                                                                        if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 100 * conversionRate * msg.value / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                                                            else:
                                                                if 100 * conversionRate:
                                                                    require 100 * conversionRate
                                                                    require 10500 * conversionRate / 100 * conversionRate == 105
                                                                if msg.value:
                                                                    require msg.value
                                                                    require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                                                                if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                                                                    revert with 0, 'The transaction results in zero tokens'
                                                                require msg.value + totalRaised >= totalRaised
                                                                totalRaised += msg.value
                                                                if individualMaxCapTokens:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x70a08231 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                if block.timestamp < presaleEndTime:
                                                                    if block.timestamp >= presaleStartTime:
                                                                        require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                                                        presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                                                        if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
                                            else:
                                                if block.timestamp < presaleStartTime:
                                                    if conversionRate:
                                                        require conversionRate
                                                        require 100 * conversionRate / conversionRate == 100
                                                    if block.timestamp < 431040 * 24 * 3600:
                                                        if msg.value:
                                                            require msg.value
                                                            require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                                        if 100 * conversionRate * msg.value / 100 <= 0:
                                                            revert with 0, 'The transaction results in zero tokens'
                                                        require msg.value + totalRaised >= totalRaised
                                                        totalRaised += msg.value
                                                        if individualMaxCapTokens:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x70a08231 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                            if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                revert with 0, 'The transaction exceeds the individual maximum cap'
                                                        if block.timestamp < presaleEndTime:
                                                            if block.timestamp >= presaleStartTime:
                                                                require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                presaleSupply += 100 * conversionRate * msg.value / 100
                                                                if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                                                    revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 100 * conversionRate * msg.value / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                                                    else:
                                                        if block.timestamp < 1556668740:
                                                            if 100 * conversionRate:
                                                                require 100 * conversionRate
                                                                require 10500 * conversionRate / 100 * conversionRate == 105
                                                            if msg.value:
                                                                require msg.value
                                                                require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                                                            if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                                                                revert with 0, 'The transaction results in zero tokens'
                                                            require msg.value + totalRaised >= totalRaised
                                                            totalRaised += msg.value
                                                            if individualMaxCapTokens:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x70a08231 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                                                            if block.timestamp < presaleEndTime:
                                                                if block.timestamp >= presaleStartTime:
                                                                    require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                                                    presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                                                    if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
                                                        else:
                                                            if block.timestamp < 432408 * 24 * 3600:
                                                                if msg.value:
                                                                    require msg.value
                                                                    require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                                                if 100 * conversionRate * msg.value / 100 <= 0:
                                                                    revert with 0, 'The transaction results in zero tokens'
                                                                require msg.value + totalRaised >= totalRaised
                                                                totalRaised += msg.value
                                                                if individualMaxCapTokens:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x70a08231 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                if block.timestamp < presaleEndTime:
                                                                    if block.timestamp >= presaleStartTime:
                                                                        require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                        presaleSupply += 100 * conversionRate * msg.value / 100
                                                                        if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 100 * conversionRate * msg.value / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                                                            else:
                                                                if block.timestamp >= 1567295940:
                                                                    if msg.value:
                                                                        require msg.value
                                                                        require 100 * conversionRate * msg.value / msg.value == 100 * conversionRate
                                                                    if 100 * conversionRate * msg.value / 100 <= 0:
                                                                        revert with 0, 'The transaction results in zero tokens'
                                                                    require msg.value + totalRaised >= totalRaised
                                                                    totalRaised += msg.value
                                                                    if individualMaxCapTokens:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0x70a08231 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                        if (100 * conversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                            revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                    if block.timestamp < presaleEndTime:
                                                                        if block.timestamp >= presaleStartTime:
                                                                            require (100 * conversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                            presaleSupply += 100 * conversionRate * msg.value / 100
                                                                            if presaleMaxSupply < (100 * conversionRate * msg.value / 100) + presaleSupply:
                                                                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x40c10f19 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 100 * conversionRate * msg.value / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    emit FundsReceived(msg.value, 100 * conversionRate * msg.value / 100, msg.sender);
                                                                else:
                                                                    if 100 * conversionRate:
                                                                        require 100 * conversionRate
                                                                        require 10500 * conversionRate / 100 * conversionRate == 105
                                                                    if msg.value:
                                                                        require msg.value
                                                                        require 10500 * conversionRate / 100 * msg.value / msg.value == 10500 * conversionRate / 100
                                                                    if 10500 * conversionRate / 100 * msg.value / 100 <= 0:
                                                                        revert with 0, 'The transaction results in zero tokens'
                                                                    require msg.value + totalRaised >= totalRaised
                                                                    totalRaised += msg.value
                                                                    if individualMaxCapTokens:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0x70a08231 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                        if (10500 * conversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                            revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                    if block.timestamp < presaleEndTime:
                                                                        if block.timestamp >= presaleStartTime:
                                                                            require (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                                                            presaleSupply += 10500 * conversionRate / 100 * msg.value / 100
                                                                            if presaleMaxSupply < (10500 * conversionRate / 100 * msg.value / 100) + presaleSupply:
                                                                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x40c10f19 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10500 * conversionRate / 100 * msg.value / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    emit FundsReceived(msg.value, 10500 * conversionRate / 100 * msg.value / 100, msg.sender);
                                                else:
                                                    if presaleConversionRate:
                                                        require presaleConversionRate
                                                        require 100 * presaleConversionRate / presaleConversionRate == 100
                                                    if block.timestamp < 431040 * 24 * 3600:
                                                        if msg.value:
                                                            require msg.value
                                                            require 100 * presaleConversionRate * msg.value / msg.value == 100 * presaleConversionRate
                                                        if 100 * presaleConversionRate * msg.value / 100 <= 0:
                                                            revert with 0, 'The transaction results in zero tokens'
                                                        require msg.value + totalRaised >= totalRaised
                                                        totalRaised += msg.value
                                                        if individualMaxCapTokens:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x70a08231 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                            if (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                revert with 0, 'The transaction exceeds the individual maximum cap'
                                                        if block.timestamp < presaleEndTime:
                                                            if block.timestamp >= presaleStartTime:
                                                                require (100 * presaleConversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                presaleSupply += 100 * presaleConversionRate * msg.value / 100
                                                                if presaleMaxSupply < (100 * presaleConversionRate * msg.value / 100) + presaleSupply:
                                                                    revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 100 * presaleConversionRate * msg.value / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        emit FundsReceived(msg.value, 100 * presaleConversionRate * msg.value / 100, msg.sender);
                                                    else:
                                                        if block.timestamp < 1556668740:
                                                            if 100 * presaleConversionRate:
                                                                require 100 * presaleConversionRate
                                                                require 10500 * presaleConversionRate / 100 * presaleConversionRate == 105
                                                            if msg.value:
                                                                require msg.value
                                                                require 10500 * presaleConversionRate / 100 * msg.value / msg.value == 10500 * presaleConversionRate / 100
                                                            if 10500 * presaleConversionRate / 100 * msg.value / 100 <= 0:
                                                                revert with 0, 'The transaction results in zero tokens'
                                                            require msg.value + totalRaised >= totalRaised
                                                            totalRaised += msg.value
                                                            if individualMaxCapTokens:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x70a08231 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                if (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                    revert with 0, 'The transaction exceeds the individual maximum cap'
                                                            if block.timestamp < presaleEndTime:
                                                                if block.timestamp >= presaleStartTime:
                                                                    require (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                                                    presaleSupply += 10500 * presaleConversionRate / 100 * msg.value / 100
                                                                    if presaleMaxSupply < (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply:
                                                                        revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10500 * presaleConversionRate / 100 * msg.value / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            emit FundsReceived(msg.value, 10500 * presaleConversionRate / 100 * msg.value / 100, msg.sender);
                                                        else:
                                                            if block.timestamp < 432408 * 24 * 3600:
                                                                if msg.value:
                                                                    require msg.value
                                                                    require 100 * presaleConversionRate * msg.value / msg.value == 100 * presaleConversionRate
                                                                if 100 * presaleConversionRate * msg.value / 100 <= 0:
                                                                    revert with 0, 'The transaction results in zero tokens'
                                                                require msg.value + totalRaised >= totalRaised
                                                                totalRaised += msg.value
                                                                if individualMaxCapTokens:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x70a08231 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                    if (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                        revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                if block.timestamp < presaleEndTime:
                                                                    if block.timestamp >= presaleStartTime:
                                                                        require (100 * presaleConversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                        presaleSupply += 100 * presaleConversionRate * msg.value / 100
                                                                        if presaleMaxSupply < (100 * presaleConversionRate * msg.value / 100) + presaleSupply:
                                                                            revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 100 * presaleConversionRate * msg.value / 100
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                emit FundsReceived(msg.value, 100 * presaleConversionRate * msg.value / 100, msg.sender);
                                                            else:
                                                                if block.timestamp >= 1567295940:
                                                                    if msg.value:
                                                                        require msg.value
                                                                        require 100 * presaleConversionRate * msg.value / msg.value == 100 * presaleConversionRate
                                                                    if 100 * presaleConversionRate * msg.value / 100 <= 0:
                                                                        revert with 0, 'The transaction results in zero tokens'
                                                                    require msg.value + totalRaised >= totalRaised
                                                                    totalRaised += msg.value
                                                                    if individualMaxCapTokens:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0x70a08231 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                        if (100 * presaleConversionRate * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                            revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                    if block.timestamp < presaleEndTime:
                                                                        if block.timestamp >= presaleStartTime:
                                                                            require (100 * presaleConversionRate * msg.value / 100) + presaleSupply >= presaleSupply
                                                                            presaleSupply += 100 * presaleConversionRate * msg.value / 100
                                                                            if presaleMaxSupply < (100 * presaleConversionRate * msg.value / 100) + presaleSupply:
                                                                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x40c10f19 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 100 * presaleConversionRate * msg.value / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    emit FundsReceived(msg.value, 100 * presaleConversionRate * msg.value / 100, msg.sender);
                                                                else:
                                                                    if 100 * presaleConversionRate:
                                                                        require 100 * presaleConversionRate
                                                                        require 10500 * presaleConversionRate / 100 * presaleConversionRate == 105
                                                                    if msg.value:
                                                                        require msg.value
                                                                        require 10500 * presaleConversionRate / 100 * msg.value / msg.value == 10500 * presaleConversionRate / 100
                                                                    if 10500 * presaleConversionRate / 100 * msg.value / 100 <= 0:
                                                                        revert with 0, 'The transaction results in zero tokens'
                                                                    require msg.value + totalRaised >= totalRaised
                                                                    totalRaised += msg.value
                                                                    if individualMaxCapTokens:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0x70a08231 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
                                                                        if (10500 * presaleConversionRate / 100 * msg.value / 100) + ext_call.return_data[0] > individualMaxCapTokens:
                                                                            revert with 0, 'The transaction exceeds the individual maximum cap'
                                                                    if block.timestamp < presaleEndTime:
                                                                        if block.timestamp >= presaleStartTime:
                                                                            require (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply >= presaleSupply
                                                                            presaleSupply += 10500 * presaleConversionRate / 100 * msg.value / 100
                                                                            if presaleMaxSupply < (10500 * presaleConversionRate / 100 * msg.value / 100) + presaleSupply:
                                                                                revert with 0, 'Transaction exceeds the pre-sale maximum token supply'
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0x40c10f19 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10500 * presaleConversionRate / 100 * msg.value / 100
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    emit FundsReceived(msg.value, 10500 * presaleConversionRate / 100 * msg.value / 100, msg.sender);
}



}
