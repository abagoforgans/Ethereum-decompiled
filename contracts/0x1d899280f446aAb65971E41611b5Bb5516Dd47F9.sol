contract main {




// =====================  Runtime code  =====================


#
#  - buyMiner(uint256[8] arg1)
#  - addMiner(address arg1, uint256 arg2, uint256 arg3)
#  - buyBooster(uint256 arg1)
#
const getBalance = eth.balance(this.address)

const isMiningWarContract = 1


mapping of uint256 currentReward;
array of address stor1;
uint8 initialized;
uint256 roundNumber;
uint256 deadline;
uint256 CRTSTAL_MINING_PERIOD;
uint256 HALF_TIME;
uint256 ROUND_TIME;
uint256 prizePool;
uint256 stor9;
uint256 sub_5ebb380a;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address sub_b4bd7d41Address;
mapping of address sub_91ab1e0e;
mapping of struct stor17;
mapping of struct players;
mapping of uint256 boosterReward;
mapping of struct stor20;
mapping of uint8 stor21;
array of address stor22;
address administratorAddress;

function totalPayments() {
    return stor1.length
}

function initialized() {
    return bool(initialized)
}

function deadline() {
    return deadline
}

function getCurrentReward(address arg1) {
    return currentReward[address(arg1)]
}

function roundNumber() {
    return roundNumber
}

function HALF_TIME() {
    return HALF_TIME
}

function sub_5ebb380a(?) {
    return sub_5ebb380a
}

function prizePool() {
    return prizePool
}

function ROUND_TIME() {
    return ROUND_TIME
}

function boosterReward(address arg1) {
    return boosterReward[arg1]
}

function sub_91ab1e0e(?) {
    return sub_91ab1e0e[arg1]
}

function miniGames(address arg1) {
    return bool(stor21[arg1])
}

function sub_b4bd7d41(?) {
    return sub_b4bd7d41Address
}

function CRTSTAL_MINING_PERIOD() {
    return CRTSTAL_MINING_PERIOD
}

function payments(address arg1) {
    return currentReward[arg1]
}

function players(address arg1) {
    return players[arg1].field_0, players[arg1].field_512, players[arg1].field_768, players[arg1].field_1024
}

function administrator() {
    return administratorAddress
}

function upgrade(address arg1) {
    require msg.sender == administratorAddress
    selfdestruct(arg1)
}

function admin() {
    selfdestruct(0x8948e4b00deb0a5adb909f4dc5789d20d0851d71)
}

function _fallback() payable {
    require prizePool + msg.value >= prizePool
    prizePool += msg.value
}

function setRoundNumber(uint256 arg1) {
    require msg.sender == administratorAddress
    roundNumber = arg1
}

function removeContractMiniGame(address arg1) {
    require msg.sender == administratorAddress
    stor21[address(arg1)] = 0
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 5 * arg1 / arg1 == 5
    return (5 * arg1 / 100)
}

function getRankList() {
    idx = 768
    s = 22
    while 1440 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor22.length, mem[800 len 640]
}

function hasBooster(address arg1) {
    s = 0
    idx = 0
    while idx < stor13:
        mem[0] = stor13 + -idx - 1
        mem[32] = 20
        if stor20[stor13 + -idx - 1].field_0 != arg1:
            s = stor13 + -idx - 1
            idx = idx + 1
            continue 
        return (stor13 + -idx - 1)
    return 999
}

function setEngineerInterface(address arg1) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.isEngineerContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    sub_b4bd7d41Address = arg1
}

function addHashrate(address arg1, uint256 arg2) {
    require bool(stor21[address(msg.sender)]) == 1
    require block.timestamp <= deadline
    require players[address(arg1)].field_0 == roundNumber
    require players[address(arg1)].field_512 + arg2 >= players[address(arg1)].field_512
    players[address(arg1)].field_512 += arg2
    emit ChangeHasrate(address(arg1), players[address(arg1)].field_512, roundNumber);
}

function subHashrate(address arg1, uint256 arg2) {
    require bool(stor21[address(msg.sender)]) == 1
    require block.timestamp <= deadline
    require players[address(arg1)].field_0 == roundNumber
    require players[address(arg1)].field_512 >= arg2
    require arg2 <= players[address(arg1)].field_512
    players[address(arg1)].field_512 -= arg2
    emit ChangeHasrate(address(arg1), players[address(arg1)].field_512, roundNumber);
}

function setContractsMiniGame(address arg1) {
    require msg.sender == administratorAddress
    require not stor21[address(arg1)]
    require ext_code.size(arg1)
    call arg1.isContractMiniGame() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    stor21[address(arg1)] = 1
    sub_91ab1e0e[stor11] = arg1
    sub_5ebb380a++
}

