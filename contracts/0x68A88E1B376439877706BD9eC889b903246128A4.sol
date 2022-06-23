contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint256 stor46;
uint256 stor47;
uint256 stor48;
uint256 stor49;
uint256 stor50;
uint256 stor51;
uint256 stor52;
uint256 stor53;
uint256 stor54;
uint256 stor55;
uint256 stor56;
uint256 stor57;
uint256 stor58;
uint256 stor59;
uint256 stor60;
uint256 stor61;
uint256 stor62;
uint256 stor63;
uint256 stor64;
uint256 stor65;
uint256 stor66;
uint256 stor67;
uint256 stor68;
uint256 stor69;
uint256 stor70;
uint256 stor71;
uint256 stor72;
uint256 stor73;
uint256 stor74;
uint256 stor75;
uint256 stor76;
uint256 stor77;
uint256 stor78;
uint256 stor79;
array of uint256 stor81;
array of uint256 stor82;
uint256 stor83;
uint256 stor84;
uint256 stor85;
address stor86;
address stor87;
address stor88;
address stor89;
address stor90;
uint256 stor94;
address stor95;

function _fallback() {
    stor95 = msg.sender
    stor0 = 128
    stor1 = 1
    stor2 = 64
    stor3 = 0
    stor4 = 64
    stor5 = 1024
    stor6 = 64
    stor7 = 512
    stor8 = 0
    stor9 = 64
    stor10 = 204800
    stor11 = 1024
    stor12 = 102400
    stor13 = 0
    stor14 = 128
    stor15 = 25600000
    stor16 = 8192
    stor17 = 12800000
    stor18 = 0
    stor19 = 128
    stor20 = 3 * 10^10
    stor21 = 65536
    stor22 = 3 * 10^10
    stor23 = 10^16
    stor24 = 256
    stor25 = 3 * 10^10
    stor26 = 100000
    stor27 = 10^10
    stor28 = 0
    stor29 = 256
    stor30 = 3 * 10^11
    stor31 = 500000
    stor32 = 10^11
    stor33 = 0
    stor34 = 256
    stor35 = 5 * 10^13
    stor36 = 3 * 10^6
    stor37 = 125 * 10^11
    stor38 = 10^17
    stor39 = 256
    stor40 = 10^14
    stor41 = 30 * 10^6
    stor42 = 5 * 10^13
    stor43 = 0
    stor44 = 256
    stor45 = 30
    stor46 = 10^16
    stor47 = 50
    stor48 = 10^17
    stor49 = 100
    stor50 = 10^18
    stor94 = 0
    stor75 = 0
    stor78 = 0
    stor77 = 0
    stor79 = block.timestamp
    stor76 = 90
    stor86 = stor95
    stor87 = stor95
    stor88 = stor95
    stor89 = stor95
    stor90 = stor95
    stor84 = 0
    stor85 = 10^17
    stor51 = 10
    stor52 = 0
    stor53 = 100000
    stor54 = 0
    stor55 = 1000
    stor56 = 0
    stor57 = 80 * 10^6
    stor58 = 0
    stor59 = 100000
    stor60 = 0
    stor61 = 0
    stor62 = 10^16
    stor63 = 0
    stor64 = 15
    stor65 = 100000
    stor66 = 0
    stor67 = 0
    stor68 = 1500
    stor69 = 80 * 10^6
    stor70 = 0
    stor71 = 0
    stor72 = 150000
    stor73 = 0
    stor74 = 10^16
    stor81.length++
    if not stor81.length <= stor81.length + 1:
        idx = stor81.length + 1
        while stor81.length > idx:
            stor81[idx] = 0
            idx = idx + 1
            continue 
    stor81[stor81.length] = 0
    stor82.length++
    if not stor82.length <= stor82.length + 1:
        idx = stor82.length + 1
        while stor82.length > idx:
            stor82[idx] = 0
            idx = idx + 1
            continue 
    stor82[stor82.length] = 1
    stor83 = 0
    return code.data[1901 len 7790]
}



// =====================  Runtime code  =====================


array of uint256 stor1;
array of uint256 stor14;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor45;
array of uint256 stor46;
array of uint256 stor51;
array of uint256 stor52;
array of uint256 stor53;
array of uint256 stor54;
uint256 stor63;
uint256 stor75;
uint256 stor76;
uint256 stor77;
uint256 stor78;
uint256 stor79;
mapping of uint256 stor80;
array of uint256 stor81;
array of uint256 stor82;
uint256 getCurrentICOCycle;
uint256 stor84;
uint256 stor85;
array of address stor86;
mapping of struct stor91;
array of struct stor92;
mapping of address getMinerAt;
uint256 getTotalMinerCount;
address stor95;

