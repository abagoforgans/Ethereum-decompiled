contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor7;
uint256 stor8;
uint256 stor11;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19;

function _fallback() payable {
    stor7 = 600
    stor8 = 10 * 10^18
    stor11 = 10^18
    stor13 = 24 * 3600
    stor14 = 100000
    stor15 = 100000
    stor16 = 10000
    stor17 = 10000
    stor18 = 110000
    stor19 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[195 len 12006]
}



// =====================  Runtime code  =====================


#
#  - houseKeep(int256 arg1, uint256 arg2)
#  - startGame(uint256 arg1, int256 arg2, address[] arg3)
#
address owner;
address tokenPartnerAddress;
uint256 numArbiters;
uint256 numGamesStarted;
uint256 numGamesCompleted;
uint256 numGamesCheated;
uint256 numGamesTimedOut;
uint256 gameTimeOut;
uint256 registrationFee;
uint256 stor9;
uint256 houseFeeHoldover;
uint256 houseFeeThreshold;
uint256 lastPayoutTime;
uint256 payoutInterval;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 settingsState;
mapping of struct stor20;
mapping of address stor21;
mapping of struct gameInfo;

function payoutInterval() {
    return payoutInterval
}

function getNumGamesStarted() {
    return numGamesStarted
}

function registrationFee() {
    return registrationFee
}

function numArbiters() {
    return numArbiters
}

function houseFeeThreshold() {
    return houseFeeThreshold
}

function getGameInfo(uint256 arg1) {
    require gameInfo[arg1].field_4000 <= 2
    return gameInfo[arg1].field_3840, 
           gameInfo[arg1].field_2560,
           gameInfo[arg1].field_3584,
           bool(gameInfo[arg1].field_2816),
           gameInfo[arg1].field_3840
}

function gameTimeOut() {
    return gameTimeOut
}

function lastPayoutTime() {
    return lastPayoutTime
}