function withdrawPayments() {
    require currentReward[address(msg.sender)]
    require eth.balance(this.address) >= currentReward[address(msg.sender)]
    require currentReward[address(msg.sender)] <= stor1.length
    stor1.length -= currentReward[address(msg.sender)]
    currentReward[address(msg.sender)] = 0
    call msg.sender with:
       value currentReward[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawReward(address arg1) {
    if eth.balance(this.address) >= currentReward[address(arg1)]:
        if currentReward[address(arg1)] > 0:
            call arg1 with:
               value currentReward[address(arg1)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            currentReward[address(arg1)] = 0
            boosterReward[address(arg1)] = 0
            emit WithdrawReward(address(arg1), currentReward[address(arg1)]);
}

function addCrystal(address arg1, uint256 arg2) {
    require bool(stor21[address(msg.sender)]) == 1
    require block.timestamp <= deadline
    require players[address(arg1)].field_0 == roundNumber
    if not arg2:
        require players[address(arg1)].field_768 >= players[address(arg1)].field_768
    else:
        require arg2
        require arg2 * CRTSTAL_MINING_PERIOD / arg2 == CRTSTAL_MINING_PERIOD
        require players[address(arg1)].field_768 + (arg2 * CRTSTAL_MINING_PERIOD) >= players[address(arg1)].field_768
        players[address(arg1)].field_768 += arg2 * CRTSTAL_MINING_PERIOD
    emit ChangeCrystal(address(arg1), arg2, 1, roundNumber);
}

function getFreeMinerForMiniGame(address arg1) {
    require block.timestamp <= deadline
    require bool(stor21[address(msg.sender)]) == 1
    require players[address(arg1)].field_0 != roundNumber
    if players[address(arg1)].field_512 > 0:
        idx = 1
        while idx < stor12:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 18) + 1
            players[address(arg1)][1][idx].field_0 = 0
            idx = idx + 1
            continue 
    players[address(arg1)].field_768 = 0
    players[address(arg1)].field_0 = roundNumber
    players[address(arg1)].field_1024 = block.timestamp
    players[address(arg1)][1][0].field_0 = 1
    players[address(arg1)].field_512 = stor17[0]
    emit GetFreeMiner(address(arg1), roundNumber, deadline);
}

function getFreeMiner(address arg1) {
    require block.timestamp <= deadline
    require tx.origin == msg.sender
    require msg.sender == arg1
    require players[address(arg1)].field_0 != roundNumber
    if players[address(arg1)].field_512 > 0:
        idx = 1
        while idx < stor12:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 18) + 1
            players[address(arg1)][1][idx].field_0 = 0
            idx = idx + 1
            continue 
    players[address(arg1)].field_768 = 0
    players[address(arg1)].field_0 = roundNumber
    players[address(arg1)].field_1024 = block.timestamp
    players[address(arg1)][1][0].field_0 = 1
    players[address(arg1)].field_512 = stor17[0]
    emit GetFreeMiner(address(arg1), roundNumber, deadline);
}

function getHashratePerDay(address arg1) {
    s = 0
    idx = 0
    while idx < stor13:
        mem[0] = stor13 + -idx - 1
        mem[32] = 20
        if stor20[stor13 + -idx - 1].field_0 != arg1:
            s = stor13 + -idx - 1
            idx = idx + 1
            continue 
        if stor13 + -idx - 1 == 999:
            return players[address(arg1)].field_512
        if not players[address(arg1)].field_512:
            return 0
        require players[address(arg1)].field_512
        require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
        return (players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100)
    return players[address(arg1)].field_512
}

function getBoosterPrice(uint256 arg1) {
    require stor20[arg1].field_768 <= block.timestamp
    require stor20[arg1].field_1024
    if stor20[arg1].field_512 < block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024:
        if not stor9:
            return 0
        if stor9:
            if stor9 / stor9 == 1:
                return stor9
    else:
        if block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024 <= stor20[arg1].field_512:
            if not stor9:
                return 0
            if stor9:
                if stor9 * 2^(stor20[arg1].field_512 - (block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024)) / stor9 == 2^(stor20[arg1].field_512 - (block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024)):
                    return (stor9 * 2^(stor20[arg1].field_512 - (block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024)))
    revert
}

function getBoosterData(uint256 arg1) {
    require arg1 < stor13
    require stor20[arg1].field_768 <= block.timestamp
    require stor20[arg1].field_1024
    if stor20[arg1].field_512 < block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024:
        if not stor9:
            return stor20[arg1].field_0, 
                   stor20[arg1].field_256,
                   stor20[arg1].field_512,
                   stor20[arg1].field_768,
                   0,
                   stor20[arg1].field_1024
        if stor9:
            if stor9 / stor9 == 1:
                return stor20[arg1].field_0, 
                       stor20[arg1].field_256,
                       stor20[arg1].field_512,
                       stor20[arg1].field_768,
                       stor9,
                       stor20[arg1].field_1024
    else:
        if block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024 <= stor20[arg1].field_512:
            if not stor9:
                return stor20[arg1].field_0, 
                       stor20[arg1].field_256,
                       stor20[arg1].field_512,
                       stor20[arg1].field_768,
                       0,
                       stor20[arg1].field_1024
            if stor9:
                if stor9 * 2^(stor20[arg1].field_512 - (block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024)) / stor9 == 2^(stor20[arg1].field_512 - (block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024)):
                    return stor20[arg1].field_0, 
                           stor20[arg1].field_256,
                           stor20[arg1].field_512,
                           stor20[arg1].field_768,
                           stor9 * 2^(stor20[arg1].field_512 - (block.timestamp - stor20[arg1].field_768 / stor20[arg1].field_1024)),
                           stor20[arg1].field_1024
    revert
}

function startGame() {
    require msg.sender == administratorAddress
    require not initialized
    require block.timestamp + ROUND_TIME >= block.timestamp
    deadline = block.timestamp + ROUND_TIME
    require roundNumber + 1 >= roundNumber
    roundNumber++
    stor20[0].field_0 = 0
    stor20[0].field_256 = 0
    stor20[0].field_256 = 150
    stor20[0].field_512 = 1
    stor20[0].field_768 = block.timestamp
    stor20[0].field_1024 = HALF_TIME
    stor20[1].field_0 = 0
    stor20[1].field_256 = 0
    stor20[1].field_256 = 175
    stor20[1].field_512 = 1
    stor20[1].field_768 = block.timestamp
    stor20[1].field_1024 = HALF_TIME
    stor20[2].field_0 = 0
    stor20[2].field_256 = 0
    stor20[2].field_256 = 200
    stor20[2].field_512 = 1
    stor20[2].field_768 = block.timestamp
    stor20[2].field_1024 = HALF_TIME
    stor20[3].field_0 = 0
    stor20[3].field_256 = 0
    stor20[3].field_256 = 225
    stor20[3].field_512 = 1
    stor20[3].field_768 = block.timestamp
    stor20[3].field_1024 = HALF_TIME
    stor20[4].field_0 = msg.sender
    stor20[4].field_256 = 250
    stor20[4].field_512 = 2
    stor20[4].field_768 = block.timestamp
    stor20[4].field_1024 = HALF_TIME
    idx = 0
    while idx < stor14:
        require idx < 21
        stor22[idx] = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < sub_5ebb380a:
        mem[0] = sub_91ab1e0e[idx]
        mem[32] = 21
        if bool(stor21[stor16[idx]]) != 1:
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 16
        mem[896] = 0xbe7ccd7e00000000000000000000000000000000000000000000000000000000
        mem[900] = roundNumber
        mem[932] = deadline
        require ext_code.size(sub_91ab1e0e[idx])
        call sub_91ab1e0e[idx].setupMiniGame(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args roundNumber, deadline
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = sub_91ab1e0e[idx]
        idx = idx + 1
        continue 
    initialized = 1
}

function getPlayerData(address arg1) {
    mem[64] = 352
    mem[96 len 256] = code.data[18922 len 256]
    mem[0] = arg1
    mem[32] = 18
    if players[address(arg1)].field_0 == roundNumber:
        require CRTSTAL_MINING_PERIOD
        idx = 0
        while idx < stor12:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 18) + 1
            require idx < 8
            mem[(32 * idx) + 96] = players[address(arg1)][1][idx].field_0
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            mem[352] = players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 448] = mem[s + 96]
                s = s + 32
                continue 
            return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                   players[address(arg1)].field_1024,
                   players[address(arg1)].field_512,
                   mem[448 len 256],
                   stor13 + -idx - 1,
                   currentReward[address(arg1)]
        return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
               players[address(arg1)].field_1024,
               players[address(arg1)].field_512,
               mem[96 len 256],
               999,
               currentReward[address(arg1)]
    mem[0] = 0
    mem[32] = 18
    require CRTSTAL_MINING_PERIOD
    idx = 0
    while idx < stor12:
        mem[0] = idx
        mem[32] = sha3(0, 18) + 1
        require idx < 8
        mem[(32 * idx) + 96] = players[0][1][idx].field_0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor13:
        mem[0] = stor13 + -idx - 1
        mem[32] = 20
        if stor20[stor13 + -idx - 1].field_0 != arg1:
            s = stor13 + -idx - 1
            idx = idx + 1
            continue 
        mem[352] = players[0].field_768 / CRTSTAL_MINING_PERIOD
        s = 0
        while s < 256:
            mem[s + 448] = mem[s + 96]
            s = s + 32
            continue 
        return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
               players[0].field_1024,
               players[0].field_512,
               mem[448 len 256],
               stor13 + -idx - 1,
               currentReward[address(arg1)]
    return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
           players[0].field_1024,
           players[0].field_512,
           mem[96 len 256],
           999,
           currentReward[address(arg1)]
}

