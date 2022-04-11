contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[86 len 7132]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor2;
array of struct stor3;
array of uint256 stor4;
array of uint256 stor5;

function getGameRoundOpen(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    return bool(uint8(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_768))
}

function getRoundPointer(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    return uint256(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_256)
}

function getGameMinAmountByBet(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_768)
}

function getRoundNumberOfBets(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    return uint256(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
}

function getRoundBetOrigin(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    require arg3 < uint256(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
    return address(stor[(5 * arg3) + sha3((6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_256)
}

function getRoundNumber(uint256 arg1, uint256 arg2) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    return uint8(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776)
}

function getGameCurrentRoundId(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_1280)
}

function getRoundBetNumber(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    require arg3 < uint256(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
    return uint8(stor[(5 * arg3) + sha3((6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_768)
}

function getGameMaxNumberOfBets(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_512)
}

function getPointer(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_256)
}

function getGamePrize(uint256 arg1) {
    require arg1 < gameMinAmountByBet.length
    return uint256(gameMinAmountByBet[arg1].field_1024)
}

function getRoundBetAmount(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 < gameMinAmountByBet.length
    require arg2 < uint256(gameMinAmountByBet[arg1].field_1536)
    require arg3 < uint256(stor[(6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
    return uint256(stor[(5 * arg3) + sha3((6 * arg2) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_512)
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
    while idx < gameMinAmountByBet.length:
        mem[0] = 1
        require idx < gameMinAmountByBet.length
        mem[(32 * idx) + 160] = uint256(gameMinAmountByBet[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * gameMinAmountByBet.length) + 224 len floor32(gameMinAmountByBet.length)] = mem[160 len floor32(gameMinAmountByBet.length)]
    return Array(len=gameMinAmountByBet.length, data=mem[160 len floor32(gameMinAmountByBet.length)], mem[(32 * gameMinAmountByBet.length) + floor32(gameMinAmountByBet.length) + 224 len (32 * gameMinAmountByBet.length) - floor32(gameMinAmountByBet.length)]), 
}

function getNumber(bytes32 arg1) {
    idx = 31
    s = 0
    while idx >= 0:
        require idx < 32
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 < 0x3000000000000000000000000000000000000000000000000000000000000000:
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                idx = idx - 1
                s = s
                continue 
            idx = idx - 1
            s = 1
            continue 
        require idx < 32
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 > 0x3900000000000000000000000000000000000000000000000000000000000000:
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
        idx = (7 * gameMinAmountByBet.length) + 7
        while sha3(1) + (7 * gameMinAmountByBet.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 6) + (6 * uint256(stor[idx + sha3(mem[0]) + 6].field_0)) > s:
                uint256(stor[s].field_0) = 0
                uint256(gameMinAmountByBet[s].field_0) = 0
                stor2[s] = 0
                uint8(stor3[s].field_0) = 0
                uint8(stor3[s].field_8) = 0
                stor4[s] = 0
                t = sha3(s + 4)
                while sha3(s + 4) + (5 * stor4[s]) > t:
                    uint256(stor[t].field_0) = 0
                    address(gameMinAmountByBet[t].field_0) = 0
                    stor2[t] = 0
                    uint8(stor3[t].field_0) = 0
                    stor4[t] = 0
                    t = t + 5
                    continue 
                stor5[s] = 0
                mem[0] = s + 5
                t = sha3(s + 5)
                while sha3(s + 5) + stor5[s] > t:
                    uint256(stor[t].field_0) = 0
                    t = t + 1
                    continue 
                s = s + 6
                continue 
            idx = idx + 7
            continue 
    require gameMinAmountByBet.length < gameMinAmountByBet.length
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_0) = gameMinAmountByBet.length
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_256) = arg1
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_512) = arg2
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_768) = arg3
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1024) = arg4
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)++
    if not uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536) <= uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536) + 1:
        mem[0] = (7 * gameMinAmountByBet.length) + sha3(1) + 6
        idx = (6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)) + 6
        while sha3((7 * gameMinAmountByBet.length) + sha3(1) + 6) + (6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 3].field_8) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + (5 * uint256(stor[idx + sha3(mem[0]) + 4].field_0)) > s:
                uint256(stor[s].field_0) = 0
                address(gameMinAmountByBet[s].field_0) = 0
                stor2[s] = 0
                uint8(stor3[s].field_0) = 0
                stor4[s] = 0
                s = s + 5
                continue 
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5].field_0) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            idx = idx + 6
            continue 
    require uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536) < uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)
    uint256(stor[(6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)) + sha3((7 * gameMinAmountByBet.length) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0) = uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)
    uint8(stor[(6 * uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)) + sha3((7 * gameMinAmountByBet.length) + ('name', 'gameMinAmountByBet', 1) + 6)].field_768) = 1
    emit RoundOpen(gameMinAmountByBet.length, uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536));
    require gameMinAmountByBet.length < gameMinAmountByBet.length
    uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1280) = uint256(gameMinAmountByBet[gameMinAmountByBet.length].field_1536)
    return gameMinAmountByBet.length
}

