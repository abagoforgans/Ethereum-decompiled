contract main {


// =======================  Init code  ======================


mapping of address stor0;
mapping of uint256 stor1;
mapping of uint8 stor2;
mapping of uint256 stor4;
mapping of uint256 stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint64 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint256 stor14;
uint16 stor15;
uint32 stor15; offset 16
uint64 stor15; offset 40

function _fallback() payable {
    stor10 = 0
    stor11 = 0
    stor12 = 0
    uint8(stor13.field_16) = 20
    stor14 = 0
    uint16(stor15.field_0) = 908
    stor15.field_16 % 16777216 = 8648000
    stor15.field_40 % 1099511627776 = 0
    require not msg.value
    stor6 = msg.sender
    stor7 = msg.sender
    stor9 = block.number
    stor8 = block.number
    stor2[address(msg.sender)] = 1
    uint8(stor13.field_0) = 13
    uint8(stor13.field_8) = 0
    stor1[stor7] += stor11
    stor4[stor7] = block.number
    stor5[stor7] = block.timestamp
    stor0[stor10] = stor7
    emit 0x59403176: stor12, stor11, stor7, stor10
    stor11 = 0
    stor9 = stor8
    stor10 = uint64(stor10 + 1)
    stor12 = 0
    return code.data[1164 len 5468]
}



// =====================  Runtime code  =====================


mapping of address sub_8456025a;
mapping of uint256 sub_9ec4f722;
mapping of uint8 stor2;
mapping of uint256 sub_434efdd4;
mapping of uint256 sub_b8949dd6;
mapping of uint256 sub_044cc554;
address leaderAddress;
uint256 currentBlock;
uint256 lastblock;
uint64 currentRound;
uint256 currentPot;
uint256 highestBid;
uint8 locktime; offset 16
uint16 roundTime;
uint256 sub_ab3b0b9b;
uint16 sub_e0e63094;
uint64 gracePeriod; offset 16

function sub_044cc554(?) {
    return sub_044cc554[arg1]
}

function leader() {
    return leaderAddress
}

function admins(address arg1) {
    return bool(stor2[arg1])
}

function sub_434efdd4(?) {
    return sub_434efdd4[arg1][arg2]
}

function currentPot() {
    return currentPot
}

function locktime() {
    return locktime
}

function CurrentRound() {
    return currentRound
}

function lastblock() {
    return lastblock
}

function sub_8456025a(?) {
    return sub_8456025a[arg1]
}

function sub_9ec4f722(?) {
    return sub_9ec4f722[arg1]
}

function gracePeriod() {
    return gracePeriod
}

function sub_ab3b0b9b(?) {
    return sub_ab3b0b9b
}

function sub_b8949dd6(?) {
    return sub_b8949dd6[arg1]
}

function highestBid() {
    return highestBid
}

function sub_e0e63094(?) {
    return sub_e0e63094
}

function currentBlock() {
    return currentBlock
}

function roundTime() {
    return roundTime
}

function sub_12435ba2(?) {
    require bool(stor2[address(msg.sender)]) == 1
    require sub_ab3b0b9b > 0
    sub_ab3b0b9b = 0
    call msg.sender with:
       value sub_ab3b0b9b wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_7153e8ee(?) {
    require bool(stor2[address(msg.sender)]) == 1
    require block.timestamp - sub_044cc554[address(arg1)] > gracePeriod
    if sub_9ec4f722[address(arg1)] > 0:
        sub_9ec4f722[address(arg1)] = 0
        call msg.sender with:
           value sub_9ec4f722[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    emit 0xad783794: sub_9ec4f722[address(arg1)], arg1, msg.sender
}

function payDay() {
    require sub_9ec4f722[address(msg.sender)] > 0
    currentBlock = block.number
    if block.number - lastblock > roundTime:
        if currentPot > 0:
            sub_9ec4f722[stor7] += currentPot
            sub_b8949dd6[stor7] = block.number
            sub_044cc554[stor7] = block.timestamp
            sub_8456025a[stor10] = leaderAddress
            emit 0x59403176: highestBid, currentPot, leaderAddress, currentRound
            currentPot = 0
            lastblock = currentBlock
            currentRound = uint64(currentRound + 1)
            highestBid = 0
    if block.number - sub_b8949dd6[address(msg.sender)] > locktime:
        if sub_9ec4f722[address(msg.sender)] > 0:
            sub_9ec4f722[address(msg.sender)] = 0
            call msg.sender with:
               value sub_9ec4f722[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        emit MoneyTransfered(sub_9ec4f722[address(msg.sender)], msg.sender);
}

function placeBid() payable {
    require msg.value > 0
    currentBlock = block.number
    if currentBlock - lastblock > roundTime:
        sub_9ec4f722[stor7] += currentPot
        sub_b8949dd6[stor7] = block.number
        sub_044cc554[stor7] = block.timestamp
        sub_8456025a[stor10] = leaderAddress
        emit 0x59403176: highestBid, currentPot, leaderAddress, currentRound
        currentPot = 0
        lastblock = currentBlock
        currentRound = uint64(currentRound + 1)
        highestBid = 0
    currentPot += msg.value / 1000 * sub_e0e63094
    sub_ab3b0b9b = sub_ab3b0b9b + msg.value - (msg.value / 1000 * sub_e0e63094)
    sub_434efdd4[stor10][address(msg.sender)] += msg.value
    emit 0xb46d776c: msg.value, sub_434efdd4[stor10][address(msg.sender)], msg.sender, currentRound
    if highestBid < sub_434efdd4[stor10][address(msg.sender)]:
        highestBid = sub_434efdd4[stor10][address(msg.sender)]
        leaderAddress = msg.sender
        emit 0xb1a0b7d8: highestBid, leaderAddress, currentRound
}

function _fallback() payable {
    require msg.value > 0
    currentBlock = block.number
    if currentBlock - lastblock > roundTime:
        sub_9ec4f722[stor7] += currentPot
        sub_b8949dd6[stor7] = block.number
        sub_044cc554[stor7] = block.timestamp
        sub_8456025a[stor10] = leaderAddress
        emit 0x59403176: highestBid, currentPot, leaderAddress, currentRound
        currentPot = 0
        lastblock = currentBlock
        currentRound = uint64(currentRound + 1)
        highestBid = 0
    currentPot += msg.value / 1000 * sub_e0e63094
    sub_ab3b0b9b = sub_ab3b0b9b + msg.value - (msg.value / 1000 * sub_e0e63094)
    sub_434efdd4[stor10][address(msg.sender)] += msg.value
    emit 0xb46d776c: msg.value, sub_434efdd4[stor10][address(msg.sender)], msg.sender, currentRound
    if highestBid < sub_434efdd4[stor10][address(msg.sender)]:
        highestBid = sub_434efdd4[stor10][address(msg.sender)]
        leaderAddress = msg.sender
        emit 0xb1a0b7d8: highestBid, leaderAddress, currentRound
}



}
