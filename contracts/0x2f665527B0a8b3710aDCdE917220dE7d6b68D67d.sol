contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;
uint32 stor6;
address stor6; offset 24
address stor7;
address stor8;

function _fallback() payable {
    stor3 = 0
    stor4 = 2307
    stor5 = 361219 * 10^14
    stor6.field_0 % 16777216 = 0
    require not msg.value
    address(stor6.field_24) = code.data[4648 len 20]
    stor7 = code.data[4680 len 20]
    stor8 = code.data[4712 len 20]
    return code.data[191 len 4445]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 crowdfundStartTime;
uint256 crowdfundEndTime;
uint256 totalWeiRaised;
uint256 exchangeRate;
uint256 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint16 stor6;
address founderMultiSigAddress; offset 24
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6;
address remainingTokenHolderAddress;
address authorizerAddress;
mapping of uint256 preAuthorizedAmount;

function crowdfundEndTime() {
    return crowdfundEndTime
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function isCrowdFundActive() {
    return bool(uint8(stor6.field_0))
}

function exchangeRate() {
    return exchangeRate
}

function remainingTokenHolder() {
    return remainingTokenHolderAddress
}

function totalWeiRaised() {
    return totalWeiRaised
}

function authorizerAddress() {
    return authorizerAddress
}

function crowdfundStartTime() {
    return crowdfundStartTime
}

function getPreAuthorizedAmount(address arg1) {
    return preAuthorizedAmount[address(arg1)]
}

function token() {
    return tokenAddress
}

function setAuthorizerAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    authorizerAddress = arg1
}

function getState() {
    if uint8(stor6.field_0):
        return 1
    if uint8(stor6.field_16):
        return 1
    else:
        return 0
}

function authorize(address arg1, uint256 arg2) {
    require authorizerAddress == msg.sender
    preAuthorizedAmount[address(arg1)] = 10^18 * arg2
}

function setRemainingTokenHolder(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    remainingTokenHolderAddress = arg1
}

function setTokenAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    require not uint8(stor6.field_8)
    tokenAddress = arg1
    uint8(stor6.field_8) = 1
}

function setFounderMultiSigAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    founderMultiSigAddress = arg1
    emit ChangeFoundersWalletAddress(block.timestamp, arg1);
}

function changeCrowdfundState() {
    require 1 == bool(uint8(stor6.field_8))
    require founderMultiSigAddress == msg.sender
    if not uint8(stor6.field_0):
        require uint8(stor6.field_16)
    uint256(stor6.field_0) = not uint8(stor6.field_0) or Mask(248, 8, uint256(stor6.field_0))
}

function endCrowdfund() {
    require founderMultiSigAddress == msg.sender
    require block.timestamp > crowdfundEndTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args remainingTokenHolderAddress, ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return 1
}

function startCrowdfund(uint256 arg1) {
    require founderMultiSigAddress == msg.sender
    require 1 == bool(uint8(stor6.field_8))
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_16)
    require arg1 > 0
    require not uint8(stor6.field_16)
    exchangeRate = arg1
    crowdfundStartTime = block.timestamp
    crowdfundEndTime = block.timestamp + (840 * 24 * 3600)
    uint16(stor6.field_0) = uint16(not uint8(stor6.field_0))
    Mask(240, 0, stor6.field_16) = Mask(240, 0, not Mask(8, 16, not uint8(stor6.field_0)) >> 16 or uint8(stor6.field_16))
    Mask(232, 0, stor6.field_24) = Mask(232, 24, not uint8(stor6.field_0)) >> 24
}

function currentBonus(uint256 arg1) {
    if uint8(stor6.field_0):
        if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
            return 0
        if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
            return 5
        if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
            return 10
        if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
            return 15
        if block.timestamp <= crowdfundStartTime:
            return 0
        return 20
    if uint8(stor6.field_16):
        if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
            return 0
        if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
            return 5
        if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
            return 10
        if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
            return 15
        if block.timestamp <= crowdfundStartTime:
            return 0
        return 20
    if stor5:
        require stor5
        require 5 * stor5 / stor5 == 5
    if stor5:
        require stor5
        require 10 * stor5 / stor5 == 10
    if 10^18 * arg1 >= 5 * stor5:
        if 10^18 * arg1 < 10 * stor5:
            return 30
    if 10^18 * arg1 >= 10 * stor5:
        return 35
    if 10^18 * arg1 < stor5:
        return 0
    return 25
}

