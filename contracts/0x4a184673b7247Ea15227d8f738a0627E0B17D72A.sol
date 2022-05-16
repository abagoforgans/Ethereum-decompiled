contract main {




// =====================  Runtime code  =====================


#
#  - sellCrystalDemand(uint256 arg1, uint256 arg2, string arg3, string arg4)
#  - buyMiner(uint256[] arg1)
#  - buyBooster(uint256 arg1)
#
const getBalance = eth.balance(this.address)


uint256 stor0;
array of address stor1;
uint256 CRTSTAL_MINING_PERIOD;
uint256 SHARE_CRYSTAL;
uint256 HALF_TIME;
uint256 ROUND_TIME;
uint256 stor6;
mapping of struct stor8;
uint256 stor9;
mapping of struct stor10;
uint256 stor11;
mapping of struct stor12;
uint256 stor13;
mapping of struct stor14;
mapping of struct stor15;
uint256 stor16;
array of address stor17;
address sponsorAddress;
uint256 sponsorLevel;
address administratorAddress;

function deadline() {
    return stor1.length
}

function HALF_TIME() {
    return HALF_TIME
}

function sponsor() {
    return sponsorAddress
}

function ROUND_TIME() {
    return ROUND_TIME
}

function SHARE_CRYSTAL() {
    return SHARE_CRYSTAL
}

function CRTSTAL_MINING_PERIOD() {
    return CRTSTAL_MINING_PERIOD
}

function sponsorLevel() {
    return sponsorLevel
}

function administrator() {
    return administratorAddress
}

function _fallback() payable {
    revert
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
    s = 17
    while 1440 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor17.length, mem[800 len 640]
}

function getSponsorFee() {
    require sponsorLevel + 1 >= sponsorLevel
    if not stor6:
        return 0
    require stor6
    require stor6 * 2^(sponsorLevel + 1) / stor6 == 2^(sponsorLevel + 1)
    return (stor6 * 2^(sponsorLevel + 1))
}

function hasBooster(address arg1) {
    s = 0
    idx = 0
    while idx < stor11:
        mem[0] = stor11 + -idx - 1
        mem[32] = 12
        if address(stor12[stor11 + -idx - 1].field_0) != arg1:
            s = stor11 + -idx - 1
            idx = idx + 1
            continue 
        return (stor11 + -idx - 1)
    return 999
}

function getLowestUnitPriceIdxFromBuy() {
    s = 0
    idx = 0
    s = -1
    while idx < stor13:
        mem[0] = idx
        mem[32] = 14
        if not stor14[idx].field_768:
            return idx
        if stor14[idx].field_1024 < 10:
            return idx
        if stor14[idx].field_768 >= s:
            s = sha3(idx, 14)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 14)
        idx = idx + 1
        s = stor14[idx].field_768
        continue 
    return 0
}

function getHighestUnitPriceIdxFromSell() {
    s = 0
    idx = 0
    s = 0
    while idx < stor13:
        mem[0] = idx
        mem[32] = 15
        if not stor15[idx].field_768:
            return idx
        if stor15[idx].field_1024 < 10:
            return idx
        if stor15[idx].field_768 <= s:
            s = sha3(idx, 15)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 15)
        idx = idx + 1
        s = stor15[idx].field_768
        continue 
    return 0
}

