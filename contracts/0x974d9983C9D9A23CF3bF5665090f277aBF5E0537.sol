contract main {




// =====================  Runtime code  =====================


uint256 sub_803397c4;
uint256 sub_e7f3074c;
uint256 bet;
uint256 sub_30d86a7d;
uint256 sub_3c89a6b9;
address stor5;
address playerAddress;
uint256 sub_40d5ff58;
uint8 stor8;
uint256 time;
uint256 waitTime;

function bet() {
    return bet
}

function time() {
    return time
}

function sub_30d86a7d(?) {
    return sub_30d86a7d
}

function sub_3c89a6b9(?) {
    return sub_3c89a6b9
}

function first() {
    return bool(stor8)
}

function sub_40d5ff58(?) {
    return sub_40d5ff58
}

function player() {
    return playerAddress
}

function sub_803397c4(?) {
    return sub_803397c4
}

function waitTime() {
    return waitTime
}

function sub_e7f3074c(?) {
    return sub_e7f3074c
}

function _fallback() payable {
    if bool(stor8) == 1:
        if msg.value < sub_803397c4:
            revert with 0, 'Wrong ETH value'
        if msg.value > sub_e7f3074c:
            revert with 0, 'Wrong ETH value'
        require sub_40d5ff58 + msg.value >= sub_40d5ff58
        sub_40d5ff58 += msg.value
        playerAddress = msg.sender
        time = block.timestamp
        bet = msg.value
        if not bet:
            require bet >= 0
            sub_30d86a7d = bet
        else:
            require bet
            require bet * sub_3c89a6b9 / bet == sub_3c89a6b9
            require (bet * sub_3c89a6b9 / 100) + bet >= bet * sub_3c89a6b9 / 100
            sub_30d86a7d = (bet * sub_3c89a6b9 / 100) + bet
        stor8 = 0
        emit Bet(playerAddress, time, bet);
    else:
        if block.timestamp >= time + waitTime:
            emit 0xfb169721: playerAddress, time, bet
            if msg.value < sub_803397c4:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call playerAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                emit Withdrawal(playerAddress, block.timestamp, eth.balance(this.address), bet);
                sub_40d5ff58 = 0
                playerAddress = stor5
                bet = sub_803397c4
                sub_30d86a7d = bet
                time = 0
                stor8 = 1
            else:
                if msg.value > sub_e7f3074c:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call playerAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    emit Withdrawal(playerAddress, block.timestamp, eth.balance(this.address), bet);
                    sub_40d5ff58 = 0
                    playerAddress = stor5
                    bet = sub_803397c4
                    sub_30d86a7d = bet
                    time = 0
                    stor8 = 1
                else:
                    require msg.value <= eth.balance(this.address)
                    call playerAddress with:
                       value eth.balance(this.address) - msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= eth.balance(this.address)
                    emit Withdrawal(playerAddress, block.timestamp, eth.balance(this.address) - msg.value, bet);
                    sub_40d5ff58 = 0
                    if msg.value < sub_803397c4:
                        revert with 0, 'Wrong ETH value'
                    if msg.value > sub_e7f3074c:
                        revert with 0, 'Wrong ETH value'
                    require sub_40d5ff58 + msg.value >= sub_40d5ff58
                    sub_40d5ff58 += msg.value
                    playerAddress = msg.sender
                    time = block.timestamp
                    bet = msg.value
                    if not bet:
                        require bet >= 0
                        sub_30d86a7d = bet
                    else:
                        require bet
                        require bet * sub_3c89a6b9 / bet == sub_3c89a6b9
                        require (bet * sub_3c89a6b9 / 100) + bet >= bet * sub_3c89a6b9 / 100
                        sub_30d86a7d = (bet * sub_3c89a6b9 / 100) + bet
                    stor8 = 0
                    emit Bet(playerAddress, time, bet);
        else:
            if msg.value < sub_30d86a7d:
                revert with 0, 'Wrong ETH value'
            require bet <= msg.value
            if not msg.value - bet:
                require bet >= 0
                call playerAddress with:
                   value bet wei
                     gas 2300 * is_zero(value) wei
            else:
                require msg.value - bet
                require (10 * msg.value) - (10 * bet) / msg.value - bet == 10
                require ((10 * msg.value) - (10 * bet) / 11) + bet >= (10 * msg.value) - (10 * bet) / 11
                call playerAddress with:
                   value ((10 * msg.value) - (10 * bet) / 11) + bet wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.value - bet:
                require bet >= 0
                emit Withdrawal(playerAddress, block.timestamp, bet, bet);
            else:
                require msg.value - bet
                require (10 * msg.value) - (10 * bet) / msg.value - bet == 10
                require ((10 * msg.value) - (10 * bet) / 11) + bet >= (10 * msg.value) - (10 * bet) / 11
                emit Withdrawal(playerAddress, block.timestamp, ((10 * msg.value) - (10 * bet) / 11) + bet, bet);
            if not msg.value - bet:
                call stor5 with:
                     gas 2300 wei
            else:
                require msg.value - bet
                require msg.value - bet / msg.value - bet == 1
                call stor5 with:
                   value msg.value - bet / 11 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            playerAddress = msg.sender
            time = block.timestamp
            bet = msg.value
            if not bet:
                require bet >= 0
                sub_30d86a7d = bet
            else:
                require bet
                require bet * sub_3c89a6b9 / bet == sub_3c89a6b9
                require (bet * sub_3c89a6b9 / 100) + bet >= bet * sub_3c89a6b9 / 100
                sub_30d86a7d = (bet * sub_3c89a6b9 / 100) + bet
            emit Bet(playerAddress, time, bet);
}



}
