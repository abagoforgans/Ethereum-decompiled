contract main {


// =======================  Init code  ======================


address stor110;
address stor111;
uint256 stor112;
uint8 stor113;
uint256 stor113; offset 24
uint256 stor113; offset 16
uint256 stor113; offset 8
uint256 stor114;
uint256 stor115;
uint256 stor116;
uint256 stor117;
uint8 stor118;
uint256 stor119;
uint256 stor120;
uint256 stor121;

function _fallback() payable {
    uint8(stor113.field_0) = 1
    Mask(248, 0, stor113.field_8) = 0
    Mask(240, 0, stor113.field_16) = 0
    Mask(232, 0, stor113.field_24) = 0
    stor114 = 90
    stor115 = 10
    stor116 = 1
    stor117 = 10^16
    stor118 = 0
    stor119 = 1000
    stor120 = 990
    require not msg.value
    stor111 = msg.sender
    create contract with 0 wei
                    code: code.data[8085 len 2169], code.data[10266 len 20], stor111
    require create.new_address
    stor110 = address(create.new_address)
    require stor114 - 1
    require stor119
    stor121 = 10^16 * ((101 * stor117 * stor115) - (stor114 * stor117 * stor115) / stor114 - 1 * stor120) + (stor117 * stor115 * stor120) / stor119 / 10^16
    stor112 = 0
    return code.data[698 len 7387]
}



// =====================  Runtime code  =====================


address stor110;
address stor111;
uint256 roundID;
uint8 betsState;
uint8 rolled; offset 8
uint8 stor113; offset 16
uint8 betsBlock; offset 24
uint256 stor113; offset 24
uint256 stor113; offset 16
uint256 stor113; offset 8
uint256 rollUnder;
uint256 participants;
uint256 extraBets;
uint256 oneBet;
uint8 numberOfBets;
uint256 stor119;
uint256 stor120;
uint256 expectedReturn;

function getRollUnder() {
    return rollUnder
}

function getOneBet() {
    return oneBet
}

function getRolled() {
    return bool(rolled)
}

function getExpectedReturn() {
    return expectedReturn
}

function getBetsBlock() {
    return bool(betsBlock)
}

function getParticipants() {
    return participants
}

function getRoundID() {
    return roundID
}

function getExtraBets() {
    return extraBets
}

function getBetsState() {
    return bool(betsState)
}

function getNumberOfBets() {
    return numberOfBets
}

function ownerkill() {
    require msg.sender == stor111
    selfdestruct(stor111)
}

function enableBets() {
    require msg.sender == stor111
    Mask(232, 0, stor113.field_24) = 0
}

function disableBets() {
    require msg.sender == stor111
    Mask(232, 0, stor113.field_24) = 1
}

function disableEmergencyBlock() {
    require msg.sender == stor111
    Mask(240, 0, stor113.field_16) = 0
}

function enableEmergencyBlock() {
    require msg.sender == stor111
    Mask(240, 0, stor113.field_16) = 1
    emit Emergency(roundID);
}

function resetState() {
    require msg.sender == stor111
    numberOfBets = 0
    betsState = 1
    Mask(248, 0, stor113.field_8) = 0
    roundID++
}

function ownerWithdraw() {
    require msg.sender == stor111
    call stor111 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeExtraBets(uint256 arg1) {
    require msg.sender == stor111
    require betsState
    require participants + arg1 < 110
    require participants + arg1 > numberOfBets
    extraBets = arg1
}

function proxyGetRefund() {
    require msg.sender == stor111
    require not betsState
    require rolled
    require eth.balance(stor110) > 0
    Mask(248, 0, stor113.field_8) = 0
    require ext_code.size(stor110)
    call stor110.0x110f8874 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function wakeUpProxy() {
    require msg.sender == stor111
    require not betsState
    require rolled
    require eth.balance(stor110) > 0
    require not uint8(stor113.field_16)
    Mask(248, 0, stor113.field_8) = 0
    require ext_code.size(stor110)
    call stor110.0xcc42e83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function changeOneBet(uint256 arg1) {
    require msg.sender == stor111
    require betsState
    require not numberOfBets
    require arg1 > 0
    oneBet = arg1
    require rollUnder - 1
    require stor119
    expectedReturn = 10^16 * ((101 * oneBet * participants) - (rollUnder * oneBet * participants) / rollUnder - 1 * stor120) + (oneBet * participants * stor120) / stor119 / 10^16
}

function changeRollUnder(uint256 arg1) {
    require msg.sender == stor111
    require betsState
    require arg1 > 1
    require arg1 < 100
    rollUnder = arg1
    require rollUnder - 1
    require stor119
    expectedReturn = 10^16 * ((101 * oneBet * participants) - (rollUnder * oneBet * participants) / rollUnder - 1 * stor120) + (oneBet * participants * stor120) / stor119 / 10^16
}

function getWaitingState() {
    if not betsState:
        if not rolled:
            return 1
        if not betsState:
            if rolled:
                if eth.balance(stor110) > 0:
                    return 2
    if uint8(stor113.field_16):
        return 9
    if betsBlock:
        return 8
    if not betsState:
        return 5
    if rolled:
        return 5
    else:
        return 0
}

function changeParticipants(uint256 arg1) {
    require msg.sender == stor111
    require betsState
    require arg1 <= 100
    require arg1 > numberOfBets
    participants = arg1
    require rollUnder - 1
    require stor119
    expectedReturn = 10^16 * ((101 * oneBet * participants) - (rollUnder * oneBet * participants) / rollUnder - 1 * stor120) + (oneBet * participants * stor120) / stor119 / 10^16
}

function roll() {
    require not betsState
    require not rolled
    require not uint8(stor113.field_16)
    require numberOfBets == participants + extraBets
    Mask(248, 0, stor113.field_8) = 1
    require ext_code.size(stor110)
    call stor110.sendToEtheroll(uint256 rg1, uint256 rg2) with:
       value participants * oneBet wei
         gas gas_remaining - 9710 wei
        args rollUnder, roundID
    require ext_call.success
}

function _fallback() payable {
    if oneBet != msg.value:
        require msg.sender == stor111
    else:
        if stor111 != msg.sender:
            require betsState
            require not uint8(stor113.field_16)
            require not betsBlock
            require numberOfBets < 110
            stor118 = msg.sender
            numberOfBets = uint8(numberOfBets + 1)
            emit GotBet(roundID, msg.sender, numberOfBets);
            if numberOfBets < participants + extraBets - 1:
            else:
                betsState = 0
                emit ReadyToRoll(roundID, participants + extraBets, oneBet);
}

function returnBets() {
    require msg.sender == stor111
    if not uint8(stor113.field_16):
        require betsBlock
    require numberOfBets > 0
    idx = 0
    while idx < numberOfBets:
        require idx < 110
        call stor[idx] with:
           value oneBet wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require idx < 110
            mem[96] = stor[idx]
            mem[128] = oneBet
            emit SendError(stor[idx], oneBet, roundID);
        idx = idx + 1
        continue 
    numberOfBets = 0
    betsState = 1
    Mask(248, 0, stor113.field_8) = 0
    roundID++
}

function withdrawRefund() payable {
    require msg.sender == stor110
    emit BetResult(roundID, 2, msg.value);
    require not betsState
    require numberOfBets == participants + extraBets
    require numberOfBets
    idx = 0
    while idx < numberOfBets:
        require idx < 110
        call stor[idx] with:
           value msg.value + (oneBet * extraBets) / numberOfBets wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require idx < 110
            mem[96] = stor[idx]
            mem[128] = msg.value + (oneBet * extraBets) / numberOfBets
            emit SendError(stor[idx], msg.value + (oneBet * extraBets) / numberOfBets, roundID);
        idx = idx + 1
        continue 
    numberOfBets = 0
    betsState = 1
    roundID++
}

function withdrawWinnings() payable {
    require msg.sender == stor110
    if msg.value <= expectedReturn:
        emit BetResult(roundID, 0, msg.value);
    else:
        if uint8(stor113.field_16):
            emit BetResult(roundID, 0, msg.value);
        else:
            emit BetResult(roundID, 1, msg.value);
            require not betsState
            require numberOfBets == participants + extraBets
            require numberOfBets
            idx = 0
            while idx < numberOfBets:
                require idx < 110
                call stor[idx] with:
                   value msg.value / numberOfBets wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    require idx < 110
                    mem[96] = stor[idx]
                    mem[128] = msg.value / numberOfBets
                    emit SendError(stor[idx], msg.value / numberOfBets, roundID);
                idx = idx + 1
                continue 
    numberOfBets = 0
    betsState = 1
    roundID++
}



}