function GetTotalMinerCount() {
    return getTotalMinerCount
}

function GetCurrentICOCycle() {
    return getCurrentICOCycle
}

function GetMinerAt(uint256 arg1) {
    require arg1 < getTotalMinerCount
    return getMinerAt[arg1]
}

function _fallback() payable {
    stor78 += msg.value
}

function GetPotInfo() {
    return stor75, stor78, stor77, stor79
}

function HasBooster(address arg1) {
    idx = 0
    while idx < 5:
        if stor86[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function WithdrawDevFunds() {
    require stor95 == msg.sender
    call stor95 with:
       value stor78 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor78 = 0
}

function GetBoosterData() {
    mem[96] = 0
    mem[128 len 128] = 0
    idx = 0
    while idx < 5:
        mem[(32 * idx) + 96] = stor86[idx]
        idx = idx + 1
        continue 
    return mem[96 len 160], stor85, stor84
}

function GetICOData(uint256 arg1) {
    require arg1 <= getCurrentICOCycle
    require arg1 < stor82.length
    if arg1 >= getCurrentICOCycle:
        return stor82[arg1], stor75 / 5
    require arg1 < stor81.length
    return stor82[arg1], stor81[arg1]
}

function WithdrawPotShare() {
    require stor91[address(msg.sender)].field_3328 > 0
    require stor91[address(msg.sender)].field_2816
    stor91[address(msg.sender)].field_3328 = 0
    call msg.sender with:
       value stor91[address(msg.sender)].field_3328 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor91[address(msg.sender)].field_3328 = 0
}

function StartNewMiner() {
    require not stor91[address(msg.sender)].field_2816
    stor91[address(msg.sender)].field_2816 = block.timestamp
    stor91[address(msg.sender)].field_2560 = 0
    stor91[address(msg.sender)].field_0 = 1
    stor91[address(msg.sender)].field_3328 = 0
    stor91[address(msg.sender)].field_3584 = getCurrentICOCycle
    stor92[address(msg.sender)].field_1536 = block.timestamp + (8 * 3600)
    stor92[address(msg.sender)].field_1792 = block.timestamp
    getMinerAt[stor94] = msg.sender
    getTotalMinerCount++
}

function GetPVPData(address arg1) {
    mem[96] = 0
    mem[128 len 160] = 0
    idx = 0
    s = 0
    t = 0
    while idx < 6:
        mem[(32 * idx) + 96] = stor92[address(arg1)][idx].field_0
        idx = idx + 1
        s = (stor92[address(arg1)][idx].field_0 * stor52[idx]) + s
        t = (stor92[address(arg1)][idx].field_0 * stor51[idx]) + t
        continue 
    return 6 * stor92[address(arg1)].field_1536 * stor75, 
           6 * stor92[address(arg1)].field_1536 * stor76,
           stor92[address(arg1)].field_1536,
           stor92[address(arg1)].field_1792,
           mem[96 len 192]
}

function GetMinerICOData(address arg1, uint256 arg2) {
    require arg2 <= getCurrentICOCycle
    if arg2 >= getCurrentICOCycle:
        if arg2 < stor82.length:
            if stor82[arg2]:
                return stor80[address(arg1)][arg2], stor75 / 5 * stor80[address(arg1)][arg2] / stor82[arg2], stor91[address(arg1)].field_3584
    else:
        if arg2 < stor82.length:
            if arg2 < stor81.length:
                if stor82[arg2]:
                    return stor80[address(arg1)][arg2], 
                           stor81[arg2] * stor80[address(arg1)][arg2] / stor82[arg2],
                           stor91[address(arg1)].field_3584
    revert
}

function GetMinerUnclaimedICOShare(address arg1) {
    mem[0] = arg1
    mem[32] = 91
    require stor91[address(arg1)].field_2816
    require stor91[address(arg1)].field_3584 < getCurrentICOCycle
    idx = stor14[sha3(mem[0 len 64])]
    s = 0
    while idx < getCurrentICOCycle:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 80)
        if stor80[address(msg.sender)][idx] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor82.length
        mem[32] = sha3(address(arg1), 80)
        require idx < stor81.length
        mem[0] = 81
        require stor82[idx]
        idx = idx + 1
        s = s + (stor81[idx] * stor80[address(arg1)][idx] / stor82[idx])
        continue 
    return s
}

function WithdrawICOEarnings() {
    require stor91[address(msg.sender)].field_2816
    require stor91[address(msg.sender)].field_3584 < getCurrentICOCycle
    if getCurrentICOCycle - stor91[address(msg.sender)].field_3584 <= 30:
        stor91[address(msg.sender)].field_3584 = getCurrentICOCycle
    else:
        stor91[address(msg.sender)].field_3584 += 30
    idx = stor91[address(msg.sender)].field_3584
    while idx < getCurrentICOCycle:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 80)
        if stor80[address(msg.sender)][idx] > 0:
            require idx < stor82.length
            mem[32] = sha3(address(msg.sender), 80)
            require idx < stor81.length
            mem[0] = 81
            require stor82[idx]
            stor91[address(msg.sender)].field_3328 += stor81[idx] * stor80[address(msg.sender)][idx] / stor82[idx]
        idx = idx + 1
        continue 
}

