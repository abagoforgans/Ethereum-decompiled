contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor17;

function _fallback() payable {
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[78 len 9312]
}



// =====================  Runtime code  =====================


#
#  - houseKeep(int256 arg1, uint256 arg2)
#  - startGame(uint256 arg1, int256 arg2, address[] arg3)
#
address owner;
address tokenPartnerAddress;
uint256 registrationFee;
uint256 houseFeeThreshold;
uint256 payoutInterval;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 settingsState;
mapping of struct stor18;
mapping of address stor19;
uint256 numArbiters;
mapping of address stor20;
mapping of struct gameInfo;
uint256 numGamesCompleted;
uint256 numGamesCanceled;
uint256 numGamesTimedOut;
uint256 houseFeeHoldover;
uint256 lastPayoutTime;
uint256 gameTimeOut;

function payoutInterval() {
    return payoutInterval
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
    require gameInfo[arg1].field_16 <= 2
    return gameInfo[arg1].field_0, gameInfo[arg1].field_0, gameInfo[arg1].field_0, bool(gameInfo[arg1].field_0)
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
    emit StatEvent(Array(len=19, data='Kill attempt failed'));
}

function getOpGas() {
    return stor13, stor14
}

function ArbTokFromHGame(uint256 arg1) {
    return uint16(arg1)
}

function checkHGame(uint256 arg1) {
    return arg1 << 240, arg1 % 281474976710656
}

function blackHole() payable {
    emit StatEvent(Array(len=9, data='thanks!#2'));
}

function _fallback() payable {
    emit StatEvent(Array(len=7, data='thanks!'));
    houseFeeHoldover += msg.value
}

function setOpGas(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    stor13 = arg1
    stor14 = arg2
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
    if not stor19[arg1]:
        return 0
    if not stor18[stor19[arg1]].field_256:
        return 0
    return 1
}

function setArbiterLocked(address arg1, bool arg2) {
    require owner == msg.sender
    if not stor18[address(arg1)].field_256:
        emit StatEvent(Array(len=11, data='invalid arb'));
    else:
        stor18[address(arg1)].field_264 = Mask(248, 0, arg2)
}

function getArbInfo(uint256 arg1) {
    if arg1 >= numArbiters:
        emit StatEvent('Invalid Arb');
        return 0
    if stor20[arg1]:
        if stor18[stor20[arg1]].field_256:
            return stor20[arg1], stor18[stor20[arg1]].field_256, stor18[stor20[arg1]].field_256, stor18[stor20[arg1]].field_360
    emit StatEvent('Invalid Arb');
    return stor20[arg1], 0, 0, 0
}

function withdrawArbFunds() {
    if not stor18[address(msg.sender)].field_256:
        emit StatEvent(Array(len=15, data='invalid arbiter'));
    else:
        if not stor18[address(msg.sender)].field_512:
            emit StatEvent(Array(len=9, data='0 Balance'));
        else:
            stor18[address(msg.sender)].field_512 = 0
            call msg.sender with:
               value stor18[address(msg.sender)].field_512 wei
                 gas stor13 wei
            require ext_call.success
}

function flushHouseFees() {
    if owner != msg.sender:
        emit StatEvent(Array(len=30, data='only owner calls this function'));
    else:
        if houseFeeHoldover > 0:
            houseFeeHoldover = 0
            call tokenPartnerAddress with:
               value houseFeeHoldover wei
                 gas stor14 wei
            if not ext_call.success:
                emit StatEvent(Array(len=16, data='House-Fee Error2'));
            else:
                lastPayoutTime = block.timestamp
                emit StatEvent(Array(len=14, data='House-Fee Paid'));
}

function applySettings(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require owner == msg.sender
    houseFeeThreshold = arg3
    gameTimeOut = arg4
    payoutInterval = arg5
    require settingsState <= 2
    if settingsState == 2:
        emit StatEvent(Array(len=16, data='Settings Tweaked'));
    else:
        require arg1 <= 2
        settingsState = arg1
        registrationFee = arg2
        stor13 = 21000
        stor14 = 100 * 3600
        stor15 = arg6
        stor16 = arg7
        emit StatEvent(Array(len=16, data='Settings Changed'));
}

