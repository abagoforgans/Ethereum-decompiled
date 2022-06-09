contract main {




// =====================  Runtime code  =====================


mapping of uint256 deposited;
mapping of uint256 time;
mapping of uint256 sub_168de833;
mapping of uint256 withdraw;
mapping of uint256 sub_e2c61aeb;
uint256 stepTime;
uint256 countOfInvestors;
address stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 maxWithdrawal;
uint256 minDeposit;
uint256 maxDeposit;

function sub_168de833(?) {
    return sub_168de833[arg1]
}

function minDeposit() {
    return minDeposit
}

function withdraw(address arg1) {
    return withdraw[arg1]
}

function maxDeposit() {
    return maxDeposit
}

function time(address arg1) {
    return time[arg1]
}

function maxWithdrawal() {
    return maxWithdrawal
}

function deposited(address arg1) {
    return deposited[arg1]
}

function sub_e2c61aeb(?) {
    return sub_e2c61aeb[arg1]
}

function countOfInvestors() {
    return countOfInvestors
}

function stepTime() {
    return stepTime
}

function _fallback() payable {
    if msg.value > 0:
        if msg.value < minDeposit:
            revert with 0, 'Wrong deposit value'
        if msg.value > maxDeposit:
            revert with 0, 'Wrong deposit value'
        if deposited[address(msg.sender)]:
            revert with 0, 'This address is already in use.'
        countOfInvestors++
        deposited[address(msg.sender)] = msg.value
        time[address(msg.sender)] = block.timestamp
        sub_168de833[address(msg.sender)] = block.timestamp
        withdraw[address(msg.sender)] = 0
        sub_e2c61aeb[address(msg.sender)] = 0
        if not msg.value:
            call stor7 with:
                 gas 2300 wei
        else:
            require msg.value
            require 10 * msg.value / msg.value == 10
            call stor7 with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not msg.value:
            call stor8 with:
                 gas 2300 wei
        else:
            require msg.value
            require msg.value / msg.value == 1
            call stor8 with:
               value msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not msg.value:
            call stor9 with:
                 gas 2300 wei
        else:
            require msg.value
            require 3 * msg.value / msg.value == 3
            call stor9 with:
               value 3 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not msg.value:
            call stor10 with:
                 gas 2300 wei
        else:
            require msg.value
            require msg.value / msg.value == 1
            call stor10 with:
               value msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        emit Invest(msg.sender, msg.value);
    else:
        if deposited[address(msg.sender)] <= 0:
            revert with 0, 'Address not found'
        require sub_168de833[address(msg.sender)] + stor11 >= sub_168de833[address(msg.sender)]
        if block.timestamp < sub_168de833[address(msg.sender)] + stor11:
            revert with 0, 'Too fast for first withdrawal'
        require time[address(msg.sender)] + stepTime >= time[address(msg.sender)]
        if block.timestamp < time[address(msg.sender)] + stepTime:
            revert with 0, 'Too fast payout request'
        require time[address(msg.sender)] <= block.timestamp
        require stepTime > 0
        require stepTime
        if block.timestamp - time[address(msg.sender)] / stepTime > 10:
            if not deposited[address(msg.sender)]:
                if not deposited[address(msg.sender)]:
                    if sub_e2c61aeb[address(msg.sender)] <= 0:
                        if 0 <= maxWithdrawal:
                            if 0 < -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                     gas 2300 wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                emit Withdraw(msg.sender, 0);
                            else:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                            if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require sub_e2c61aeb[address(msg.sender)] >= 0
                        sub_e2c61aeb[address(msg.sender)] = 0
                        if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                            if sub_e2c61aeb[address(msg.sender)] >= -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value sub_e2c61aeb[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                            if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
                else:
                    require deposited[address(msg.sender)]
                    require 3 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 3
                    if sub_e2c61aeb[address(msg.sender)] <= 0:
                        if 0 <= maxWithdrawal:
                            if 0 < (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                     gas 2300 wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                emit Withdraw(msg.sender, 0);
                            else:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                            if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require sub_e2c61aeb[address(msg.sender)] >= 0
                        sub_e2c61aeb[address(msg.sender)] = 0
                        if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                            if sub_e2c61aeb[address(msg.sender)] >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value sub_e2c61aeb[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                            if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
            else:
                require deposited[address(msg.sender)]
                require 10 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 10
                if not 10 * deposited[address(msg.sender)] / 1000:
                    if not deposited[address(msg.sender)]:
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if 0 <= maxWithdrawal:
                                if 0 < -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    emit Withdraw(msg.sender, 0);
                                else:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require sub_e2c61aeb[address(msg.sender)] >= 0
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if sub_e2c61aeb[address(msg.sender)] >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require deposited[address(msg.sender)]
                        require 3 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 3
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if 0 <= maxWithdrawal:
                                if 0 < (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    emit Withdraw(msg.sender, 0);
                                else:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require sub_e2c61aeb[address(msg.sender)] >= 0
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if sub_e2c61aeb[address(msg.sender)] >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                else:
                    require 10 * deposited[address(msg.sender)] / 1000
                    require 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime / 10 * deposited[address(msg.sender)] / 1000 == block.timestamp - time[address(msg.sender)] / stepTime
                    if not deposited[address(msg.sender)]:
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime <= maxWithdrawal:
                                if 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                                    emit Withdraw(msg.sender, 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) - maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] = withdraw[address(msg.sender)] + (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] - maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require deposited[address(msg.sender)]
                        require 3 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 3
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime <= maxWithdrawal:
                                if 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                                    emit Withdraw(msg.sender, 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) - maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= 10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] = withdraw[address(msg.sender)] + (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (10 * deposited[address(msg.sender)] / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] - maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
        else:
            if not deposited[address(msg.sender)]:
                if not deposited[address(msg.sender)]:
                    if sub_e2c61aeb[address(msg.sender)] <= 0:
                        if 0 <= maxWithdrawal:
                            if 0 < -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                     gas 2300 wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                emit Withdraw(msg.sender, 0);
                            else:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                            if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require sub_e2c61aeb[address(msg.sender)] >= 0
                        sub_e2c61aeb[address(msg.sender)] = 0
                        if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                            if sub_e2c61aeb[address(msg.sender)] >= -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value sub_e2c61aeb[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                            if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value -withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
                else:
                    require deposited[address(msg.sender)]
                    require 3 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 3
                    if sub_e2c61aeb[address(msg.sender)] <= 0:
                        if 0 <= maxWithdrawal:
                            if 0 < (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                     gas 2300 wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                emit Withdraw(msg.sender, 0);
                            else:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                            if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require sub_e2c61aeb[address(msg.sender)] >= 0
                        sub_e2c61aeb[address(msg.sender)] = 0
                        if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                            if sub_e2c61aeb[address(msg.sender)] >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value sub_e2c61aeb[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                        else:
                            sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                            if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                call msg.sender with:
                                   value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                deposited[address(msg.sender)] = 0
                                time[address(msg.sender)] = 0
                                sub_168de833[address(msg.sender)] = 0
                                withdraw[address(msg.sender)] = 0
                                sub_e2c61aeb[address(msg.sender)] = 0
                                countOfInvestors--
                                emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                call msg.sender with:
                                   value maxWithdrawal wei
                                     gas 2300 * is_zero(value) wei
                                if not block.timestamp - time[address(msg.sender)] / stepTime:
                                    require time[address(msg.sender)] >= 0
                                else:
                                    require block.timestamp - time[address(msg.sender)] / stepTime
                                    require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                    require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                withdraw[address(msg.sender)] += maxWithdrawal
                                emit Withdraw(msg.sender, maxWithdrawal);
            else:
                require deposited[address(msg.sender)]
                require deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / deposited[address(msg.sender)] == block.timestamp - time[address(msg.sender)] / stepTime
                if not deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000:
                    if not deposited[address(msg.sender)]:
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if 0 <= maxWithdrawal:
                                if 0 < -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    emit Withdraw(msg.sender, 0);
                                else:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require sub_e2c61aeb[address(msg.sender)] >= 0
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if sub_e2c61aeb[address(msg.sender)] >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require deposited[address(msg.sender)]
                        require 3 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 3
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if 0 <= maxWithdrawal:
                                if 0 < (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    emit Withdraw(msg.sender, 0);
                                else:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = -maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require sub_e2c61aeb[address(msg.sender)] >= 0
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if sub_e2c61aeb[address(msg.sender)] >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] -= maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                else:
                    require deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000
                    require deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime / deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 == block.timestamp - time[address(msg.sender)] / stepTime
                    if not deposited[address(msg.sender)]:
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime <= maxWithdrawal:
                                if deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                                    emit Withdraw(msg.sender, deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) - maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] = withdraw[address(msg.sender)] + (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] - maxWithdrawal
                                if maxWithdrawal >= -withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value -withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, -withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                    else:
                        require deposited[address(msg.sender)]
                        require 3 * deposited[address(msg.sender)] / deposited[address(msg.sender)] == 3
                        if sub_e2c61aeb[address(msg.sender)] <= 0:
                            if deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime <= maxWithdrawal:
                                if deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                                    emit Withdraw(msg.sender, deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) - maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
                        else:
                            require (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime
                            sub_e2c61aeb[address(msg.sender)] = 0
                            if (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] <= maxWithdrawal:
                                if (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] = withdraw[address(msg.sender)] + (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]
                                    emit Withdraw(msg.sender, (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)]);
                            else:
                                sub_e2c61aeb[address(msg.sender)] = (deposited[address(msg.sender)] * block.timestamp - time[address(msg.sender)] / stepTime / 1000 * block.timestamp - time[address(msg.sender)] / stepTime) + sub_e2c61aeb[address(msg.sender)] - maxWithdrawal
                                if maxWithdrawal >= (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]:
                                    call msg.sender with:
                                       value (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    deposited[address(msg.sender)] = 0
                                    time[address(msg.sender)] = 0
                                    sub_168de833[address(msg.sender)] = 0
                                    withdraw[address(msg.sender)] = 0
                                    sub_e2c61aeb[address(msg.sender)] = 0
                                    countOfInvestors--
                                    emit Withdraw(msg.sender, (3 * deposited[address(msg.sender)]) - withdraw[address(msg.sender)]);
                                else:
                                    call msg.sender with:
                                       value maxWithdrawal wei
                                         gas 2300 * is_zero(value) wei
                                    if not block.timestamp - time[address(msg.sender)] / stepTime:
                                        require time[address(msg.sender)] >= 0
                                    else:
                                        require block.timestamp - time[address(msg.sender)] / stepTime
                                        require block.timestamp - time[address(msg.sender)] / stepTime * stepTime / block.timestamp - time[address(msg.sender)] / stepTime == stepTime
                                        require (block.timestamp - time[address(msg.sender)] / stepTime * stepTime) + time[address(msg.sender)] >= block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                        time[address(msg.sender)] += block.timestamp - time[address(msg.sender)] / stepTime * stepTime
                                    require withdraw[address(msg.sender)] + maxWithdrawal >= withdraw[address(msg.sender)]
                                    withdraw[address(msg.sender)] += maxWithdrawal
                                    emit Withdraw(msg.sender, maxWithdrawal);
}



}