function ReleaseICO() {
    require stor91[address(msg.sender)].field_2816
    require stor79 <= block.timestamp
    require stor75 > 0
    require getCurrentICOCycle < stor82.length
    require stor82[stor83] > 0
    stor79 = block.timestamp + (24 * 3600)
    require getCurrentICOCycle < stor81.length
    stor81[stor83] = stor75 / 5
    stor75 -= stor75 / 5
    stor81.length++
    if not stor81.length <= stor81.length + 1:
        idx = stor81.length + 1
        while stor81.length > idx:
            stor81[idx] = 0
            idx = idx + 1
            continue 
    stor81[stor81.length] = 0
    stor82.length++
    if not stor82.length <= stor82.length + 1:
        idx = stor82.length + 1
        while stor82.length > idx:
            stor82[idx] = 0
            idx = idx + 1
            continue 
    stor82[stor82.length] = 0
    getCurrentICOCycle++
    stor91[address(msg.sender)].field_3328 += stor77
    stor77 = 0
}

function GetProductionPerSecond(address arg1) {
    idx = 0
    while idx < 5:
        if stor86[idx] != arg1:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        return ((600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    return ((100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
}

function GetGlobalProduction() {
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < getTotalMinerCount:
        mem[0] = getMinerAt[idx]
        mem[32] = 91
        u = 0
        while u < 5:
            if stor86[u] != getMinerAt[idx]:
                u = u + 1
                continue 
            u = 0
            v = 0
            while uint8(u) < 9:
                u = u + 1
                v = (stor91[stor93[idx]][uint8(u)].field_0 * stor1[uint8(u)]) + v
                continue 
            s = sha3(getMinerAt[idx], 91)
            idx = idx + 1
            s = s + ((600 * stor91[stor93[idx]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor93[idx]].field_3072 * stor91[stor93[idx]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
            t = stor91[stor93[idx]].field_2560 + t
            continue 
        u = 0
        v = 0
        while uint8(u) < 9:
            u = u + 1
            v = (stor91[stor93[idx]][uint8(u)].field_0 * stor1[uint8(u)]) + v
            continue 
        s = sha3(getMinerAt[idx], 91)
        idx = idx + 1
        s = s + ((100 * stor91[stor93[idx]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor93[idx]].field_3072 * stor91[stor93[idx]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
        t = stor91[stor93[idx]].field_2560 + t
        continue 
    return t, s
}

function BuyUpgrade(uint256 arg1) payable {
    require arg1 < 3
    require msg.value >= stor46[arg1]
    require arg1 < 3
    require not stor(('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor91', 91)) + (0.03125 / arg1) + 9)[uint8(arg1)]
    require stor91[address(msg.sender)].field_2816
    stor75 += stor76 * msg.value / 100
    stor77 += msg.value / 100
    stor78 += (99 * msg.value) - (stor76 * msg.value) / 100
    require stor91[address(msg.sender)].field_2816
    require block.timestamp >= stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[address(msg.sender)].field_2816 = block.timestamp
        if (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(msg.sender)].field_2560 = (block.timestamp * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
        require arg1 < 3
        stor91[address(msg.sender)][0.03125 / arg1].field_2304 = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and stor91[address(msg.sender)][0.03125 / arg1].field_2304
        stor91[address(msg.sender)].field_3072 += stor45[arg1]
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[address(msg.sender)].field_2816 = block.timestamp
    if (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[address(msg.sender)].field_2560 = (block.timestamp * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
    require arg1 < 3
    stor91[address(msg.sender)][0.03125 / arg1].field_2304 = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and stor91[address(msg.sender)][0.03125 / arg1].field_2304
    stor91[address(msg.sender)].field_3072 += stor45[arg1]
}

function UpgradeRigETH(uint8 arg1, uint256 arg2) payable {
    require arg1 < 9
    require arg2 > 0
    require arg2 <= 256
    require arg1 < 9
    require stor3[arg1] > 0
    require arg1 < 9
    require stor4[arg1] >= stor91[address(msg.sender)][arg1].field_0 + arg2
    require arg1 < 9
    if stor3[arg1]:
        require stor3[arg1]
        require arg2 * stor3[arg1] / stor3[arg1] == arg2
    require msg.value >= arg2 * stor3[arg1]
    stor75 += stor76 * msg.value / 100
    stor77 += msg.value / 100
    stor78 += (99 * msg.value) - (stor76 * msg.value) / 100
    require stor91[address(msg.sender)].field_2816
    require block.timestamp >= stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[address(msg.sender)].field_2816 = block.timestamp
        if (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(msg.sender)].field_2560 = (block.timestamp * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
        require arg1 < 9
        stor91[address(msg.sender)][arg1].field_0 += arg2
        if stor91[address(msg.sender)][arg1].field_0 > stor4[arg1]:
            require arg1 < 9
            stor91[address(msg.sender)][arg1].field_0 = stor4[arg1]
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[address(msg.sender)].field_2816 = block.timestamp
    if (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[address(msg.sender)].field_2560 = (block.timestamp * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
    require arg1 < 9
    stor91[address(msg.sender)][arg1].field_0 += arg2
    if stor91[address(msg.sender)][arg1].field_0 > stor4[arg1]:
        require arg1 < 9
        stor91[address(msg.sender)][arg1].field_0 = stor4[arg1]
}

function FundICO(uint256 arg1) {
    require stor91[address(msg.sender)].field_2816
    require arg1 > 0
    require stor91[address(msg.sender)].field_2816
    require block.timestamp >= stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[address(msg.sender)].field_2816 = block.timestamp
        if (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(msg.sender)].field_2560 = (block.timestamp * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
        require stor91[address(msg.sender)].field_2560 >= arg1
        require arg1 <= stor91[address(msg.sender)].field_2560
        stor91[address(msg.sender)].field_2560 -= arg1
        require getCurrentICOCycle < stor82.length
        require arg1 + stor82[stor83] >= stor82[stor83]
        require getCurrentICOCycle < stor82.length
        stor82[stor83] += arg1
        require arg1 + stor80[address(msg.sender)][stor83] >= stor80[address(msg.sender)][stor83]
        stor80[address(msg.sender)][stor83] += arg1
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[address(msg.sender)].field_2816 = block.timestamp
    if (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[address(msg.sender)].field_2560 = (block.timestamp * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
    require stor91[address(msg.sender)].field_2560 >= arg1
    require arg1 <= stor91[address(msg.sender)].field_2560
    stor91[address(msg.sender)].field_2560 -= arg1
    require getCurrentICOCycle < stor82.length
    require arg1 + stor82[stor83] >= stor82[stor83]
    require getCurrentICOCycle < stor82.length
    stor82[stor83] += arg1
    require arg1 + stor80[address(msg.sender)][stor83] >= stor80[address(msg.sender)][stor83]
    stor80[address(msg.sender)][stor83] += arg1
}

function BuyTroop(uint256 arg1, uint256 arg2) payable {
    require arg1 < 6
    require arg2 > 0
    require arg2 <= 1000
    require arg1 < 6
    require arg2 > 0
    if stor53[arg1] + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1]):
        require stor53[arg1] + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1])
        require (stor53[arg1] * arg2) + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2) / stor53[arg1] + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1]) == arg2
    if arg2:
        require arg2
        require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
    require arg1 < 6
    if stor54[arg1]:
        require stor54[arg1]
        require arg2 * stor54[arg1] / stor54[arg1] == arg2
    require stor91[address(msg.sender)].field_2816
    require block.timestamp >= stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[address(msg.sender)].field_2816 = block.timestamp
        if (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(msg.sender)].field_2560 = (block.timestamp * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
        require stor91[address(msg.sender)].field_2560 >= ((-1 * arg2 * stor53[arg1]) + (arg2 * arg2 * stor53[arg1]) / 2) + (stor53[arg1] * arg2) + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2)
        require msg.value >= arg2 * stor54[arg1]
        if ((-1 * arg2 * stor53[arg1]) + (arg2 * arg2 * stor53[arg1]) / 2) + (stor53[arg1] * arg2) + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2) > 0:
            stor91[address(msg.sender)].field_2560 = stor91[address(msg.sender)].field_2560 - ((-1 * arg2 * stor53[arg1]) + (arg2 * arg2 * stor53[arg1]) / 2) - (stor53[arg1] * arg2) - (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2)
        if msg.value > 0:
            stor75 += stor76 * msg.value / 100
            stor77 += msg.value / 100
            stor78 += (99 * msg.value) - (stor76 * msg.value) / 100
        require arg1 < 6
        stor92[address(msg.sender)][arg1].field_0 += arg2
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[address(msg.sender)].field_2816 = block.timestamp
    if (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[address(msg.sender)].field_2560 = (block.timestamp * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
    require stor91[address(msg.sender)].field_2560 >= ((-1 * arg2 * stor53[arg1]) + (arg2 * arg2 * stor53[arg1]) / 2) + (stor53[arg1] * arg2) + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2)
    require msg.value >= arg2 * stor54[arg1]
    if ((-1 * arg2 * stor53[arg1]) + (arg2 * arg2 * stor53[arg1]) / 2) + (stor53[arg1] * arg2) + (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2) > 0:
        stor91[address(msg.sender)].field_2560 = stor91[address(msg.sender)].field_2560 - ((-1 * arg2 * stor53[arg1]) + (arg2 * arg2 * stor53[arg1]) / 2) - (stor53[arg1] * arg2) - (stor92[address(msg.sender)][arg1].field_0 * stor53[arg1] * arg2)
    if msg.value > 0:
        stor75 += stor76 * msg.value / 100
        stor77 += msg.value / 100
        stor78 += (99 * msg.value) - (stor76 * msg.value) / 100
    require arg1 < 6
    stor92[address(msg.sender)][arg1].field_0 += arg2
}

function UpgradeRig(uint8 arg1, uint16 arg2) {
    require arg1 < 9
    require arg2 > 0
    require arg2 <= 256
    require arg1 < 9
    require stor4[arg1] >= stor91[address(msg.sender)][arg1].field_0 + arg2
    require stor91[address(msg.sender)].field_2816
    require block.timestamp >= stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[address(msg.sender)].field_2816 = block.timestamp
        if (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(msg.sender)].field_2560 = (block.timestamp * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
        require arg1 < 9
        require arg2 > 0
        if stor[5 * arg1] + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1]):
            require stor[5 * arg1] + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1])
            require (stor[5 * arg1] * arg2) + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1] * arg2) / stor[5 * arg1] + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1]) == arg2
        if arg2:
            require arg2
            require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
        require stor91[address(msg.sender)].field_2560 >= ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2) + (stor[5 * arg1] * arg2) + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1] * arg2)
        require arg1 < 9
        stor91[address(msg.sender)][arg1].field_0 += arg2
        if stor91[address(msg.sender)][arg1].field_0 > stor4[arg1]:
            require arg1 < 9
            stor91[address(msg.sender)][arg1].field_0 = stor4[arg1]
        stor91[address(msg.sender)].field_2560 = stor91[address(msg.sender)].field_2560 - ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2) - (stor[5 * arg1] * arg2) - (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1] * arg2)
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[address(msg.sender)].field_2816 = block.timestamp
    if (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[address(msg.sender)].field_2560 = (block.timestamp * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
    require arg1 < 9
    require arg2 > 0
    if stor[5 * arg1] + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1]):
        require stor[5 * arg1] + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1])
        require (stor[5 * arg1] * arg2) + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1] * arg2) / stor[5 * arg1] + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1]) == arg2
    if arg2:
        require arg2
        require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
    require stor91[address(msg.sender)].field_2560 >= ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2) + (stor[5 * arg1] * arg2) + (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1] * arg2)
    require arg1 < 9
    stor91[address(msg.sender)][arg1].field_0 += arg2
    if stor91[address(msg.sender)][arg1].field_0 > stor4[arg1]:
        require arg1 < 9
        stor91[address(msg.sender)][arg1].field_0 = stor4[arg1]
    stor91[address(msg.sender)].field_2560 = stor91[address(msg.sender)].field_2560 - ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2) - (stor[5 * arg1] * arg2) - (stor91[address(msg.sender)][arg1].field_0 * stor2[arg1] * arg2)
}

