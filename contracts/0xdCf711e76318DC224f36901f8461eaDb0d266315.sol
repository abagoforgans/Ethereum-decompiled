contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor7;
uint256 stor8;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;

function _fallback() payable {
    stor7 = 600
    stor8 = 1
    stor11 = 3 * 10^16
    stor12 = 100000
    stor13 = 100000
    stor14 = 3000
    stor15 = 3000
    stor16 = 100000
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[180 len 12848]
}



// =====================  Runtime code  =====================


#
#  - houseKeep(int256 arg1, uint256 arg2)
#  - startGame(uint256 arg1, int256 arg2, address[] arg3)
#
address owner;
address sub_618a16c1Address;
uint256 numArbiters;
uint256 numGamesStarted;
uint256 numGamesCompleted;
uint256 numGamesCheated;
uint256 numGamesTimedOut;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 houseFeeHoldover;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 settingsState;
mapping of struct stor18;
mapping of address stor19;
mapping of struct gameInfo;

function getNumGamesStarted() {
    return numGamesStarted
}

function numArbiters() {
    return numArbiters
}

function getGameInfo(uint256 arg1) {
    require gameInfo[arg1].field_1952 <= 2
    return gameInfo[arg1].field_1792, 
           gameInfo[arg1].field_512,
           gameInfo[arg1].field_1536,
           bool(gameInfo[arg1].field_768),
           gameInfo[arg1].field_1792
}

function settingsState() {
    require settingsState <= 2
    return settingsState
}

function sub_618a16c1(?) {
    return sub_618a16c1Address
}

function numGamesTimedOut() {
    return numGamesTimedOut
}

function owner() {
    return owner
}

function numGamesCheated() {
    return numGamesCheated
}

function numGamesCompleted() {
    return numGamesCompleted
}

function houseFeeHoldover() {
    return houseFeeHoldover
}

function HaraKiri() {
    if msg.sender == owner:
        selfdestruct(sub_618a16c1Address)
    emit 0x78243600: Array(len=25, data='Kill attempt by non owner')
}

function _fallback() payable {
    revert 
}

function sub_11c45493(?) {
    stor11 = arg1
}

function ArbTokFromHGame(uint256 arg1) {
    return uint16(arg1)
}

function getOpGas() {
    return stor12, stor13, stor14, stor15, stor16
}

function checkHGame(uint256 arg1) {
    return arg1 << 240, arg1 % 281474976710656
}

function sub_c606b11e(?) {
    if arg1 <= 0:
        return 0
    if gameInfo[arg1].field_768:
        return 0
    return 1
}

function sub_ab8b3721(?) {
    if msg.sender == owner:
        stor7 = arg1
        emit 0x296dc718: Array(len=16, data='New Game Timeout'), stor7
}

function setOpGas(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
    stor15 = arg4
    stor16 = arg5
}

function setRegistrationFee(uint256 arg1) {
    if owner != msg.sender:
        emit 0x78243600: Array(len=27, data='FeeSet attempt by non owner')
    else:
        stor8 = arg1
        emit 0x78243600: Array(len=16, data='Fee Set by owner')
}

