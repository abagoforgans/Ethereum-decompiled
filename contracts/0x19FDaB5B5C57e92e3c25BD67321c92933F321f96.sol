contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 7691]
}



// =====================  Runtime code  =====================


#
#  - placeBet(uint256 arg1, uint8 arg2)
#
address stor0;
array of struct gameMinAmountByBet;
array of uint256 stor2;
array of uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;

function getGameRoundOpen(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    return bool(uint8(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_768))
}

function getRoundPointer(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    return uint256(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_256)
}

function getGameMinAmountByBet(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_1024)
}

function getRoundNumberOfBets(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    return uint256(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_1024)
}

function getRoundBetOrigin(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    require arg3 < uint256(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_1024)
    return address(stor[(5 * arg3) + sha3((6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7) + 4)].field_256)
}

function getRoundNumber(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    return uint8(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_776)
}

function getGameCurrentRoundId(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_1536)
}

function getRoundBetNumber(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    require arg3 < uint256(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_1024)
    return uint8(stor[(5 * arg3) + sha3((6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7) + 4)].field_768)
}

function getGameMaxNumberOfBets(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_768)
}

function getPointer(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_512)
}

function getGamePrize(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_1280)
}

function getRoundBetAmount(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1792)
    require arg3 < uint256(stor[(6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7)].field_1024)
    return uint256(stor[(5 * arg3) + sha3((6 * arg2) + sha3((8 * arg1) + ('name', 'gameMinAmountByBet', 1) + 7) + 4)].field_512)
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getBlockHash(uint256 arg1) {
    if arg1 <= 255:
        return block.hash(block.number - arg1)
    return block.hash(block.number - 255)
}

function getBalance() {
    if stor2[address(msg.sender)] <= 0:
        return 0
    if stor2[address(msg.sender)] >= eth.balance(this.address):
        return 0
    return stor2[address(msg.sender)]
}

function openGame(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    require arg1 < gameMinAmountByBet.length
    uint8(gameMinAmountByBet[arg1].field_256) = 1
    emit GameOpened(arg1);
    return 1
}

function closeGame(uint256 arg1) {
    if stor0 != msg.sender:
        return 0
    require arg1 < gameMinAmountByBet.length
    uint8(gameMinAmountByBet[arg1].field_256) = 0
    emit GameClosed(arg1);
    return 1
}

function numberOfClosedGames() {
    idx = 0
    s = 0
    while idx < gameMinAmountByBet.length:
        mem[0] = 1
        if bool(uint8(gameMinAmountByBet[idx].field_256)) == 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
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

function getGames() {
    idx = 0
    s = 0
    while idx < gameMinAmountByBet.length:
        mem[0] = 1
        if bool(uint8(gameMinAmountByBet[idx].field_256)) == 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    mem[128] = gameMinAmountByBet.length - s
    idx = 0
    while idx < gameMinAmountByBet.length:
        mem[0] = 1
        if bool(uint8(gameMinAmountByBet[idx].field_256)) == 1:
            require idx < gameMinAmountByBet.length
            mem[0] = 1
            require idx < gameMinAmountByBet.length - s
            mem[(32 * idx) + 160] = uint256(gameMinAmountByBet[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * gameMinAmountByBet.length - s) + 160] = 32
    mem[(32 * gameMinAmountByBet.length - s) + 192] = gameMinAmountByBet.length - s
    mem[(32 * gameMinAmountByBet.length - s) + 224 len floor32(gameMinAmountByBet.length - s)] = mem[160 len floor32(gameMinAmountByBet.length - s)]
    return 32, mem[(32 * gameMinAmountByBet.length - s) + 192 len (32 * gameMinAmountByBet.length - s) + 32]
}

function getNumber(bytes32 arg1) {
    idx = 31
    s = 0
    while idx >= 0:
        require idx < 32
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 < '0':
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                idx = idx - 1
                s = s
                continue 
            idx = idx - 1
            s = 1
            continue 
        require idx < 32
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 > '9':
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                idx = idx - 1
                s = s
                continue 
            idx = idx - 1
            s = 1
            continue 
        require idx < 32
        return uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256) - 48)
    return 0
}

function createGame(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if stor0 != msg.sender:
        return 0
    gameMinAmountByBet.length++
    if not gameMinAmountByBet.length <= gameMinAmountByBet.length + 1:
        mem[0] = 1
        idx = 8 * gameMinAmountByBet.length + 1
        while sha3(1) + (8 * gameMinAmountByBet.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint8(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 7) + (6 * uint256(stor[idx + sha3(mem[0]) + 7])) > s:
                uint256(stor[s]) = 0
                uint256(gameMinAmountByBet[s].field_0) = 0
                stor2[s] = 0
                uint16(stor3[s]) = 0
                stor4[s] = 0
                t = sha3(s + 4)
                while sha3(s + 4) + (5 * stor4[s]) > t:
                    uint256(stor[t]) = 0
                    address(gameMinAmountByBet[t].field_0) = 0
                    stor2[t] = 0
                    uint8(stor3[t]) = 0
                    stor4[t] = 0
                    t = t + 5
                    continue 
                stor5[s] = 0
                mem[0] = s + 5
                t = sha3(s + 5)
                while sha3(s + 5) + stor5[s] > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
                s = s + 6
                continue 
            idx = idx + 8
            continue 
    require gameMinAmountByBet.length < gameMinAmountByBet.length
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_0) = gameMinAmountByBet.length
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_512) = arg1
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_768) = arg2
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1024) = arg3
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1280) = arg4
    uint8(gameMinAmountByBet[gameMinAmountByBet.length].field_256) = 1
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)++
    if not uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792) <= uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792) + 1:
        mem[0] = (8 * gameMinAmountByBet.length) + sha3(1) + 7
        idx = (6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)) + 6
        while sha3((8 * gameMinAmountByBet.length) + sha3(1) + 7) + (6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint16(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + (5 * uint256(stor[idx + sha3(mem[0]) + 4])) > s:
                uint256(stor[s]) = 0
                address(gameMinAmountByBet[s].field_0) = 0
                stor2[s] = 0
                uint8(stor3[s]) = 0
                stor4[s] = 0
                s = s + 5
                continue 
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 6
            continue 
    require gameMinAmountByBet.length < gameMinAmountByBet.length
    require uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792) < uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)
    uint256(stor[(6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)) + sha3((8 * gameMinAmountByBet.length) + ('name', 'gameMinAmountByBet', 1) + 7)].field_0) = uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)
    require gameMinAmountByBet.length < gameMinAmountByBet.length
    require uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792) < uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)
    uint8(stor[(6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)) + sha3((8 * gameMinAmountByBet.length) + ('name', 'gameMinAmountByBet', 1) + 7)].field_768) = 1
    emit RoundOpen(gameMinAmountByBet.length, uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792));
    require gameMinAmountByBet.length < gameMinAmountByBet.length
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536) = uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1792)
    return gameMinAmountByBet.length
}



}
