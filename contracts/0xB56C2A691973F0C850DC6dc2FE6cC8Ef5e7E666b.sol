contract main {




// =====================  Runtime code  =====================


#
#  - Attack(address arg1)
#
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
uint256 stor75;
uint256 stor76;
uint256 stor77;
uint256 stor78;
mapping of uint256 stor79;
array of uint256 stor80;
array of uint256 stor81;
uint256 getCurrentICOCycle;
uint256 stor83;
uint256 stor84;
array of address stor85;
array of struct stor90;
array of struct stor91;
mapping of address getMinerAt;
uint256 getTotalMinerCount;
address stor94;

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

function HasBooster(address arg1) {
    idx = 0
    while idx < 5:
        if stor85[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function WithdrawDevFunds() {
    require msg.sender == stor94
    call stor94 with:
       value stor77 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor77 = 0
}

function GetBoosterData() {
    mem[96 len 160] = code.data[14537 len 160]
    idx = 0
    while idx < 5:
        mem[(32 * idx) + 96] = stor85[idx]
        idx = idx + 1
        continue 
    return mem[96 len 160], stor84, stor83
}

function WithdrawPotShare() {
    require stor90[address(msg.sender)].field_3328 > 0
    require stor90[address(msg.sender)].field_2816
    stor90[address(msg.sender)].field_3328 = 0
    call msg.sender with:
       value stor90[address(msg.sender)].field_3328 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor90[address(msg.sender)].field_3328 = 0
}

function _fallback() payable {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args stor94
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e38b6aac(?) {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function GetPotInfo() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], stor77, stor76, stor78
}

function StartNewMiner() {
    require not stor90[address(msg.sender)].field_2816
    stor90[address(msg.sender)].field_2816 = block.timestamp
    stor90[address(msg.sender)].field_2560 = 0
    stor90[address(msg.sender)].field_0 = 1
    stor90[address(msg.sender)].field_3328 = 0
    stor90[address(msg.sender)].field_3584 = getCurrentICOCycle
    stor91[address(msg.sender)].field_1536 = block.timestamp + (4 * 3600)
    stor91[address(msg.sender)].field_1792 = block.timestamp
    getMinerAt[stor93] = msg.sender
    getTotalMinerCount++
}

function GetICOData(uint256 arg1) {
    require arg1 <= getCurrentICOCycle
    require arg1 < stor81.length
    if arg1 < getCurrentICOCycle:
        require arg1 < stor80.length
        return stor81[arg1], stor80[arg1]
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor81[arg1], ext_call.return_data[0]
}

function GetPVPData(address arg1) {
    mem[96 len 192] = code.data[14537 len 192]
    idx = 0
    s = 0
    t = 0
    while idx < 6:
        mem[(32 * idx) + 96] = stor91[address(arg1)][idx].field_0
        idx = idx + 1
        s = s + (stor91[address(arg1)][idx].field_0 * stor52[idx])
        t = t + (stor91[address(arg1)][idx].field_0 * stor51[idx])
        continue 
    return 0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * t, 
           0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * s,
           stor91[address(arg1)].field_1536,
           stor91[address(arg1)].field_1792,
           mem[96 len 192]
}

function withdrawDivs() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8f271f1a(?) {
    require msg.sender == stor94
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor77 = ext_call.return_data[0]
}

function GetMinerUnclaimedICOShare(address arg1) {
    mem[0] = arg1
    mem[32] = 90
    require stor90[address(arg1)].field_2816
    require stor90[address(arg1)].field_3584 < getCurrentICOCycle
    idx = stor14[sha3(mem[0 len 64])]
    s = 0
    while idx < getCurrentICOCycle:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 79)
        if stor79[address(arg1)][idx] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < stor81.length
        mem[32] = sha3(address(arg1), 79)
        require idx < stor80.length
        mem[0] = 80
        require stor81[idx]
        idx = idx + 1
        s = s + (stor80[idx] * stor79[address(arg1)][idx] / stor81[idx])
        continue 
    return s
}

function WithdrawICOEarnings() {
    require stor90[address(msg.sender)].field_2816
    require stor90[address(msg.sender)].field_3584 < getCurrentICOCycle
    if getCurrentICOCycle - stor90[address(msg.sender)].field_3584 <= 30:
        stor90[address(msg.sender)].field_3584 = getCurrentICOCycle
    else:
        stor90[address(msg.sender)].field_3584 += 30
    idx = stor90[address(msg.sender)].field_3584
    while idx < getCurrentICOCycle:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 79)
        if stor79[address(msg.sender)][idx] > 0:
            require idx < stor81.length
            mem[32] = sha3(address(msg.sender), 79)
            require idx < stor80.length
            mem[0] = 80
            require stor81[idx]
            stor90[address(msg.sender)].field_3328 += stor80[idx] * stor79[address(msg.sender)][idx] / stor81[idx]
        idx = idx + 1
        continue 
}

function GetMinerICOData(address arg1, uint256 arg2) {
    require arg2 <= getCurrentICOCycle
    if arg2 < getCurrentICOCycle:
        if arg2 < stor81.length:
            if arg2 < stor80.length:
                if stor81[arg2]:
                    return stor79[address(arg1)][arg2], 
                           stor80[arg2] * stor79[address(arg1)][arg2] / stor81[arg2],
                           stor90[address(arg1)].field_3584
    else:
        if arg2 < stor81.length:
            require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
            call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor81[arg2]:
                return stor79[address(arg1)][arg2], 
                       ext_call.return_data[0] * stor79[address(arg1)][arg2] / stor81[arg2],
                       stor90[address(arg1)].field_3584
    revert
}

function ReleaseICO() {
    require stor90[address(msg.sender)].field_2816
    require stor78 <= block.timestamp
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require getCurrentICOCycle < stor81.length
    require stor81[stor82] > 0
    stor78 = block.timestamp + (24 * 3600)
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor77 += ext_call.return_data[0] / 100
    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
    require getCurrentICOCycle < stor80.length
    stor80[stor82] = ext_call.return_data[0] - (ext_call.return_data[0] / 100)
    stor80.length++
    stor80[stor80.length] = 0
    stor81.length++
    stor81[stor81.length] = 0
    getCurrentICOCycle++
    stor90[address(msg.sender)].field_3328 += stor76
    stor76 = 0
}

function GetProductionPerSecond(address arg1) {
    idx = 0
    while idx < 5:
        if stor85[idx] != arg1:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        return ((200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    return ((100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
}

function GetGlobalProduction() {
    s = 0
    idx = 0
    t = 0
    u = 0
    while idx < getTotalMinerCount:
        mem[0] = getMinerAt[idx]
        mem[32] = 90
        v = 0
        while v < 5:
            if stor85[v] != getMinerAt[idx]:
                v = v + 1
                continue 
            v = 0
            s = 0
            while uint8(v) < 9:
                v = v + 1
                s = s + (stor90[stor92[idx]][uint8(v)].field_0 * stor1[uint8(v)])
                continue 
            v = sha3(getMinerAt[idx], 90)
            idx = idx + 1
            t = t + ((200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor92[idx]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
            s = (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + stor90[stor92[idx]].field_2560
            continue 
        s = 0
        v = 0
        while uint8(s) < 9:
            s = s + 1
            v = v + (stor90[stor92[idx]][uint8(s)].field_0 * stor1[uint8(s)])
            continue 
        s = sha3(getMinerAt[idx], 90)
        idx = idx + 1
        t = t + ((100 * v * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor92[idx]].field_3072 * v * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        u = u + stor90[stor92[idx]].field_2560
        continue 
    return u, t
}

function FundICO(uint256 arg1) {
    require stor90[address(msg.sender)].field_2816
    require arg1 > 0
    require stor90[address(msg.sender)].field_2816
    require block.timestamp >= stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[address(msg.sender)].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require stor90[address(msg.sender)].field_2560 >= arg1
        require arg1 <= stor90[address(msg.sender)].field_2560
        stor90[address(msg.sender)].field_2560 -= arg1
        require getCurrentICOCycle < stor81.length
        require stor81[stor82] + arg1 >= stor81[stor82]
        require getCurrentICOCycle < stor81.length
        stor81[stor82] += arg1
        require stor79[address(msg.sender)][stor82] + arg1 >= stor79[address(msg.sender)][stor82]
        stor79[address(msg.sender)][stor82] += arg1
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[address(msg.sender)].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require stor90[address(msg.sender)].field_2560 >= arg1
    require arg1 <= stor90[address(msg.sender)].field_2560
    stor90[address(msg.sender)].field_2560 -= arg1
    require getCurrentICOCycle < stor81.length
    require stor81[stor82] + arg1 >= stor81[stor82]
    require getCurrentICOCycle < stor81.length
    stor81[stor82] += arg1
    require stor79[address(msg.sender)][stor82] + arg1 >= stor79[address(msg.sender)][stor82]
    stor79[address(msg.sender)][stor82] += arg1
}

function BuyUpgrade(uint256 arg1) payable {
    require arg1 < 3
    require msg.value >= stor46[arg1]
    require arg1 < 3
    require not stor((0.03125 / arg1) + ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor90', 90)) + 9)[uint8(arg1)]
    require stor90[address(msg.sender)].field_2816
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value msg.value * stor75 / 100 wei
         gas gas_remaining wei
        args stor94
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor76 += msg.value / 100
    stor77 += 4 * msg.value / 100
    require stor90[address(msg.sender)].field_2816
    require block.timestamp >= stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[address(msg.sender)].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require arg1 < 3
        stor90[address(msg.sender)][0.03125 / arg1].field_2304 = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and stor90[address(msg.sender)][0.03125 / arg1].field_2304
        stor90[address(msg.sender)].field_3072 += stor45[arg1]
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[address(msg.sender)].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require arg1 < 3
    stor90[address(msg.sender)][0.03125 / arg1].field_2304 = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and stor90[address(msg.sender)][0.03125 / arg1].field_2304
    stor90[address(msg.sender)].field_3072 += stor45[arg1]
}

function UpgradeSpace(uint8 arg1, uint16 arg2) {
    require arg1 < 9
    require arg2 > 0
    require arg2 <= 999
    require arg1 < 9
    require not stor3[arg1]
    require arg1 < 9
    require stor4[arg1] >= stor90[address(msg.sender)][arg1].field_0 + arg2
    require stor90[address(msg.sender)].field_2816
    require block.timestamp >= stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[address(msg.sender)].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require arg1 < 9
        require arg2 > 0
        if stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0):
            require stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0)
            require (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) / stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0) == arg2
        if arg2:
            require arg2
            require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
        require stor90[address(msg.sender)].field_2560 >= (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
        require arg1 < 9
        stor90[address(msg.sender)][arg1].field_0 += arg2
        if stor90[address(msg.sender)][arg1].field_0 > stor4[arg1]:
            require arg1 < 9
            stor90[address(msg.sender)][arg1].field_0 = stor4[arg1]
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 - (stor[5 * arg1] * arg2) - (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) - ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[address(msg.sender)].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require arg1 < 9
    require arg2 > 0
    if stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0):
        require stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0)
        require (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) / stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0) == arg2
    if arg2:
        require arg2
        require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
    require stor90[address(msg.sender)].field_2560 >= (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
    require arg1 < 9
    stor90[address(msg.sender)][arg1].field_0 += arg2
    if stor90[address(msg.sender)][arg1].field_0 > stor4[arg1]:
        require arg1 < 9
        stor90[address(msg.sender)][arg1].field_0 = stor4[arg1]
    stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 - (stor[5 * arg1] * arg2) - (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) - ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
}

function UpgradeSpaceETH(uint8 arg1, uint256 arg2) payable {
    require arg1 < 9
    require arg2 > 0
    require arg2 <= 9999
    require arg1 < 9
    require stor3[arg1] > 0
    require arg1 < 9
    require stor4[arg1] >= stor90[address(msg.sender)][arg1].field_0 + arg2
    require arg1 < 9
    if stor3[arg1]:
        require stor3[arg1]
        require stor3[arg1] * arg2 / stor3[arg1] == arg2
    require arg1 < 9
    require arg2 > 0
    if stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0):
        require stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0)
        require (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) / stor[5 * arg1] + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0) == arg2
    if arg2:
        require arg2
        require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
    require stor90[address(msg.sender)].field_2816
    require block.timestamp >= stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[address(msg.sender)].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require msg.value >= stor3[arg1] * arg2
        require stor90[address(msg.sender)].field_2560 >= (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
        require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
        call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
           value msg.value * stor75 / 100 wei
             gas gas_remaining wei
            args stor94
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor76 += msg.value / 100
        stor77 += 4 * msg.value / 100
        require arg1 < 9
        stor90[address(msg.sender)][arg1].field_0 += arg2
        if stor90[address(msg.sender)][arg1].field_0 > stor4[arg1]:
            require arg1 < 9
            stor90[address(msg.sender)][arg1].field_0 = stor4[arg1]
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 - (stor[5 * arg1] * arg2) - (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) - ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[address(msg.sender)].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require msg.value >= stor3[arg1] * arg2
    require stor90[address(msg.sender)].field_2560 >= (stor[5 * arg1] * arg2) + (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value msg.value * stor75 / 100 wei
         gas gas_remaining wei
        args stor94
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor76 += msg.value / 100
    stor77 += 4 * msg.value / 100
    require arg1 < 9
    stor90[address(msg.sender)][arg1].field_0 += arg2
    if stor90[address(msg.sender)][arg1].field_0 > stor4[arg1]:
        require arg1 < 9
        stor90[address(msg.sender)][arg1].field_0 = stor4[arg1]
    stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 - (stor[5 * arg1] * arg2) - (stor2[arg1] * stor90[address(msg.sender)][arg1].field_0 * arg2) - ((-1 * arg2 * stor2[arg1]) + (arg2 * arg2 * stor2[arg1]) / 2)
}

function BuyTroop(uint256 arg1, uint256 arg2) payable {
    require arg1 < 6
    require arg2 > 0
    require arg2 <= 9999
    require arg1 < 6
    require arg2 > 0
    if stor53[arg1] + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0):
        require stor53[arg1] + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0)
        require (stor53[arg1] * arg2) + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) / stor53[arg1] + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0) == arg2
    if arg2:
        require arg2
        require -arg2 + (arg2 * arg2) / arg2 == arg2 - 1
    require arg1 < 6
    if stor54[arg1]:
        require stor54[arg1]
        require stor54[arg1] * arg2 / stor54[arg1] == arg2
    require stor90[address(msg.sender)].field_2816
    require block.timestamp >= stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[address(msg.sender)].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require stor90[address(msg.sender)].field_2560 >= (stor53[arg1] * arg2) + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor53[arg1] / 100) + (arg2 * arg2 * stor53[arg1] / 100) / 2)
        require msg.value >= stor54[arg1] * arg2
        if (stor53[arg1] * arg2) + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor53[arg1] / 100) + (arg2 * arg2 * stor53[arg1] / 100) / 2) > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 - (stor53[arg1] * arg2) - (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) - ((-1 * arg2 * stor53[arg1] / 100) + (arg2 * arg2 * stor53[arg1] / 100) / 2)
        if msg.value > 0:
            require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
            call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
               value msg.value * stor75 / 100 wei
                 gas gas_remaining wei
                args stor94
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor76 += msg.value / 100
            stor77 += 4 * msg.value / 100
        require arg1 < 6
        stor91[address(msg.sender)][arg1].field_0 += arg2
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[address(msg.sender)].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require stor90[address(msg.sender)].field_2560 >= (stor53[arg1] * arg2) + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor53[arg1] / 100) + (arg2 * arg2 * stor53[arg1] / 100) / 2)
    require msg.value >= stor54[arg1] * arg2
    if (stor53[arg1] * arg2) + (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) + ((-1 * arg2 * stor53[arg1] / 100) + (arg2 * arg2 * stor53[arg1] / 100) / 2) > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 - (stor53[arg1] * arg2) - (stor53[arg1] / 100 * stor91[address(msg.sender)][arg1].field_0 * arg2) - ((-1 * arg2 * stor53[arg1] / 100) + (arg2 * arg2 * stor53[arg1] / 100) / 2)
    if msg.value > 0:
        require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
        call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
           value msg.value * stor75 / 100 wei
             gas gas_remaining wei
            args stor94
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor76 += msg.value / 100
        stor77 += 4 * msg.value / 100
    require arg1 < 6
    stor91[address(msg.sender)][arg1].field_0 += arg2
}

