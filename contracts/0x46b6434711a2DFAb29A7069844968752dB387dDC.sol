contract main {




// =====================  Runtime code  =====================


const maxNumber = 99

const minNumber = 1


uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 stor0; offset 176
uint128 stor0; offset 176
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 contractBalance;
uint16 houseEdge;
uint256 maxProfit;
uint8 stor4;
uint8 stor4; offset 8
uint16 maxProfitAsPercentOfHouse;
uint256 minBet;
uint256 maxBet;
uint16 jackpotOfHouseEdge;
uint256 minJackpotBet;
uint16 stor9;
uint256 stor9; offset 16
uint256 recommendProportion;
uint256 stor10;
uint256 jackpotBlance;
array of address sub_27171b8b;
uint256 jackpotPeriods;
uint16 jackpotPersent; offset 64
uint64 nextJackpotTime;
uint256 totalWeiWon;
uint256 totalWeiWagered;
uint256 betId;
uint256 stor18;

function totalWeiWon() {
    return totalWeiWon
}

function jackpotPaused() {
    return bool(uint8(stor0.field_176))
}

function maxProfitAsPercentOfHouse() {
    return maxProfitAsPercentOfHouse
}

function jackpotBlance() {
    return jackpotBlance
}

function sub_27171b8b(?) {
    require arg1 < sub_27171b8b.length
    return address(sub_27171b8b[arg1])
}

function betId() {
    return betId
}

function maxBet() {
    return maxBet
}

function recommendPaused() {
    return bool(uint8(stor0.field_168))
}

function recommendProportion() {
    return recommendProportion
}

function nextJackpotTime() {
    return nextJackpotTime
}

function minJackpotBet() {
    return minJackpotBet
}

function jackpotPersent() {
    return jackpotPersent
}

function totalWeiWagered() {
    return totalWeiWagered
}

function jackpotOfHouseEdge() {
    return jackpotOfHouseEdge
}

function contractBalance() {
    return contractBalance
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function maxProfit() {
    return maxProfit
}

function gamePaused() {
    return bool(uint8(stor0.field_160))
}

function houseEdge() {
    return houseEdge
}

function JackpotPeriods() {
    return jackpotPeriods
}

function ownerkill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function ownerSetMinBet(uint256 arg1) {
    require msg.sender == owner
    minBet = arg1
}

function ownerSetMaxBet(uint256 arg1) {
    require msg.sender == owner
    maxBet = arg1
}

function ownerChangeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function ownerSetHouseEdge(uint16 arg1) {
    require msg.sender == owner
    require arg1 <= 1000
    houseEdge = arg1
}

function ownerPauseGame(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function ownerPauseJackpot(bool arg1) {
    require msg.sender == owner
    Mask(80, 0, stor0.field_176) = Mask(80, 0, arg1)
}

function ownerPauseRecommend(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function ownerSetMinJackpoBet(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 10^18
    minJackpotBet = arg1
}

function ownerSetJackpotOfHouseEdge(uint16 arg1) {
    require msg.sender == owner
    require arg1 < 1000
    jackpotOfHouseEdge = arg1
}

function sendValueToJackpot() payable {
    require not uint8(stor0.field_176)
    require jackpotBlance + msg.value >= jackpotBlance
    jackpotBlance += msg.value
}

function ownerSetRecommendProportion(uint16 arg1) {
    require msg.sender == owner
    require arg1 < 1000
    uint16(stor9.field_0) = arg1
    Mask(240, 0, stor9.field_16) = 0
}

function _fallback() payable {
    require contractBalance + msg.value >= contractBalance
    contractBalance += msg.value
    maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
}

function ownerSetMaxProfitAsPercentOfHouse(uint8 arg1) {
    require msg.sender == owner
    require arg1 <= 1000
    uint8(stor4.field_0) = arg1
    uint8(stor4.field_8) = 0
    maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
}

function ownerTransferEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= contractBalance
    contractBalance -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
    emit LogOwnerTransfer(address(arg1), arg2);
}

function sendJackpot(address arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_176)
    require jackpotBlance > jackpotBlance * jackpotPersent / 1000
    emit SendJackpotSuccesss(jackpotBlance * jackpotPersent / 1000, jackpotPeriods, arg1);
    require jackpotBlance * jackpotPersent / 1000 <= jackpotBlance
    jackpotBlance -= jackpotBlance * jackpotPersent / 1000
    call arg1 with:
       value jackpotBlance * jackpotPersent / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createWinner() {
    require msg.sender == owner
    require not uint8(stor0.field_176)
    require uint64(block.timestamp) >= nextJackpotTime
    require sub_27171b8b.length > 0
    nextJackpotTime = uint64(block.timestamp + (20 * 3600))
    jackpotPeriods++
    stor18 = sha3(msg.sender, block.hash(block.number - 1), block.coinbase, block.difficulty)
    require sub_27171b8b.length
    require (stor18 % sub_27171b8b.length) - 1 < sub_27171b8b.length
    sub_27171b8b.length = 0
    if sub_27171b8b.length > 0:
        idx = 0
        while sub_27171b8b.length > idx:
            uint256(sub_27171b8b[idx]) = 0
            idx = idx + 1
            continue 
    require msg.sender == owner
    require not uint8(stor0.field_176)
    require jackpotBlance > jackpotBlance * jackpotPersent / 1000
    emit SendJackpotSuccesss(jackpotBlance * jackpotPersent / 1000, jackpotPeriods, address(sub_27171b8b[stor18 % sub_27171b8b.length]));
    require jackpotBlance * jackpotPersent / 1000 <= jackpotBlance
    jackpotBlance -= jackpotBlance * jackpotPersent / 1000
    call address(sub_27171b8b[stor18 % sub_27171b8b.length]) with:
       value jackpotBlance * jackpotPersent / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function oddEven(uint8 arg1, address arg2) payable {
    require not uint8(stor0.field_160)
    require msg.value >= minBet
    require msg.value <= maxBet
    if arg1 != 1:
        require not arg1
    betId++
    stor10 = ((50 * msg.value / 50 * uint16(-houseEdge + 1000)) + (msg.value * uint16(-houseEdge + 1000)) / 1000) - msg.value
    if stor10 > maxProfit:
        stor10 = maxProfit
    stor18 = sha3(msg.sender, block.hash(block.number - 1), block.coinbase, block.difficulty)
    totalWeiWagered += msg.value
    if bool((stor18 % 100) + 1) != arg1:
        emit LogResult((stor18 % 100) + 1 << 248, 0, 0, 0, 0, arg1 << 248, msg.value, betId, msg.sender);
        require contractBalance + msg.value - 1 >= contractBalance
        contractBalance = contractBalance + msg.value - 1
        maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
        call msg.sender with:
           value 1 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require totalWeiWon + stor10 >= totalWeiWon
        totalWeiWon += stor10
        require stor10 <= contractBalance
        contractBalance -= stor10
        require stor10 + msg.value >= stor10
        maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
        emit LogResult((stor18 % 100) + 1 << 248, stor10, 1, 0, 0, arg1 << 248, msg.value, betId, msg.sender);
        require (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000 < maxProfit
        emit LogJackpot(((50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000), betId, msg.sender);
        require jackpotBlance + ((50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000) >= jackpotBlance
        jackpotBlance += (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000
        require (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000 <= contractBalance
        contractBalance -= (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000
        if msg.value >= minJackpotBet:
            sub_27171b8b.length++
            address(sub_27171b8b[sub_27171b8b.length]) = msg.sender
        if not arg2:
            call msg.sender with:
               value stor10 + msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            emit LogRecommendProfit(stor10, betId, msg.sender);
            require (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000 < contractBalance
            require (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000 <= contractBalance
            contractBalance -= (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000
            call arg2 with:
               value (50 * msg.value / 50 * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value stor10 + msg.value wei
                 gas 2300 * is_zero(value) wei
}

function playerRoll(uint8 arg1, uint8 arg2, address arg3) payable {
    require not uint8(stor0.field_160)
    require msg.value >= minBet
    require msg.value <= maxBet
    require arg1 >= 1
    require arg2 <= 99
    betId++
    require uint8(arg2 + -arg1 + 1)
    stor10 = ((msg.value * uint8(-arg2 + arg1 + 99) / uint8(arg2 + -arg1 + 1) * uint16(-houseEdge + 1000)) + (msg.value * uint16(-houseEdge + 1000)) / 1000) - msg.value
    if stor10 > maxProfit:
        stor10 = maxProfit
    stor18 = sha3(msg.sender, block.hash(block.number - 1), block.coinbase, block.difficulty)
    totalWeiWagered += msg.value
    if arg1 > uint8((stor18 % 100) + 1):
        emit LogResult((stor18 % 100) + 1 << 248, 0, 0, arg1 << 248, arg2, 2, msg.value, betId, msg.sender);
        require contractBalance + msg.value - 1 >= contractBalance
        contractBalance = contractBalance + msg.value - 1
        maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
        call msg.sender with:
           value 1 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if uint8((stor18 % 100) + 1) > arg2:
            emit LogResult((stor18 % 100) + 1 << 248, 0, 0, arg1 << 248, arg2, 2, msg.value, betId, msg.sender);
            require contractBalance + msg.value - 1 >= contractBalance
            contractBalance = contractBalance + msg.value - 1
            maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
            call msg.sender with:
               value 1 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require totalWeiWon + stor10 >= totalWeiWon
            totalWeiWon += stor10
            require stor10 <= contractBalance
            contractBalance -= stor10
            require stor10 + msg.value >= stor10
            maxProfit = contractBalance * maxProfitAsPercentOfHouse / 1000
            emit LogResult((stor18 % 100) + 1 << 248, stor10, 1, arg1 << 248, arg2, 2, msg.value, betId, msg.sender);
            require uint8(arg2 + -arg1 + 1)
            require ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000 < maxProfit
            emit LogJackpot((((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000), betId, msg.sender);
            require jackpotBlance + (((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000) >= jackpotBlance
            jackpotBlance += ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000
            require ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000 <= contractBalance
            contractBalance -= ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * jackpotOfHouseEdge / 1000
            if msg.value >= minJackpotBet:
                sub_27171b8b.length++
                address(sub_27171b8b[sub_27171b8b.length]) = msg.sender
            if not arg3:
                call msg.sender with:
                   value stor10 + msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                emit LogRecommendProfit(stor10, betId, msg.sender);
                require ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000 < contractBalance
                require ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000 <= contractBalance
                contractBalance -= ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000
                call arg3 with:
                   value ((100 * msg.value) - (uint8(arg2 + -arg1 + 1) * msg.value) / uint8(arg2 + -arg1 + 1) * houseEdge) + (msg.value * houseEdge) / 1000 * recommendProportion / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value stor10 + msg.value wei
                     gas 2300 * is_zero(value) wei
}



}