function setTokenPartner(address arg1) {
    require owner == msg.sender
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

function handleBet(uint256 arg1) payable {
    require stor19[arg1 << 240]
    require arg1 > 0
    require gameInfo[arg1].field_0
    require 0 < gameInfo[arg1].field_24
    require 0 < 5
    idx = 0
    while gameInfo[arg1][idx].field_1024 != msg.sender:
        require idx + 1 < gameInfo[arg1].field_24
        mem[0] = arg1
        mem[32] = 21
        require idx + 1 < 5
        idx = idx + 1
        continue 
    require None + 2 < 5
    gameInfo[arg1][0.5 / None + 2].field_256 = uint128(stor((0.5 / None + 2) + ('map', ('param', 'arg1'), ('name', 'stor21', 21)) + 1)[uint8(None + 2)] + msg.value) * 256^(16 * bool(None + 2)) or gameInfo[arg1][0.5 / None + 2].field_256 and !(test266151307() * 256^(16 * bool(None + 2)))
    gameInfo[arg1].field_32 = uint128(gameInfo[arg1].field_32 + msg.value)
}

function registerArbiter(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require msg.value == registrationFee
    require arg2
    if uint16(arg2) > 0:
        if stor19[arg2 << 240]:
            require not stor18[stor19[arg2 << 240]].field_256
    require not stor18[address(msg.sender)].field_256
    require arg1 <= 5
    require arg3 >= 20
    require arg4 <= 10
    stor18[address(msg.sender)].field_264 = 0
    stor18[address(msg.sender)].field_272 = uint8(arg1)
    stor18[address(msg.sender)].field_296 = uint8(arg3)
    stor18[address(msg.sender)].field_304 = 0
    stor18[address(msg.sender)].field_312 = uint8(arg4)
    stor18[address(msg.sender)].field_320 = 0
    stor18[address(msg.sender)].field_280 = uint16(arg2)
    stor18[address(msg.sender)].field_360 = uint128(arg5)
    stor18[address(msg.sender)].field_256 = 1
    stor19[arg2 << 240] = msg.sender
    numArbiters++
    stor20[stor2] = msg.sender
    call tokenPartnerAddress with:
       value msg.value wei
         gas stor14 wei
    require ext_call.success
    emit StatEventI(Array(len=9, data='Arb Added'), arg2);
}

function winnerDecided(uint256 arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if not stor18[address(msg.sender)].field_256:
        emit StatEvent('Invalid Arb');
    else:
        if uint16(arg1) != stor18[address(msg.sender)].field_280:
            emit StatEvent('Invalid Arb');
        else:
            if arg1 > 0:
                if gameInfo[arg1].field_0:
                    idx = 0
                    while idx < gameInfo[arg1].field_24:
                        require idx < 5
                        if gameInfo[arg1][idx].field_1024 != arg2:
                            mem[0] = arg1
                            mem[32] = 21
                            idx = idx + 1
                            continue 
                        require idx < 5
                        if stor((0.5 / idx) + ('map', ('param', 'arg1'), ('name', 'stor21', 21)) + 1)[uint8(idx)] < arg3:
                            if gameInfo[arg1].field_0:
                                s = 0
                                t = 0
                                idx = 0
                                while idx < gameInfo[arg1].field_24:
                                    require idx < 5
                                    if stor((0.5 / idx) + ('map', ('param', 'arg1'), ('name', 'stor21', 21)) + 1)[uint8(idx)] <= 0:
                                        mem[0] = arg1
                                        mem[32] = 21
                                        s = s
                                        t = t
                                        idx = idx + 1
                                        continue 
                                    require idx < 5
                                    gameInfo[arg1][0.5 / idx].field_256 = !(test266151307() * 256^(16 * bool(idx))) and gameInfo[arg1][0.5 / idx].field_256
                                    call gameInfo[arg1][idx].field_1024 with:
                                       value stor((0.5 / idx) + ('map', ('param', 'arg1'), ('name', 'stor21', 21)) + 1)[uint8(idx)] wei
                                         gas stor13 wei
                                    if not ext_call.success:
                                        houseFeeHoldover += stor((0.5 / idx) + ('map', ('param', 'arg1'), ('name', 'stor21', 21)) + 1)[uint8(idx)]
                                        mem[mem[64] + 32] = gameInfo[arg1][idx].field_1024
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 21
                                        mem[mem[64] + 96] = 'Cannot Refund Address'
                                        emit StatEventA(Array(len=21, data='Cannot Refund Address'), gameInfo[arg1][idx].field_1024);
                                    mem[0] = arg1
                                    mem[32] = 21
                                    s = stor((0.5 / idx) + ('map', ('param', 'arg1'), ('name', 'stor21', 21)) + 1)[uint8(idx)]
                                    t = gameInfo[arg1][idx].field_1024
                                    idx = idx + 1
                                    continue 
                                gameInfo[arg1].field_0 = 0
                                gameInfo[arg1].field_0 = 2
                                numGamesCanceled++
                                emit StatEvent(Array(len=13, data='Game canceled'));
                        else:
                            gameInfo[arg1].field_0 = 0
                            gameInfo[arg1].field_0 = -16711936 and gameInfo[arg1].field_0
                            numGamesCompleted++
                            if gameInfo[arg1].field_32 > 0:
                                if uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) + uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) <= stor18[address(msg.sender)].field_360:
                                    if (stor15 * block.gasprice) + (stor16 * block.gasprice) > gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000):
                                        stor18[address(msg.sender)].field_512 = uint128(gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) + stor18[address(msg.sender)].field_512)
                                        houseFeeHoldover += uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000)
                                        if uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) + houseFeeHoldover > houseFeeThreshold:
                                            if block.timestamp > lastPayoutTime + payoutInterval:
                                                if tokenPartnerAddress:
                                                    houseFeeHoldover = 0
                                                    lastPayoutTime = block.timestamp
                                                    call tokenPartnerAddress with:
                                                       value houseFeeHoldover wei
                                                         gas stor14 wei
                                                    if not ext_call.success:
                                                        emit StatEvent(Array(len=16, data='House-Fee Error1'));
                                    else:
                                        stor18[address(msg.sender)].field_512 = uint128((stor15 * block.gasprice) + (stor16 * block.gasprice) + uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) + stor18[address(msg.sender)].field_512)
                                        houseFeeHoldover += uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000)
                                        if uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) + houseFeeHoldover <= houseFeeThreshold:
                                            if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                call arg2 with:
                                                   value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                     gas stor13 wei
                                                if not ext_call.success:
                                                    houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                    emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                        else:
                                            if block.timestamp <= lastPayoutTime + payoutInterval:
                                                if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                    call arg2 with:
                                                       value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                         gas stor13 wei
                                                    if not ext_call.success:
                                                        houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                        emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                            else:
                                                if not tokenPartnerAddress:
                                                    if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                        call arg2 with:
                                                           value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                             gas stor13 wei
                                                        if not ext_call.success:
                                                            houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                            emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                                else:
                                                    houseFeeHoldover = 0
                                                    lastPayoutTime = block.timestamp
                                                    call tokenPartnerAddress with:
                                                       value houseFeeHoldover wei
                                                         gas stor14 wei
                                                    if ext_call.success:
                                                        if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                            call arg2 with:
                                                               value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                                 gas stor13 wei
                                                            if not ext_call.success:
                                                                houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                                emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                                    else:
                                                        emit StatEvent(Array(len=16, data='House-Fee Error1'));
                                                        if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                            call arg2 with:
                                                               value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                                 gas stor13 wei
                                                            if not ext_call.success:
                                                                houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * gameInfo[arg1].field_32) / 1000) - uint128(uint128(stor18[address(msg.sender)].field_312 * gameInfo[arg1].field_32) / 1000) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                                emit StatEventI(string rg1, uint256 rg2):
                                                                                Array(len=arg1, data=13, 'Payout Error!'),
                                else:
                                    require uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)
                                    require uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)
                                    if (stor15 * block.gasprice) + (stor16 * block.gasprice) > gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)):
                                        stor18[address(msg.sender)].field_512 = uint128(gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) + stor18[address(msg.sender)].field_512)
                                        houseFeeHoldover += uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312))
                                        if uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) + houseFeeHoldover > houseFeeThreshold:
                                            if block.timestamp > lastPayoutTime + payoutInterval:
                                                if tokenPartnerAddress:
                                                    houseFeeHoldover = 0
                                                    lastPayoutTime = block.timestamp
                                                    call tokenPartnerAddress with:
                                                       value houseFeeHoldover wei
                                                         gas stor14 wei
                                                    if not ext_call.success:
                                                        emit StatEvent(Array(len=16, data='House-Fee Error1'));
                                    else:
                                        stor18[address(msg.sender)].field_512 = uint128((stor15 * block.gasprice) + (stor16 * block.gasprice) + uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) + stor18[address(msg.sender)].field_512)
                                        houseFeeHoldover += uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312))
                                        if uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) + houseFeeHoldover <= houseFeeThreshold:
                                            if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                call arg2 with:
                                                   value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                     gas stor13 wei
                                                if not ext_call.success:
                                                    houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                    emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                        else:
                                            if block.timestamp <= lastPayoutTime + payoutInterval:
                                                if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                    call arg2 with:
                                                       value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                         gas stor13 wei
                                                    if not ext_call.success:
                                                        houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                        emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                            else:
                                                if not tokenPartnerAddress:
                                                    if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                        call arg2 with:
                                                           value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                             gas stor13 wei
                                                        if not ext_call.success:
                                                            houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                            emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                                else:
                                                    houseFeeHoldover = 0
                                                    lastPayoutTime = block.timestamp
                                                    call tokenPartnerAddress with:
                                                       value houseFeeHoldover wei
                                                         gas stor14 wei
                                                    if ext_call.success:
                                                        if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                            call arg2 with:
                                                               value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                                 gas stor13 wei
                                                            if not ext_call.success:
                                                                houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                                emit StatEventI(Array(len=13, data='Payout Error!'), arg1);
                                                    else:
                                                        emit StatEvent(Array(len=16, data='House-Fee Error1'));
                                                        if gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) > 0:
                                                            call arg2 with:
                                                               value gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) wei
                                                                 gas stor13 wei
                                                            if not ext_call.success:
                                                                houseFeeHoldover = gameInfo[arg1].field_32 - uint128(uint128(stor18[address(msg.sender)].field_296 * stor18[address(msg.sender)].field_360) / uint16(stor18[address(msg.sender)].field_296 + stor18[address(msg.sender)].field_312)) - uint128(uint128(stor18[address(msg.sender)].field_360 * stor18[address(msg.sender)].field_312) / uint16(stor18[address(msg.sender)].field_312 + stor18[address(msg.sender)].field_296)) - (stor15 * block.gasprice) - (stor16 * block.gasprice) + houseFeeHoldover
                                                                emit StatEventI(string rg1, uint256 rg2):
                                                                                Array(len=arg1, data=13, 'Payout Error!'),
            emit StatEvent(Array(len=14, data='Invalid Player'));
}



}