function calculateTotalTokenPerContribution(uint256 arg1) {
    if uint8(stor6.field_0):
        if arg1:
            require arg1
            require exchangeRate * arg1 / arg1 == exchangeRate
        if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
            return (100 * exchangeRate * arg1 / 100)
        if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
            return (105 * exchangeRate * arg1 / 100)
        if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
            return (110 * exchangeRate * arg1 / 100)
        if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
            return (115 * exchangeRate * arg1 / 100)
        if block.timestamp <= crowdfundStartTime:
            return (100 * exchangeRate * arg1 / 100)
        return (120 * exchangeRate * arg1 / 100)
    if uint8(stor6.field_16):
        if arg1:
            require arg1
            require exchangeRate * arg1 / arg1 == exchangeRate
        if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
            return (100 * exchangeRate * arg1 / 100)
        if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
            return (105 * exchangeRate * arg1 / 100)
        if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
            return (110 * exchangeRate * arg1 / 100)
        if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
            return (115 * exchangeRate * arg1 / 100)
        if block.timestamp <= crowdfundStartTime:
            return (100 * exchangeRate * arg1 / 100)
        return (120 * exchangeRate * arg1 / 100)
    if 10^18 * arg1:
        require 10^18 * arg1
        require 10^18 * exchangeRate * arg1 / 10^18 * arg1 == exchangeRate
    if stor5:
        require stor5
        require 5 * stor5 / stor5 == 5
    if stor5:
        require stor5
        require 10 * stor5 / stor5 == 10
    if 10^18 * arg1 >= 5 * stor5:
        if 10^18 * arg1 < 10 * stor5:
            return (130 * 10^18 * exchangeRate * arg1 / 100 / 10^18)
    if 10^18 * arg1 >= 10 * stor5:
        return (375 * 10^14 * 24 * 3600 * exchangeRate * arg1 / 100 / 10^18)
    if 10^18 * arg1 < stor5:
        return (100 * 10^18 * exchangeRate * arg1 / 100 / 10^18)
    return (125 * 10^18 * exchangeRate * arg1 / 100 / 10^18)
}