function GetMinerData(address arg1) {
    mem[96 len 288] = code.data[14537 len 288]
    mem[64] = 480
    mem[384 len 96] = code.data[14537 len 96]
    mem[0] = arg1
    mem[32] = 90
    idx = 0
    while idx < 5:
        if stor85[idx] != arg1:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        idx = 0
        while uint8(idx) < 9:
            mem[0] = arg1
            mem[32] = 90
            mem[(32 * uint8(idx)) + 96] = stor90[address(arg1)][uint8(idx)].field_0
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 3:
            mem[0] = arg1
            mem[32] = 90
            mem[(32 * uint8(idx)) + 384] = stor((Mask(3, 5, idx) >> 5) + ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor90', 90)) + 9)[uint8(idx)]
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 90
        idx = 0
        while idx < 5:
            if stor85[idx] != arg1:
                idx = idx + 1
                continue 
            _25 = mem[64]
            mem[mem[64]] = stor90[address(arg1)].field_2560
            mem[mem[64] + 32] = stor90[address(arg1)].field_2816
            mem[mem[64] + 64] = (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100
            idx = 0
            while idx < 288:
                mem[mem[64] + idx + 96] = mem[idx + 96]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 96:
                mem[_25 + idx + 384] = mem[idx + 384]
                idx = idx + 32
                continue 
            mem[_25 + 480] = stor90[address(arg1)].field_3328
            mem[_25 + 512] = 1
            mem[_25 + 544] = stor90[address(arg1)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(arg1)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
            return memory
              from mem[64]
               len _25 + -mem[64] + 576
        _21 = mem[64]
        mem[mem[64]] = stor90[address(arg1)].field_2560
        mem[mem[64] + 32] = stor90[address(arg1)].field_2816
        mem[mem[64] + 64] = (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100
        idx = 0
        while idx < 288:
            mem[mem[64] + idx + 96] = mem[idx + 96]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 96:
            mem[_21 + idx + 384] = mem[idx + 384]
            idx = idx + 32
            continue 
        mem[_21 + 480] = stor90[address(arg1)].field_3328
        mem[_21 + 512] = 0
        mem[_21 + 544] = stor90[address(arg1)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(arg1)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        return memory
          from mem[64]
           len _21 + -mem[64] + 576
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(arg1)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    idx = 0
    while uint8(idx) < 9:
        mem[0] = arg1
        mem[32] = 90
        mem[(32 * uint8(idx)) + 96] = stor90[address(arg1)][uint8(idx)].field_0
        idx = idx + 1
        continue 
    idx = 0
    while uint8(idx) < 3:
        mem[0] = arg1
        mem[32] = 90
        mem[(32 * uint8(idx)) + 384] = stor((Mask(3, 5, idx) >> 5) + ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor90', 90)) + 9)[uint8(idx)]
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 90
    idx = 0
    while idx < 5:
        if stor85[idx] != arg1:
            idx = idx + 1
            continue 
        _23 = mem[64]
        mem[mem[64]] = stor90[address(arg1)].field_2560
        mem[mem[64] + 32] = stor90[address(arg1)].field_2816
        mem[mem[64] + 64] = (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100
        idx = 0
        while idx < 288:
            mem[mem[64] + idx + 96] = mem[idx + 96]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 96:
            mem[_23 + idx + 384] = mem[idx + 384]
            idx = idx + 32
            continue 
        mem[_23 + 480] = stor90[address(arg1)].field_3328
        mem[_23 + 512] = 1
        mem[_23 + 544] = stor90[address(arg1)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(arg1)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        return memory
          from mem[64]
           len _23 + -mem[64] + 576
    mem[mem[64]] = stor90[address(arg1)].field_2560
    mem[mem[64] + 32] = stor90[address(arg1)].field_2816
    mem[mem[64] + 64] = (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100
    mem[mem[64] + 96 len 288] = mem[96 len 288]
    mem[mem[64] + 384 len 96] = mem[384 len 96]
    return stor90[address(arg1)].field_2560, 
           stor90[address(arg1)].field_2816,
           (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100,
           mem[mem[64] + 96 len 288],
           mem[384 len 96],
           stor90[address(arg1)].field_3328,
           0,
           stor90[address(arg1)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(arg1)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(arg1)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
}

function BuyBooster() payable {
    require msg.value >= stor84
    require stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        require stor85[idx] != msg.sender
        idx = idx + 1
        continue 
    require stor83 < 5
    stor90[stor85[stor83]].field_3328 += 98 * msg.value / 100
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value msg.value / 100 wei
         gas gas_remaining wei
        args stor94
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor77 += msg.value / 100
    stor84 += stor84 / 20
    require stor90[address(msg.sender)].field_2816
    require block.timestamp >= stor90[address(msg.sender)].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[address(msg.sender)].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require stor90[stor85[stor83]].field_2816
        require block.timestamp >= stor90[stor85[stor83]].field_2816
        idx = 0
        while idx < 5:
            if stor85[idx] != stor85[stor83]:
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < 9:
                idx = idx + 1
                s = s + (stor90[stor85[stor83]][uint8(idx)].field_0 * stor1[uint8(idx)])
                continue 
            stor90[stor85[stor83]].field_2816 = block.timestamp
            if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
                stor90[stor85[stor83]].field_2560 = stor90[stor85[stor83]].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[stor85[stor83]].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
            require stor83 < 5
            stor85[stor83] = msg.sender
            stor83++
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[stor85[stor83]][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[stor85[stor83]].field_2816 = block.timestamp
        if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[stor85[stor83]].field_2560 = stor90[stor85[stor83]].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[stor85[stor83]].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require stor83 < 5
        stor85[stor83] = msg.sender
        stor83++
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[address(msg.sender)][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[address(msg.sender)].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[address(msg.sender)].field_2560 = stor90[address(msg.sender)].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[address(msg.sender)].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[address(msg.sender)].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require stor90[stor85[stor83]].field_2816
    require block.timestamp >= stor90[stor85[stor83]].field_2816
    idx = 0
    while idx < 5:
        if stor85[idx] != stor85[stor83]:
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < 9:
            idx = idx + 1
            s = s + (stor90[stor85[stor83]][uint8(idx)].field_0 * stor1[uint8(idx)])
            continue 
        stor90[stor85[stor83]].field_2816 = block.timestamp
        if (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
            stor90[stor85[stor83]].field_2560 = stor90[stor85[stor83]].field_2560 + (block.timestamp * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[stor85[stor83]].field_2816 * (200 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
        require stor83 < 5
        stor85[stor83] = msg.sender
        stor83++
    idx = 0
    s = 0
    while uint8(idx) < 9:
        idx = idx + 1
        s = s + (stor90[stor85[stor83]][uint8(idx)].field_0 * stor1[uint8(idx)])
        continue 
    stor90[stor85[stor83]].field_2816 = block.timestamp
    if (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100 > 0:
        stor90[stor85[stor83]].field_2560 = stor90[stor85[stor83]].field_2560 + (block.timestamp * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100) - (stor90[stor85[stor83]].field_2816 * (100 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (stor90[stor85[stor83]].field_3072 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) / 100)
    require stor83 < 5
    stor85[stor83] = msg.sender
    stor83++
}



}
