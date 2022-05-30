contract main {




// =====================  Runtime code  =====================


#
#  - spinAll()
#  - spinDeposit()
#  - spin(uint256 arg1)
#
const getBalance = eth.balance(this.address)


address stor0;
address adminAddress;
uint256 devBalance;
uint8 stor3;
uint256 minBet;
uint256 maxBet;
array of uint8 brackets;
uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;

function maxBet() {
    return maxBet
}

function minBet() {
    return minBet
}

function gamePaused() {
    return bool(stor3)
}

function devBalance() {
    return devBalance
}

function brackets(uint256 arg1) {
    require arg1 < 10
    return brackets[uint8(arg1)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function gamePause() {
    require msg.sender == adminAddress
    stor3 = 1
}

function gameUnpause() {
    require msg.sender == adminAddress
    stor3 = 0
}

function setRandomizer(address arg1) {
    require msg.sender == adminAddress
    stor0 = arg1
}

function withdrawDevFees() {
    require msg.sender == adminAddress
    call adminAddress with:
       value devBalance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    devBalance = 0
}

function getBalanceOf(address arg1) {
    if not stor9[address(arg1)]:
        return 0
    require stor9[address(arg1)]
    require stor9[address(arg1)] * stor8[address(arg1)] / stor9[address(arg1)] == stor8[address(arg1)]
    if not stor9[address(arg1)] * stor8[address(arg1)]:
        return 0
    require stor9[address(arg1)] * stor8[address(arg1)]
    require stor9[address(arg1)] * stor8[address(arg1)] * stor7 / stor9[address(arg1)] * stor8[address(arg1)] == stor7
    return (stor9[address(arg1)] * stor8[address(arg1)] * stor7 / 100000000000000000000000000 * 10^18)
}

function getBalanceMy() {
    if not stor9[address(msg.sender)]:
        return 0
    require stor9[address(msg.sender)]
    require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
    if not stor9[address(msg.sender)] * stor8[address(msg.sender)]:
        return 0
    require stor9[address(msg.sender)] * stor8[address(msg.sender)]
    require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
    return (stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18)
}

function betPool(address arg1) {
    if not stor9[address(arg1)]:
        if 0 <= eth.balance(this.address):
            if devBalance <= eth.balance(this.address):
                return (eth.balance(this.address) - devBalance)
    else:
        if stor9[address(arg1)]:
            if stor9[address(arg1)] * stor8[address(arg1)] / stor9[address(arg1)] == stor8[address(arg1)]:
                if not stor9[address(arg1)] * stor8[address(arg1)]:
                    if 0 <= eth.balance(this.address):
                        if devBalance <= eth.balance(this.address):
                            return (eth.balance(this.address) - devBalance)
                else:
                    if stor9[address(arg1)] * stor8[address(arg1)]:
                        if stor9[address(arg1)] * stor8[address(arg1)] * stor7 / stor9[address(arg1)] * stor8[address(arg1)] == stor7:
                            if stor9[address(arg1)] * stor8[address(arg1)] * stor7 / 100000000000000000000000000 * 10^18 <= eth.balance(this.address):
                                if devBalance <= eth.balance(this.address) - (stor9[address(arg1)] * stor8[address(arg1)] * stor7 / 100000000000000000000000000 * 10^18):
                                    return (eth.balance(this.address) - (stor9[address(arg1)] * stor8[address(arg1)] * stor7 / 100000000000000000000000000 * 10^18) - devBalance)
    revert
}

function deposit() payable {
    require tx.origin == msg.sender
    require not stor3
    require msg.value >= 2 * minBet
    require devBalance + (msg.value / 50) >= devBalance
    devBalance += msg.value / 50
    if not stor9[address(msg.sender)]:
        require msg.value >= 0
        require msg.value / 50 <= msg.value
        stor9[address(msg.sender)] = msg.value - (msg.value / 50)
    else:
        require stor9[address(msg.sender)]
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
        if not stor9[address(msg.sender)] * stor8[address(msg.sender)]:
            require msg.value >= 0
            require msg.value / 50 <= msg.value
            stor9[address(msg.sender)] = msg.value - (msg.value / 50)
        else:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)]
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
            require (stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18) + msg.value >= stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
            require msg.value / 50 <= (stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18) + msg.value
            stor9[address(msg.sender)] = (stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18) + msg.value - (msg.value / 50)
    require stor7
    stor8[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor7
    emit onDeposit(msg.value, eth.balance(this.address), msg.value / 50, block.timestamp, msg.sender);
}

function refund(address arg1) {
    require msg.sender == adminAddress
    if not stor9[address(arg1)]:
        call arg1 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor9[address(arg1)] = 0
        require stor7
        stor8[address(arg1)] = 100000000000000000000000000 * 10^18 / stor7
        emit onWithdraw(0, eth.balance(this.address), block.timestamp, arg1);
    else:
        require stor9[address(arg1)]
        require stor9[address(arg1)] * stor8[address(arg1)] / stor9[address(arg1)] == stor8[address(arg1)]
        if not stor9[address(arg1)] * stor8[address(arg1)]:
            call arg1 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor9[address(arg1)] = 0
            require stor7
            stor8[address(arg1)] = 100000000000000000000000000 * 10^18 / stor7
            emit onWithdraw(0, eth.balance(this.address), block.timestamp, arg1);
        else:
            require stor9[address(arg1)] * stor8[address(arg1)]
            require stor9[address(arg1)] * stor8[address(arg1)] * stor7 / stor9[address(arg1)] * stor8[address(arg1)] == stor7
            call arg1 with:
               value stor9[address(arg1)] * stor8[address(arg1)] * stor7 / 100000000000000000000000000 * 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor9[address(arg1)] = 0
            require stor7
            stor8[address(arg1)] = 100000000000000000000000000 * 10^18 / stor7
            emit onWithdraw(stor9[address(arg1)] * stor8[address(arg1)] * stor7 / 100000000000000000000000000 * 10^18, eth.balance(this.address), block.timestamp, arg1);
}

function withdraw(uint256 arg1) {
    require tx.origin == msg.sender
    require arg1 > 0
    if not stor9[address(msg.sender)]:
        require arg1 <= 0
    else:
        require stor9[address(msg.sender)]
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
        if not stor9[address(msg.sender)] * stor8[address(msg.sender)]:
            require arg1 <= 0
        else:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)]
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
            require arg1 <= stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor9[address(msg.sender)]:
        require arg1 <= 0
        stor9[address(msg.sender)] = -arg1
    else:
        require stor9[address(msg.sender)]
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
        if not stor9[address(msg.sender)] * stor8[address(msg.sender)]:
            require arg1 <= 0
            stor9[address(msg.sender)] = -arg1
        else:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)]
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
            require arg1 <= stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
            stor9[address(msg.sender)] = (stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18) - arg1
    require stor7
    stor8[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor7
    emit onWithdraw(arg1, eth.balance(this.address), block.timestamp, msg.sender);
}

