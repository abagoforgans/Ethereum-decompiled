contract main {




// =====================  Runtime code  =====================


mapping of uint256 invested;
mapping of uint256 bonus;
mapping of uint256 atTime;
uint256 previousBalance;
uint256 interestRate;
uint256 nextTime;

function nextTime() {
    return nextTime
}

function atTime(address arg1) {
    return atTime[arg1]
}

function invested(address arg1) {
    return invested[arg1]
}

function interestRate() {
    return interestRate
}

function previousBalance() {
    return previousBalance
}

function bonus(address arg1) {
    return bonus[arg1]
}

function _fallback() payable {
    atTime[msg.sender] = block.timestamp
    if block.timestamp >= nextTime:
        if eth.balance(this.address) < previousBalance:
            interestRate = 1
            if interestRate > 10:
                interestRate = 10
            else:
                if interestRate < 1:
                    interestRate = 1
        else:
            interestRate = (eth.balance(this.address) - previousBalance / 10 * 10^18) + 1
            if interestRate > 10:
                interestRate = 10
            else:
                if interestRate < 1:
                    interestRate = 1
            previousBalance = eth.balance(this.address)
        nextTime = block.timestamp + (48 * 24 * 3600)
    if atTime[msg.sender] > block.timestamp:
        if invested[msg.sender]:
            if 0 <= invested[msg.sender] / 10:
                if 0 > eth.balance(this.address) / 10:
                    if eth.balance(this.address) / 10 > 0:
                        call msg.sender with:
                           value eth.balance(this.address) / 10 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if invested[msg.sender] / 10 <= 5 * 10^16:
                    if invested[msg.sender] / 10 <= eth.balance(this.address) / 10:
                        if invested[msg.sender] / 10 > 0:
                            call msg.sender with:
                               value invested[msg.sender] / 10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if eth.balance(this.address) / 10 > 0:
                            call msg.sender with:
                               value eth.balance(this.address) / 10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 5 * 10^16 <= eth.balance(this.address) / 10:
                        call msg.sender with:
                           value 5 * 10^16 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if eth.balance(this.address) / 10 > 0:
                            call msg.sender with:
                               value eth.balance(this.address) / 10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if invested[msg.sender]:
            if (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 > invested[msg.sender] / 10:
                if block.timestamp - atTime[msg.sender] >= 24 * 3600:
                    if invested[msg.sender] / 10 <= eth.balance(this.address) / 10:
                        if invested[msg.sender] / 10 > 0:
                            call msg.sender with:
                               value invested[msg.sender] / 10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if eth.balance(this.address) / 10 > 0:
                            call msg.sender with:
                               value eth.balance(this.address) / 10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if invested[msg.sender] / 10 <= 5 * 10^16:
                        if invested[msg.sender] / 10 <= eth.balance(this.address) / 10:
                            if invested[msg.sender] / 10 > 0:
                                call msg.sender with:
                                   value invested[msg.sender] / 10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) / 10 > 0:
                                call msg.sender with:
                                   value eth.balance(this.address) / 10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 * 10^16 <= eth.balance(this.address) / 10:
                            call msg.sender with:
                               value 5 * 10^16 wei
                                 gas 0 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) / 10 > 0:
                                call msg.sender with:
                                   value eth.balance(this.address) / 10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if block.timestamp - atTime[msg.sender] >= 24 * 3600:
                    if (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 <= eth.balance(this.address) / 10:
                        if (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 > 0:
                            call msg.sender with:
                               value (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if eth.balance(this.address) / 10 > 0:
                            call msg.sender with:
                               value eth.balance(this.address) / 10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 <= 5 * 10^16:
                        if (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 <= eth.balance(this.address) / 10:
                            if (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 > 0:
                                call msg.sender with:
                                   value (block.timestamp * invested[msg.sender] * interestRate / 100) - (atTime[msg.sender] * invested[msg.sender] * interestRate / 100) / 24 * 3600 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) / 10 > 0:
                                call msg.sender with:
                                   value eth.balance(this.address) / 10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 * 10^16 <= eth.balance(this.address) / 10:
                            call msg.sender with:
                               value 5 * 10^16 wei
                                 gas 0 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) / 10 > 0:
                                call msg.sender with:
                                   value eth.balance(this.address) / 10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp - atTime[msg.sender] >= 24 * 3600:
                if msg.value >= 10^18:
                    invested[msg.sender] += msg.value
                    bonus[msg.sender] += msg.value
    invested[msg.sender] += msg.value
}



}
