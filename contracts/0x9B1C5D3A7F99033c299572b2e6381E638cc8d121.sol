contract main {




// =====================  Runtime code  =====================


mapping of uint256 userDeposit;
mapping of uint256 userTime;
mapping of uint256 persentWithdraw;
address projectFundAddress;
address charityFundAddress;
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

function _fallback() payable {
    revert
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



}