function settingsState() {
    require settingsState <= 2
    return settingsState
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

function tokenPartner() {
    return tokenPartnerAddress
}

function HaraKiri() {
    if msg.sender == owner:
        require settingsState <= 2
        if settingsState != 2:
            selfdestruct(tokenPartnerAddress)
    emit StatEvent(Array(len=19, data='Kill attempt failed'));
}

function _fallback() payable {
    revert 
}

function ArbTokFromHGame(uint256 arg1) {
    return uint16(arg1)
}

function getOpGas() {
    return stor14, stor15, stor16, stor17, stor18
}

function checkHGame(uint256 arg1) {
    return arg1 << 240, arg1 % 281474976710656
}

function setOpGas(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    stor14 = arg1
    stor15 = arg2
    stor16 = arg3
    stor17 = arg4
    stor18 = arg5
}

function arbTokenExists(uint256 arg1) {
    idx = 0
    while idx < numArbiters:
        mem[0] = stor21[idx]
        mem[32] = 20
        if stor20[stor21[idx]].field_512 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function setArbiterLocked(address arg1, bool arg2) {
    require owner == msg.sender
    if not stor20[address(arg1)].field_2304:
        emit StatEvent(Array(len=11, data='invalid arb'));
    else:
        stor20[address(arg1)].field_2312 = Mask(248, 0, arg2)
}

function sub_4466262d(?) {
    if stor20[address(arg1)].field_2304:
        return stor20[address(arg1)].field_1024, 
               stor20[address(arg1)].field_1280,
               stor20[address(arg1)].field_1536,
               stor20[address(arg1)].field_1792
    emit StatEvent(Array(len=11, data='Invalid Arb'));
    return 0
}

function applySettings(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    houseFeeThreshold = arg3
    gameTimeOut = arg4
    payoutInterval = arg5
    require settingsState <= 2
    if settingsState != 2:
        require arg1 <= 2
        settingsState = arg1
        registrationFee = arg2
}

function flushHouseFees() {
    if owner != msg.sender:
        emit StatEvent(Array(len=30, data='only owner calls this function'));
    else:
        if houseFeeHoldover > 0:
            houseFeeHoldover = 0
            call tokenPartnerAddress with:
               value houseFeeHoldover wei
                 gas stor18 wei
            if not ext_call.success:
                emit StatEvent(Array(len=15, data='House-Fee Error'));
            else:
                lastPayoutTime = block.timestamp
                emit StatEvent(Array(len=14, data='House-Fee Paid'));
}

function setTokenPartner(address arg1) {
    require msg.sender == owner
    require settingsState <= 2
    if settingsState != 2:
        require settingsState <= 2
        if settingsState != 2:
            tokenPartnerAddress = arg1
            emit StatEvent(Array(len=23, data='Token Partner Assigned!'));
    else:
        if not tokenPartnerAddress:
            tokenPartnerAddress = arg1
            emit StatEvent(Array(len=20, data='Token Partner Final!'));
        else:
            require settingsState <= 2
            if settingsState != 2:
                tokenPartnerAddress = arg1
                emit StatEvent(Array(len=23, data='Token Partner Assigned!'));
}

function registerArbiter(uint256 arg1, uint256 arg2) payable {
    require msg.value == registrationFee
    idx = 0
    while idx < numArbiters:
        mem[0] = stor21[idx]
        mem[32] = 20
        require stor20[stor21[idx]].field_512 != uint16(arg2)
        idx = idx + 1
        continue 
    require arg1 <= 5
    stor20[address(msg.sender)].field_256 = msg.sender
    stor20[address(msg.sender)].field_1024 = 0
    stor20[address(msg.sender)].field_1280 = 0
    stor20[address(msg.sender)].field_1536 = 0
    stor20[address(msg.sender)].field_1792 = 0
    stor20[address(msg.sender)].field_2312 = 0
    stor20[address(msg.sender)].field_512 = uint16(arg2)
    stor20[address(msg.sender)].field_528 = 0
    stor20[address(msg.sender)].field_2048 = arg1
    stor20[address(msg.sender)].field_2304 = 1
    numArbiters++
    stor21[stor2] = msg.sender
    call tokenPartnerAddress with:
       value msg.value wei
         gas stor14 wei
    require ext_call.success
    stor9 += msg.value
    emit StatEventI(Array(len=9, data='Arb Added'), arg2);
}

function handleBet(uint256 arg1) payable {
    idx = 0
    while idx < numArbiters:
        mem[0] = stor21[idx]
        mem[32] = 20
        if stor20[stor21[idx]].field_512 != uint16(arg1):
            idx = idx + 1
            continue 
        if not stor21[idx]:
            emit StatEvent(Array(len=13, data='Invalid hGame'));
        else:
            if arg1 > 0:
                if gameInfo[arg1].field_2816:
                    idx = 0
                    while idx < gameInfo[arg1].field_2560:
                        require idx < 5
                        if gameInfo[arg1][idx].field_0 != msg.sender:
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        require idx < 5
                        gameInfo[arg1][idx].field_1280 += msg.value
                        gameInfo[arg1].field_3328 = block.timestamp
                        emit StatEventI(Array(len=9, data='Bet Added'), arg1);
            emit StatEvent(Array(len=14, data='Invalid Player'));
        require settingsState <= 2
        require not settingsState
    emit StatEvent(Array(len=13, data='Invalid hGame'));
    if settingsState <= 2:
        if not settingsState:
    revert 
}

function winnerDecided(uint256 arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if not stor20[address(msg.sender)].field_2304:
        emit StatEvent(Array(len=11, data='Invalid Arb'));
    else:
        if stor20[address(msg.sender)].field_512 != uint16(arg1):
            emit StatEvent(Array(len=11, data='Invalid Arb'));
        else:
            if arg1 > 0:
                if gameInfo[arg1].field_2816:
                    idx = 0
                    while idx < gameInfo[arg1].field_2560:
                        require idx < 5
                        if gameInfo[arg1][idx].field_0 != arg2:
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        require idx < 5
                        if gameInfo[arg1][idx].field_1280 != arg3:
                            if gameInfo[arg1].field_2816:
                                s = 0
                                t = 0
                                idx = 0
                                while idx < gameInfo[arg1].field_2560:
                                    require idx < 5
                                    if gameInfo[arg1][idx].field_1280 <= 0:
                                        mem[0] = arg1
                                        mem[32] = 22
                                        s = s
                                        t = t
                                        idx = idx + 1
                                        continue 
                                    require idx < 5
                                    gameInfo[arg1][idx].field_1280 = 0
                                    call gameInfo[arg1][idx].field_0 with:
                                       value gameInfo[arg1][idx].field_1280 wei
                                         gas stor17 wei
                                    if not ext_call.success:
                                        houseFeeHoldover += gameInfo[arg1][idx].field_1280
                                        mem[mem[64] + 32] = gameInfo[arg1][idx].field_0
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 21
                                        mem[mem[64] + 96] = 'Cannot Refund Address'
                                        emit StatEventA(Array(len=21, data='Cannot Refund Address'), gameInfo[arg1][idx].field_0);
                                    mem[0] = arg1
                                    mem[32] = 22
                                    s = gameInfo[arg1][idx].field_1280
                                    t = gameInfo[arg1][idx].field_0
                                    idx = idx + 1
                                    continue 
                                gameInfo[arg1].field_2816 = 0
                                gameInfo[arg1].field_4000 = 2
                                numGamesCheated++
                                stor20[address(msg.sender)].field_1536++
                                emit StatEvent(Array(len=18, data='Game Aborted-Cheat'));
                        else:
                            idx = 0
                            s = 0
                            while idx < gameInfo[arg1].field_2560:
                                require idx < 5
                                mem[0] = arg1
                                mem[32] = 22
                                idx = idx + 1
                                s = s + gameInfo[arg1][idx].field_1280
                                continue 
                            gameInfo[arg1].field_3328 = block.timestamp
                            gameInfo[arg1].field_2816 = 0
                            gameInfo[arg1].field_4000 = 0
                            gameInfo[arg1].field_3840 = arg2
                            if s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 <= 0:
                                gameInfo[arg1].field_3584 = 0
                                idx = 0
                                while idx < gameInfo[arg1].field_2560:
                                    require idx < 5
                                    gameInfo[arg1][idx].field_1280 = 0
                                    mem[0] = arg1
                                    mem[32] = 22
                                    idx = idx + 1
                                    continue 
                                stor20[address(msg.sender)].field_1280++
                                numGamesCompleted++
                            else:
                                gameInfo[arg1].field_3584 = (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50)
                                if s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50 <= 0:
                                    idx = 0
                                    while idx < gameInfo[arg1].field_2560:
                                        require idx < 5
                                        gameInfo[arg1][idx].field_1280 = 0
                                        mem[0] = arg1
                                        mem[32] = 22
                                        idx = idx + 1
                                        continue 
                                    stor20[address(msg.sender)].field_1280++
                                    numGamesCompleted++
                                    if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                        call arg2 with:
                                           value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                             gas stor16 wei
                                        require ext_call.success
                                        emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                else:
                                    houseFeeHoldover += s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50
                                    if houseFeeHoldover <= houseFeeThreshold:
                                        idx = 0
                                        while idx < gameInfo[arg1].field_2560:
                                            require idx < 5
                                            gameInfo[arg1][idx].field_1280 = 0
                                            mem[0] = arg1
                                            mem[32] = 22
                                            idx = idx + 1
                                            continue 
                                        stor20[address(msg.sender)].field_1280++
                                        numGamesCompleted++
                                        if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                            call arg2 with:
                                               value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                 gas stor16 wei
                                            require ext_call.success
                                            emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                    else:
                                        if block.timestamp <= lastPayoutTime + payoutInterval:
                                            idx = 0
                                            while idx < gameInfo[arg1].field_2560:
                                                require idx < 5
                                                gameInfo[arg1][idx].field_1280 = 0
                                                mem[0] = arg1
                                                mem[32] = 22
                                                idx = idx + 1
                                                continue 
                                            stor20[address(msg.sender)].field_1280++
                                            numGamesCompleted++
                                            if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                                call arg2 with:
                                                   value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                     gas stor16 wei
                                                require ext_call.success
                                                emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                        else:
                                            houseFeeHoldover = 0
                                            lastPayoutTime = block.timestamp
                                            call tokenPartnerAddress with:
                                               value houseFeeHoldover wei
                                                 gas stor18 wei
                                            if ext_call.success:
                                                idx = 0
                                                while idx < gameInfo[arg1].field_2560:
                                                    require idx < 5
                                                    gameInfo[arg1][idx].field_1280 = 0
                                                    mem[0] = arg1
                                                    mem[32] = 22
                                                    idx = idx + 1
                                                    continue 
                                                stor20[address(msg.sender)].field_1280++
                                                numGamesCompleted++
                                                if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                                    call arg2 with:
                                                       value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                         gas stor16 wei
                                                    require ext_call.success
                                                    emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                            else:
                                                emit StatEvent(Array(len=15, data='House-Fee Error'));
                                                idx = 0
                                                while idx < gameInfo[arg1].field_2560:
                                                    require idx < 5
                                                    gameInfo[arg1][idx].field_1280 = 0
                                                    mem[0] = arg1
                                                    mem[32] = 22
                                                    idx = idx + 1
                                                    continue 
                                                stor20[address(msg.sender)].field_1280++
                                                numGamesCompleted++
                                                if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                                    call arg2 with:
                                                       value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                         gas stor16 wei
                                                    require ext_call.success
                                                    emit StatEventI(string rg1, uint256 rg2):
                                                                    Array(len=arg1, data=11, 'Winner Paid'),
            emit StatEvent(Array(len=14, data='Invalid Player'));
}



}