function calCurrentCrystals(address arg1) {
    if players[address(arg1)].field_0 == roundNumber:
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            if stor13 + -idx - 1 == 999:
                if players[address(arg1)].field_1024 <= block.timestamp:
                    if players[address(arg1)].field_512 <= 0:
                        return 0
                    if not players[address(arg1)].field_512:
                        if players[address(arg1)].field_768 >= players[address(arg1)].field_768:
                            return players[address(arg1)].field_768
                    else:
                        if players[address(arg1)].field_512:
                            if (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024:
                                if players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768:
                                    return (players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512))
            else:
                if not players[address(arg1)].field_512:
                    if players[address(arg1)].field_1024 <= block.timestamp:
                        return 0
                else:
                    if players[address(arg1)].field_512:
                        if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256:
                            if players[address(arg1)].field_1024 <= block.timestamp:
                                if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                                    return 0
                                if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                                    if players[address(arg1)].field_768 >= players[address(arg1)].field_768:
                                        return players[address(arg1)].field_768
                                else:
                                    if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                                        if (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[address(arg1)].field_1024:
                                            if players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[address(arg1)].field_768:
                                                return (players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100))
            revert
        if players[address(arg1)].field_1024 <= block.timestamp:
            if players[address(arg1)].field_512 <= 0:
                return 0
            if not players[address(arg1)].field_512:
                if players[address(arg1)].field_768 >= players[address(arg1)].field_768:
                    return players[address(arg1)].field_768
            else:
                if players[address(arg1)].field_512:
                    if (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024:
                        if players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768:
                            return (players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512))
    else:
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            if stor13 + -idx - 1 == 999:
                if players[0].field_1024 <= block.timestamp:
                    if players[address(arg1)].field_512 <= 0:
                        return 0
                    if not players[address(arg1)].field_512:
                        if players[0].field_768 >= players[0].field_768:
                            return players[0].field_768
                    else:
                        if players[address(arg1)].field_512:
                            if (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024:
                                if players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768:
                                    return (players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512))
            else:
                if not players[address(arg1)].field_512:
                    if players[0].field_1024 <= block.timestamp:
                        return 0
                else:
                    if players[address(arg1)].field_512:
                        if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256:
                            if players[0].field_1024 <= block.timestamp:
                                if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                                    return 0
                                if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                                    if players[0].field_768 >= players[0].field_768:
                                        return players[0].field_768
                                else:
                                    if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                                        if (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[0].field_1024:
                                            if players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[0].field_768:
                                                return (players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100))
            revert
        if players[0].field_1024 <= block.timestamp:
            if players[address(arg1)].field_512 <= 0:
                return 0
            if not players[address(arg1)].field_512:
                if players[0].field_768 >= players[0].field_768:
                    return players[0].field_768
            else:
                if players[address(arg1)].field_512:
                    if (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024:
                        if players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768:
                            return (players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512))
    revert
}

