contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;

function _fallback() payable {
    stor3 = 0
    stor4 = 10^14
    stor5 = 10^18
    stor7 = 1
    stor0 = msg.sender
    return code.data[80 len 4466]
}



// =====================  Runtime code  =====================


address stor0;
array of struct games;
mapping of uint256 stor2;
uint256 numberOfGames;
uint256 minBetAmount;
uint256 maxBetAmount;
uint256 stor6;
uint256 stor7;

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_0, 
           games[arg1].field_256,
           games[arg1].field_512,
           games[arg1].field_768,
           games[arg1].field_776,
           games[arg1].field_768,
           bool(games[arg1].field_792),
           games[arg1].field_1024,
           games[arg1].field_1280
}

function getGameEnd(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_776
}

function getGamePlayer(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_0
}

function getGameWin(uint256 arg1) {
    require arg1 < games.length
    return bool(games[arg1].field_792)
}

function getMaxBetAmount() {
    return maxBetAmount
}

function getMinBetAmount() {
    return minBetAmount
}

function getGameNumber(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_784
}

function getGameAmount(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_512
}

function getGameStart(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_768
}

function getGamePrize(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_1024
}

function numberOfGames() {
    return numberOfGames
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getNumber(bytes32 arg1) {
    stor7++
    return uint8(uint8(sha3(arg1, stor7 + 1)) % 9)
}

function random(uint8 arg1, uint8 arg2) {
    stor7++
    require uint8(arg1 + arg2)
    return ((sha3(stor7 + 1, stor6) % uint8(arg1 + arg2)) - arg1)
}

function random8(uint8 arg1, uint8 arg2) {
    stor7++
    require uint8(arg1 + arg2)
    return uint8((uint8(sha3(stor7 + 1, stor6)) % uint8(arg1 + arg2)) - arg1)
}

function setMinBetAmount(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    minBetAmount = arg1
    emit MinBetAmountChanged(arg1);
    return minBetAmount
}

function setMaxBetAmount(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    maxBetAmount = arg1
    emit MaxBetAmountChanged(arg1);
    return maxBetAmount
}

function getBalance() {
    if stor2[address(msg.sender)] <= 0:
        return 0
    if stor2[address(msg.sender)] >= eth.balance(this.address):
        return 0
    return stor2[address(msg.sender)]
}

function withdrawOwner(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    if arg1 > eth.balance(this.address):
        return 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return arg1
}

function withdraw() {
    if stor2[address(msg.sender)] <= 0:
        return 0
    if stor2[address(msg.sender)] >= eth.balance(this.address):
        return 0
    if stor2[address(msg.sender)] <= 0:
        return 0
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return stor2[address(msg.sender)]
}

function getGameIds() {
    idx = 0
    while idx < games.length:
        mem[0] = 1
        require idx < games.length
        mem[(32 * idx) + 192] = games[idx].field_256
        idx = idx + 1
        continue 
    mem[(32 * games.length) + 256 len floor32(games.length)] = mem[192 len floor32(games.length)]
    return Array(len=games.length, data=mem[192 len floor32(games.length)], mem[(32 * games.length) + floor32(games.length) + 256 len (32 * games.length) - floor32(games.length)]), 
}

function placeBet(uint8 arg1, uint8 arg2) payable {
    if msg.value < minBetAmount:
        return 0
    if msg.value > maxBetAmount:
        return 0
    if uint8(arg2 + -arg1 + 1) > 7:
        return 0
    if uint8(arg2 + -arg1 + 1) < 1:
        return 0
    games.length++
    if not games.length <= games.length + 1:
        idx = (6 * games.length) + 6
        while 6 * games.length > idx:
            games[idx].field_0 = 0
            games[idx].field_256 = 0
            games[idx].field_512 = 0
            games[idx].field_768 = 0
            games[idx].field_1024 = 0
            games[idx].field_1280 = 0
            idx = idx + 6
            continue 
    numberOfGames++
    emit GameRoll(arg1 << 248, arg2 << 248, msg.value, msg.sender, games.length);
    require games.length < games.length
    games[games.length].field_256 = games.length
    games[games.length].field_0 = msg.sender
    games[games.length].field_512 = msg.value
    games[games.length].field_768 = arg1
    games[games.length].field_776 = arg2
    games[games.length].field_1024 = 1
    games[games.length].field_1280 = block.hash(block.number - 1)
    if games.length <= 0:
        return 0
    require games.length < games.length
    require games.length - 1 < games.length
    if games[games.length].field_0 == games[games.length].field_1280:
        return 0
    require games.length < games.length
    stor7++
    require games.length - 1 < games.length
    games[games.length].field_0 = uint8(uint8(sha3(games[games.length].field_1280, stor7 + 1)) % 9)
    require games.length - 1 < games.length
    if games[games.length].field_0 < games[games.length].field_0:
    else:
        require games.length - 1 < games.length
        if games[games.length].field_0 > games[games.length].field_0:
        else:
            games[games.length].field_0 = 1
            require games.length - 1 < games.length
            games[games.length].field_0 += games[games.length].field_0 / 10 * uint8(-arg2 + arg1 + 9)
    require stor2[stor1[stor1.length].field_0] + games[games.length].field_0 >= stor2[stor1[stor1.length].field_0]
    require games.length - 1 < games.length
    stor2[stor1[stor1.length].field_0] += games[games.length].field_0
    if not games[games.length].field_0:
        emit GameLoose(games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games.length - 1);
    else:
        emit GameWin(games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games[games.length].field_0, games.length - 1);
    return 1
}



}
