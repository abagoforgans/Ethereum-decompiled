contract main {


// =======================  Init code  ======================


uint64 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint8 stor6;
mapping of struct stor7;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function _fallback() payable {
    stor0 = 0
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'NCoin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'NCN' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    require not msg.value
    stor9 = 0
    stor12 = msg.sender
    stor6 = 1
    require stor6 <= 1
    require stor6 == 1
    if stor9:
        stor8++
    else:
        stor9 = 1
    stor7[stor8].field_256 = 2
    stor7[stor8].field_512 = 0
    stor10 = 0
    stor11 = 0
    stor6 = 0
    stor5 = block.timestamp + 1200
    emit 0x53d09e2e: 1200, stor8, msg.sender
    return code.data[1005 len 7581]
}



// =====================  Runtime code  =====================


bool stor0;
uint64 stor0;
mapping of uint256 wallets;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 endTime;
uint8 gameState;
mapping of struct rounds;
uint256 roundId;
uint8 stor9;
uint256 stor10;
uint256 stor11;
address bankerAddress;

function name() {
    return name[0 len name.length]
}

function banker() {
    return bankerAddress
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function wallets(address arg1) {
    return wallets[arg1]
}

function rounds(uint256 arg1) {
    require rounds[arg1].field_256 <= 2
    return rounds[arg1].field_256, rounds[arg1].field_512
}

function roundId() {
    return roundId
}

function symbol() {
    return symbol[0 len symbol.length]
}

function gameState() {
    require gameState <= 1
    return gameState
}

function _fallback() payable {
    revert
}

function cashIn() payable {
    require msg.value > 0
    require not msg.value % 1000
    require wallets[address(msg.sender)] + (msg.value / 1000) >= wallets[address(msg.sender)]
    wallets[address(msg.sender)] += msg.value / 1000
}

function cashOut(uint256 arg1) {
    require wallets[address(msg.sender)] >= arg1
    require arg1 > 0
    if arg1:
        require arg1
        require 1000 * arg1 / arg1 == 1000
    require arg1 <= wallets[address(msg.sender)]
    wallets[address(msg.sender)] -= arg1
    call msg.sender with:
       value 1000 * arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) {
    if wallets[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if wallets[address(arg1)] + arg2 <= wallets[address(arg1)]:
        return 0
    require arg2 <= wallets[address(msg.sender)]
    wallets[address(msg.sender)] -= arg2
    require wallets[address(arg1)] + arg2 >= wallets[address(arg1)]
    wallets[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_ccc6bffe(?) {
    require msg.sender == bankerAddress
    require bankerAddress != arg1
    if wallets[address(msg.sender)] >= wallets[stor12]:
        if wallets[stor12] > 0:
            if wallets[address(arg1)] + wallets[stor12] > wallets[address(arg1)]:
                require wallets[stor12] <= wallets[address(msg.sender)]
                wallets[address(msg.sender)] -= wallets[stor12]
                require wallets[address(arg1)] + wallets[stor12] >= wallets[address(arg1)]
                wallets[address(arg1)] += wallets[stor12]
                emit Transfer(wallets[stor12], msg.sender, arg1);
                bankerAddress = arg1
                emit 0x10fcd562: wallets[stor12], msg.sender, arg1
}

function startGame(uint256 arg1) {
    require gameState <= 1
    require gameState == 1
    if not arg1:
        if stor9:
            roundId++
        else:
            stor9 = 1
        rounds[stor8].field_256 = 2
        rounds[stor8].field_512 = 0
        stor10 = 0
        stor11 = 0
        gameState = 0
        endTime = block.timestamp + 1200
        emit 0x53d09e2e: 1200, roundId, msg.sender
    else:
        require arg1 >= 1200
        if stor9:
            roundId++
        else:
            stor9 = 1
        rounds[stor8].field_256 = 2
        rounds[stor8].field_512 = 0
        stor10 = 0
        stor11 = 0
        gameState = 0
        endTime = block.timestamp + arg1
        emit 0x53d09e2e: arg1, roundId, msg.sender
}

function bet(uint8 arg1, uint256 arg2) {
    require gameState <= 1
    require not gameState
    require arg1 <= 2
    require arg1 != 2
    require arg2 >= 100
    require not arg2 % 100
    require wallets[address(msg.sender)] >= arg2
    require block.timestamp <= endTime
    require rounds[stor8].field_512 < 100000
    require arg2 <= wallets[address(msg.sender)]
    wallets[address(msg.sender)] -= arg2
    require arg1 <= 2
    rounds[stor8].field_512++
    rounds[stor8][rounds[stor8].field_512].field_0 = msg.sender
    rounds[stor8][rounds[stor8].field_512].field_256 = arg2
    rounds[stor8][rounds[stor8].field_512].field_512 = arg2
    rounds[stor8][rounds[stor8].field_512].field_768 = 0
    rounds[stor8][rounds[stor8].field_512].field_1024 = 0
    require arg1 <= 2
    rounds[stor8][rounds[stor8].field_512].field_1280 = arg1
    rounds[stor8][rounds[stor8].field_512].field_1536 = block.timestamp
    require arg1 <= 2
    if arg1:
        require stor11 + arg2 >= stor11
        stor11 += arg2
    else:
        require stor10 + arg2 >= stor10
        stor10 += arg2
    require arg1 <= 2
    emit 0x15d9054a: arg2, arg1, msg.sender
}

function endGame() {
    require gameState <= 1
    require not gameState
    require block.timestamp > endTime
    gameState = 1
    if not rounds[stor8].field_512:
        return 2
    mem[64] = 544
    if stor10 == stor11:
        uint64(stor0) = uint64(sha3(sha3(block.hash(block.number), uint64(stor0)), block.timestamp))
        if not bool(stor0):
            rounds[stor8].field_256 = 0
            s = 96
            idx = 0
            while idx < rounds[stor8].field_512:
                mem[0] = idx
                mem[32] = sha3(roundId, 7)
                _479 = mem[64]
                mem[64] = mem[64] + 224
                mem[_479] = rounds[stor8][idx].field_0
                mem[_479 + 32] = rounds[stor8][idx].field_256
                mem[_479 + 64] = rounds[stor8][idx].field_512
                mem[_479 + 96] = rounds[stor8][idx].field_768
                mem[_479 + 128] = rounds[stor8][idx].field_1024
                require rounds[stor8][idx].field_1280 <= 2
                mem[_479 + 160] = rounds[stor8][idx].field_1280
                mem[_479 + 192] = rounds[stor8][idx].field_1536
                if rounds[stor8][idx].field_512 > 0:
                    require rounds[stor8][idx].field_1280 <= 2
                    if not rounds[stor8][idx].field_1280:
                        if rounds[stor8][idx].field_512:
                            require rounds[stor8][idx].field_512
                            require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                        if 2 * rounds[stor8][idx].field_512 / 100:
                            require 2 * rounds[stor8][idx].field_512 / 100
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                        rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                        require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                        wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                mem[0] = roundId
                mem[32] = 7
                s = _479
                idx = idx + 1
                continue 
            require wallets[stor12] >= wallets[stor12]
            emit 0x2a235412: roundId, msg.sender
            return 0
        rounds[stor8].field_256 = 1
        s = 96
        idx = 0
        while idx < rounds[stor8].field_512:
            mem[0] = idx
            mem[32] = sha3(roundId, 7)
            _483 = mem[64]
            mem[64] = mem[64] + 224
            mem[_483] = rounds[stor8][idx].field_0
            mem[_483 + 32] = rounds[stor8][idx].field_256
            mem[_483 + 64] = rounds[stor8][idx].field_512
            mem[_483 + 96] = rounds[stor8][idx].field_768
            mem[_483 + 128] = rounds[stor8][idx].field_1024
            require rounds[stor8][idx].field_1280 <= 2
            mem[_483 + 160] = rounds[stor8][idx].field_1280
            mem[_483 + 192] = rounds[stor8][idx].field_1536
            if rounds[stor8][idx].field_512 > 0:
                require rounds[stor8][idx].field_1280 <= 2
                if rounds[stor8][idx].field_1280 == 1:
                    if rounds[stor8][idx].field_512:
                        require rounds[stor8][idx].field_512
                        require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                    if 2 * rounds[stor8][idx].field_512 / 100:
                        require 2 * rounds[stor8][idx].field_512 / 100
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                    require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                    require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                    rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                    require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                    wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
            mem[0] = roundId
            mem[32] = 7
            s = _483
            idx = idx + 1
            continue 
    else:
        if stor10 <= stor11:
            stor11 = stor10
            mem[0] = roundId
            mem[32] = 7
            s = 320
            idx = name[sha3(mem[0 len 64])] - 1
            while idx >= 0:
                mem[0] = idx
                mem[32] = sha3(roundId, 7)
                _472 = mem[64]
                mem[64] = mem[64] + 224
                mem[_472] = rounds[stor8][idx].field_0
                mem[_472 + 32] = rounds[stor8][idx].field_256
                mem[_472 + 64] = rounds[stor8][idx].field_512
                mem[_472 + 96] = rounds[stor8][idx].field_768
                mem[_472 + 128] = rounds[stor8][idx].field_1024
                require rounds[stor8][idx].field_1280 <= 2
                mem[_472 + 160] = rounds[stor8][idx].field_1280
                mem[_472 + 192] = rounds[stor8][idx].field_1536
                require rounds[stor8][idx].field_1280 <= 2
                if rounds[stor8][idx].field_1280 != 1:
                    s = _472
                    idx = idx - 1
                    continue 
                if rounds[stor8][idx].field_256 < stor11 - stor10:
                    require wallets[stor7[stor8][idx].field_0] + rounds[stor8][idx].field_256 >= wallets[stor7[stor8][idx].field_0]
                    wallets[stor7[stor8][idx].field_0] += rounds[stor8][idx].field_256
                    require rounds[stor8][idx].field_256 <= stor11 - stor10
                    rounds[stor8][idx].field_512 = 0
                    mem[0] = idx
                    mem[32] = sha3(roundId, 7)
                    rounds[stor8][idx].field_768 = rounds[stor8][idx].field_256
                    s = _472
                    idx = idx - 1
                    continue 
                require wallets[stor7[stor8][idx].field_0] + stor11 - stor10 >= wallets[stor7[stor8][idx].field_0]
                wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + stor11 - stor10
                rounds[stor8][idx].field_768 = stor11 - stor10
                require stor11 - stor10 <= rounds[stor8][idx].field_256
                rounds[stor8][idx].field_512 = rounds[stor8][idx].field_256 - stor11 + stor10
                uint64(stor0) = uint64(sha3(sha3(block.hash(block.number), uint64(stor0)), block.timestamp))
                if not bool(stor0):
                    rounds[stor8].field_256 = 0
                    s = 96
                    idx = 0
                    while idx < rounds[stor8].field_512:
                        mem[0] = idx
                        mem[32] = sha3(roundId, 7)
                        _939 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_939] = rounds[stor8][idx].field_0
                        mem[_939 + 32] = rounds[stor8][idx].field_256
                        mem[_939 + 64] = rounds[stor8][idx].field_512
                        mem[_939 + 96] = rounds[stor8][idx].field_768
                        mem[_939 + 128] = rounds[stor8][idx].field_1024
                        require rounds[stor8][idx].field_1280 <= 2
                        mem[_939 + 160] = rounds[stor8][idx].field_1280
                        mem[_939 + 192] = rounds[stor8][idx].field_1536
                        if rounds[stor8][idx].field_512 > 0:
                            require rounds[stor8][idx].field_1280 <= 2
                            if not rounds[stor8][idx].field_1280:
                                if rounds[stor8][idx].field_512:
                                    require rounds[stor8][idx].field_512
                                    require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                                if 2 * rounds[stor8][idx].field_512 / 100:
                                    require 2 * rounds[stor8][idx].field_512 / 100
                                    require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                                rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                                require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                                wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                        mem[0] = roundId
                        mem[32] = 7
                        s = _939
                        idx = idx + 1
                        continue 
                    require wallets[stor12] >= wallets[stor12]
                    emit 0x2a235412: roundId, msg.sender
                    return 0
                rounds[stor8].field_256 = 1
                s = 96
                idx = 0
                while idx < rounds[stor8].field_512:
                    mem[0] = idx
                    mem[32] = sha3(roundId, 7)
                    _943 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_943] = rounds[stor8][idx].field_0
                    mem[_943 + 32] = rounds[stor8][idx].field_256
                    mem[_943 + 64] = rounds[stor8][idx].field_512
                    mem[_943 + 96] = rounds[stor8][idx].field_768
                    mem[_943 + 128] = rounds[stor8][idx].field_1024
                    require rounds[stor8][idx].field_1280 <= 2
                    mem[_943 + 160] = rounds[stor8][idx].field_1280
                    mem[_943 + 192] = rounds[stor8][idx].field_1536
                    if rounds[stor8][idx].field_512 > 0:
                        require rounds[stor8][idx].field_1280 <= 2
                        if rounds[stor8][idx].field_1280 == 1:
                            if rounds[stor8][idx].field_512:
                                require rounds[stor8][idx].field_512
                                require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                            if 2 * rounds[stor8][idx].field_512 / 100:
                                require 2 * rounds[stor8][idx].field_512 / 100
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                            rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                            require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                            wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                    mem[0] = roundId
                    mem[32] = 7
                    s = _943
                    idx = idx + 1
                    continue 
                require wallets[stor12] >= wallets[stor12]
                emit 0x2a235412: roundId, msg.sender
                return 1
            uint64(stor0) = uint64(sha3(sha3(block.hash(block.number), uint64(stor0)), block.timestamp))
            if not bool(stor0):
                rounds[stor8].field_256 = 0
                s = 96
                idx = 0
                while idx < rounds[stor8].field_512:
                    mem[0] = idx
                    mem[32] = sha3(roundId, 7)
                    _931 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_931] = rounds[stor8][idx].field_0
                    mem[_931 + 32] = rounds[stor8][idx].field_256
                    mem[_931 + 64] = rounds[stor8][idx].field_512
                    mem[_931 + 96] = rounds[stor8][idx].field_768
                    mem[_931 + 128] = rounds[stor8][idx].field_1024
                    require rounds[stor8][idx].field_1280 <= 2
                    mem[_931 + 160] = rounds[stor8][idx].field_1280
                    mem[_931 + 192] = rounds[stor8][idx].field_1536
                    if rounds[stor8][idx].field_512 > 0:
                        require rounds[stor8][idx].field_1280 <= 2
                        if not rounds[stor8][idx].field_1280:
                            if rounds[stor8][idx].field_512:
                                require rounds[stor8][idx].field_512
                                require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                            if 2 * rounds[stor8][idx].field_512 / 100:
                                require 2 * rounds[stor8][idx].field_512 / 100
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                            rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                            require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                            wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                    mem[0] = roundId
                    mem[32] = 7
                    s = _931
                    idx = idx + 1
                    continue 
                require wallets[stor12] >= wallets[stor12]
                emit 0x2a235412: roundId, msg.sender
                return 0
            rounds[stor8].field_256 = 1
            s = 96
            idx = 0
            while idx < rounds[stor8].field_512:
                mem[0] = idx
                mem[32] = sha3(roundId, 7)
                _935 = mem[64]
                mem[64] = mem[64] + 224
                mem[_935] = rounds[stor8][idx].field_0
                mem[_935 + 32] = rounds[stor8][idx].field_256
                mem[_935 + 64] = rounds[stor8][idx].field_512
                mem[_935 + 96] = rounds[stor8][idx].field_768
                mem[_935 + 128] = rounds[stor8][idx].field_1024
                require rounds[stor8][idx].field_1280 <= 2
                mem[_935 + 160] = rounds[stor8][idx].field_1280
                mem[_935 + 192] = rounds[stor8][idx].field_1536
                if rounds[stor8][idx].field_512 > 0:
                    require rounds[stor8][idx].field_1280 <= 2
                    if rounds[stor8][idx].field_1280 == 1:
                        if rounds[stor8][idx].field_512:
                            require rounds[stor8][idx].field_512
                            require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                        if 2 * rounds[stor8][idx].field_512 / 100:
                            require 2 * rounds[stor8][idx].field_512 / 100
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                        rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                        require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                        wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                mem[0] = roundId
                mem[32] = 7
                s = _935
                idx = idx + 1
                continue 
        else:
            stor10 = stor11
            mem[0] = roundId
            mem[32] = 7
            s = 320
            idx = name[sha3(mem[0 len 64])] - 1
            while idx >= 0:
                mem[0] = idx
                mem[32] = sha3(roundId, 7)
                _475 = mem[64]
                mem[64] = mem[64] + 224
                mem[_475] = rounds[stor8][idx].field_0
                mem[_475 + 32] = rounds[stor8][idx].field_256
                mem[_475 + 64] = rounds[stor8][idx].field_512
                mem[_475 + 96] = rounds[stor8][idx].field_768
                mem[_475 + 128] = rounds[stor8][idx].field_1024
                require rounds[stor8][idx].field_1280 <= 2
                mem[_475 + 160] = rounds[stor8][idx].field_1280
                mem[_475 + 192] = rounds[stor8][idx].field_1536
                require rounds[stor8][idx].field_1280 <= 2
                if rounds[stor8][idx].field_1280:
                    s = _475
                    idx = idx - 1
                    continue 
                if rounds[stor8][idx].field_256 < stor10 - stor11:
                    require wallets[stor7[stor8][idx].field_0] + rounds[stor8][idx].field_256 >= wallets[stor7[stor8][idx].field_0]
                    wallets[stor7[stor8][idx].field_0] += rounds[stor8][idx].field_256
                    require rounds[stor8][idx].field_256 <= stor10 - stor11
                    rounds[stor8][idx].field_512 = 0
                    mem[0] = idx
                    mem[32] = sha3(roundId, 7)
                    rounds[stor8][idx].field_768 = rounds[stor8][idx].field_256
                    s = _475
                    idx = idx - 1
                    continue 
                require wallets[stor7[stor8][idx].field_0] + stor10 - stor11 >= wallets[stor7[stor8][idx].field_0]
                wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + stor10 - stor11
                rounds[stor8][idx].field_768 = stor10 - stor11
                require stor10 - stor11 <= rounds[stor8][idx].field_256
                rounds[stor8][idx].field_512 = rounds[stor8][idx].field_256 - stor10 + stor11
                uint64(stor0) = uint64(sha3(sha3(block.hash(block.number), uint64(stor0)), block.timestamp))
                if not bool(stor0):
                    rounds[stor8].field_256 = 0
                    s = 96
                    idx = 0
                    while idx < rounds[stor8].field_512:
                        mem[0] = idx
                        mem[32] = sha3(roundId, 7)
                        _955 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_955] = rounds[stor8][idx].field_0
                        mem[_955 + 32] = rounds[stor8][idx].field_256
                        mem[_955 + 64] = rounds[stor8][idx].field_512
                        mem[_955 + 96] = rounds[stor8][idx].field_768
                        mem[_955 + 128] = rounds[stor8][idx].field_1024
                        require rounds[stor8][idx].field_1280 <= 2
                        mem[_955 + 160] = rounds[stor8][idx].field_1280
                        mem[_955 + 192] = rounds[stor8][idx].field_1536
                        if rounds[stor8][idx].field_512 > 0:
                            require rounds[stor8][idx].field_1280 <= 2
                            if not rounds[stor8][idx].field_1280:
                                if rounds[stor8][idx].field_512:
                                    require rounds[stor8][idx].field_512
                                    require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                                if 2 * rounds[stor8][idx].field_512 / 100:
                                    require 2 * rounds[stor8][idx].field_512 / 100
                                    require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                                rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                                require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                                wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                        mem[0] = roundId
                        mem[32] = 7
                        s = _955
                        idx = idx + 1
                        continue 
                    require wallets[stor12] >= wallets[stor12]
                    emit 0x2a235412: roundId, msg.sender
                    return 0
                rounds[stor8].field_256 = 1
                s = 96
                idx = 0
                while idx < rounds[stor8].field_512:
                    mem[0] = idx
                    mem[32] = sha3(roundId, 7)
                    _959 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_959] = rounds[stor8][idx].field_0
                    mem[_959 + 32] = rounds[stor8][idx].field_256
                    mem[_959 + 64] = rounds[stor8][idx].field_512
                    mem[_959 + 96] = rounds[stor8][idx].field_768
                    mem[_959 + 128] = rounds[stor8][idx].field_1024
                    require rounds[stor8][idx].field_1280 <= 2
                    mem[_959 + 160] = rounds[stor8][idx].field_1280
                    mem[_959 + 192] = rounds[stor8][idx].field_1536
                    if rounds[stor8][idx].field_512 > 0:
                        require rounds[stor8][idx].field_1280 <= 2
                        if rounds[stor8][idx].field_1280 == 1:
                            if rounds[stor8][idx].field_512:
                                require rounds[stor8][idx].field_512
                                require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                            if 2 * rounds[stor8][idx].field_512 / 100:
                                require 2 * rounds[stor8][idx].field_512 / 100
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                            rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                            require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                            wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                    mem[0] = roundId
                    mem[32] = 7
                    s = _959
                    idx = idx + 1
                    continue 
                require wallets[stor12] >= wallets[stor12]
                emit 0x2a235412: roundId, msg.sender
                return 1
            uint64(stor0) = uint64(sha3(sha3(block.hash(block.number), uint64(stor0)), block.timestamp))
            if not bool(stor0):
                rounds[stor8].field_256 = 0
                s = 96
                idx = 0
                while idx < rounds[stor8].field_512:
                    mem[0] = idx
                    mem[32] = sha3(roundId, 7)
                    _947 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_947] = rounds[stor8][idx].field_0
                    mem[_947 + 32] = rounds[stor8][idx].field_256
                    mem[_947 + 64] = rounds[stor8][idx].field_512
                    mem[_947 + 96] = rounds[stor8][idx].field_768
                    mem[_947 + 128] = rounds[stor8][idx].field_1024
                    require rounds[stor8][idx].field_1280 <= 2
                    mem[_947 + 160] = rounds[stor8][idx].field_1280
                    mem[_947 + 192] = rounds[stor8][idx].field_1536
                    if rounds[stor8][idx].field_512 > 0:
                        require rounds[stor8][idx].field_1280 <= 2
                        if not rounds[stor8][idx].field_1280:
                            if rounds[stor8][idx].field_512:
                                require rounds[stor8][idx].field_512
                                require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                            if 2 * rounds[stor8][idx].field_512 / 100:
                                require 2 * rounds[stor8][idx].field_512 / 100
                                require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                            rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                            require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                            wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                    mem[0] = roundId
                    mem[32] = 7
                    s = _947
                    idx = idx + 1
                    continue 
                require wallets[stor12] >= wallets[stor12]
                emit 0x2a235412: roundId, msg.sender
                return 0
            rounds[stor8].field_256 = 1
            s = 96
            idx = 0
            while idx < rounds[stor8].field_512:
                mem[0] = idx
                mem[32] = sha3(roundId, 7)
                _951 = mem[64]
                mem[64] = mem[64] + 224
                mem[_951] = rounds[stor8][idx].field_0
                mem[_951 + 32] = rounds[stor8][idx].field_256
                mem[_951 + 64] = rounds[stor8][idx].field_512
                mem[_951 + 96] = rounds[stor8][idx].field_768
                mem[_951 + 128] = rounds[stor8][idx].field_1024
                require rounds[stor8][idx].field_1280 <= 2
                mem[_951 + 160] = rounds[stor8][idx].field_1280
                mem[_951 + 192] = rounds[stor8][idx].field_1536
                if rounds[stor8][idx].field_512 > 0:
                    require rounds[stor8][idx].field_1280 <= 2
                    if rounds[stor8][idx].field_1280 == 1:
                        if rounds[stor8][idx].field_512:
                            require rounds[stor8][idx].field_512
                            require 2 * rounds[stor8][idx].field_512 / rounds[stor8][idx].field_512 == 2
                        if 2 * rounds[stor8][idx].field_512 / 100:
                            require 2 * rounds[stor8][idx].field_512 / 100
                            require 2 * 2 * rounds[stor8][idx].field_512 / 100 / 2 * rounds[stor8][idx].field_512 / 100 == 2
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 >= 0
                        require 2 * 2 * rounds[stor8][idx].field_512 / 100 <= 2 * rounds[stor8][idx].field_512
                        rounds[stor8][idx].field_1024 = (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                        require wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100) >= wallets[stor7[stor8][idx].field_0]
                        wallets[stor7[stor8][idx].field_0] = wallets[stor7[stor8][idx].field_0] + (2 * rounds[stor8][idx].field_512) - (2 * 2 * rounds[stor8][idx].field_512 / 100)
                mem[0] = roundId
                mem[32] = 7
                s = _951
                idx = idx + 1
                continue 
    require wallets[stor12] >= wallets[stor12]
    emit 0x2a235412: roundId, msg.sender
    return 1
}



}