function buyTokens(address arg1) payable {
    require msg.value > 0
    require 1 == bool(uint8(stor6.field_8))
    require founderMultiSigAddress != msg.sender
    require arg1
    require preAuthorizedAmount[address(arg1)] >= msg.value
    require msg.value <= preAuthorizedAmount[address(arg1)]
    preAuthorizedAmount[address(arg1)] -= msg.value
    if uint8(stor6.field_0):
        require block.timestamp < crowdfundEndTime
        require uint8(stor6.field_0)
        call founderMultiSigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value:
            require msg.value
            require exchangeRate * msg.value / msg.value == exchangeRate
        require ext_code.size(tokenAddress)
        if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 100 * exchangeRate * msg.value / 100
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args (100 * exchangeRate * msg.value / 100)
            require ext_call.success
            require msg.value + totalWeiRaised >= totalWeiRaised
            totalWeiRaised += msg.value
            emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, arg1);
        else:
            if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 105 * exchangeRate * msg.value / 100
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (105 * exchangeRate * msg.value / 100)
                require ext_call.success
                require msg.value + totalWeiRaised >= totalWeiRaised
                totalWeiRaised += msg.value
                emit TokenPurchase(msg.value, 105 * exchangeRate * msg.value / 100, arg1);
            else:
                if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 110 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (110 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 110 * exchangeRate * msg.value / 100, arg1);
                else:
                    if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 115 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (115 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 115 * exchangeRate * msg.value / 100, arg1);
                    else:
                        if block.timestamp <= crowdfundStartTime:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, arg1);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 120 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (120 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 120 * exchangeRate * msg.value / 100, arg1);
    else:
        if uint8(stor6.field_16):
            require block.timestamp < crowdfundEndTime
            require uint8(stor6.field_0)
            call founderMultiSigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require exchangeRate * msg.value / msg.value == exchangeRate
            require ext_code.size(tokenAddress)
            if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * exchangeRate * msg.value / 100
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * exchangeRate * msg.value / 100)
                require ext_call.success
                require msg.value + totalWeiRaised >= totalWeiRaised
                totalWeiRaised += msg.value
                emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, arg1);
            else:
                if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 105 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (105 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 105 * exchangeRate * msg.value / 100, arg1);
                else:
                    if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 110 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (110 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 110 * exchangeRate * msg.value / 100, arg1);
                    else:
                        if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 115 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (115 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 115 * exchangeRate * msg.value / 100, arg1);
                        else:
                            if block.timestamp <= crowdfundStartTime:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 100 * exchangeRate * msg.value / 100
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * exchangeRate * msg.value / 100)
                                require ext_call.success
                                require msg.value + totalWeiRaised >= totalWeiRaised
                                totalWeiRaised += msg.value
                                emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, arg1);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 120 * exchangeRate * msg.value / 100
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (120 * exchangeRate * msg.value / 100)
                                require ext_call.success
                                require msg.value + totalWeiRaised >= totalWeiRaised
                                totalWeiRaised += msg.value
                                emit TokenPurchase(msg.value, 120 * exchangeRate * msg.value / 100, arg1);
        else:
            require msg.value >= stor5
            call founderMultiSigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require exchangeRate * msg.value / msg.value == exchangeRate
            if stor5:
                require stor5
                require 5 * stor5 / stor5 == 5
            if stor5:
                require stor5
                require 10 * stor5 / stor5 == 10
            if msg.value < 5 * stor5:
                require ext_code.size(tokenAddress)
                if msg.value >= 10 * stor5:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 135 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (135 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 135 * exchangeRate * msg.value / 100, arg1);
                else:
                    if msg.value < stor5:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (100 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, arg1);
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 125 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (125 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 125 * exchangeRate * msg.value / 100, arg1);
            else:
                if msg.value < 10 * stor5:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 130 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (130 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 130 * exchangeRate * msg.value / 100, arg1);
                else:
                    if stor5:
                        require stor5
                        require 10 * stor5 / stor5 == 10
                    require ext_code.size(tokenAddress)
                    if msg.value >= 10 * stor5:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 135 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (135 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 135 * exchangeRate * msg.value / 100, arg1);
                    else:
                        if msg.value < stor5:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, arg1);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 125 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (125 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 125 * exchangeRate * msg.value / 100, arg1);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require 1 == bool(uint8(stor6.field_8))
    require founderMultiSigAddress != msg.sender
    require msg.sender
    require preAuthorizedAmount[address(msg.sender)] >= msg.value
    require msg.value <= preAuthorizedAmount[address(msg.sender)]
    preAuthorizedAmount[address(msg.sender)] -= msg.value
    if uint8(stor6.field_0):
        require block.timestamp < crowdfundEndTime
        require uint8(stor6.field_0)
        call founderMultiSigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value:
            require msg.value
            require exchangeRate * msg.value / msg.value == exchangeRate
        require ext_code.size(tokenAddress)
        if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * exchangeRate * msg.value / 100
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args (100 * exchangeRate * msg.value / 100)
            require ext_call.success
            require msg.value + totalWeiRaised >= totalWeiRaised
            totalWeiRaised += msg.value
            emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, msg.sender);
        else:
            if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 105 * exchangeRate * msg.value / 100
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (105 * exchangeRate * msg.value / 100)
                require ext_call.success
                require msg.value + totalWeiRaised >= totalWeiRaised
                totalWeiRaised += msg.value
                emit TokenPurchase(msg.value, 105 * exchangeRate * msg.value / 100, msg.sender);
            else:
                if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 110 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (110 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 110 * exchangeRate * msg.value / 100, msg.sender);
                else:
                    if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 115 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (115 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 115 * exchangeRate * msg.value / 100, msg.sender);
                    else:
                        if block.timestamp <= crowdfundStartTime:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 120 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (120 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 120 * exchangeRate * msg.value / 100, msg.sender);
    else:
        if uint8(stor6.field_16):
            require block.timestamp < crowdfundEndTime
            require uint8(stor6.field_0)
            call founderMultiSigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require exchangeRate * msg.value / msg.value == exchangeRate
            require ext_code.size(tokenAddress)
            if block.timestamp > crowdfundStartTime + (672 * 24 * 3600):
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * exchangeRate * msg.value / 100
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * exchangeRate * msg.value / 100)
                require ext_call.success
                require msg.value + totalWeiRaised >= totalWeiRaised
                totalWeiRaised += msg.value
                emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, msg.sender);
            else:
                if block.timestamp > crowdfundStartTime + (504 * 24 * 3600):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 105 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (105 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 105 * exchangeRate * msg.value / 100, msg.sender);
                else:
                    if block.timestamp > crowdfundStartTime + (336 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 110 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (110 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 110 * exchangeRate * msg.value / 100, msg.sender);
                    else:
                        if block.timestamp > crowdfundStartTime + (168 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 115 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (115 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 115 * exchangeRate * msg.value / 100, msg.sender);
                        else:
                            if block.timestamp <= crowdfundStartTime:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 100 * exchangeRate * msg.value / 100
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * exchangeRate * msg.value / 100)
                                require ext_call.success
                                require msg.value + totalWeiRaised >= totalWeiRaised
                                totalWeiRaised += msg.value
                                emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 120 * exchangeRate * msg.value / 100
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (120 * exchangeRate * msg.value / 100)
                                require ext_call.success
                                require msg.value + totalWeiRaised >= totalWeiRaised
                                totalWeiRaised += msg.value
                                emit TokenPurchase(msg.value, 120 * exchangeRate * msg.value / 100, msg.sender);
        else:
            require msg.value >= stor5
            call founderMultiSigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require exchangeRate * msg.value / msg.value == exchangeRate
            if stor5:
                require stor5
                require 5 * stor5 / stor5 == 5
            if stor5:
                require stor5
                require 10 * stor5 / stor5 == 10
            if msg.value < 5 * stor5:
                require ext_code.size(tokenAddress)
                if msg.value >= 10 * stor5:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 135 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (135 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 135 * exchangeRate * msg.value / 100, msg.sender);
                else:
                    if msg.value < stor5:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (100 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, msg.sender);
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 125 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (125 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 125 * exchangeRate * msg.value / 100, msg.sender);
            else:
                if msg.value < 10 * stor5:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 130 * exchangeRate * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args (130 * exchangeRate * msg.value / 100)
                    require ext_call.success
                    require msg.value + totalWeiRaised >= totalWeiRaised
                    totalWeiRaised += msg.value
                    emit TokenPurchase(msg.value, 130 * exchangeRate * msg.value / 100, msg.sender);
                else:
                    if stor5:
                        require stor5
                        require 10 * stor5 / stor5 == 10
                    require ext_code.size(tokenAddress)
                    if msg.value >= 10 * stor5:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 135 * exchangeRate * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args (135 * exchangeRate * msg.value / 100)
                        require ext_call.success
                        require msg.value + totalWeiRaised >= totalWeiRaised
                        totalWeiRaised += msg.value
                        emit TokenPurchase(msg.value, 135 * exchangeRate * msg.value / 100, msg.sender);
                    else:
                        if msg.value < stor5:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 100 * exchangeRate * msg.value / 100, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 125 * exchangeRate * msg.value / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (125 * exchangeRate * msg.value / 100)
                            require ext_call.success
                            require msg.value + totalWeiRaised >= totalWeiRaised
                            totalWeiRaised += msg.value
                            emit TokenPurchase(msg.value, 125 * exchangeRate * msg.value / 100, msg.sender);
}



}