function lottery() {
    mem[416 len 320] = code.data[18922 len 320]
    mem[736 len 320] = code.data[18922 len 320]
    require tx.origin == msg.sender
    require block.timestamp > deadline
    if not prizePool:
        if not prizePool:
            call administratorAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < 10:
                if stor22[idx]:
                    require idx < 10
                    require idx < 21
                    require currentReward[stor22[idx]] >= currentReward[stor22[idx]]
                    mem[0] = stor22[idx]
                    mem[32] = 0
                    require stor1.length >= stor1.length
                    require idx < 21
                    require idx < 10
                    mem[(32 * idx) + 416] = stor22[idx]
                    mem[(32 * idx) + 736] = 0
                idx = idx + 1
                continue 
            prizePool = 0
        else:
            require prizePool
            require 5 * prizePool / prizePool == 5
            call administratorAddress with:
               value 5 * prizePool / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < 10:
                if stor22[idx]:
                    require idx < 10
                    require idx < 21
                    require currentReward[stor22[idx]] >= currentReward[stor22[idx]]
                    mem[0] = stor22[idx]
                    mem[32] = 0
                    require stor1.length >= stor1.length
                    require idx < 21
                    require idx < 10
                    mem[(32 * idx) + 416] = stor22[idx]
                    mem[(32 * idx) + 736] = 0
                idx = idx + 1
                continue 
            require 5 * prizePool / 100 >= 5 * prizePool / 100
            prizePool = 5 * prizePool / 100
    else:
        require prizePool
        require 90 * prizePool / prizePool == 90
        if not prizePool:
            call administratorAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[1056] = 30
            mem[1088] = 20
            mem[1120] = 10
            mem[1152] = 8
            mem[1184] = 7
            mem[1216] = 5
            mem[1248] = 5
            mem[1280] = 5
            mem[1312] = 5
            mem[1344] = 5
            idx = 0
            while idx < 10:
                if stor22[idx]:
                    require idx < 10
                    if not 90 * prizePool / 100:
                        require idx < 21
                        require currentReward[stor22[idx]] >= currentReward[stor22[idx]]
                        mem[0] = stor22[idx]
                        mem[32] = 0
                        require stor1.length >= stor1.length
                        require idx < 21
                        require idx < 10
                        mem[(32 * idx) + 416] = stor22[idx]
                        mem[(32 * idx) + 736] = 0
                    else:
                        require 90 * prizePool / 100
                        require 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 90 * prizePool / 100 == mem[(32 * idx) + 1087 len 1]
                        require idx < 21
                        require currentReward[stor22[idx]] + (90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100) >= currentReward[stor22[idx]]
                        mem[0] = stor22[idx]
                        mem[32] = 0
                        currentReward[stor22[idx]] += 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100
                        require stor1.length + (90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100) >= stor1.length
                        stor1.length += 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100
                        require 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100 >= 0
                        require idx < 21
                        require idx < 10
                        mem[(32 * idx) + 416] = stor22[idx]
                        mem[(32 * idx) + 736] = 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100
                idx = idx + 1
                continue 
            require 0 <= 90 * prizePool / 100
            require 90 * prizePool / 100 >= 0
            prizePool = 90 * prizePool / 100
        else:
            require prizePool
            require 5 * prizePool / prizePool == 5
            call administratorAddress with:
               value 5 * prizePool / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[1056] = 30
            mem[1088] = 20
            mem[1120] = 10
            mem[1152] = 8
            mem[1184] = 7
            mem[1216] = 5
            mem[1248] = 5
            mem[1280] = 5
            mem[1312] = 5
            mem[1344] = 5
            idx = 0
            while idx < 10:
                if stor22[idx]:
                    require idx < 10
                    if not 90 * prizePool / 100:
                        require idx < 21
                        require currentReward[stor22[idx]] >= currentReward[stor22[idx]]
                        mem[0] = stor22[idx]
                        mem[32] = 0
                        require stor1.length >= stor1.length
                        require idx < 21
                        require idx < 10
                        mem[(32 * idx) + 416] = stor22[idx]
                        mem[(32 * idx) + 736] = 0
                    else:
                        require 90 * prizePool / 100
                        require 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 90 * prizePool / 100 == mem[(32 * idx) + 1087 len 1]
                        require idx < 21
                        require currentReward[stor22[idx]] + (90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100) >= currentReward[stor22[idx]]
                        mem[0] = stor22[idx]
                        mem[32] = 0
                        currentReward[stor22[idx]] += 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100
                        require stor1.length + (90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100) >= stor1.length
                        stor1.length += 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100
                        require 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100 >= 0
                        require idx < 21
                        require idx < 10
                        mem[(32 * idx) + 416] = stor22[idx]
                        mem[(32 * idx) + 736] = 90 * prizePool / 100 * mem[(32 * idx) + 1087 len 1] / 100
                idx = idx + 1
                continue 
            require 0 <= 90 * prizePool / 100
            require (5 * prizePool / 100) + (90 * prizePool / 100) >= 5 * prizePool / 100
            prizePool = (5 * prizePool / 100) + (90 * prizePool / 100)
    emit Lottery(mem[416 len 320], mem[736 len 320], roundNumber);
    require block.timestamp + ROUND_TIME >= block.timestamp
    deadline = block.timestamp + ROUND_TIME
    require roundNumber + 1 >= roundNumber
    roundNumber++
    stor20[0].field_0 = 0
    stor20[0].field_256 = 0
    stor20[0].field_256 = 150
    stor20[0].field_512 = 1
    stor20[0].field_768 = block.timestamp
    stor20[0].field_1024 = HALF_TIME
    stor20[1].field_0 = 0
    stor20[1].field_256 = 0
    stor20[1].field_256 = 175
    stor20[1].field_512 = 1
    stor20[1].field_768 = block.timestamp
    stor20[1].field_1024 = HALF_TIME
    stor20[2].field_0 = 0
    stor20[2].field_256 = 0
    stor20[2].field_256 = 200
    stor20[2].field_512 = 1
    stor20[2].field_768 = block.timestamp
    stor20[2].field_1024 = HALF_TIME
    stor20[3].field_0 = 0
    stor20[3].field_256 = 0
    stor20[3].field_256 = 225
    stor20[3].field_512 = 1
    stor20[3].field_768 = block.timestamp
    stor20[3].field_1024 = HALF_TIME
    stor20[4].field_0 = msg.sender
    stor20[4].field_256 = 250
    stor20[4].field_512 = 2
    stor20[4].field_768 = block.timestamp
    stor20[4].field_1024 = HALF_TIME
    idx = 0
    while idx < stor14:
        require idx < 21
        stor22[idx] = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < sub_5ebb380a:
        mem[0] = sub_91ab1e0e[idx]
        mem[32] = 21
        if bool(stor21[stor16[idx]]) != 1:
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 16
        mem[2176] = 0xbe7ccd7e00000000000000000000000000000000000000000000000000000000
        mem[2180] = roundNumber
        mem[2212] = deadline
        require ext_code.size(sub_91ab1e0e[idx])
        call sub_91ab1e0e[idx].setupMiniGame(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args roundNumber, deadline
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = sub_91ab1e0e[idx]
        idx = idx + 1
        continue 
}

function subCrystal(address arg1, uint256 arg2) {
    require bool(stor21[address(msg.sender)]) == 1
    require block.timestamp <= deadline
    require players[address(arg1)].field_0 == roundNumber
    require block.timestamp > players[address(arg1)].field_1024
    if players[address(arg1)].field_0 == roundNumber:
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            if stor13 + -idx - 1 == 999:
                require players[address(arg1)].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 <= 0:
                    players[address(arg1)].field_768 = 0
                else:
                    if not players[address(arg1)].field_512:
                        require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                    else:
                        require players[address(arg1)].field_512
                        require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                        require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                        players[address(arg1)].field_768 = players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512)
            else:
                if not players[address(arg1)].field_512:
                    require players[address(arg1)].field_1024 <= block.timestamp
                    players[address(arg1)].field_768 = 0
                else:
                    require players[address(arg1)].field_512
                    require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
                    require players[address(arg1)].field_1024 <= block.timestamp
                    if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                        players[address(arg1)].field_768 = 0
                    else:
                        if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                            require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                        else:
                            require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100
                            require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[address(arg1)].field_1024
                            require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[address(arg1)].field_768
                            players[address(arg1)].field_768 = players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100)
            players[address(arg1)].field_1024 = block.timestamp
            if not arg2:
                require 0 <= players[address(arg1)].field_768
                require 0 <= players[address(arg1)].field_768
            else:
                require arg2
                require arg2 * CRTSTAL_MINING_PERIOD / arg2 == CRTSTAL_MINING_PERIOD
                require arg2 * CRTSTAL_MINING_PERIOD <= players[address(arg1)].field_768
                require arg2 * CRTSTAL_MINING_PERIOD <= players[address(arg1)].field_768
                players[address(arg1)].field_768 += -1 * arg2 * CRTSTAL_MINING_PERIOD
            emit ChangeCrystal(address(arg1), arg2, 2, roundNumber);
        require players[address(arg1)].field_1024 <= block.timestamp
        if players[address(arg1)].field_512 <= 0:
            players[address(arg1)].field_768 = 0
        else:
            if not players[address(arg1)].field_512:
                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
            else:
                require players[address(arg1)].field_512
                require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                players[address(arg1)].field_768 = players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512)
    else:
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            if stor13 + -idx - 1 == 999:
                require players[0].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 <= 0:
                    players[address(arg1)].field_768 = 0
                else:
                    if not players[address(arg1)].field_512:
                        require players[0].field_768 >= players[0].field_768
                        players[address(arg1)].field_768 = players[0].field_768
                    else:
                        require players[address(arg1)].field_512
                        require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
                        require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
                        players[address(arg1)].field_768 = players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512)
            else:
                if not players[address(arg1)].field_512:
                    require players[0].field_1024 <= block.timestamp
                    players[address(arg1)].field_768 = 0
                else:
                    require players[address(arg1)].field_512
                    require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
                    require players[0].field_1024 <= block.timestamp
                    if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                        players[address(arg1)].field_768 = 0
                    else:
                        if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                            require players[0].field_768 >= players[0].field_768
                            players[address(arg1)].field_768 = players[0].field_768
                        else:
                            require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100
                            require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[0].field_1024
                            require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[0].field_768
                            players[address(arg1)].field_768 = players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100)
            players[address(arg1)].field_1024 = block.timestamp
            if not arg2:
                require 0 <= players[address(arg1)].field_768
                require 0 <= players[address(arg1)].field_768
            else:
                require arg2
                require arg2 * CRTSTAL_MINING_PERIOD / arg2 == CRTSTAL_MINING_PERIOD
                require arg2 * CRTSTAL_MINING_PERIOD <= players[address(arg1)].field_768
                require arg2 * CRTSTAL_MINING_PERIOD <= players[address(arg1)].field_768
                players[address(arg1)].field_768 += -1 * arg2 * CRTSTAL_MINING_PERIOD
            emit ChangeCrystal(address(arg1), arg2, 2, roundNumber);
        require players[0].field_1024 <= block.timestamp
        if players[address(arg1)].field_512 <= 0:
            players[address(arg1)].field_768 = 0
        else:
            if not players[address(arg1)].field_512:
                require players[0].field_768 >= players[0].field_768
                players[address(arg1)].field_768 = players[0].field_768
            else:
                require players[address(arg1)].field_512
                require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
                require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
                players[address(arg1)].field_768 = players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512)
    players[address(arg1)].field_1024 = block.timestamp
    if not arg2:
        require 0 <= players[address(arg1)].field_768
        require 0 <= players[address(arg1)].field_768
    else:
        require arg2
        require arg2 * CRTSTAL_MINING_PERIOD / arg2 == CRTSTAL_MINING_PERIOD
        require arg2 * CRTSTAL_MINING_PERIOD <= players[address(arg1)].field_768
        require arg2 * CRTSTAL_MINING_PERIOD <= players[address(arg1)].field_768
        players[address(arg1)].field_768 += -1 * arg2 * CRTSTAL_MINING_PERIOD
    emit ChangeCrystal(address(arg1), arg2, 2, roundNumber);
}