function placeBet(uint256 arg1, uint8 arg2) payable {
    require arg1 < gameMinAmountByBet.length
    require uint256(gameMinAmountByBet[arg1].field_1280) < uint256(gameMinAmountByBet[arg1].field_1536)
    if not uint8(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_768):
        return 0
    if msg.value < uint256(gameMinAmountByBet[arg1].field_768):
        return 0
    uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)++
    if not uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024) <= uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024) + 1:
        idx = (5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)) + 5
        while 5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024) > idx:
            uint256(stor[idx + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_0) = 0
            address(stor[idx + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_256) = 0
            uint256(stor[idx + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_512) = 0
            uint8(stor[idx + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_768) = 0
            uint256(stor[idx + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_1024) = 0
            idx = idx + 5
            continue 
    require uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024) < uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
    uint256(stor[(5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)) + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_0) = uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
    uint256(stor[(5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)) + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_1024) = uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0)
    uint8(stor[(5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)) + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_768) = arg2
    address(stor[(5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)) + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_256) = msg.sender
    uint256(stor[(5 * uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)) + sha3((6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_512) = msg.value
    emit BetPlaced(uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024), uint256(gameMinAmountByBet[arg1].field_0), uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0), msg.sender);
    if uint256(stor[(6 * uint256(gameMinAmountByBet[arg1].field_1280)) + sha3((7 * arg1) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024) == uint256(gameMinAmountByBet[arg1].field_512):
        require uint256(gameMinAmountByBet[arg1].field_0) < gameMinAmountByBet.length
        require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1536)
        uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_768) = 0
        if uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_256) <= 255:
            uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_512) = block.hash(block.number - uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_256))
        else:
            uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_512) = block.hash(block.number - 255)
        require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1536)
        mem[0] = (7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6
        idx = 31
        s = 0
        while idx >= 0:
            require idx < 32
            require idx < 32
            if Mask(8, -(('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) + 256, idx) << (('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) - 8 < 0x3000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, -(('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) + 256, idx) << (('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    idx = idx - 1
                    s = s
                    continue 
                idx = idx - 1
                s = 1
                continue 
            require idx < 32
            if Mask(8, -(('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) + 256, idx) << (('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) - 8 > 0x3900000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, -(('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) + 256, idx) << (('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    idx = idx - 1
                    s = s
                    continue 
                idx = idx - 1
                s = 1
                continue 
            uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776) = uint8((Mask(8, -(('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) + 256, idx) << (('type', 256, ('field', 515, ('stor', ('add', ('mul', 6, ('type', 256, ('field', 1280, ('stor', ('array', ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1)))))), ('sha3', ('add', 6, ('mul', 7, ('type', 256, ('field', 0, ('stor', ('array', ('mul', 7, ('param', 'arg1')), ('name', 'gameMinAmountByBet', 1)))))), ('name', 'gameMinAmountByBet', 1))))))), 0) - 256) - 48)
            require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1536)
            uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_256) = uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776)
            require uint256(gameMinAmountByBet[arg1].field_0) < gameMinAmountByBet.length
            require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1536)
            s = 0
            idx = 0
            while idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024):
                mem[0] = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 4
                if uint8(stor[(5 * idx) + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_768) != uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776):
                    s = s
                    idx = idx + 1
                    continue 
                uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)++
                if not uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) <= uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) + 1:
                    s = sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5) + uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) + 1
                    while sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5) + uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                require idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
                require uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                mem[0] = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5
                address(stor[uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 5)].field_0) = address(stor[(5 * idx) + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_256)
                s = uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                idx = idx + 1
                continue 
            if uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) > 0:
                require uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) == (uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)) + (uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) % uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280))
                idx = 0
                while idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280):
                    require stor2[address(stor[idx + sha3((6 * uint256(stor1[uint256(stor1[arg1].field_0)].field_1280)) + sha3((7 * uint256(stor1[arg1].field_0)) + ('name', 'stor1', 1) + 6) + 5)].field_0)] + (uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)) >= stor2[address(stor[idx + sha3((6 * uint256(stor1[uint256(stor1[arg1].field_0)].field_1280)) + sha3((7 * uint256(stor1[arg1].field_0)) + ('name', 'stor1', 1) + 6) + 5)].field_0)]
                    require idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                    mem[32] = 2
                    stor2[address(stor[idx + sha3((6 * uint256(stor1[uint256(stor1[arg1].field_0)].field_1280)) + sha3((7 * uint256(stor1[arg1].field_0)) + ('name', 'stor1', 1) + 6) + 5)].field_0)] += uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                    mem[0] = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5
                    mem[96] = uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                    emit RoundWinner((uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280), address(stor[idx + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 5)].field_0));
                    idx = idx + 1
                    continue 
            emit RoundClose(uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0), uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0));
            require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0) < gameMinAmountByBet.length
            uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)++
            if not uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536) <= uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536) + 1:
                mem[0] = (7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + sha3(1) + 6
                idx = sha3(mem[0]) + (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) + 6
                while sha3((7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + sha3(1) + 6) + (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) > idx:
                    uint256(stor[idx].field_0) = 0
                    uint256(gameMinAmountByBet[idx].field_0) = 0
                    stor2[idx] = 0
                    uint8(stor3[idx].field_0) = 0
                    uint8(stor3[idx].field_8) = 0
                    stor4[idx] = 0
                    s = sha3(idx + 4)
                    while sha3(idx + 4) + (5 * stor4[idx]) > s:
                        uint256(stor[s].field_0) = 0
                        address(gameMinAmountByBet[s].field_0) = 0
                        stor2[s] = 0
                        uint8(stor3[s].field_0) = 0
                        stor4[s] = 0
                        s = s + 5
                        continue 
                    stor5[idx] = 0
                    mem[0] = idx + 5
                    s = sha3(idx + 5)
                    while sha3(idx + 5) + stor5[idx] > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    idx = idx + 6
                    continue 
            require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)
            uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) + sha3((7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0) = uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)
            uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) + sha3((7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_768) = 1
            emit RoundOpen(uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536));
            uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) = uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)
            return 1
        uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776) = 0
        require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1536)
        uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_256) = uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776)
        require uint256(gameMinAmountByBet[arg1].field_0) < gameMinAmountByBet.length
        require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1536)
        s = 0
        idx = 0
        while idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024):
            mem[0] = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 4
            if uint8(stor[(5 * idx) + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_768) != uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776):
                s = s
                idx = idx + 1
                continue 
            uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)++
            if not uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) <= uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) + 1:
                s = sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5) + uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) + 1
                while sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5) + uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            require idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1024)
            require uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
            mem[0] = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5
            address(stor[uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 5)].field_0) = address(stor[(5 * idx) + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 4)].field_256)
            s = uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
            idx = idx + 1
            continue 
        if uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) > 0:
            require uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
            require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) == (uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280) * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)) + (uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) % uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280))
            idx = 0
            while idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280):
                require stor2[address(stor[idx + sha3((6 * uint256(stor1[uint256(stor1[arg1].field_0)].field_1280)) + sha3((7 * uint256(stor1[arg1].field_0)) + ('name', 'stor1', 1) + 6) + 5)].field_0)] + (uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)) >= stor2[address(stor[idx + sha3((6 * uint256(stor1[uint256(stor1[arg1].field_0)].field_1280)) + sha3((7 * uint256(stor1[arg1].field_0)) + ('name', 'stor1', 1) + 6) + 5)].field_0)]
                require idx < uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                mem[32] = 2
                stor2[address(stor[idx + sha3((6 * uint256(stor1[uint256(stor1[arg1].field_0)].field_1280)) + sha3((7 * uint256(stor1[arg1].field_0)) + ('name', 'stor1', 1) + 6) + 5)].field_0)] += uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                mem[0] = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + sha3(1) + 6) + 5
                mem[96] = uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)
                emit RoundWinner((uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1024) / uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_1280)), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280), address(stor[idx + sha3((6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6) + 5)].field_0));
                idx = idx + 1
                continue 
        emit RoundClose(uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_776), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0), uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280)) + sha3((7 * uint256(gameMinAmountByBet[arg1].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0));
        require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0) < gameMinAmountByBet.length
        uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)++
        if not uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536) <= uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536) + 1:
            mem[0] = (7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + sha3(1) + 6
            idx = (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) + 6
            while sha3((7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + sha3(1) + 6) + (6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_8) = 0
                uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (5 * uint256(stor[idx + sha3(mem[0]) + 4].field_0)) > s:
                    uint256(stor[s].field_0) = 0
                    address(gameMinAmountByBet[s].field_0) = 0
                    stor2[s] = 0
                    uint8(stor3[s].field_0) = 0
                    stor4[s] = 0
                    s = s + 5
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 5
                s = sha3(idx + sha3(mem[0]) + 5)
                while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                idx = idx + 6
                continue 
        require uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536) < uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)
        uint256(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) + sha3((7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_0) = uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)
        uint8(stor[(6 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)) + sha3((7 * uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)) + ('name', 'gameMinAmountByBet', 1) + 6)].field_768) = 1
        emit RoundOpen(uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0), uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536));
        uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_1280) = uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[uint256(gameMinAmountByBet[arg1].field_0)].field_0)].field_1536)
    return 1
}



}
