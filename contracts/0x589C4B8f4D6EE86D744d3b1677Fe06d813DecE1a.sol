contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor18;

function _fallback() payable {
    stor18 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[78 len 8043]
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
uint256 numGamesCanceled;
uint256 numGamesTimedOut;
uint256 houseFeeHoldover;
uint256 lastPayoutTime;
uint256 gameTimeOut;
uint256 registrationFee;
uint256 houseFeeThreshold;
uint256 payoutInterval;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 settingsState;
mapping of struct stor19;
mapping of address stor20;
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

function numGamesCompleted() {
    return numGamesCompleted
}

function houseFeeHoldover() {
    return houseFeeHoldover
}

function numGamesCanceled() {
    return numGamesCanceled
}

function tokenPartner() {
    return tokenPartnerAddress
}

function HaraKiri() {
    if owner == msg.sender:
        require settingsState <= 2
        if settingsState != 2:
            selfdestruct(tokenPartnerAddress)
    emit 0x2d1df424: Array(len=19, data='Kill attempt failed')
}

function ArbTokFromHGame(uint256 arg1) {
    return uint16(arg1)
}

function getOpGas() {
    return stor13, stor14, stor15, stor16, stor17
}

function _fallback() payable {
    emit 0x2d1df424: Array(len=7, data='thanks!')
}

function checkHGame(uint256 arg1) {
    return arg1 << 240, arg1 % 281474976710656
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require settingsState <= 2
    require settingsState != 2
    owner = arg1
}

function arbTokenExists(uint256 arg1) {
    if arg1 <= 0:
        return 0
    if not stor20[arg1]:
        return 0
    if not stor19[stor20[arg1]].field_2048:
        return 0
    return 1
}

function setOpGas(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    stor13 = arg1
    stor14 = arg2
    stor15 = arg3
    stor16 = arg4
    stor17 = arg5
}

function setArbiterLocked(address arg1, bool arg2) {
    require owner == msg.sender
    if not stor19[address(arg1)].field_2048:
        emit 0x2d1df424: Array(len=11, data='invalid arb')
    else:
        stor19[address(arg1)].field_2056 = Mask(248, 0, arg2)
}

function getArbInfo(uint256 arg1) {
    if arg1 >= numArbiters:
        emit 0x2d1df424: 'Invalid Arb'
        return 0
    if stor21[arg1]:
        if stor19[stor21[arg1]].field_2048:
            return stor21[arg1], 
                   stor19[stor21[arg1]].field_768,
                   stor19[stor21[arg1]].field_1024,
                   stor19[stor21[arg1]].field_1280,
                   stor19[stor21[arg1]].field_1536
    emit 0x2d1df424: 'Invalid Arb'
    return stor21[arg1], 0, 0, 0, 0
}

function flushHouseFees() {
    if owner != msg.sender:
        emit 0x2d1df424: Array(len=30, data='only owner calls this function')
    else:
        if houseFeeHoldover > 0:
            houseFeeHoldover = 0
            call tokenPartnerAddress with:
               value houseFeeHoldover wei
                 gas stor17 wei
            if not ext_call.success:
                emit 0x2d1df424: Array(len=16, data='House-Fee Error2')
            else:
                lastPayoutTime = block.timestamp
                emit 0x2d1df424: Array(len=14, data='House-Fee Paid')
}

function handleBet(uint256 arg1) payable {
    require stor20[arg1 << 240]
    require arg1 > 0
    require gameInfo[arg1].field_2816
    require 0 < gameInfo[arg1].field_2560
    require 0 < 5
    idx = 0
    while gameInfo[arg1][idx].field_0 != msg.sender:
        require idx + 1 < gameInfo[arg1].field_2560
        mem[0] = arg1
        mem[32] = 22
        require idx + 1 < 5
        idx = idx + 1
        continue 
    require None + 2 < 5
    gameInfo[arg1][None].field_1792 += msg.value
    gameInfo[arg1].field_3328 = block.timestamp
    emit StatEventI(Array(len=9, data='Bet Added'), arg1);
}

function applySettings(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    houseFeeThreshold = arg3
    gameTimeOut = arg4
    payoutInterval = arg5
    require settingsState <= 2
    if settingsState == 2:
        emit 0x2d1df424: Array(len=16, data='Settings Tweaked')
    else:
        require arg1 <= 2
        settingsState = arg1
        registrationFee = arg2
        stor13 = 150000
        stor14 = 110000
        stor15 = 20000
        stor16 = 20000
        stor17 = 100 * 3600
        emit 0x2d1df424: Array(len=16, data='Settings Changed')
}

function setTokenPartner(address arg1) {
    require owner == msg.sender
    require settingsState <= 2
    if settingsState != 2:
        require settingsState <= 2
        if settingsState != 2:
            tokenPartnerAddress = arg1
            emit 0x2d1df424: Array(len=23, data='Token Partner Assigned!')
    else:
        if not tokenPartnerAddress:
            tokenPartnerAddress = arg1
            emit 0x2d1df424: Array(len=20, data='Token Partner Final!')
        else:
            require settingsState <= 2
            if settingsState != 2:
                tokenPartnerAddress = arg1
                emit 0x2d1df424: Array(len=23, data='Token Partner Assigned!')
}

function registerArbiter(uint256 arg1, uint256 arg2) payable {
    require msg.value == registrationFee
    require arg2
    if uint16(arg2) > 0:
        if stor20[arg2 << 240]:
            require not stor19[stor20[arg2 << 240]].field_2048
    require not stor19[address(msg.sender)].field_2048
    require arg1 <= 5
    stor19[address(msg.sender)].field_768 = 0
    stor19[address(msg.sender)].field_1024 = 0
    stor19[address(msg.sender)].field_1280 = 0
    stor19[address(msg.sender)].field_1536 = 0
    stor19[address(msg.sender)].field_256 = uint16(arg2)
    stor19[address(msg.sender)].field_272 = 0
    stor19[address(msg.sender)].field_1792 = arg1
    stor19[address(msg.sender)].field_2048 = 1
    stor19[address(msg.sender)].field_2056 = 0
    stor20[arg2 << 240] = msg.sender
    numArbiters++
    stor21[stor2] = msg.sender
    call tokenPartnerAddress with:
       value msg.value wei
         gas stor13 wei
    require ext_call.success
    emit StatEventI(Array(len=9, data='Arb Added'), arg2);
}

function winnerDecided(uint256 arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if not stor19[address(msg.sender)].field_2048:
        emit 0x2d1df424: 'Invalid Arb'
    else:
        if uint16(arg1) != stor19[address(msg.sender)].field_256:
            emit 0x2d1df424: 'Invalid Arb'
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
                        if gameInfo[arg1][idx].field_1280 < arg3:
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
                                         gas stor16 wei
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
                                numGamesCanceled++
                                stor19[address(msg.sender)].field_1280++
                                emit 0x2d1df424: Array(len=13, data='Game canceled')
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
                                stor19[address(msg.sender)].field_1024++
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
                                    stor19[address(msg.sender)].field_1024++
                                    numGamesCompleted++
                                    if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                        call arg2 with:
                                           value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                             gas stor15 wei
                                        require ext_call.success
                                        emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                else:
                                    houseFeeHoldover += s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50
                                    if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) + houseFeeHoldover <= houseFeeThreshold:
                                        idx = 0
                                        while idx < gameInfo[arg1].field_2560:
                                            require idx < 5
                                            gameInfo[arg1][idx].field_1280 = 0
                                            mem[0] = arg1
                                            mem[32] = 22
                                            idx = idx + 1
                                            continue 
                                        stor19[address(msg.sender)].field_1024++
                                        numGamesCompleted++
                                        if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                            call arg2 with:
                                               value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                 gas stor15 wei
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
                                            stor19[address(msg.sender)].field_1024++
                                            numGamesCompleted++
                                            if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                                call arg2 with:
                                                   value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                     gas stor15 wei
                                                require ext_call.success
                                                emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                        else:
                                            houseFeeHoldover = 0
                                            lastPayoutTime = block.timestamp
                                            call tokenPartnerAddress with:
                                               value houseFeeHoldover wei
                                                 gas stor17 wei
                                            if ext_call.success:
                                                idx = 0
                                                while idx < gameInfo[arg1].field_2560:
                                                    require idx < 5
                                                    gameInfo[arg1][idx].field_1280 = 0
                                                    mem[0] = arg1
                                                    mem[32] = 22
                                                    idx = idx + 1
                                                    continue 
                                                stor19[address(msg.sender)].field_1024++
                                                numGamesCompleted++
                                                if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                                    call arg2 with:
                                                       value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                         gas stor15 wei
                                                    require ext_call.success
                                                    emit StatEventI(Array(len=11, data='Winner Paid'), arg1);
                                            else:
                                                emit 0x2d1df424: Array(len=16, data='House-Fee Error1')
                                                idx = 0
                                                while idx < gameInfo[arg1].field_2560:
                                                    require idx < 5
                                                    gameInfo[arg1][idx].field_1280 = 0
                                                    mem[0] = arg1
                                                    mem[32] = 22
                                                    idx = idx + 1
                                                    continue 
                                                stor19[address(msg.sender)].field_1024++
                                                numGamesCompleted++
                                                if (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) > 0:
                                                    call arg2 with:
                                                       value (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560) - (s * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 * gameInfo[arg1].field_2560 / 50) wei
                                                         gas stor15 wei
                                                    require ext_call.success
                                                    emit StatEventI(string rg1, uint256 rg2):
                                                                    Array(len=arg1, data=11, 'Winner Paid'),
            emit 0x2d1df424: Array(len=14, data='Invalid Player')
}



}