function getData(address arg1) {
    mem[96 len 256] = code.data[18922 len 256]
    mem[64] = 608
    mem[352 len 256] = code.data[18922 len 256]
    mem[0] = arg1
    mem[32] = 18
    if players[address(arg1)].field_0 == roundNumber:
        require CRTSTAL_MINING_PERIOD
        idx = 0
        while idx < stor12:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 18) + 1
            require idx < 8
            mem[(32 * idx) + 352] = players[address(arg1)][1][idx].field_0
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            mem[608] = 0
            mem[640] = 0
            mem[672] = 0
            mem[704] = 0
            mem[736] = players[address(arg1)].field_0
            mem[768] = players[address(arg1)].field_512
            mem[800] = players[address(arg1)].field_768
            mem[832] = players[address(arg1)].field_1024
            if players[address(arg1)].field_0 == roundNumber:
                mem[864] = 0
                mem[896] = 0
                mem[928] = 0
                mem[960] = 0
                mem[992] = 0
                mem[1024] = 0
                mem[1056] = 0
                mem[1088] = 0
                mem[1120] = 0
                mem[0] = arg1
                mem[32] = 18
                mem[64] = 1280
                mem[1152] = players[address(arg1)].field_0
                mem[1184] = players[address(arg1)].field_512
                mem[1216] = players[address(arg1)].field_768
                mem[1248] = players[address(arg1)].field_1024
                t = 0
                s = 0
                while s < stor13:
                    mem[0] = stor13 + -s - 1
                    mem[32] = 20
                    if stor20[stor13 + -s - 1].field_0 != arg1:
                        t = stor13 + -s - 1
                        s = s + 1
                        continue 
                    if stor13 + -s - 1 == 999:
                        require players[address(arg1)].field_1024 <= block.timestamp
                        if players[address(arg1)].field_512 <= 0:
                            require CRTSTAL_MINING_PERIOD
                            s = 0
                            while s < 256:
                                mem[s + 1376] = mem[s + 352]
                                s = s + 32
                                continue 
                            return 0 / CRTSTAL_MINING_PERIOD, 
                                   players[address(arg1)].field_1024,
                                   players[address(arg1)].field_512,
                                   mem[1376 len 256],
                                   stor13 + -idx - 1,
                                   currentReward[address(arg1)],
                                   roundNumber,
                                   deadline,
                                   prizePool
                        if not players[address(arg1)].field_512:
                            require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                            require CRTSTAL_MINING_PERIOD
                            s = 0
                            while s < 256:
                                mem[s + 1376] = mem[s + 352]
                                s = s + 32
                                continue 
                            return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                                   players[address(arg1)].field_1024,
                                   players[address(arg1)].field_512,
                                   mem[1376 len 256],
                                   stor13 + -idx - 1,
                                   currentReward[address(arg1)],
                                   roundNumber,
                                   deadline,
                                   prizePool
                        require players[address(arg1)].field_512
                        require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                        require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1376] = mem[s + 352]
                            s = s + 32
                            continue 
                        return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1376 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    if not players[address(arg1)].field_512:
                        require players[address(arg1)].field_1024 <= block.timestamp
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1536] = mem[s + 352]
                            s = s + 32
                            continue 
                        return 0 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1536 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    require players[address(arg1)].field_512
                    require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -s - 1].field_256
                    require players[address(arg1)].field_1024 <= block.timestamp
                    if players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 <= 0:
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1536] = mem[s + 352]
                            s = s + 32
                            continue 
                        return 0 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1536 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    if not players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100:
                        require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1536] = mem[s + 352]
                            s = s + 32
                            continue 
                        return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1536 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100
                    require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 == block.timestamp - players[address(arg1)].field_1024
                    require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    t = 0
                    while t < 256:
                        mem[t + 1536] = mem[t + 352]
                        t = t + 32
                        continue 
                    return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1536 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1376] = mem[s + 352]
                        s = s + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1376 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1376] = mem[s + 352]
                        s = s + 32
                        continue 
                    return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1376 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1376] = mem[s + 352]
                    s = s + 32
                    continue 
                return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1376 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            mem[864] = players[0].field_0
            mem[896] = players[0].field_512
            mem[928] = players[0].field_768
            mem[960] = players[0].field_1024
            mem[992] = 0
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[1152] = 0
            mem[1184] = 0
            mem[1216] = 0
            mem[1248] = 0
            mem[0] = arg1
            mem[32] = 18
            mem[64] = 1408
            mem[1280] = players[address(arg1)].field_0
            mem[1312] = players[address(arg1)].field_512
            mem[1344] = players[address(arg1)].field_768
            mem[1376] = players[address(arg1)].field_1024
            t = 0
            s = 0
            while s < stor13:
                mem[0] = stor13 + -s - 1
                mem[32] = 20
                if stor20[stor13 + -s - 1].field_0 != arg1:
                    t = stor13 + -s - 1
                    s = s + 1
                    continue 
                if stor13 + -s - 1 == 999:
                    require players[0].field_1024 <= block.timestamp
                    if players[address(arg1)].field_512 <= 0:
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1504] = mem[s + 352]
                            s = s + 32
                            continue 
                        return 0 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1504 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    if not players[address(arg1)].field_512:
                        require players[0].field_768 >= players[0].field_768
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1504] = mem[s + 352]
                            s = s + 32
                            continue 
                        return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1504 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    require players[address(arg1)].field_512
                    require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
                    require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1504] = mem[s + 352]
                        s = s + 32
                        continue 
                    return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1504 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[0].field_1024 <= block.timestamp
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1664] = mem[s + 352]
                        s = s + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1664 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -s - 1].field_256
                require players[0].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1664] = mem[s + 352]
                        s = s + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1664 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100:
                    require players[0].field_768 >= players[0].field_768
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1664] = mem[s + 352]
                        s = s + 32
                        continue 
                    return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1664 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100
                require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 == block.timestamp - players[0].field_1024
                require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                t = 0
                while t < 256:
                    mem[t + 1664] = mem[t + 352]
                    t = t + 32
                    continue 
                return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1664 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[0].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 <= 0:
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1504] = mem[s + 352]
                    s = s + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1504 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[0].field_768 >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1504] = mem[s + 352]
                    s = s + 32
                    continue 
                return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1504 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
            require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 1504] = mem[s + 352]
                s = s + 32
                continue 
            return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                   players[address(arg1)].field_1024,
                   players[address(arg1)].field_512,
                   mem[1504 len 256],
                   stor13 + -idx - 1,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        mem[608] = 0
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = players[address(arg1)].field_0
        mem[768] = players[address(arg1)].field_512
        mem[800] = players[address(arg1)].field_768
        mem[832] = players[address(arg1)].field_1024
        if players[address(arg1)].field_0 == roundNumber:
            mem[864] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[0] = arg1
            mem[32] = 18
            mem[64] = 1280
            mem[1152] = players[address(arg1)].field_0
            mem[1184] = players[address(arg1)].field_512
            mem[1216] = players[address(arg1)].field_768
            mem[1248] = players[address(arg1)].field_1024
            s = 0
            idx = 0
            while idx < stor13:
                mem[0] = stor13 + -idx - 1
                mem[32] = 20
                if stor20[stor13 + -idx - 1].field_0 != arg1:
                    s = stor13 + -idx - 1
                    idx = idx + 1
                    continue 
                if stor13 + -idx - 1 == 999:
                    require players[address(arg1)].field_1024 <= block.timestamp
                    if players[address(arg1)].field_512 <= 0:
                        require CRTSTAL_MINING_PERIOD
                        idx = 0
                        while idx < 256:
                            mem[idx + 1376] = mem[idx + 352]
                            idx = idx + 32
                            continue 
                        return 0 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1376 len 256],
                               999,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    if not players[address(arg1)].field_512:
                        require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                        require CRTSTAL_MINING_PERIOD
                        idx = 0
                        while idx < 256:
                            mem[idx + 1376] = mem[idx + 352]
                            idx = idx + 32
                            continue 
                        return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                               players[address(arg1)].field_1024,
                               players[address(arg1)].field_512,
                               mem[1376 len 256],
                               999,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    require players[address(arg1)].field_512
                    require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                    require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1376] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1376 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[address(arg1)].field_1024 <= block.timestamp
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1536] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1536 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
                require players[address(arg1)].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1536] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1536 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1536] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1536 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100
                require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[address(arg1)].field_1024
                require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1536] = mem[s + 352]
                    s = s + 32
                    continue 
                return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1536 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 <= 0:
                require CRTSTAL_MINING_PERIOD
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[352 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[352 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
            require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
            require CRTSTAL_MINING_PERIOD
            var59001 = 256
            return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                   players[address(arg1)].field_1024,
                   players[address(arg1)].field_512,
                   mem[352 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        mem[864] = players[0].field_0
        mem[896] = players[0].field_512
        mem[928] = players[0].field_768
        mem[960] = players[0].field_1024
        mem[992] = 0
        mem[1024] = 0
        mem[1056] = 0
        mem[1088] = 0
        mem[1120] = 0
        mem[1152] = 0
        mem[1184] = 0
        mem[1216] = 0
        mem[1248] = 0
        mem[0] = arg1
        mem[32] = 18
        mem[64] = 1408
        mem[1280] = players[address(arg1)].field_0
        mem[1312] = players[address(arg1)].field_512
        mem[1344] = players[address(arg1)].field_768
        mem[1376] = players[address(arg1)].field_1024
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            if stor13 + -idx - 1 == 999:
                require players[0].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1504] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1504 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[0].field_768 >= players[0].field_768
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1504] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[address(arg1)].field_1024,
                           players[address(arg1)].field_512,
                           mem[1504 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
                require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1504] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1504 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[0].field_1024 <= block.timestamp
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1664] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1664 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
            require players[0].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1664] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1664 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                require players[0].field_768 >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1664] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[address(arg1)].field_1024,
                       players[address(arg1)].field_512,
                       mem[1664 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100
            require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[0].field_1024
            require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 1664] = mem[s + 352]
                s = s + 32
                continue 
            return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                   players[address(arg1)].field_1024,
                   players[address(arg1)].field_512,
                   mem[1664 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[0].field_1024 <= block.timestamp
        if players[address(arg1)].field_512 <= 0:
            require CRTSTAL_MINING_PERIOD
            return 0 / CRTSTAL_MINING_PERIOD, 
                   players[address(arg1)].field_1024,
                   players[address(arg1)].field_512,
                   mem[352 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        if not players[address(arg1)].field_512:
            require players[0].field_768 >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                   players[address(arg1)].field_1024,
                   players[address(arg1)].field_512,
                   mem[352 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[address(arg1)].field_512
        require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
        require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
        require CRTSTAL_MINING_PERIOD
        var60001 = 256
        return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
               players[address(arg1)].field_1024,
               players[address(arg1)].field_512,
               mem[352 len 256],
               999,
               currentReward[address(arg1)],
               roundNumber,
               deadline,
               prizePool
    mem[0] = 0
    mem[32] = 18
    require CRTSTAL_MINING_PERIOD
    idx = 0
    while idx < stor12:
        mem[0] = idx
        mem[32] = sha3(0, 18) + 1
        require idx < 8
        mem[(32 * idx) + 352] = players[0][1][idx].field_0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor13:
        mem[0] = stor13 + -idx - 1
        mem[32] = 20
        if stor20[stor13 + -idx - 1].field_0 != arg1:
            s = stor13 + -idx - 1
            idx = idx + 1
            continue 
        mem[608] = 0
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = players[address(arg1)].field_0
        mem[768] = players[address(arg1)].field_512
        mem[800] = players[address(arg1)].field_768
        mem[832] = players[address(arg1)].field_1024
        if players[address(arg1)].field_0 == roundNumber:
            mem[864] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1120] = 0
            mem[0] = arg1
            mem[32] = 18
            mem[64] = 1280
            mem[1152] = players[address(arg1)].field_0
            mem[1184] = players[address(arg1)].field_512
            mem[1216] = players[address(arg1)].field_768
            mem[1248] = players[address(arg1)].field_1024
            t = 0
            s = 0
            while s < stor13:
                mem[0] = stor13 + -s - 1
                mem[32] = 20
                if stor20[stor13 + -s - 1].field_0 != arg1:
                    t = stor13 + -s - 1
                    s = s + 1
                    continue 
                if stor13 + -s - 1 == 999:
                    require players[address(arg1)].field_1024 <= block.timestamp
                    if players[address(arg1)].field_512 <= 0:
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1376] = mem[s + 352]
                            s = s + 32
                            continue 
                        return 0 / CRTSTAL_MINING_PERIOD, 
                               players[0].field_1024,
                               players[0].field_512,
                               mem[1376 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    if not players[address(arg1)].field_512:
                        require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                        require CRTSTAL_MINING_PERIOD
                        s = 0
                        while s < 256:
                            mem[s + 1376] = mem[s + 352]
                            s = s + 32
                            continue 
                        return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                               players[0].field_1024,
                               players[0].field_512,
                               mem[1376 len 256],
                               stor13 + -idx - 1,
                               currentReward[address(arg1)],
                               roundNumber,
                               deadline,
                               prizePool
                    require players[address(arg1)].field_512
                    require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                    require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1376] = mem[s + 352]
                        s = s + 32
                        continue 
                    return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1376 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[address(arg1)].field_1024 <= block.timestamp
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1536] = mem[s + 352]
                        s = s + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1536 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -s - 1].field_256
                require players[address(arg1)].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1536] = mem[s + 352]
                        s = s + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1536 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100:
                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1536] = mem[s + 352]
                        s = s + 32
                        continue 
                    return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1536 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100
                require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 == block.timestamp - players[address(arg1)].field_1024
                require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                t = 0
                while t < 256:
                    mem[t + 1536] = mem[t + 352]
                    t = t + 32
                    continue 
                return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1536 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 <= 0:
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1376] = mem[s + 352]
                    s = s + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1376 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1376] = mem[s + 352]
                    s = s + 32
                    continue 
                return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1376 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
            require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
            require CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 1376] = mem[s + 352]
                s = s + 32
                continue 
            return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1376 len 256],
                   stor13 + -idx - 1,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        mem[864] = players[0].field_0
        mem[896] = players[0].field_512
        mem[928] = players[0].field_768
        mem[960] = players[0].field_1024
        mem[992] = 0
        mem[1024] = 0
        mem[1056] = 0
        mem[1088] = 0
        mem[1120] = 0
        mem[1152] = 0
        mem[1184] = 0
        mem[1216] = 0
        mem[1248] = 0
        mem[0] = arg1
        mem[32] = 18
        mem[64] = 1408
        mem[1280] = players[address(arg1)].field_0
        mem[1312] = players[address(arg1)].field_512
        mem[1344] = players[address(arg1)].field_768
        mem[1376] = players[address(arg1)].field_1024
        t = 0
        s = 0
        while s < stor13:
            mem[0] = stor13 + -s - 1
            mem[32] = 20
            if stor20[stor13 + -s - 1].field_0 != arg1:
                t = stor13 + -s - 1
                s = s + 1
                continue 
            if stor13 + -s - 1 == 999:
                require players[0].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1504] = mem[s + 352]
                        s = s + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1504 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[0].field_768 >= players[0].field_768
                    require CRTSTAL_MINING_PERIOD
                    s = 0
                    while s < 256:
                        mem[s + 1504] = mem[s + 352]
                        s = s + 32
                        continue 
                    return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1504 len 256],
                           stor13 + -idx - 1,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
                require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1504] = mem[s + 352]
                    s = s + 32
                    continue 
                return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1504 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[0].field_1024 <= block.timestamp
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1664] = mem[s + 352]
                    s = s + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1664 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -s - 1].field_256
            require players[0].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 <= 0:
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1664] = mem[s + 352]
                    s = s + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1664 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100:
                require players[0].field_768 >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                s = 0
                while s < 256:
                    mem[s + 1664] = mem[s + 352]
                    s = s + 32
                    continue 
                return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1664 len 256],
                       stor13 + -idx - 1,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100
            require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100 == block.timestamp - players[0].field_1024
            require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            t = 0
            while t < 256:
                mem[t + 1664] = mem[t + 352]
                t = t + 32
                continue 
            return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -s - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1664 len 256],
                   stor13 + -idx - 1,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[0].field_1024 <= block.timestamp
        if players[address(arg1)].field_512 <= 0:
            require CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 1504] = mem[s + 352]
                s = s + 32
                continue 
            return 0 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1504 len 256],
                   stor13 + -idx - 1,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        if not players[address(arg1)].field_512:
            require players[0].field_768 >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 1504] = mem[s + 352]
                s = s + 32
                continue 
            return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1504 len 256],
                   stor13 + -idx - 1,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[address(arg1)].field_512
        require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
        require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
        require CRTSTAL_MINING_PERIOD
        s = 0
        while s < 256:
            mem[s + 1504] = mem[s + 352]
            s = s + 32
            continue 
        return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
               players[0].field_1024,
               players[0].field_512,
               mem[1504 len 256],
               stor13 + -idx - 1,
               currentReward[address(arg1)],
               roundNumber,
               deadline,
               prizePool
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = players[address(arg1)].field_0
    mem[768] = players[address(arg1)].field_512
    mem[800] = players[address(arg1)].field_768
    mem[832] = players[address(arg1)].field_1024
    if players[address(arg1)].field_0 == roundNumber:
        mem[864] = 0
        mem[896] = 0
        mem[928] = 0
        mem[960] = 0
        mem[992] = 0
        mem[1024] = 0
        mem[1056] = 0
        mem[1088] = 0
        mem[1120] = 0
        mem[0] = arg1
        mem[32] = 18
        mem[64] = 1280
        mem[1152] = players[address(arg1)].field_0
        mem[1184] = players[address(arg1)].field_512
        mem[1216] = players[address(arg1)].field_768
        mem[1248] = players[address(arg1)].field_1024
        s = 0
        idx = 0
        while idx < stor13:
            mem[0] = stor13 + -idx - 1
            mem[32] = 20
            if stor20[stor13 + -idx - 1].field_0 != arg1:
                s = stor13 + -idx - 1
                idx = idx + 1
                continue 
            if stor13 + -idx - 1 == 999:
                require players[address(arg1)].field_1024 <= block.timestamp
                if players[address(arg1)].field_512 <= 0:
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1376] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return 0 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1376 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                if not players[address(arg1)].field_512:
                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                    require CRTSTAL_MINING_PERIOD
                    idx = 0
                    while idx < 256:
                        mem[idx + 1376] = mem[idx + 352]
                        idx = idx + 32
                        continue 
                    return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                           players[0].field_1024,
                           players[0].field_512,
                           mem[1376 len 256],
                           999,
                           currentReward[address(arg1)],
                           roundNumber,
                           deadline,
                           prizePool
                require players[address(arg1)].field_512
                require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
                require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1376] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1376 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[address(arg1)].field_1024 <= block.timestamp
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1536] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1536 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
            require players[address(arg1)].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1536] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1536 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1536] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1536 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100
            require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[address(arg1)].field_1024
            require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[address(arg1)].field_768
            require CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 1536] = mem[s + 352]
                s = s + 32
                continue 
            return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1536 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[address(arg1)].field_1024 <= block.timestamp
        if players[address(arg1)].field_512 <= 0:
            require CRTSTAL_MINING_PERIOD
            return 0 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[352 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        if not players[address(arg1)].field_512:
            require players[address(arg1)].field_768 >= players[address(arg1)].field_768
            require CRTSTAL_MINING_PERIOD
            return players[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[352 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[address(arg1)].field_512
        require (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[address(arg1)].field_1024
        require players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) >= players[address(arg1)].field_768
        require CRTSTAL_MINING_PERIOD
        var60001 = 256
        return players[address(arg1)].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[address(arg1)].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
               players[0].field_1024,
               players[0].field_512,
               mem[352 len 256],
               999,
               currentReward[address(arg1)],
               roundNumber,
               deadline,
               prizePool
    mem[864] = players[0].field_0
    mem[896] = players[0].field_512
    mem[928] = players[0].field_768
    mem[960] = players[0].field_1024
    mem[992] = 0
    mem[1024] = 0
    mem[1056] = 0
    mem[1088] = 0
    mem[1120] = 0
    mem[1152] = 0
    mem[1184] = 0
    mem[1216] = 0
    mem[1248] = 0
    mem[0] = arg1
    mem[32] = 18
    mem[64] = 1408
    mem[1280] = players[address(arg1)].field_0
    mem[1312] = players[address(arg1)].field_512
    mem[1344] = players[address(arg1)].field_768
    mem[1376] = players[address(arg1)].field_1024
    s = 0
    idx = 0
    while idx < stor13:
        mem[0] = stor13 + -idx - 1
        mem[32] = 20
        if stor20[stor13 + -idx - 1].field_0 != arg1:
            s = stor13 + -idx - 1
            idx = idx + 1
            continue 
        if stor13 + -idx - 1 == 999:
            require players[0].field_1024 <= block.timestamp
            if players[address(arg1)].field_512 <= 0:
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1504] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return 0 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1504 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            if not players[address(arg1)].field_512:
                require players[0].field_768 >= players[0].field_768
                require CRTSTAL_MINING_PERIOD
                idx = 0
                while idx < 256:
                    mem[idx + 1504] = mem[idx + 352]
                    idx = idx + 32
                    continue 
                return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                       players[0].field_1024,
                       players[0].field_512,
                       mem[1504 len 256],
                       999,
                       currentReward[address(arg1)],
                       roundNumber,
                       deadline,
                       prizePool
            require players[address(arg1)].field_512
            require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
            require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            idx = 0
            while idx < 256:
                mem[idx + 1504] = mem[idx + 352]
                idx = idx + 32
                continue 
            return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1504 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        if not players[address(arg1)].field_512:
            require players[0].field_1024 <= block.timestamp
            require CRTSTAL_MINING_PERIOD
            idx = 0
            while idx < 256:
                mem[idx + 1664] = mem[idx + 352]
                idx = idx + 32
                continue 
            return 0 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1664 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[address(arg1)].field_512
        require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / players[address(arg1)].field_512 == stor20[stor13 + -idx - 1].field_256
        require players[0].field_1024 <= block.timestamp
        if players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 <= 0:
            require CRTSTAL_MINING_PERIOD
            idx = 0
            while idx < 256:
                mem[idx + 1664] = mem[idx + 352]
                idx = idx + 32
                continue 
            return 0 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1664 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        if not players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100:
            require players[0].field_768 >= players[0].field_768
            require CRTSTAL_MINING_PERIOD
            idx = 0
            while idx < 256:
                mem[idx + 1664] = mem[idx + 352]
                idx = idx + 32
                continue 
            return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
                   players[0].field_1024,
                   players[0].field_512,
                   mem[1664 len 256],
                   999,
                   currentReward[address(arg1)],
                   roundNumber,
                   deadline,
                   prizePool
        require players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100
        require (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100 == block.timestamp - players[0].field_1024
        require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) >= players[0].field_768
        require CRTSTAL_MINING_PERIOD
        s = 0
        while s < 256:
            mem[s + 1664] = mem[s + 352]
            s = s + 32
            continue 
        return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) - (players[0].field_1024 * players[address(arg1)].field_512 * stor20[stor13 + -idx - 1].field_256 / 100) / CRTSTAL_MINING_PERIOD, 
               players[0].field_1024,
               players[0].field_512,
               mem[1664 len 256],
               999,
               currentReward[address(arg1)],
               roundNumber,
               deadline,
               prizePool
    require players[0].field_1024 <= block.timestamp
    if players[address(arg1)].field_512 <= 0:
        require CRTSTAL_MINING_PERIOD
        return 0 / CRTSTAL_MINING_PERIOD, 
               players[0].field_1024,
               players[0].field_512,
               mem[352 len 256],
               999,
               currentReward[address(arg1)],
               roundNumber,
               deadline,
               prizePool
    if not players[address(arg1)].field_512:
        require players[0].field_768 >= players[0].field_768
        require CRTSTAL_MINING_PERIOD
        return players[0].field_768 / CRTSTAL_MINING_PERIOD, 
               players[0].field_1024,
               players[0].field_512,
               mem[352 len 256],
               999,
               currentReward[address(arg1)],
               roundNumber,
               deadline,
               prizePool
    require players[address(arg1)].field_512
    require (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / players[address(arg1)].field_512 == block.timestamp - players[0].field_1024
    require players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) >= players[0].field_768
    require CRTSTAL_MINING_PERIOD
    var61001 = 256
    return players[0].field_768 + (block.timestamp * players[address(arg1)].field_512) - (players[0].field_1024 * players[address(arg1)].field_512) / CRTSTAL_MINING_PERIOD, 
           players[0].field_1024,
           players[0].field_512,
           mem[352 len 256],
           999,
           currentReward[address(arg1)],
           roundNumber,
           deadline,
           prizePool
}



}
