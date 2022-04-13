contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 10^16
    stor3 = 5 * 10^18
    stor4 = 1
    stor5 = 0
    stor0 = msg.sender
    return code.data[82 len 3875]
}



// =====================  Runtime code  =====================


address stor0;
array of struct gameNumber;
uint256 minBetAmount;
uint256 maxBetAmount;
uint256 stor4;

function getGameNumber(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return gameNumber[address(arg1)][arg2].field_1024
}

function getGameStart(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return gameNumber[address(arg1)][arg2].field_512
}

function getGameHash(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return gameNumber[address(arg1)][arg2].field_768
}

function getMaxBetAmount() {
    return maxBetAmount
}

function getMinBetAmount() {
    return minBetAmount
}

function getGameWin(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return bool(gameNumber[address(arg1)][arg2].field_1032)
}

function getGameEnd(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return gameNumber[address(arg1)][arg2].field_520
}

function getGamePrize(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return gameNumber[address(arg1)][arg2].field_1280
}

function getGameIds(address arg1) {
    idx = 0
    while idx < gameNumber[address(arg1)].field_0:
        require idx < gameNumber[address(arg1)].field_0
        require idx < gameNumber[address(arg1)].field_0
        mem[(32 * idx) + 160] = gameNumber[address(arg1)][idx].field_0
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    mem[(32 * gameNumber[address(arg1)].field_0) + 224 len floor32(gameNumber[address(arg1)].field_0)] = mem[160 len floor32(gameNumber[address(arg1)].field_0)]
    return Array(len=gameNumber[address(arg1)].field_0, data=mem[160 len floor32(gameNumber[address(arg1)].field_0)], mem[(32 * gameNumber[address(arg1)].field_0) + floor32(gameNumber[address(arg1)].field_0) + 224 len (32 * gameNumber[address(arg1)].field_0) - floor32(gameNumber[address(arg1)].field_0)]), 
}

function getGameAmount(address arg1, uint256 arg2) {
    require arg2 < gameNumber[address(arg1)].field_0
    return gameNumber[address(arg1)][arg2].field_256
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

function placeBet(uint8 arg1, uint8 arg2) payable {
    if msg.value < minBetAmount:
        return 0
    if msg.value > maxBetAmount:
        return 0
    if uint8(arg2 + -arg1 + 1) > 9:
        return 0
    if uint8(arg2 + -arg1 + 1) < 1:
        return 0
    gameNumber[address(msg.sender)].field_0++
    if not gameNumber[address(msg.sender)].field_0 <= gameNumber[address(msg.sender)].field_0 + 1:
        idx = (6 * gameNumber[address(msg.sender)].field_0) + 6
        while 6 * gameNumber[address(msg.sender)].field_0 > idx:
            gameNumber[address(msg.sender)][idx].field_0 = 0
            gameNumber[address(msg.sender)][idx].field_256 = 0
            gameNumber[address(msg.sender)][idx].field_512 = 0
            gameNumber[address(msg.sender)][idx].field_768 = 0
            gameNumber[address(msg.sender)][idx].field_1024 = 0
            gameNumber[address(msg.sender)][idx].field_1280 = 0
            idx = idx + 6
            continue 
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_0 = gameNumber[address(msg.sender)].field_0
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_256 = msg.value
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_512 = arg1
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_520 = arg2
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    if stor4 > 255:
        gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_768 = block.hash(block.number - 255)
    else:
        if stor4 >= 0:
            gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_768 = block.hash(block.number - stor4)
        else:
            gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_768 = block.hash(block.number - 1)
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    idx = 31
    while idx >= 0:
        require idx < 32
        if Mask(8, -(('field', 771, ('stor', ('array', ('mul', 6, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), 0) + 256, idx) << (('field', 771, ('stor', ('array', ('mul', 6, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), 0) - 8 < '0':
            idx = idx - 1
            continue 
        require idx < 32
        if Mask(8, -(('field', 771, ('stor', ('array', ('mul', 6, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), 0) + 256, idx) << (('field', 771, ('stor', ('array', ('mul', 6, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), 0) - 8 > '9':
            idx = idx - 1
            continue 
        require idx < 32
        require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
        gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024 = uint8((Mask(8, -(('field', 771, ('stor', ('array', ('mul', 6, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), 0) + 256, idx) << (('field', 771, ('stor', ('array', ('mul', 6, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'gameNumber', 1))))), 0) - 256) - 48)
        require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
        gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280 = 1
        require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
        require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
        if gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024 >= arg1:
            if gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024 <= arg2:
                require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
                gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1032 = 1
                require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
                gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280 = (msg.value / 10 * uint8(-arg2 + arg1 + 9)) + msg.value
        require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
        require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
        if not gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1032:
            emit GameLoose(arg1 << 248, arg2 << 248, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024, msg.value, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280, msg.sender, gameNumber[address(msg.sender)].field_0);
        else:
            emit GameWin(arg1 << 248, arg2 << 248, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024, msg.value, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280, msg.sender, gameNumber[address(msg.sender)].field_0);
        call msg.sender with:
           value gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 1
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024 = 0
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280 = 1
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    if gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024 >= arg1:
        if gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024 <= arg2:
            require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
            gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1032 = 1
            require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
            gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280 = (msg.value / 10 * uint8(-arg2 + arg1 + 9)) + msg.value
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    require gameNumber[address(msg.sender)].field_0 < gameNumber[address(msg.sender)].field_0
    if not gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1032:
        emit GameLoose(arg1 << 248, arg2 << 248, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024, msg.value, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280, msg.sender, gameNumber[address(msg.sender)].field_0);
    else:
        emit GameWin(arg1 << 248, arg2 << 248, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1024, msg.value, gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280, msg.sender, gameNumber[address(msg.sender)].field_0);
    call msg.sender with:
       value gameNumber[address(msg.sender)][gameNumber[address(msg.sender)].field_0].field_1280 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