function arbTokenExists(uint256 arg1) {
    idx = 0
    while idx < numArbiters:
        mem[0] = stor19[idx]
        mem[32] = 18
        if stor18[stor19[idx]].field_512 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function setArbiterLocked(address arg1, bool arg2) {
    if owner == msg.sender:
        idx = 0
        while idx < numArbiters:
            mem[0] = idx
            mem[32] = 19
            if stor19[idx] != arg1:
                idx = idx + 1
                continue 
    emit 0x78243600: Array(len=31, data='Only Owner Calls or invalid arb')
}

function sub_484fc538(?) {
    if msg.sender == owner:
        require settingsState <= 2
        if not settingsState:
            sub_618a16c1Address = arg1
            emit 0x296dc718: Array(len=17, data='Partner Assigned!'), 1
        else:
            if not sub_618a16c1Address:
                sub_618a16c1Address = arg1
                emit 0x296dc718: Array(len=17, data='Partner Assigned!'), 1
}

function sub_e0f23519(?) {
    if msg.sender == owner:
        require settingsState <= 2
        if settingsState != 2:
            require arg1 <= 2
            settingsState = arg1
            require arg1 <= 2
            if arg1:
                stor8 = 10 * 10^18
                stor11 = 10^18
            else:
                stor8 = 1
                stor11 = 3 * 10^16
            stor7 = 600
}

function sub_4466262d(?) {
    idx = 0
    while idx < numArbiters:
        mem[0] = idx
        mem[32] = 19
        if stor19[idx] != arg1:
            idx = idx + 1
            continue 
        return stor18[address(arg1)].field_1024, 
               stor18[address(arg1)].field_1280,
               stor18[address(arg1)].field_1536,
               stor18[address(arg1)].field_1792
    emit 0x78243600: Array(len=11, data='Invalid Arb')
    return 0
}

function sub_7f899396(?) {
    if arg1 > 0:
        if gameInfo[arg1].field_768:
            idx = 0
            while idx < gameInfo[arg1].field_512:
                mem[0] = idx
                mem[32] = sha3(arg1, 20) + 1
                if gameInfo[arg1][1][idx].field_0 != arg2:
                    idx = idx + 1
                    continue 
                return 1
            return 0
        else:
            return 0
    else:
        return 0
}

function registerArbiter(uint256 arg1, uint256 arg2) payable {
    if stor8 != msg.value:
        emit 0x78243600: Array(len=16, data='Insufficient Fee')
        revert 
    idx = 0
    while idx < numArbiters:
        mem[0] = stor19[idx]
        mem[32] = 18
        if stor18[stor19[idx]].field_512 != uint16(arg2):
            idx = idx + 1
            continue 
        emit 0x78243600: Array(len=20, data='Token Already Exists')
        revert 
    stor18[address(msg.sender)].field_256 = msg.sender
    stor18[address(msg.sender)].field_1024 = 0
    stor18[address(msg.sender)].field_1280 = 0
    stor18[address(msg.sender)].field_1536 = 0
    stor18[address(msg.sender)].field_1792 = 0
    stor18[address(msg.sender)].field_2304 = 0
    stor18[address(msg.sender)].field_512 = uint16(arg2)
    stor18[address(msg.sender)].field_528 = 0
    stor18[address(msg.sender)].field_2048 = arg1
    numArbiters++
    stor19[stor2] = msg.sender
    call sub_618a16c1Address with:
       value msg.value wei
         gas stor12 wei
    require ext_call.success
    stor9 += msg.value
    emit 0x1a2d4465 
}

function handleBet(uint256 arg1) payable {
    idx = 0
    while idx < numArbiters:
        mem[0] = stor19[idx]
        mem[32] = 18
        if stor18[stor19[idx]].field_512 != uint16(arg1):
            idx = idx + 1
            continue 
        if not stor19[idx]:
            emit 0x78243600: Array(len=13, data='Invalid hGame')
        else:
            if arg1 > 0:
                if gameInfo[arg1].field_768:
                    idx = 0
                    while idx < gameInfo[arg1].field_512:
                        if gameInfo[arg1][1][idx].field_0 != msg.sender:
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            continue 
                        gameInfo[arg1][address(msg.sender)].field_0 += msg.value
                        gameInfo[arg1].field_1280 = block.timestamp
                        emit 0x8157e109: arg1, msg.sender, msg.value
                        return 0
            emit 0x78243600: Array(len=14, data='Invalid Player')
        require settingsState <= 2
        require settingsState
        return 0
    emit 0x78243600: Array(len=13, data='Invalid hGame')
    if settingsState <= 2:
        if settingsState:
            return 0
    revert 
}

function winnerDecided(uint256 arg1, address arg2, uint256 arg3) {
    idx = 0
    while idx < numArbiters:
        mem[0] = idx
        mem[32] = 19
        if stor19[idx] != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 18
        if stor18[address(msg.sender)].field_512 != uint16(arg1):
            idx = idx + 1
            continue 
        if arg1 > 0:
            if gameInfo[arg1].field_768:
                idx = 0
                while idx < gameInfo[arg1].field_512:
                    if gameInfo[arg1][1][idx].field_0 != arg2:
                        mem[0] = arg1
                        mem[32] = 20
                        idx = idx + 1
                        continue 
                    if gameInfo[arg1][address(arg2)].field_0 != arg3:
                        if gameInfo[arg1].field_768:
                            s = 0
                            t = 0
                            idx = 0
                            while idx < gameInfo[arg1].field_512:
                                if gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 <= 0:
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s
                                    t = gameInfo[arg1][1][idx].field_0
                                    idx = idx + 1
                                    continue 
                                gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 = 0
                                call gameInfo[arg1][1][idx].field_0 with:
                                   value gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 wei
                                     gas stor15 wei
                                require ext_call.success
                                mem[0] = arg1
                                mem[32] = 20
                                s = gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0
                                t = gameInfo[arg1][1][idx].field_0
                                idx = idx + 1
                                continue 
                            gameInfo[arg1].field_768 = 0
                            gameInfo[arg1].field_1952 = 2
                            numGamesCheated++
                            stor18[address(msg.sender)].field_1536++
                            emit 0x296dc718: 64, 0, 18, 'Game Aborted-Cheat'
                    s = 0
                    idx = 0
                    s = 0
                    while idx < gameInfo[arg1].field_512:
                        mem[0] = arg1
                        mem[32] = 20
                        s = gameInfo[arg1][1][idx].field_0
                        idx = idx + 1
                        s = s + gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0
                        continue 
                    gameInfo[arg1].field_1280 = block.timestamp
                    gameInfo[arg1].field_768 = 0
                    gameInfo[arg1].field_1952 = 0
                    gameInfo[arg1].field_1792 = arg2
                    if s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 <= 0:
                        gameInfo[arg1].field_1536 = 0
                        s = 0
                        idx = 0
                        while idx < gameInfo[arg1].field_512:
                            gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 = 0
                            mem[0] = arg1
                            mem[32] = 20
                            s = gameInfo[arg1][1][idx].field_0
                            idx = idx + 1
                            continue 
                        stor18[address(msg.sender)].field_1280++
                        numGamesCompleted++
                        emit 0x193bd1cc: arg1, address(arg2), 0
                    gameInfo[arg1].field_1536 = (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                    if s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50 <= 0:
                        t = 0
                        idx = 0
                        while idx < gameInfo[arg1].field_512:
                            gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 = 0
                            mem[0] = arg1
                            mem[32] = 20
                            t = gameInfo[arg1][1][idx].field_0
                            idx = idx + 1
                            continue 
                        stor18[address(msg.sender)].field_1280++
                        numGamesCompleted++
                        if (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50) <= 0:
                            emit 0x193bd1cc: arg1, address(arg2), (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                        call arg2 with:
                           value (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50) wei
                             gas stor14 wei
                        if ext_call.success:
                            emit 0x193bd1cc: arg1, address(arg2), (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                        emit 0x78243600: Array(len=10, data='Send Error')
                    else:
                        houseFeeHoldover += s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50
                        if houseFeeHoldover < stor11:
                            t = 0
                            idx = 0
                            while idx < gameInfo[arg1].field_512:
                                gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 = 0
                                mem[0] = arg1
                                mem[32] = 20
                                t = gameInfo[arg1][1][idx].field_0
                                idx = idx + 1
                                continue 
                            stor18[address(msg.sender)].field_1280++
                            numGamesCompleted++
                            if (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50) <= 0:
                                emit 0x193bd1cc: arg1, address(arg2), (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                            call arg2 with:
                               value (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50) wei
                                 gas stor14 wei
                            if ext_call.success:
                                emit 0x193bd1cc: arg1, address(arg2), (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                            emit 0x78243600: Array(len=10, data='Send Error')
                        else:
                            houseFeeHoldover = 0
                            call sub_618a16c1Address with:
                               value houseFeeHoldover wei
                                 gas stor16 wei
                            if ext_call.success:
                                t = 0
                                idx = 0
                                while idx < gameInfo[arg1].field_512:
                                    gameInfo[arg1][gameInfo[arg1][1][idx].field_0].field_0 = 0
                                    mem[0] = arg1
                                    mem[32] = 20
                                    t = gameInfo[arg1][1][idx].field_0
                                    idx = idx + 1
                                    continue 
                                stor18[address(msg.sender)].field_1280++
                                numGamesCompleted++
                                if (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50) <= 0:
                                    emit 0x193bd1cc: arg1, address(arg2), (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                                call arg2 with:
                                   value (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50) wei
                                     gas stor14 wei
                                if ext_call.success:
                                    emit 0x193bd1cc: arg1, address(arg2), (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512) - (s * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 * gameInfo[arg1].field_512 / 50)
                                emit 0x78243600: Array(len=10, data='Send Error')
                    revert 
        emit 0x78243600: Array(len=14, data='Invalid Player')
    emit 0x78243600: Array(len=11, data='Invalid Arb')
}



}