function Attack(address arg1) {
    require arg1 != msg.sender
    require stor91[address(msg.sender)].field_2816
    require stor91[address(arg1)].field_2816
    require block.timestamp > stor92[address(msg.sender)].field_1792
    require block.timestamp > stor92[arg1].field_1536
    if stor92[address(msg.sender)].field_1536 > block.timestamp:
        stor92[address(msg.sender)].field_1536 = block.timestamp - 1
    stor92[address(msg.sender)].field_1792 = block.timestamp + (2 * 3600)
    s = 0
    t = 0
    idx = 0
    while idx < 3:
        require idx + 3 < 6
        s = s + (stor92[arg1][idx].field_768 * stor52[idx + 3])
        t = (stor92[address(msg.sender)][idx].field_0 * stor51[idx]) + t
        idx = idx + 1
        continue 
    if 3 * stor92[address(msg.sender)].field_768 * stor63 <= 0x6f32f1ef8b18a2bc3cea59789c79d441 * s:
        idx = 0
        while idx < 3:
            stor92[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        s = 3 * stor92[address(msg.sender)].field_768 * stor63
        t = 0
        idx = 3
        while idx < 6:
            if stor52[idx] <= 0:
                s = s
                t = t
                idx = idx + 1
                continue 
            require idx < 6
            require idx < 6
            if stor92[arg1][idx].field_0 * stor52[idx] <= s:
                stor92[arg1][idx].field_0 = 0
                s = s - (stor92[arg1][idx].field_0 * stor52[idx])
                t = stor92[arg1][idx].field_0
                idx = idx + 1
                continue 
            require stor52[idx]
            require idx < 6
            stor92[arg1][idx].field_0 -= s / stor52[idx]
            s = s - (s / stor52[idx] * stor52[idx])
            t = s / stor52[idx]
            idx = idx + 1
            continue 
    else:
        if stor92[arg1].field_1536 < block.timestamp + (4 * 3600):
            stor92[arg1].field_1536 = block.timestamp + (4 * 3600)
        require stor91[address(arg1)].field_2816
        require block.timestamp >= stor91[address(arg1)].field_2816
        idx = 0
        while idx < 5:
            if stor86[idx] != arg1:
                idx = idx + 1
                continue 
            idx = 0
            t = 0
            while uint8(idx) < 9:
                idx = idx + 1
                t = (stor91[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)]) + t
                continue 
            stor91[address(arg1)].field_2816 = block.timestamp
            if (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
                stor91[address(arg1)].field_2560 = (block.timestamp * (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(arg1)].field_2816 * (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(arg1)].field_2560
            idx = 3
            while idx < 6:
                stor92[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
            t = 0x6f32f1ef8b18a2bc3cea59789c79d441 * s
            u = 0
            idx = 0
            while idx < 3:
                if stor51[idx] <= 0:
                    t = t
                    u = u
                    idx = idx + 1
                    continue 
                require idx < 6
                require idx < 6
                if stor92[address(msg.sender)][idx].field_0 * stor51[idx] <= t:
                    stor92[address(msg.sender)][idx].field_0 = 0
                    t = t - (stor92[address(msg.sender)][idx].field_0 * stor51[idx])
                    u = stor92[address(msg.sender)][idx].field_0
                    idx = idx + 1
                    continue 
                require stor51[idx]
                require idx < 6
                stor92[address(msg.sender)][idx].field_0 -= t / stor51[idx]
                t = t - (t / stor51[idx] * stor51[idx])
                u = t / stor51[idx]
                idx = idx + 1
                continue 
            stor91[address(arg1)].field_2560 -= uint255(stor91[address(arg1)].field_2561)
            stor91[msg.sender].field_2560 += uint255(stor91[address(arg1)].field_2561)
        idx = 0
        t = 0
        while uint8(idx) < 9:
            idx = idx + 1
            t = (stor91[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)]) + t
            continue 
        stor91[address(arg1)].field_2816 = block.timestamp
        if (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(arg1)].field_2560 = (block.timestamp * (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(arg1)].field_2816 * (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(arg1)].field_2560
        idx = 3
        while idx < 6:
            stor92[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
        t = 0x6f32f1ef8b18a2bc3cea59789c79d441 * s
        u = 0
        idx = 0
        while idx < 3:
            if stor51[idx] <= 0:
                t = t
                u = u
                idx = idx + 1
                continue 
            require idx < 6
            require idx < 6
            if stor92[address(msg.sender)][idx].field_0 * stor51[idx] <= t:
                stor92[address(msg.sender)][idx].field_0 = 0
                t = t - (stor92[address(msg.sender)][idx].field_0 * stor51[idx])
                u = stor92[address(msg.sender)][idx].field_0
                idx = idx + 1
                continue 
            require stor51[idx]
            require idx < 6
            stor92[address(msg.sender)][idx].field_0 -= t / stor51[idx]
            t = t - (t / stor51[idx] * stor51[idx])
            u = t / stor51[idx]
            idx = idx + 1
            continue 
        stor91[address(arg1)].field_2560 -= uint255(stor91[address(arg1)].field_2561)
        stor91[msg.sender].field_2560 += uint255(stor91[address(arg1)].field_2561)
}

function GetMinerData(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160 len 224] = 0
    mem[64] = 480
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[0] = arg1
    mem[32] = 91
    idx = 0
    while idx < 5:
        if stor86[idx] != arg1:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        idx = 0
        while uint8(idx) < 9:
            mem[0] = arg1
            mem[32] = 91
            mem[(32 * uint8(idx)) + 96] = stor91[address(arg1)][uint8(idx)].field_0
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 3:
            mem[0] = arg1
            mem[32] = 91
            mem[(32 * uint8(idx)) + 384] = stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor91', 91)) + (Mask(3, 5, idx) >> 5) + 9)[uint8(idx)]
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 91
        idx = 0
        while idx < 5:
            if stor86[idx] != arg1:
                idx = idx + 1
                continue 
            _24 = mem[64]
            mem[mem[64]] = stor91[address(arg1)].field_2560
            mem[mem[64] + 32] = stor91[address(arg1)].field_2816
            mem[mem[64] + 64] = (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100
            idx = 0
            while idx < 288:
                mem[idx + mem[64] + 96] = mem[idx + 96]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 96:
                mem[idx + _24 + 384] = mem[idx + 384]
                idx = idx + 32
                continue 
            mem[_24 + 480] = stor91[address(arg1)].field_3328
            mem[_24 + 512] = 1
            mem[_24 + 544] = stor91[address(arg1)].field_2560 + (block.timestamp * (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(arg1)].field_2816 * (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
            return memory
              from mem[64]
               len _24 + -mem[64] + 576
        _20 = mem[64]
        mem[mem[64]] = stor91[address(arg1)].field_2560
        mem[mem[64] + 32] = stor91[address(arg1)].field_2816
        mem[mem[64] + 64] = (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100
        idx = 0
        while idx < 288:
            mem[idx + mem[64] + 96] = mem[idx + 96]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 96:
            mem[idx + _20 + 384] = mem[idx + 384]
            idx = idx + 32
            continue 
        mem[_20 + 480] = stor91[address(arg1)].field_3328
        mem[_20 + 512] = 0
        mem[_20 + 544] = stor91[address(arg1)].field_2560 + (block.timestamp * (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(arg1)].field_2816 * (600 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
        return memory
          from mem[64]
           len _20 + -mem[64] + 576
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    idx = 0
    while uint8(idx) < 9:
        mem[0] = arg1
        mem[32] = 91
        mem[(32 * uint8(idx)) + 96] = stor91[address(arg1)][uint8(idx)].field_0
        idx = idx + 1
        continue 
    idx = 0
    while uint8(idx) < 3:
        mem[0] = arg1
        mem[32] = 91
        mem[(32 * uint8(idx)) + 384] = stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor91', 91)) + (Mask(3, 5, idx) >> 5) + 9)[uint8(idx)]
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 91
    idx = 0
    while idx < 5:
        if stor86[idx] != arg1:
            idx = idx + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = stor91[address(arg1)].field_2560
        mem[mem[64] + 32] = stor91[address(arg1)].field_2816
        mem[mem[64] + 64] = (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100
        idx = 0
        while idx < 288:
            mem[idx + mem[64] + 96] = mem[idx + 96]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 96:
            mem[idx + _22 + 384] = mem[idx + 384]
            idx = idx + 32
            continue 
        mem[_22 + 480] = stor91[address(arg1)].field_3328
        mem[_22 + 512] = 1
        mem[_22 + 544] = stor91[address(arg1)].field_2560 + (block.timestamp * (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(arg1)].field_2816 * (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
        return memory
          from mem[64]
           len _22 + -mem[64] + 576
    mem[mem[64]] = stor91[address(arg1)].field_2560
    mem[mem[64] + 32] = stor91[address(arg1)].field_2816
    mem[mem[64] + 64] = (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100
    mem[mem[64] + 96 len 288] = mem[96 len 288]
    mem[mem[64] + 384 len 96] = mem[384 len 96]
    return stor91[address(arg1)].field_2560, 
           stor91[address(arg1)].field_2816,
           (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100,
           mem[mem[64] + 96 len 288],
           mem[384 len 96],
           stor91[address(arg1)].field_3328,
           0,
           stor91[address(arg1)].field_2560 + (block.timestamp * (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(arg1)].field_2816 * (100 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(arg1)].field_3072 * stor91[address(arg1)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100)
}

function BuyBooster() payable {
    require msg.value >= stor85
    require stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        require stor86[idx] != msg.sender
        idx = idx + 1
        continue 
    require stor84 < 5
    stor91[stor86[stor84]].field_3328 += 9403 * msg.value / 10000
    stor75 += 597 * msg.value / 20000
    stor78 += 597 * msg.value / 20000
    stor85 += stor85 / 20
    require stor91[address(msg.sender)].field_2816
    require block.timestamp >= stor91[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[address(msg.sender)].field_2816 = block.timestamp
        if (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[address(msg.sender)].field_2560 = (block.timestamp * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (600 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
        require stor91[stor86[stor84]].field_2816
        require block.timestamp >= stor91[stor86[stor84]].field_2816
        idx = 0
        while idx < 5:
            if stor86[idx] != stor86[stor84]:
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < 9:
                idx = idx + 1
                s = (stor91[stor86[stor84]][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
                continue 
            stor91[stor86[stor84]].field_2816 = block.timestamp
            if (600 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
                stor91[stor86[stor84]].field_2560 = (block.timestamp * (600 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[stor86[stor84]].field_2816 * (600 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[stor86[stor84]].field_2560
            require stor84 < 5
            stor86[stor84] = msg.sender
            stor84++
            if stor84 + 1 >= 5:
                stor84 = 0
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[stor86[stor84]][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[stor86[stor84]].field_2816 = block.timestamp
        if (100 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[stor86[stor84]].field_2560 = (block.timestamp * (100 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[stor86[stor84]].field_2816 * (100 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[stor86[stor84]].field_2560
        require stor84 < 5
        stor86[stor84] = msg.sender
        stor84++
        if stor84 + 1 >= 5:
            stor84 = 0
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[address(msg.sender)].field_2816 = block.timestamp
    if (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[address(msg.sender)].field_2560 = (block.timestamp * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[address(msg.sender)].field_2816 * (100 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[address(msg.sender)].field_3072 * stor91[address(msg.sender)][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[address(msg.sender)].field_2560
    require stor91[stor86[stor84]].field_2816
    require block.timestamp >= stor91[stor86[stor84]].field_2816
    idx = 0
    while idx < 5:
        if stor86[idx] != stor86[stor84]:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = (stor91[stor86[stor84]][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
            continue 
        stor91[stor86[stor84]].field_2816 = block.timestamp
        if (600 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
            stor91[stor86[stor84]].field_2560 = (block.timestamp * (600 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[stor86[stor84]].field_2816 * (600 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[stor86[stor84]].field_2560
        require stor84 < 5
        stor86[stor84] = msg.sender
        stor84++
        if stor84 + 1 >= 5:
            stor84 = 0
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = (stor91[stor86[stor84]][uint8(idx)].field_0 * stor1[uint8(idx)]) + s
        continue 
    stor91[stor86[stor84]].field_2816 = block.timestamp
    if (100 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100 > 0:
        stor91[stor86[stor84]].field_2560 = (block.timestamp * (100 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) - (stor91[stor86[stor84]].field_2816 * (100 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) + (stor91[stor86[stor84]].field_3072 * stor91[stor86[stor84]][uint8(None)].field_0 * stor1[uint8(None)] * None) / 100) + stor91[stor86[stor84]].field_2560
    require stor84 < 5
    stor86[stor84] = msg.sender
    stor84++
    if stor84 + 1 >= 5:
        stor84 = 0
}



}
