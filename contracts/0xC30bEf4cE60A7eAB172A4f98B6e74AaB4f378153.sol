contract main {




// =====================  Runtime code  =====================


mapping of uint256 userDeposit;
mapping of uint256 userTime;
mapping of uint256 persentWithdraw;
address projectFundAddress;
address charityFundAddress;
uint256 stor5;
uint256 charityPercent;
uint256 chargingTime;
uint256 startPercent;
uint256 lowPersent;
uint256 middlePersent;
uint256 highPersent;
uint256 stepLow;
uint256 stepMiddle;
uint256 stepHigh;
uint256 countOfInvestors;
uint256 countOfCharity;

function lowPersent() {
    return lowPersent
}

function startPercent() {
    return startPercent
}

function stepHigh() {
    return stepHigh
}

function charityPercent() {
    return charityPercent
}

function projectFund() {
    return projectFundAddress
}

function chargingTime() {
    return chargingTime
}

function charityFund() {
    return charityFundAddress
}

function stepLow() {
    return stepLow
}

function countOfCharity() {
    return countOfCharity
}

function userTime(address arg1) {
    return userTime[arg1]
}

function stepMiddle() {
    return stepMiddle
}

function highPersent() {
    return highPersent
}

function userDeposit(address arg1) {
    return userDeposit[arg1]
}

function middlePersent() {
    return middlePersent
}

function countOfInvestors() {
    return countOfInvestors
}

function persentWithdraw(address arg1) {
    return persentWithdraw[arg1]
}

function persentRate() {
    if eth.balance(this.address) < stepLow:
        return startPercent
    if eth.balance(this.address) < stepMiddle:
        return lowPersent
    if eth.balance(this.address) >= stepHigh:
        return highPersent
    return middlePersent
}

function payoutAmount() {
    if eth.balance(this.address) < stepLow:
        if not userDeposit[msg.sender]:
            if userTime[msg.sender] <= block.timestamp:
                if chargingTime:
                    if not startPercent * userDeposit[msg.sender] / 100000:
                        return (block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000)
                    if startPercent * userDeposit[msg.sender] / 100000:
                        if block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000 / startPercent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                            return (block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000)
        else:
            if userDeposit[msg.sender]:
                if startPercent * userDeposit[msg.sender] / userDeposit[msg.sender] == startPercent:
                    if userTime[msg.sender] <= block.timestamp:
                        if chargingTime:
                            if not startPercent * userDeposit[msg.sender] / 100000:
                                return (block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000)
                            if startPercent * userDeposit[msg.sender] / 100000:
                                if block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000 / startPercent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                    return (block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000)
    else:
        if eth.balance(this.address) < stepMiddle:
            if not userDeposit[msg.sender]:
                if userTime[msg.sender] <= block.timestamp:
                    if chargingTime:
                        if not lowPersent * userDeposit[msg.sender] / 100000:
                            return (block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000)
                        if lowPersent * userDeposit[msg.sender] / 100000:
                            if block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000 / lowPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                return (block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000)
            else:
                if userDeposit[msg.sender]:
                    if lowPersent * userDeposit[msg.sender] / userDeposit[msg.sender] == lowPersent:
                        if userTime[msg.sender] <= block.timestamp:
                            if chargingTime:
                                if not lowPersent * userDeposit[msg.sender] / 100000:
                                    return (block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000)
                                if lowPersent * userDeposit[msg.sender] / 100000:
                                    if block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000 / lowPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                        return (block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000)
        else:
            if eth.balance(this.address) >= stepHigh:
                if not userDeposit[msg.sender]:
                    if userTime[msg.sender] <= block.timestamp:
                        if chargingTime:
                            if not highPersent * userDeposit[msg.sender] / 100000:
                                return (block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000)
                            if highPersent * userDeposit[msg.sender] / 100000:
                                if block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000 / highPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                    return (block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000)
                else:
                    if userDeposit[msg.sender]:
                        if highPersent * userDeposit[msg.sender] / userDeposit[msg.sender] == highPersent:
                            if userTime[msg.sender] <= block.timestamp:
                                if chargingTime:
                                    if not highPersent * userDeposit[msg.sender] / 100000:
                                        return (block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000)
                                    if highPersent * userDeposit[msg.sender] / 100000:
                                        if block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000 / highPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                            return (block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000)
            else:
                if not userDeposit[msg.sender]:
                    if userTime[msg.sender] <= block.timestamp:
                        if chargingTime:
                            if not middlePersent * userDeposit[msg.sender] / 100000:
                                return (block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000)
                            if middlePersent * userDeposit[msg.sender] / 100000:
                                if block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000 / middlePersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                    return (block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000)
                else:
                    if userDeposit[msg.sender]:
                        if middlePersent * userDeposit[msg.sender] / userDeposit[msg.sender] == middlePersent:
                            if userTime[msg.sender] <= block.timestamp:
                                if chargingTime:
                                    if not middlePersent * userDeposit[msg.sender] / 100000:
                                        return (block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000)
                                    if middlePersent * userDeposit[msg.sender] / 100000:
                                        if block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000 / middlePersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime:
                                            return (block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000)
    revert
}

function _fallback() payable {
    if 112 * 10^10 == msg.value:
        if 0 >= userDeposit[msg.sender]:
            revert with 0, 'Deposit not found'
        if userDeposit[msg.sender]:
            require userDeposit[msg.sender]
            require stor5 * userDeposit[msg.sender] / userDeposit[msg.sender] == stor5
        require persentWithdraw[msg.sender] <= userDeposit[msg.sender]
        require stor5 * userDeposit[msg.sender] / 100 <= userDeposit[msg.sender] - persentWithdraw[msg.sender]
        if userDeposit[msg.sender] - persentWithdraw[msg.sender] - (stor5 * userDeposit[msg.sender] / 100) >= userDeposit[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have already repaid your deposit'
        userDeposit[msg.sender] = 0
        userTime[msg.sender] = 0
        persentWithdraw[msg.sender] = 0
        call msg.sender with:
           value userDeposit[msg.sender] - persentWithdraw[msg.sender] - (stor5 * userDeposit[msg.sender] / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value <= 0:
            if 0 >= userDeposit[msg.sender]:
                revert with 0, 'Deposit not found'
            require chargingTime + userTime[msg.sender] >= userTime[msg.sender]
            if block.timestamp < chargingTime + userTime[msg.sender]:
                revert with 0, 'Too fast payout request'
            if userDeposit[msg.sender]:
                require userDeposit[msg.sender]
                require 2 * userDeposit[msg.sender] / userDeposit[msg.sender] == 2
            if 2 * userDeposit[msg.sender] <= persentWithdraw[msg.sender]:
                userDeposit[msg.sender] = 0
                userTime[msg.sender] = 0
                persentWithdraw[msg.sender] = 0
            else:
                if eth.balance(this.address) < stepLow:
                    if userDeposit[msg.sender]:
                        require userDeposit[msg.sender]
                        require startPercent * userDeposit[msg.sender] / userDeposit[msg.sender] == startPercent
                    require userTime[msg.sender] <= block.timestamp
                    require chargingTime
                    if startPercent * userDeposit[msg.sender] / 100000:
                        require startPercent * userDeposit[msg.sender] / 100000
                        require block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000 / startPercent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                    userTime[msg.sender] = block.timestamp
                    persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000
                    call msg.sender with:
                       value block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if eth.balance(this.address) < stepMiddle:
                        if userDeposit[msg.sender]:
                            require userDeposit[msg.sender]
                            require lowPersent * userDeposit[msg.sender] / userDeposit[msg.sender] == lowPersent
                        require userTime[msg.sender] <= block.timestamp
                        require chargingTime
                        if lowPersent * userDeposit[msg.sender] / 100000:
                            require lowPersent * userDeposit[msg.sender] / 100000
                            require block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000 / lowPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                        userTime[msg.sender] = block.timestamp
                        persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000
                        call msg.sender with:
                           value block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if eth.balance(this.address) >= stepHigh:
                            if userDeposit[msg.sender]:
                                require userDeposit[msg.sender]
                                require highPersent * userDeposit[msg.sender] / userDeposit[msg.sender] == highPersent
                            require userTime[msg.sender] <= block.timestamp
                            require chargingTime
                            if highPersent * userDeposit[msg.sender] / 100000:
                                require highPersent * userDeposit[msg.sender] / 100000
                                require block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000 / highPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                            userTime[msg.sender] = block.timestamp
                            persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000
                            call msg.sender with:
                               value block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if userDeposit[msg.sender]:
                                require userDeposit[msg.sender]
                                require middlePersent * userDeposit[msg.sender] / userDeposit[msg.sender] == middlePersent
                            require userTime[msg.sender] <= block.timestamp
                            require chargingTime
                            if middlePersent * userDeposit[msg.sender] / 100000:
                                require middlePersent * userDeposit[msg.sender] / 100000
                                require block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000 / middlePersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                            userTime[msg.sender] = block.timestamp
                            persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000
                            call msg.sender with:
                               value block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000 wei
                                 gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not userDeposit[msg.sender]:
                countOfInvestors++
            if userDeposit[msg.sender] > 0:
                require chargingTime + userTime[msg.sender] >= userTime[msg.sender]
                if block.timestamp > chargingTime + userTime[msg.sender]:
                    if 0 >= userDeposit[msg.sender]:
                        revert with 0, 'Deposit not found'
                    require chargingTime + userTime[msg.sender] >= userTime[msg.sender]
                    if block.timestamp < chargingTime + userTime[msg.sender]:
                        revert with 0, 'Too fast payout request'
                    if userDeposit[msg.sender]:
                        require userDeposit[msg.sender]
                        require 2 * userDeposit[msg.sender] / userDeposit[msg.sender] == 2
                    if 2 * userDeposit[msg.sender] <= persentWithdraw[msg.sender]:
                        userDeposit[msg.sender] = 0
                        userTime[msg.sender] = 0
                        persentWithdraw[msg.sender] = 0
                    else:
                        if eth.balance(this.address) < stepLow:
                            if userDeposit[msg.sender]:
                                require userDeposit[msg.sender]
                                require startPercent * userDeposit[msg.sender] / userDeposit[msg.sender] == startPercent
                            require userTime[msg.sender] <= block.timestamp
                            require chargingTime
                            if startPercent * userDeposit[msg.sender] / 100000:
                                require startPercent * userDeposit[msg.sender] / 100000
                                require block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000 / startPercent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                            userTime[msg.sender] = block.timestamp
                            persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000
                            call msg.sender with:
                               value block.timestamp - userTime[msg.sender] / chargingTime * startPercent * userDeposit[msg.sender] / 100000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if eth.balance(this.address) < stepMiddle:
                                if userDeposit[msg.sender]:
                                    require userDeposit[msg.sender]
                                    require lowPersent * userDeposit[msg.sender] / userDeposit[msg.sender] == lowPersent
                                require userTime[msg.sender] <= block.timestamp
                                require chargingTime
                                if lowPersent * userDeposit[msg.sender] / 100000:
                                    require lowPersent * userDeposit[msg.sender] / 100000
                                    require block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000 / lowPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                                userTime[msg.sender] = block.timestamp
                                persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000
                                call msg.sender with:
                                   value block.timestamp - userTime[msg.sender] / chargingTime * lowPersent * userDeposit[msg.sender] / 100000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if eth.balance(this.address) >= stepHigh:
                                    if userDeposit[msg.sender]:
                                        require userDeposit[msg.sender]
                                        require highPersent * userDeposit[msg.sender] / userDeposit[msg.sender] == highPersent
                                    require userTime[msg.sender] <= block.timestamp
                                    require chargingTime
                                    if highPersent * userDeposit[msg.sender] / 100000:
                                        require highPersent * userDeposit[msg.sender] / 100000
                                        require block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000 / highPersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                                    userTime[msg.sender] = block.timestamp
                                    persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000
                                    call msg.sender with:
                                       value block.timestamp - userTime[msg.sender] / chargingTime * highPersent * userDeposit[msg.sender] / 100000 wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if userDeposit[msg.sender]:
                                        require userDeposit[msg.sender]
                                        require middlePersent * userDeposit[msg.sender] / userDeposit[msg.sender] == middlePersent
                                    require userTime[msg.sender] <= block.timestamp
                                    require chargingTime
                                    if middlePersent * userDeposit[msg.sender] / 100000:
                                        require middlePersent * userDeposit[msg.sender] / 100000
                                        require block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000 / middlePersent * userDeposit[msg.sender] / 100000 == block.timestamp - userTime[msg.sender] / chargingTime
                                    userTime[msg.sender] = block.timestamp
                                    persentWithdraw[msg.sender] += block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000
                                    call msg.sender with:
                                       value block.timestamp - userTime[msg.sender] / chargingTime * middlePersent * userDeposit[msg.sender] / 100000 wei
                                         gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            require msg.value + userDeposit[msg.sender] >= userDeposit[msg.sender]
            userDeposit[msg.sender] += msg.value
            userTime[msg.sender] = block.timestamp
            if msg.value:
                require msg.value
                require stor5 * msg.value / msg.value == stor5
            call projectFundAddress with:
               value stor5 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value:
                require msg.value
                require charityPercent * msg.value / msg.value == charityPercent
            countOfCharity += charityPercent * msg.value / 100
            call charityFundAddress with:
               value charityPercent * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
