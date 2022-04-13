contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor2 = 0
    stor3 = 1
    stor4 = 5 * 10^18
    stor5 = 1
    stor0 = msg.sender
    return code.data[86 len 3710]
}



// =====================  Runtime code  =====================


address stor0;
array of struct games;
uint256 numberOfGames;
uint256 minBetAmount;
uint256 maxBetAmount;
uint8 stor5;

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_0, 
           games[arg1].field_256,
           games[arg1].field_512,
           games[arg1].field_768,
           games[arg1].field_776,
           games[arg1].field_1024,
           games[arg1].field_1280,
           bool(games[arg1].field_1288),
           games[arg1].field_1536
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
    return bool(games[arg1].field_1288)
}

function getMaxBetAmount() {
    return maxBetAmount
}

function getMinBetAmount() {
    return minBetAmount
}

function getGameNumber(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_1280
}

function getGameAmount(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_512
}

function getGameStart(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_768
}

function getGameHash(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_1024
}

function getGamePrize(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_1536
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
    if uint8(arg2 + -arg1 + 1) > 9:
        return 0
    if uint8(arg2 + -arg1 + 1) < 1:
        return 0
    games.length++
    if not games.length <= games.length + 1:
        idx = (7 * games.length) + 7
        while 7 * games.length > idx:
            games[idx].field_0 = 0
            games[idx].field_256 = 0
            games[idx].field_512 = 0
            games[idx].field_768 = 0
            games[idx].field_1024 = 0
            games[idx].field_1280 = 0
            games[idx].field_1536 = 0
            idx = idx + 7
            continue 
    require games.length < games.length
    games[games.length].field_256 = games.length
    games[games.length].field_0 = msg.sender
    games[games.length].field_512 = msg.value
    games[games.length].field_768 = arg1
    games[games.length].field_776 = arg2
    require games.length < games.length
    if stor5 > 255:
        games[games.length].field_1024 = block.hash(block.number - 255)
    else:
        if stor5 >= 0:
            games[games.length].field_1024 = block.hash(block.number - stor5)
        else:
            games[games.length].field_1024 = block.hash(block.number - 1)
    idx = 31
    while idx >= 1:
        require idx < 32
        if Mask(8, -(('field', 1027, ('stor', ('array', ('mul', 7, ('stor', ('length', ('name', 'games', 1)))), ('name', 'games', 1)))), 0) + 256, idx) << (('field', 1027, ('stor', ('array', ('mul', 7, ('stor', ('length', ('name', 'games', 1)))), ('name', 'games', 1)))), 0) - 256 < 48:
            idx = idx - 1
            continue 
        require idx < 32
        if Mask(8, -(('field', 1027, ('stor', ('array', ('mul', 7, ('stor', ('length', ('name', 'games', 1)))), ('name', 'games', 1)))), 0) + 256, idx) << (('field', 1027, ('stor', ('array', ('mul', 7, ('stor', ('length', ('name', 'games', 1)))), ('name', 'games', 1)))), 0) - 256 > 57:
            idx = idx - 1
            continue 
        require idx < 32
        require games.length < games.length
        games[games.length].field_1280 = uint8((Mask(8, -(('field', 1027, ('stor', ('array', ('mul', 7, ('stor', ('length', ('name', 'games', 1)))), ('name', 'games', 1)))), 0) + 256, idx) << (('field', 1027, ('stor', ('array', ('mul', 7, ('stor', ('length', ('name', 'games', 1)))), ('name', 'games', 1)))), 0) - 256) - 48)
        stor5 = games[games.length].field_1280
        require games.length < games.length
        if games[games.length].field_1280 < arg1:
            games[games.length].field_1536 = 1
        else:
            require games.length < games.length
            if games[games.length].field_1280 > arg2:
                games[games.length].field_1536 = 1
            else:
                games[games.length].field_1288 = 1
                games[games.length].field_1536 = msg.value + (msg.value / 10 * uint8(-arg2 + arg1 + 9))
        call msg.sender with:
           value games[games.length].field_1536 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require games.length < games.length
        if not games[games.length].field_1288:
            emit GameLoose(arg1 << 248, arg2 << 248, games[games.length].field_1280, msg.value, games[games.length].field_1536, msg.sender, games.length);
        else:
            emit GameWin(arg1 << 248, arg2 << 248, games[games.length].field_1280, msg.value, games[games.length].field_1536, msg.sender, games.length);
        return 1
    require games.length < games.length
    games[games.length].field_1280 = stor5
    stor5 = games[games.length].field_1280
    require games.length < games.length
    if games[games.length].field_1280 < arg1:
        games[games.length].field_1536 = 1
    else:
        require games.length < games.length
        if games[games.length].field_1280 > arg2:
            games[games.length].field_1536 = 1
        else:
            games[games.length].field_1288 = 1
            games[games.length].field_1536 = msg.value + (msg.value / 10 * uint8(-arg2 + arg1 + 9))
    call msg.sender with:
       value games[games.length].field_1536 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require games.length < games.length
    if not games[games.length].field_1288:
        emit GameLoose(arg1 << 248, arg2 << 248, games[games.length].field_1280, msg.value, games[games.length].field_1536, msg.sender, games.length);
    else:
        emit GameWin(arg1 << 248, arg2 << 248, games[games.length].field_1280, msg.value, games[games.length].field_1536, msg.sender, games.length);
    return 1
}



}