function withdrawAll() {
    require tx.origin == msg.sender
    require stor9[address(msg.sender)]
    require stor9[address(msg.sender)]
    require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
    require stor9[address(msg.sender)] * stor8[address(msg.sender)]
    require stor9[address(msg.sender)] * stor8[address(msg.sender)]
    require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
    require tx.origin == msg.sender
    require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 > 0
    if not stor9[address(msg.sender)]:
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 <= 0
    else:
        require stor9[address(msg.sender)]
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
        if not stor9[address(msg.sender)] * stor8[address(msg.sender)]:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 <= 0
        else:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)]
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 <= stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
    call msg.sender with:
       value stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor9[address(msg.sender)]:
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 <= 0
        stor9[address(msg.sender)] = -stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
    else:
        require stor9[address(msg.sender)]
        require stor9[address(msg.sender)] * stor8[address(msg.sender)] / stor9[address(msg.sender)] == stor8[address(msg.sender)]
        if not stor9[address(msg.sender)] * stor8[address(msg.sender)]:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 <= 0
            stor9[address(msg.sender)] = -stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
        else:
            require stor9[address(msg.sender)] * stor8[address(msg.sender)]
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / stor9[address(msg.sender)] * stor8[address(msg.sender)] == stor7
            require stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18 <= stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18
            stor9[address(msg.sender)] = 0
    require stor7
    stor8[address(msg.sender)] = 100000000000000000000000000 * 10^18 / stor7
    emit onWithdraw(stor9[address(msg.sender)] * stor8[address(msg.sender)] * stor7 / 100000000000000000000000000 * 10^18, eth.balance(this.address), block.timestamp, msg.sender);
}



}
