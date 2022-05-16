contract main {




// =====================  Runtime code  =====================


const getState = block.number, block.coinbase << 96, block.difficulty


address owner;
array of struct stor1;
array of struct winners;
array of uint256 payments;
uint256 stor4;
address lastWinnerAddress;
array of struct stor6;
uint256 lastPayOut;
uint256 amountRised;
address houseAddress;
uint256 round;
uint256 playValue;
uint256 roundEnds;
uint8 stor13;
mapping of uint256 payOuts;
uint256 stor15;

function lastPayOut() {
    return lastPayOut
}

function round() {
    return round
}

function playValue() {
    return playValue
}

function stopped() {
    return bool(stor13)
}

function payments(uint256 arg1) {
    require arg1 < payments.length
    return payments[arg1]
}

function owner() {
    return owner
}

function payOuts(address arg1) {
    return payOuts[arg1]
}

function winners(uint256 arg1) {
    require arg1 < winners.length
    return winners[arg1].field_0
}

function getWinnerCount() {
    return winners.length
}

function getPlayersCount() {
    return stor1.length
}

function roundEnds() {
    return roundEnds
}

function amountRised() {
    return amountRised
}

function lastWinner() {
    return lastWinnerAddress
}

function house() {
    return houseAddress
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function stopLottery(bool arg1) {
    require msg.sender == owner
    stor13 = uint8(arg1)
}

function setPlayValue(uint256 arg1) {
    require msg.sender == owner
    playValue = arg1
}

function setHouseAddress(address arg1) {
    require msg.sender == owner
    houseAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function play() payable {
    stor1.length++
    stor1[stor1.length].field_0 = msg.sender
    require amountRised + msg.value >= amountRised
    amountRised += msg.value
}

function _fallback() payable {
    stor1.length++
    stor1[stor1.length].field_0 = msg.sender
    require amountRised + msg.value >= amountRised
    amountRised += msg.value
}

function getBalance() {
    require msg.sender == owner
    call houseAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayers() {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function draw() {
    stor15 = sha3(stor15, block.hash(block.number - 1), block.coinbase, block.difficulty)
    emit 0xb76d0203: 43690, stor15, block.hash(block.number - 1), address(block.coinbase), block.difficulty, block.number, stor15
    require stor1.length
    require stor15 % stor1.length < stor1.length
    lastWinnerAddress = stor1[stor15 % stor1.length].field_0
    if not amountRised:
        lastPayOut = amountRised
    else:
        require amountRised
        require amountRised * stor4 / amountRised == stor4
        lastPayOut = amountRised - (amountRised * stor4 / 100)
    winners.length++
    winners[winners.length].field_0 = lastWinnerAddress
    if winners.length > 9:
        idx = winners.length - 10
        s = 0
        while idx < winners.length:
            require s < stor6.length
            mem[0] = 6
            stor6[s].field_0 = winners[idx].field_0
            idx = idx + 1
            s = s + 1
            continue 
    payments.length++
    payments[payments.length] = lastPayOut
    payOuts[stor5] += lastPayOut
    call lastWinnerAddress with:
       value lastPayOut wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 0
    if stor1.length > 0:
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    round++
    amountRised = 0
    roundEnds = block.timestamp + (24 * 3600)
    emit NewWinner(lastWinnerAddress, lastPayOut);
}

function last10() {
    if winners.length >= 11:
        if not stor6.length:
            mem[(32 * stor6.length) + 128] = 32
            mem[(32 * stor6.length) + 160] = stor6.length
            mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
            return memory
              from (32 * stor6.length) + 128
               len (96 * stor6.length) + 64
        mem[128] = address(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
    if not winners.length:
        mem[(32 * winners.length) + 128] = 32
        mem[(32 * winners.length) + 160] = winners.length
        mem[(32 * winners.length) + 192 len floor32(winners.length)] = mem[128 len floor32(winners.length)]
        return memory
          from (32 * winners.length) + 128
           len (96 * winners.length) + 64
    mem[128] = address(winners.field_0)
    idx = 128
    s = 0
    while (32 * winners.length) + 96 > idx:
        mem[idx + 32] = winners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * winners.length) + 192 len floor32(winners.length)] = mem[128 len floor32(winners.length)]
    return Array(len=winners.length, data=mem[128 len floor32(winners.length)], mem[(32 * winners.length) + floor32(winners.length) + 192 len (32 * winners.length) - floor32(winners.length)]), 
}



}