function getHashratePerDay(address arg1) {
    s = 0
    idx = 0
    while idx < stor11:
        mem[0] = stor11 + -idx - 1
        mem[32] = 12
        if address(stor12[stor11 + -idx - 1].field_0) != arg1:
            s = stor11 + -idx - 1
            idx = idx + 1
            continue 
        if stor11 + -idx - 1 == 999:
            return stor10[address(arg1)].field_512
        if not stor10[address(arg1)].field_512:
            return 0
        require stor10[address(arg1)].field_512
        require stor10[address(arg1)].field_512 * stor12[stor11 + -idx - 1].field_256 / stor10[address(arg1)].field_512 == stor12[stor11 + -idx - 1].field_256
        return (stor10[address(arg1)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100)
    return stor10[address(arg1)].field_512
}

function becomeSponsor() payable {
    require block.timestamp <= stor1.length
    require sponsorLevel + 1 >= sponsorLevel
    if not stor6:
        require msg.value >= 0
    else:
        require stor6
        require stor6 * 2^(sponsorLevel + 1) / stor6 == 2^(sponsorLevel + 1)
        require msg.value >= stor6 * 2^(sponsorLevel + 1)
    if not stor6:
        call sponsorAddress with:
             gas 2300 wei
    else:
        require stor6
        require stor6 * 2^sponsorLevel / stor6 == 2^sponsorLevel
        call sponsorAddress with:
           value stor6 * 2^sponsorLevel wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sponsorAddress = msg.sender
    require sponsorLevel + 1 >= sponsorLevel
    sponsorLevel++
}

function getBoosterPrice(uint256 arg1) {
    require stor12[arg1].field_768 <= block.timestamp
    require stor12[arg1].field_1024
    if stor12[arg1].field_512 < block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024:
        if not stor6:
            return 0
        if stor6:
            if stor6 / stor6 == 1:
                return stor6
    else:
        if block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024 <= stor12[arg1].field_512:
            if not stor6:
                return 0
            if stor6:
                if stor6 * 2^(stor12[arg1].field_512 - (block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024)) / stor6 == 2^(stor12[arg1].field_512 - (block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024)):
                    return (stor6 * 2^(stor12[arg1].field_512 - (block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024)))
    revert
}

function getFreeMiner(address arg1) {
    require block.timestamp <= stor1.length
    require stor10[address(msg.sender)].field_0 != stor0
    if stor10[address(msg.sender)].field_512 > 0:
        idx = 1
        while idx < stor9:
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 10) + 1
            stor10[address(msg.sender)][1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[address(msg.sender)].field_768 = 0
    stor10[address(msg.sender)].field_0 = stor0
    stor10[address(msg.sender)].field_1024 = block.timestamp
    stor10[address(msg.sender)][1][0].field_0 = 1
    stor10[address(msg.sender)].field_512 = stor8[0]
    if arg1 != msg.sender:
        if stor10[address(arg1)].field_0 == stor0:
            require stor10[address(msg.sender)].field_768 + SHARE_CRYSTAL >= stor10[address(msg.sender)].field_768
            stor10[address(msg.sender)].field_768 += SHARE_CRYSTAL
            require stor10[address(arg1)].field_768 + SHARE_CRYSTAL >= stor10[address(arg1)].field_768
            stor10[address(arg1)].field_768 += SHARE_CRYSTAL
}

function withdrawSellDemand(uint256 arg1) {
    require block.timestamp <= stor1.length
    require arg1 < stor13
    require stor10[address(msg.sender)].field_0 == stor0
    require address(stor15[arg1].field_0) == msg.sender
    if stor15[arg1].field_1024 > 0:
        require stor10[address(stor15[arg1].field_0)].field_768 + (stor15[arg1].field_1024 * CRTSTAL_MINING_PERIOD) >= stor10[address(stor15[arg1].field_0)].field_768
        stor10[address(stor15[arg1].field_0)].field_768 += stor15[arg1].field_1024 * CRTSTAL_MINING_PERIOD
    stor15[arg1].field_768 = 0
    stor15[arg1].field_1024 = 0
    bool(stor15[arg1].field_256) = 0
    uint255(stor15[arg1].field_257) = 5
    Mask(248, 0, stor15[arg1].field_264) = 'title' / 256
    idx = 0
    while stor15[arg1][1].length + 31 / 32 > idx:
        stor15[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor15[arg1].field_512) = 0
    uint255(stor15[arg1].field_513) = 11
    Mask(248, 0, stor15[arg1].field_520) = 'description' / 256
    idx = 0
    while stor15[arg1][2].length + 31 / 32 > idx:
        stor15[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    address(stor15[arg1].field_0) = 0
}

function withdrawBuyDemand(uint256 arg1) {
    require block.timestamp <= stor1.length
    require arg1 < stor13
    require stor10[address(msg.sender)].field_0 == stor0
    require address(stor14[arg1].field_0) == msg.sender
    if stor14[arg1].field_1024 > 0:
        if not stor14[arg1].field_1024:
            call address(stor14[arg1].field_0) with:
                 gas 2300 wei
        else:
            require stor14[arg1].field_1024
            require stor14[arg1].field_1024 * stor14[arg1].field_768 / stor14[arg1].field_1024 == stor14[arg1].field_768
            call address(stor14[arg1].field_0) with:
               value stor14[arg1].field_1024 * stor14[arg1].field_768 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor14[arg1].field_768 = 0
    stor14[arg1].field_1024 = 0
    bool(stor14[arg1].field_256) = 0
    uint255(stor14[arg1].field_257) = 5
    Mask(248, 0, stor14[arg1].field_264) = 'title' / 256
    idx = 0
    while stor14[arg1][1].length + 31 / 32 > idx:
        stor14[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor14[arg1].field_512) = 0
    uint255(stor14[arg1].field_513) = 11
    Mask(248, 0, stor14[arg1].field_520) = 'description' / 256
    idx = 0
    while stor14[arg1][2].length + 31 / 32 > idx:
        stor14[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    address(stor14[arg1].field_0) = 0
}

function getBoosterData(uint256 arg1) {
    require arg1 < stor11
    require stor12[arg1].field_768 <= block.timestamp
    require stor12[arg1].field_1024
    if stor12[arg1].field_512 < block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024:
        if not stor6:
            return address(stor12[arg1].field_0), 
                   stor12[arg1].field_256,
                   stor12[arg1].field_512,
                   stor12[arg1].field_768,
                   0,
                   stor12[arg1].field_1024
        if stor6:
            if stor6 / stor6 == 1:
                return address(stor12[arg1].field_0), 
                       stor12[arg1].field_256,
                       stor12[arg1].field_512,
                       stor12[arg1].field_768,
                       stor6,
                       stor12[arg1].field_1024
    else:
        if block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024 <= stor12[arg1].field_512:
            if not stor6:
                return address(stor12[arg1].field_0), 
                       stor12[arg1].field_256,
                       stor12[arg1].field_512,
                       stor12[arg1].field_768,
                       0,
                       stor12[arg1].field_1024
            if stor6:
                if stor6 * 2^(stor12[arg1].field_512 - (block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024)) / stor6 == 2^(stor12[arg1].field_512 - (block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024)):
                    return address(stor12[arg1].field_0), 
                           stor12[arg1].field_256,
                           stor12[arg1].field_512,
                           stor12[arg1].field_768,
                           stor6 * 2^(stor12[arg1].field_512 - (block.timestamp - stor12[arg1].field_768 / stor12[arg1].field_1024)),
                           stor12[arg1].field_1024
    revert
}

function buyCrystal(uint256 arg1, uint256 arg2) payable {
    require block.timestamp <= stor1.length
    require stor10[address(msg.sender)].field_0 == stor0
    require arg2 < stor13
    require arg1 > 0
    require arg1 <= stor15[arg2].field_1024
    require msg.value >= arg1 * stor15[arg2].field_768
    if not arg1:
        call sponsorAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call administratorAddress with:
             gas 2300 wei
        require stor10[address(msg.sender)].field_768 + (arg1 * CRTSTAL_MINING_PERIOD) >= stor10[address(msg.sender)].field_768
        stor10[address(msg.sender)].field_768 += arg1 * CRTSTAL_MINING_PERIOD
        require arg1 <= stor15[arg2].field_1024
        stor15[arg2].field_1024 -= arg1
        call address(stor15[arg2].field_0) with:
             gas 2300 wei
    else:
        require arg1
        require arg1 * stor15[arg2].field_768 / arg1 == stor15[arg2].field_768
        if not arg1 * stor15[arg2].field_768:
            call sponsorAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call administratorAddress with:
                 gas 2300 wei
        else:
            require arg1 * stor15[arg2].field_768
            require 5 * arg1 * stor15[arg2].field_768 / arg1 * stor15[arg2].field_768 == 5
            call sponsorAddress with:
               value 5 * arg1 * stor15[arg2].field_768 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call administratorAddress with:
               value 5 * arg1 * stor15[arg2].field_768 / 100 wei
                 gas 2300 * is_zero(value) wei
        require stor10[address(msg.sender)].field_768 + (arg1 * CRTSTAL_MINING_PERIOD) >= stor10[address(msg.sender)].field_768
        stor10[address(msg.sender)].field_768 += arg1 * CRTSTAL_MINING_PERIOD
        require arg1 <= stor15[arg2].field_1024
        stor15[arg2].field_1024 -= arg1
        call address(stor15[arg2].field_0) with:
           value arg1 * stor15[arg2].field_768 / 2 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayerData(address arg1) {
    mem[64] = 352
    mem[96 len 256] = code.data[16906 len 256]
    mem[0] = arg1
    mem[32] = 10
    if stor10[address(arg1)].field_0 == stor0:
        require CRTSTAL_MINING_PERIOD
        idx = 0
        while idx < stor9:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 10) + 1
            require idx < 8
            mem[(32 * idx) + 96] = stor10[address(arg1)][1][idx].field_0
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while idx < stor11:
            mem[0] = stor11 + -idx - 1
            mem[32] = 12
            if address(stor12[stor11 + -idx - 1].field_0) != arg1:
                s = stor11 + -idx - 1
                idx = idx + 1
                continue 
            mem[352] = stor10[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD
            s = 0
            while s < 256:
                mem[s + 448] = mem[s + 96]
                s = s + 32
                continue 
            return stor10[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
                   stor10[address(arg1)].field_1024,
                   stor10[address(arg1)].field_512,
                   mem[448 len 256],
                   stor11 + -idx - 1
        return stor10[address(arg1)].field_768 / CRTSTAL_MINING_PERIOD, 
               stor10[address(arg1)].field_1024,
               stor10[address(arg1)].field_512,
               mem[96 len 256],
               999
    mem[0] = 0
    mem[32] = 10
    require CRTSTAL_MINING_PERIOD
    idx = 0
    while idx < stor9:
        mem[0] = idx
        mem[32] = sha3(0, 10) + 1
        require idx < 8
        mem[(32 * idx) + 96] = stor10[0][1][idx].field_0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor11:
        mem[0] = stor11 + -idx - 1
        mem[32] = 12
        if address(stor12[stor11 + -idx - 1].field_0) != arg1:
            s = stor11 + -idx - 1
            idx = idx + 1
            continue 
        mem[352] = stor10[0].field_768 / CRTSTAL_MINING_PERIOD
        s = 0
        while s < 256:
            mem[s + 448] = mem[s + 96]
            s = s + 32
            continue 
        return stor10[0].field_768 / CRTSTAL_MINING_PERIOD, 
               stor10[0].field_1024,
               stor10[0].field_512,
               mem[448 len 256],
               stor11 + -idx - 1
    return stor10[0].field_768 / CRTSTAL_MINING_PERIOD, stor10[0].field_1024, stor10[0].field_512, mem[96 len 256], 999
}

function getBuyDemand(uint256 arg1) {
    require arg1 < stor13
    mem[32] = 14
    mem[96] = stor14[arg1][1].length
    mem[128] = stor14[arg1][1].field_0
    idx = 128
    s = 0
    while stor14[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor14[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 160
    mem[ceil32(stor14[arg1][1].length) + 128] = stor14[arg1][2].length
    mem[0] = sha3(arg1, 14) + 2
    mem[ceil32(stor14[arg1][1].length) + 160] = stor14[arg1][2].field_0
    idx = ceil32(stor14[arg1][1].length) + 160
    s = 0
    while ceil32(stor14[arg1][1].length) + stor14[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor14[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 160] = address(stor14[arg1].field_0)
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 256] = stor14[arg1].field_1024
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 288] = stor14[arg1].field_768
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 192] = 160
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 320] = stor14[arg1][1].length
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 352 len ceil32(stor14[arg1][1].length)] = mem[128 len ceil32(stor14[arg1][1].length)]
    mem[ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 224] = stor14[arg1][1].length + 192
    mem[stor14[arg1][1].length + ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 352] = stor14[arg1][2].length
    mem[stor14[arg1][1].length + ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 384 len ceil32(stor14[arg1][2].length)] = mem[ceil32(stor14[arg1][1].length) + 160 len ceil32(stor14[arg1][2].length)]
    if not stor14[arg1][2].length % 32:
        return address(stor14[arg1].field_0), 
               Array(len=stor14[arg1][1].length, data=mem[128 len ceil32(stor14[arg1][1].length)], mem[(2 * ceil32(stor14[arg1][1].length)) + ceil32(stor14[arg1][2].length) + 352 len stor14[arg1][2].length + stor14[arg1][1].length + -ceil32(stor14[arg1][1].length) + 32]),
               stor14[arg1][1].length + 192,
               stor14[arg1].field_1024,
               stor14[arg1].field_768
    mem[floor32(stor14[arg1][2].length) + stor14[arg1][1].length + ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + 384] = mem[floor32(stor14[arg1][2].length) + stor14[arg1][1].length + ceil32(stor14[arg1][1].length) + ceil32(stor14[arg1][2].length) + -stor14[arg1][2].length % 32 + 416 len stor14[arg1][2].length % 32]
    return address(stor14[arg1].field_0), 
           Array(len=stor14[arg1][1].length, data=mem[128 len ceil32(stor14[arg1][1].length)], mem[(2 * ceil32(stor14[arg1][1].length)) + ceil32(stor14[arg1][2].length) + 352 len floor32(stor14[arg1][2].length) + stor14[arg1][1].length + -ceil32(stor14[arg1][1].length) + 64]),
           stor14[arg1][1].length + 192,
           stor14[arg1].field_1024,
           stor14[arg1].field_768
}

function getSellDemand(uint256 arg1) {
    require arg1 < stor13
    mem[32] = 15
    mem[96] = stor15[arg1][1].length
    mem[128] = stor15[arg1][1].field_0
    idx = 128
    s = 0
    while stor15[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor15[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 160
    mem[ceil32(stor15[arg1][1].length) + 128] = stor15[arg1][2].length
    mem[0] = sha3(arg1, 15) + 2
    mem[ceil32(stor15[arg1][1].length) + 160] = stor15[arg1][2].field_0
    idx = ceil32(stor15[arg1][1].length) + 160
    s = 0
    while ceil32(stor15[arg1][1].length) + stor15[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor15[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 160] = address(stor15[arg1].field_0)
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 256] = stor15[arg1].field_1024
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 288] = stor15[arg1].field_768
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 192] = 160
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 320] = stor15[arg1][1].length
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 352 len ceil32(stor15[arg1][1].length)] = mem[128 len ceil32(stor15[arg1][1].length)]
    mem[ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 224] = stor15[arg1][1].length + 192
    mem[stor15[arg1][1].length + ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 352] = stor15[arg1][2].length
    mem[stor15[arg1][1].length + ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 384 len ceil32(stor15[arg1][2].length)] = mem[ceil32(stor15[arg1][1].length) + 160 len ceil32(stor15[arg1][2].length)]
    if not stor15[arg1][2].length % 32:
        return address(stor15[arg1].field_0), 
               Array(len=stor15[arg1][1].length, data=mem[128 len ceil32(stor15[arg1][1].length)], mem[(2 * ceil32(stor15[arg1][1].length)) + ceil32(stor15[arg1][2].length) + 352 len stor15[arg1][2].length + stor15[arg1][1].length + -ceil32(stor15[arg1][1].length) + 32]),
               stor15[arg1][1].length + 192,
               stor15[arg1].field_1024,
               stor15[arg1].field_768
    mem[floor32(stor15[arg1][2].length) + stor15[arg1][1].length + ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + 384] = mem[floor32(stor15[arg1][2].length) + stor15[arg1][1].length + ceil32(stor15[arg1][1].length) + ceil32(stor15[arg1][2].length) + -stor15[arg1][2].length % 32 + 416 len stor15[arg1][2].length % 32]
    return address(stor15[arg1].field_0), 
           Array(len=stor15[arg1][1].length, data=mem[128 len ceil32(stor15[arg1][1].length)], mem[(2 * ceil32(stor15[arg1][1].length)) + ceil32(stor15[arg1][2].length) + 352 len floor32(stor15[arg1][2].length) + stor15[arg1][1].length + -ceil32(stor15[arg1][1].length) + 64]),
           stor15[arg1][1].length + 192,
           stor15[arg1].field_1024,
           stor15[arg1].field_768
}

function buyCrystalDemand(uint256 arg1, uint256 arg2, string arg3, string arg4) payable {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require block.timestamp <= stor1.length
    mem[0] = msg.sender
    mem[32] = 10
    require stor10[address(msg.sender)].field_0 == stor0
    require arg2 > 0
    require arg1 >= 1000
    require arg1 * arg2 <= msg.value
    s = 0
    idx = 0
    s = -1
    while idx < stor13:
        mem[0] = idx
        mem[32] = 14
        if stor14[idx].field_768:
            if stor14[idx].field_1024 >= 10:
                if stor14[idx].field_768 >= s:
                    s = sha3(idx, 14)
                    idx = idx + 1
                    s = s
                    continue 
                s = sha3(idx, 14)
                idx = idx + 1
                s = stor14[idx].field_768
                continue 
        if stor14[idx].field_1024 > 10:
            require arg2 > stor14[idx].field_768
        if not stor14[idx].field_1024:
            if address(stor14[idx].field_0):
                call address(stor14[idx].field_0) with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require stor14[idx].field_1024
            require stor14[idx].field_1024 * stor14[idx].field_768 / stor14[idx].field_1024 == stor14[idx].field_768
            if address(stor14[idx].field_0):
                call address(stor14[idx].field_0) with:
                   value stor14[idx].field_1024 * stor14[idx].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        address(stor14[idx].field_0) = msg.sender
        stor14[idx].field_768 = arg2
        stor14[idx].field_256 = (2 * arg3.length) + 1
        t = sha3(sha3(idx, 14) + 1)
        s = 128
        while arg3.length + 128 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(sha3(idx, 14) + 1) + (Mask(251, 0, arg3.length + 31) >> 5)
        while sha3(sha3(idx, 14) + 1) + (stor14[idx][1].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor14[idx].field_512 = (2 * arg4.length) + 1
        t = sha3(sha3(idx, 14) + 2)
        s = ceil32(arg3.length) + 160
        while ceil32(arg3.length) + arg4.length + 160 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(sha3(idx, 14) + 2) + (Mask(251, 0, arg4.length + 31) >> 5)
        while sha3(sha3(idx, 14) + 2) + (stor14[idx][2].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor14[idx].field_1024 = arg1
    if stor14[0].field_1024 > 10:
        require arg2 > stor14[0].field_768
    if not stor14[0].field_1024:
        if address(stor14[0].field_0):
            call address(stor14[0].field_0) with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require stor14[0].field_1024
        require stor14[0].field_1024 * stor14[0].field_768 / stor14[0].field_1024 == stor14[0].field_768
        if address(stor14[0].field_0):
            call address(stor14[0].field_0) with:
               value stor14[0].field_1024 * stor14[0].field_768 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    address(stor14[0].field_0) = msg.sender
    stor14[0].field_768 = arg2
    stor14[0][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor14[0][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor14[0].field_1024 = arg1
}

function sellCrystal(uint256 arg1, uint256 arg2) {
    require block.timestamp <= stor1.length
    require stor10[address(msg.sender)].field_0 == stor0
    require arg2 < stor13
    require arg1 > 0
    require arg1 <= stor14[arg2].field_1024
    require block.timestamp > stor10[address(msg.sender)].field_1024
    if stor10[address(msg.sender)].field_1024:
        require stor10[address(msg.sender)].field_1024 <= block.timestamp
        s = 0
        idx = 0
        while idx < stor11:
            mem[0] = stor11 + -idx - 1
            mem[32] = 12
            if address(stor12[stor11 + -idx - 1].field_0) != msg.sender:
                s = stor11 + -idx - 1
                idx = idx + 1
                continue 
            if stor11 + -idx - 1 == 999:
                stor10[address(msg.sender)].field_1024 = block.timestamp
                if stor10[address(msg.sender)].field_512 > 0:
                    if not stor10[address(msg.sender)].field_512:
                        require stor10[address(msg.sender)].field_768 >= stor10[address(msg.sender)].field_768
                    else:
                        require stor10[address(msg.sender)].field_512
                        require (block.timestamp * stor10[address(msg.sender)].field_512) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512) / stor10[address(msg.sender)].field_512 == block.timestamp - stor10[address(msg.sender)].field_1024
                        require stor10[address(msg.sender)].field_768 + (block.timestamp * stor10[address(msg.sender)].field_512) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512) >= stor10[address(msg.sender)].field_768
                        stor10[address(msg.sender)].field_768 = stor10[address(msg.sender)].field_768 + (block.timestamp * stor10[address(msg.sender)].field_512) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512)
            else:
                if not stor10[address(msg.sender)].field_512:
                    stor10[address(msg.sender)].field_1024 = block.timestamp
                else:
                    require stor10[address(msg.sender)].field_512
                    require stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / stor10[address(msg.sender)].field_512 == stor12[stor11 + -idx - 1].field_256
                    stor10[address(msg.sender)].field_1024 = block.timestamp
                    if stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100 > 0:
                        if not stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100:
                            require stor10[address(msg.sender)].field_768 >= stor10[address(msg.sender)].field_768
                        else:
                            require stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100
                            require (block.timestamp * stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100) / stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100 == block.timestamp - stor10[address(msg.sender)].field_1024
                            require stor10[address(msg.sender)].field_768 + (block.timestamp * stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100) >= stor10[address(msg.sender)].field_768
                            stor10[address(msg.sender)].field_768 = stor10[address(msg.sender)].field_768 + (block.timestamp * stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512 * stor12[stor11 + -idx - 1].field_256 / 100)
            require stor10[address(msg.sender)].field_768 >= arg1 * CRTSTAL_MINING_PERIOD
            if not arg1:
                call sponsorAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call administratorAddress with:
                     gas 2300 wei
                require stor10[address(stor14[arg2].field_0)].field_768 + (arg1 * CRTSTAL_MINING_PERIOD) >= stor10[address(stor14[arg2].field_0)].field_768
                stor10[address(stor14[arg2].field_0)].field_768 += arg1 * CRTSTAL_MINING_PERIOD
                require arg1 * CRTSTAL_MINING_PERIOD <= stor10[address(msg.sender)].field_768
                stor10[address(msg.sender)].field_768 += -1 * arg1 * CRTSTAL_MINING_PERIOD
                require arg1 <= stor14[arg2].field_1024
                stor14[arg2].field_1024 -= arg1
                call msg.sender with:
                     gas 2300 wei
            else:
                require arg1
                require arg1 * stor14[arg2].field_768 / arg1 == stor14[arg2].field_768
                if not arg1 * stor14[arg2].field_768:
                    call sponsorAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call administratorAddress with:
                         gas 2300 wei
                else:
                    require arg1 * stor14[arg2].field_768
                    require 5 * arg1 * stor14[arg2].field_768 / arg1 * stor14[arg2].field_768 == 5
                    call sponsorAddress with:
                       value 5 * arg1 * stor14[arg2].field_768 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call administratorAddress with:
                       value 5 * arg1 * stor14[arg2].field_768 / 100 wei
                         gas 2300 * is_zero(value) wei
                require stor10[address(stor14[arg2].field_0)].field_768 + (arg1 * CRTSTAL_MINING_PERIOD) >= stor10[address(stor14[arg2].field_0)].field_768
                stor10[address(stor14[arg2].field_0)].field_768 += arg1 * CRTSTAL_MINING_PERIOD
                require arg1 * CRTSTAL_MINING_PERIOD <= stor10[address(msg.sender)].field_768
                stor10[address(msg.sender)].field_768 += -1 * arg1 * CRTSTAL_MINING_PERIOD
                require arg1 <= stor14[arg2].field_1024
                stor14[arg2].field_1024 -= arg1
                call msg.sender with:
                   value arg1 * stor14[arg2].field_768 / 2 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor10[address(msg.sender)].field_1024 = block.timestamp
        if stor10[address(msg.sender)].field_512 > 0:
            if not stor10[address(msg.sender)].field_512:
                require stor10[address(msg.sender)].field_768 >= stor10[address(msg.sender)].field_768
            else:
                require stor10[address(msg.sender)].field_512
                require (block.timestamp * stor10[address(msg.sender)].field_512) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512) / stor10[address(msg.sender)].field_512 == block.timestamp - stor10[address(msg.sender)].field_1024
                require stor10[address(msg.sender)].field_768 + (block.timestamp * stor10[address(msg.sender)].field_512) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512) >= stor10[address(msg.sender)].field_768
                stor10[address(msg.sender)].field_768 = stor10[address(msg.sender)].field_768 + (block.timestamp * stor10[address(msg.sender)].field_512) - (stor10[address(msg.sender)].field_1024 * stor10[address(msg.sender)].field_512)
    require stor10[address(msg.sender)].field_768 >= arg1 * CRTSTAL_MINING_PERIOD
    if not arg1:
        call sponsorAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call administratorAddress with:
             gas 2300 wei
        require stor10[address(stor14[arg2].field_0)].field_768 + (arg1 * CRTSTAL_MINING_PERIOD) >= stor10[address(stor14[arg2].field_0)].field_768
        stor10[address(stor14[arg2].field_0)].field_768 += arg1 * CRTSTAL_MINING_PERIOD
        require arg1 * CRTSTAL_MINING_PERIOD <= stor10[address(msg.sender)].field_768
        stor10[address(msg.sender)].field_768 += -1 * arg1 * CRTSTAL_MINING_PERIOD
        require arg1 <= stor14[arg2].field_1024
        stor14[arg2].field_1024 -= arg1
        call msg.sender with:
             gas 2300 wei
    else:
        require arg1
        require arg1 * stor14[arg2].field_768 / arg1 == stor14[arg2].field_768
        if not arg1 * stor14[arg2].field_768:
            call sponsorAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call administratorAddress with:
                 gas 2300 wei
        else:
            require arg1 * stor14[arg2].field_768
            require 5 * arg1 * stor14[arg2].field_768 / arg1 * stor14[arg2].field_768 == 5
            call sponsorAddress with:
               value 5 * arg1 * stor14[arg2].field_768 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call administratorAddress with:
               value 5 * arg1 * stor14[arg2].field_768 / 100 wei
                 gas 2300 * is_zero(value) wei
        require stor10[address(stor14[arg2].field_0)].field_768 + (arg1 * CRTSTAL_MINING_PERIOD) >= stor10[address(stor14[arg2].field_0)].field_768
        stor10[address(stor14[arg2].field_0)].field_768 += arg1 * CRTSTAL_MINING_PERIOD
        require arg1 * CRTSTAL_MINING_PERIOD <= stor10[address(msg.sender)].field_768
        stor10[address(msg.sender)].field_768 += -1 * arg1 * CRTSTAL_MINING_PERIOD
        require arg1 <= stor14[arg2].field_1024
        stor14[arg2].field_1024 -= arg1
        call msg.sender with:
           value arg1 * stor14[arg2].field_768 / 2 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lottery() {
    require block.timestamp >= stor1.length
    if not eth.balance(this.address):
        if not eth.balance(this.address):
            call administratorAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < 10:
                if stor17[idx]:
                    require idx < 21
                    require idx < 10
                    call stor17[idx] with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require block.timestamp + ROUND_TIME >= block.timestamp
            stor1.length = block.timestamp + ROUND_TIME
            require stor0 + 1 >= stor0
            stor0++
            sponsorAddress = administratorAddress
            sponsorLevel = 5
            address(stor12[0].field_0) = 0
            stor12[0].field_256 % 1 = 0
            stor12[0].field_256 = 150
            stor12[0].field_512 = 1
            stor12[0].field_768 = block.timestamp
            stor12[0].field_1024 = HALF_TIME
            address(stor12[1].field_0) = 0
            stor12[1].field_256 % 1 = 0
            stor12[1].field_256 = 175
            stor12[1].field_512 = 1
            stor12[1].field_768 = block.timestamp
            stor12[1].field_1024 = HALF_TIME
            address(stor12[2].field_0) = 0
            stor12[2].field_256 % 1 = 0
            stor12[2].field_256 = 200
            stor12[2].field_512 = 1
            stor12[2].field_768 = block.timestamp
            stor12[2].field_1024 = HALF_TIME
            address(stor12[3].field_0) = 0
            stor12[3].field_256 % 1 = 0
            stor12[3].field_256 = 225
            stor12[3].field_512 = 1
            stor12[3].field_768 = block.timestamp
            stor12[3].field_1024 = HALF_TIME
            mem[64] = 1536
            address(stor12[4].field_0) = msg.sender
            stor12[4].field_256 = 250
            stor12[4].field_512 = 2
            stor12[4].field_768 = block.timestamp
            stor12[4].field_1024 = HALF_TIME
            idx = 0
            while idx < stor13:
                _1927 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1927] = 0
                _1928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1928] = 5
                mem[_1928 + 32] = 'title'
                mem[_1927 + 32] = _1928
                _1929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1929] = 11
                mem[_1929 + 32] = 'description'
                mem[_1927 + 64] = _1929
                mem[_1927 + 96] = 0
                mem[_1927 + 128] = 0
                mem[32] = 14
                address(stor14[idx].field_0) = 0
                stor14[idx].field_256 % 1 = 0
                bool(stor14[idx].field_256) = 0
                uint255(stor14[idx].field_257) = 5
                Mask(248, 0, stor14[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 14) + 1)
                while sha3(sha3(idx, 14) + 1) + (stor14[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 14) + 2
                bool(stor14[idx].field_512) = 0
                uint255(stor14[idx].field_513) = 11
                Mask(248, 0, stor14[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 14) + 2)
                while sha3(sha3(idx, 14) + 2) + (stor14[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor14[idx].field_768 = 0
                stor14[idx].field_1024 = 0
                _5463 = mem[64]
                mem[64] = mem[64] + 160
                mem[_5463] = 0
                _5464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5464] = 5
                mem[_5464 + 32] = 'title'
                mem[_5463 + 32] = _5464
                _5465 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5465] = 11
                mem[_5465 + 32] = 'description'
                mem[_5463 + 64] = _5465
                mem[_5463 + 96] = 0
                mem[_5463 + 128] = 0
                mem[32] = 15
                address(stor15[idx].field_0) = 0
                stor15[idx].field_256 % 1 = 0
                bool(stor15[idx].field_256) = 0
                uint255(stor15[idx].field_257) = 5
                Mask(248, 0, stor15[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 15) + 1)
                while sha3(sha3(idx, 15) + 1) + (stor15[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 15) + 2
                bool(stor15[idx].field_512) = 0
                uint255(stor15[idx].field_513) = 11
                Mask(248, 0, stor15[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 15) + 2)
                while sha3(sha3(idx, 15) + 2) + (stor15[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor15[idx].field_768 = 0
                stor15[idx].field_1024 = 0
                idx = idx + 1
                continue 
        else:
            require eth.balance(this.address)
            require 5 * eth.balance(this.address) / eth.balance(this.address) == 5
            call administratorAddress with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < 10:
                if stor17[idx]:
                    require idx < 21
                    require idx < 10
                    call stor17[idx] with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require block.timestamp + ROUND_TIME >= block.timestamp
            stor1.length = block.timestamp + ROUND_TIME
            require stor0 + 1 >= stor0
            stor0++
            sponsorAddress = administratorAddress
            sponsorLevel = 5
            address(stor12[0].field_0) = 0
            stor12[0].field_256 % 1 = 0
            stor12[0].field_256 = 150
            stor12[0].field_512 = 1
            stor12[0].field_768 = block.timestamp
            stor12[0].field_1024 = HALF_TIME
            address(stor12[1].field_0) = 0
            stor12[1].field_256 % 1 = 0
            stor12[1].field_256 = 175
            stor12[1].field_512 = 1
            stor12[1].field_768 = block.timestamp
            stor12[1].field_1024 = HALF_TIME
            address(stor12[2].field_0) = 0
            stor12[2].field_256 % 1 = 0
            stor12[2].field_256 = 200
            stor12[2].field_512 = 1
            stor12[2].field_768 = block.timestamp
            stor12[2].field_1024 = HALF_TIME
            address(stor12[3].field_0) = 0
            stor12[3].field_256 % 1 = 0
            stor12[3].field_256 = 225
            stor12[3].field_512 = 1
            stor12[3].field_768 = block.timestamp
            stor12[3].field_1024 = HALF_TIME
            mem[64] = 1536
            address(stor12[4].field_0) = msg.sender
            stor12[4].field_256 = 250
            stor12[4].field_512 = 2
            stor12[4].field_768 = block.timestamp
            stor12[4].field_1024 = HALF_TIME
            idx = 0
            while idx < stor13:
                _1920 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1920] = 0
                _1921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1921] = 5
                mem[_1921 + 32] = 'title'
                mem[_1920 + 32] = _1921
                _1922 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1922] = 11
                mem[_1922 + 32] = 'description'
                mem[_1920 + 64] = _1922
                mem[_1920 + 96] = 0
                mem[_1920 + 128] = 0
                mem[32] = 14
                address(stor14[idx].field_0) = 0
                stor14[idx].field_256 % 1 = 0
                bool(stor14[idx].field_256) = 0
                uint255(stor14[idx].field_257) = 5
                Mask(248, 0, stor14[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 14) + 1)
                while sha3(sha3(idx, 14) + 1) + (stor14[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 14) + 2
                bool(stor14[idx].field_512) = 0
                uint255(stor14[idx].field_513) = 11
                Mask(248, 0, stor14[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 14) + 2)
                while sha3(sha3(idx, 14) + 2) + (stor14[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor14[idx].field_768 = 0
                stor14[idx].field_1024 = 0
                _5425 = mem[64]
                mem[64] = mem[64] + 160
                mem[_5425] = 0
                _5426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5426] = 5
                mem[_5426 + 32] = 'title'
                mem[_5425 + 32] = _5426
                _5427 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5427] = 11
                mem[_5427 + 32] = 'description'
                mem[_5425 + 64] = _5427
                mem[_5425 + 96] = 0
                mem[_5425 + 128] = 0
                mem[32] = 15
                address(stor15[idx].field_0) = 0
                stor15[idx].field_256 % 1 = 0
                bool(stor15[idx].field_256) = 0
                uint255(stor15[idx].field_257) = 5
                Mask(248, 0, stor15[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 15) + 1)
                while sha3(sha3(idx, 15) + 1) + (stor15[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 15) + 2
                bool(stor15[idx].field_512) = 0
                uint255(stor15[idx].field_513) = 11
                Mask(248, 0, stor15[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 15) + 2)
                while sha3(sha3(idx, 15) + 2) + (stor15[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor15[idx].field_768 = 0
                stor15[idx].field_1024 = 0
                idx = idx + 1
                continue 
    else:
        require eth.balance(this.address)
        require 90 * eth.balance(this.address) / eth.balance(this.address) == 90
        if not eth.balance(this.address):
            call administratorAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[416] = 30
            mem[448] = 20
            mem[480] = 10
            mem[512] = 8
            mem[544] = 7
            mem[576] = 5
            mem[608] = 5
            mem[640] = 5
            mem[672] = 5
            mem[704] = 5
            idx = 0
            while idx < 10:
                if stor17[idx]:
                    require idx < 21
                    require idx < 10
                    if not 90 * eth.balance(this.address) / 100:
                        call stor17[idx] with:
                             gas 2300 wei
                    else:
                        require 90 * eth.balance(this.address) / 100
                        require 90 * eth.balance(this.address) / 100 * mem[(32 * idx) + 447 len 1] / 90 * eth.balance(this.address) / 100 == mem[(32 * idx) + 447 len 1]
                        call stor17[idx] with:
                           value 90 * eth.balance(this.address) / 100 * mem[(32 * idx) + 447 len 1] / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require block.timestamp + ROUND_TIME >= block.timestamp
            stor1.length = block.timestamp + ROUND_TIME
            require stor0 + 1 >= stor0
            stor0++
            sponsorAddress = administratorAddress
            sponsorLevel = 5
            address(stor12[0].field_0) = 0
            stor12[0].field_256 % 1 = 0
            stor12[0].field_256 = 150
            stor12[0].field_512 = 1
            stor12[0].field_768 = block.timestamp
            stor12[0].field_1024 = HALF_TIME
            address(stor12[1].field_0) = 0
            stor12[1].field_256 % 1 = 0
            stor12[1].field_256 = 175
            stor12[1].field_512 = 1
            stor12[1].field_768 = block.timestamp
            stor12[1].field_1024 = HALF_TIME
            address(stor12[2].field_0) = 0
            stor12[2].field_256 % 1 = 0
            stor12[2].field_256 = 200
            stor12[2].field_512 = 1
            stor12[2].field_768 = block.timestamp
            stor12[2].field_1024 = HALF_TIME
            address(stor12[3].field_0) = 0
            stor12[3].field_256 % 1 = 0
            stor12[3].field_256 = 225
            stor12[3].field_512 = 1
            stor12[3].field_768 = block.timestamp
            stor12[3].field_1024 = HALF_TIME
            mem[64] = 1536
            address(stor12[4].field_0) = msg.sender
            stor12[4].field_256 = 250
            stor12[4].field_512 = 2
            stor12[4].field_768 = block.timestamp
            stor12[4].field_1024 = HALF_TIME
            idx = 0
            while idx < stor13:
                _1913 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1913] = 0
                _1914 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1914] = 5
                mem[_1914 + 32] = 'title'
                mem[_1913 + 32] = _1914
                _1915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1915] = 11
                mem[_1915 + 32] = 'description'
                mem[_1913 + 64] = _1915
                mem[_1913 + 96] = 0
                mem[_1913 + 128] = 0
                mem[32] = 14
                address(stor14[idx].field_0) = 0
                stor14[idx].field_256 % 1 = 0
                bool(stor14[idx].field_256) = 0
                uint255(stor14[idx].field_257) = 5
                Mask(248, 0, stor14[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 14) + 1)
                while sha3(sha3(idx, 14) + 1) + (stor14[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 14) + 2
                bool(stor14[idx].field_512) = 0
                uint255(stor14[idx].field_513) = 11
                Mask(248, 0, stor14[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 14) + 2)
                while sha3(sha3(idx, 14) + 2) + (stor14[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor14[idx].field_768 = 0
                stor14[idx].field_1024 = 0
                _5387 = mem[64]
                mem[64] = mem[64] + 160
                mem[_5387] = 0
                _5388 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5388] = 5
                mem[_5388 + 32] = 'title'
                mem[_5387 + 32] = _5388
                _5389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5389] = 11
                mem[_5389 + 32] = 'description'
                mem[_5387 + 64] = _5389
                mem[_5387 + 96] = 0
                mem[_5387 + 128] = 0
                mem[32] = 15
                address(stor15[idx].field_0) = 0
                stor15[idx].field_256 % 1 = 0
                bool(stor15[idx].field_256) = 0
                uint255(stor15[idx].field_257) = 5
                Mask(248, 0, stor15[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 15) + 1)
                while sha3(sha3(idx, 15) + 1) + (stor15[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 15) + 2
                bool(stor15[idx].field_512) = 0
                uint255(stor15[idx].field_513) = 11
                Mask(248, 0, stor15[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 15) + 2)
                while sha3(sha3(idx, 15) + 2) + (stor15[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor15[idx].field_768 = 0
                stor15[idx].field_1024 = 0
                idx = idx + 1
                continue 
        else:
            require eth.balance(this.address)
            require 5 * eth.balance(this.address) / eth.balance(this.address) == 5
            call administratorAddress with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[416] = 30
            mem[448] = 20
            mem[480] = 10
            mem[512] = 8
            mem[544] = 7
            mem[576] = 5
            mem[608] = 5
            mem[640] = 5
            mem[672] = 5
            mem[704] = 5
            idx = 0
            while idx < 10:
                if stor17[idx]:
                    require idx < 21
                    require idx < 10
                    if not 90 * eth.balance(this.address) / 100:
                        call stor17[idx] with:
                             gas 2300 wei
                    else:
                        require 90 * eth.balance(this.address) / 100
                        require 90 * eth.balance(this.address) / 100 * mem[(32 * idx) + 447 len 1] / 90 * eth.balance(this.address) / 100 == mem[(32 * idx) + 447 len 1]
                        call stor17[idx] with:
                           value 90 * eth.balance(this.address) / 100 * mem[(32 * idx) + 447 len 1] / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require block.timestamp + ROUND_TIME >= block.timestamp
            stor1.length = block.timestamp + ROUND_TIME
            require stor0 + 1 >= stor0
            stor0++
            sponsorAddress = administratorAddress
            sponsorLevel = 5
            address(stor12[0].field_0) = 0
            stor12[0].field_256 % 1 = 0
            stor12[0].field_256 = 150
            stor12[0].field_512 = 1
            stor12[0].field_768 = block.timestamp
            stor12[0].field_1024 = HALF_TIME
            address(stor12[1].field_0) = 0
            stor12[1].field_256 % 1 = 0
            stor12[1].field_256 = 175
            stor12[1].field_512 = 1
            stor12[1].field_768 = block.timestamp
            stor12[1].field_1024 = HALF_TIME
            address(stor12[2].field_0) = 0
            stor12[2].field_256 % 1 = 0
            stor12[2].field_256 = 200
            stor12[2].field_512 = 1
            stor12[2].field_768 = block.timestamp
            stor12[2].field_1024 = HALF_TIME
            address(stor12[3].field_0) = 0
            stor12[3].field_256 % 1 = 0
            stor12[3].field_256 = 225
            stor12[3].field_512 = 1
            stor12[3].field_768 = block.timestamp
            stor12[3].field_1024 = HALF_TIME
            mem[64] = 1536
            address(stor12[4].field_0) = msg.sender
            stor12[4].field_256 = 250
            stor12[4].field_512 = 2
            stor12[4].field_768 = block.timestamp
            stor12[4].field_1024 = HALF_TIME
            idx = 0
            while idx < stor13:
                _1906 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1906] = 0
                _1907 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1907] = 5
                mem[_1907 + 32] = 'title'
                mem[_1906 + 32] = _1907
                _1908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1908] = 11
                mem[_1908 + 32] = 'description'
                mem[_1906 + 64] = _1908
                mem[_1906 + 96] = 0
                mem[_1906 + 128] = 0
                mem[32] = 14
                address(stor14[idx].field_0) = 0
                stor14[idx].field_256 % 1 = 0
                bool(stor14[idx].field_256) = 0
                uint255(stor14[idx].field_257) = 5
                Mask(248, 0, stor14[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 14) + 1)
                while sha3(sha3(idx, 14) + 1) + (stor14[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 14) + 2
                bool(stor14[idx].field_512) = 0
                uint255(stor14[idx].field_513) = 11
                Mask(248, 0, stor14[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 14) + 2)
                while sha3(sha3(idx, 14) + 2) + (stor14[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor14[idx].field_768 = 0
                stor14[idx].field_1024 = 0
                _5349 = mem[64]
                mem[64] = mem[64] + 160
                mem[_5349] = 0
                _5350 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5350] = 5
                mem[_5350 + 32] = 'title'
                mem[_5349 + 32] = _5350
                _5351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5351] = 11
                mem[_5351 + 32] = 'description'
                mem[_5349 + 64] = _5351
                mem[_5349 + 96] = 0
                mem[_5349 + 128] = 0
                mem[32] = 15
                address(stor15[idx].field_0) = 0
                stor15[idx].field_256 % 1 = 0
                bool(stor15[idx].field_256) = 0
                uint255(stor15[idx].field_257) = 5
                Mask(248, 0, stor15[idx].field_264) = 'title' / 256
                s = sha3(sha3(idx, 15) + 1)
                while sha3(sha3(idx, 15) + 1) + (stor15[idx][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                mem[0] = sha3(idx, 15) + 2
                bool(stor15[idx].field_512) = 0
                uint255(stor15[idx].field_513) = 11
                Mask(248, 0, stor15[idx].field_520) = 'description' / 256
                s = sha3(sha3(idx, 15) + 2)
                while sha3(sha3(idx, 15) + 2) + (stor15[idx][2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor15[idx].field_768 = 0
                stor15[idx].field_1024 = 0
                idx = idx + 1
                continue 
    idx = 0
    while idx < stor16:
        require idx < 21
        stor17[idx] = 0
        idx = idx + 1
        continue 
}



}
