contract main {




// =====================  Runtime code  =====================


const auctionDuration = (120 * 24 * 3600)

const sub_0eb51c9c(?) = (12 * 3600)

const sub_1ccff716(?) = 1

const sub_3ebf2508(?) = 10^18

const sub_49087bcc(?) = 5 * 10^16

const sub_51b472b9(?) = 10 * 10^18

const sub_aca21a1e(?) = 0

const sub_c9e87f31(?) = 19

const sub_de8d77e7(?) = 10

const sub_e9360a36(?) = 19

const sub_f06e3190(?) = 10^18


mapping of uint256 payments;
uint256 sub_71566c23;
uint256 auctionStartTime;
uint256 roundNumber;
uint256 sub_8771fc4a;
uint256 stor14; offset 1
uint256 sub_c2539429;
uint256 roundEndTime;
uint256 stor16; offset 1
uint256 jackpot;
uint256 sub_03fca061;
uint256 totalPayments;
uint8 stage; offset 160
address owner;
mapping of address sub_66cd442a;
mapping of uint256 sub_5b98f169;
uint256 sub_20178db3;
address teamAddress1;
address teamAddress2;
address teamAddress3;

function totalPayments() {
    return totalPayments
}

function sub_03fca061(?) {
    return sub_03fca061
}

function sub_20178db3(?) {
    return sub_20178db3
}

function roundNumber() {
    return roundNumber
}

function sub_5b98f169(?) {
    return sub_5b98f169[arg1]
}

function sub_66cd442a(?) {
    return sub_66cd442a[arg1]
}

function jackpot() {
    return jackpot
}

function sub_71566c23(?) {
    return sub_71566c23
}

function teamAddress2() {
    return teamAddress2
}

function sub_8771fc4a(?) {
    return sub_8771fc4a
}

function owner() {
    return owner
}

function sub_925183cd(?) {
    require arg2 < 6
    return sub_925183cd[uint8(arg2)]
}

function teamAddress1() {
    return teamAddress1
}

function stage() {
    require stage <= 1
    return stage
}

function sub_c2539429(?) {
    return sub_c2539429
}

function teamAddress3() {
    return teamAddress3
}

function payments(address arg1) {
    return payments[arg1]
}

function roundEndTime() {
    return roundEndTime
}

function auctionStartTime() {
    return auctionStartTime
}

function _fallback() payable {
    revert
}

function sub_9a233b22(?) {
    return (arg1 / 20)
}

function _nextPotTax(uint256 arg1) {
    return (arg1 / 20)
}

function _teamJackpot(uint256 arg1) {
    return (arg1 / 20)
}

function _winnerJackpot(uint256 arg1) {
    return (arg1 / 2)
}

function _nextPotJackpot(uint256 arg1) {
    return (arg1 / 20)
}

function _referrerTax(uint256 arg1, bool arg2) {
    if not arg2:
        return 0
    return (arg1 / 20)
}

function _jackpotTax(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 2 * arg1 / arg1 == 2
    return (2 * arg1 / 5)
}

function _priceToTax(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 25)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _landholderJackpot(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 7 * arg1 / arg1 == 7
    return (7 * arg1 / 20)
}

function _totalLandholderTax(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 19 * arg1 / arg1 == 19
    return (19 * arg1 / 50)
}

function _teamTax(uint256 arg1, bool arg2) {
    if not arg1:
        return 0
    require arg1
    if not arg2:
        require 17 * arg1 / arg1 == 17
        return (17 * arg1 / 100)
    require 3 * arg1 / arg1 == 3
    return (3 * arg1 / 25)
}

function roundTimeRemaining() {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    if block.timestamp >= roundEndTime:
        return 0
    require block.timestamp <= roundEndTime
    return (roundEndTime - block.timestamp)
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawContractBalance() {
    require msg.sender == owner
    require totalPayments <= eth.balance(this.address)
    require eth.balance(this.address) - totalPayments > 0
    require payments[address(msg.sender)] + eth.balance(this.address) - totalPayments >= payments[address(msg.sender)]
    payments[address(msg.sender)] = payments[address(msg.sender)] + eth.balance(this.address) - totalPayments
    require eth.balance(this.address) >= totalPayments
    totalPayments = eth.balance(this.address)
}

function getTilePriceAuction() {
    require stage <= 1
    if stage:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    if block.timestamp <= auctionStartTime:
        return 10^18
    require auctionStartTime <= block.timestamp
    if block.timestamp - auctionStartTime >= 120 * 24 * 3600:
        return 5 * 10^16
    require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 95 * 10^16 == block.timestamp - auctionStartTime
    require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600 <= 10^18
    return (-((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18)
}

function setTilePrice(uint8 arg1, uint256 arg2, address arg3) payable {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    if block.timestamp >= roundEndTime:
        revert with 0, 'Round can't be over!'
    if sub_66cd442a[arg1 << 248] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't set tile price for a tile you don't own!'
    if arg2 > jackpot:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set tile price greater than the current jackpot.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tiles must have a value greater than zero.'
    if not arg2:
        if msg.value < 0:
            revert with 0, 'Must pay tax on new tile price!'
    else:
        require arg2
        require 4 * arg2 / arg2 == 4
        if msg.value < 4 * arg2 / 25:
            revert with 0, 'Must pay tax on new tile price!'
    if not msg.value:
        require jackpot >= jackpot
    else:
        require msg.value
        require 2 * msg.value / msg.value == 2
        require jackpot + (2 * msg.value / 5) >= jackpot
        jackpot += 2 * msg.value / 5
    if not msg.value:
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_66cd442a[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 5
            if not sub_5b98f169[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            require sub_20178db3 > 0
            require sub_20178db3
            require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
            mem[0] = sub_66cd442a[idx << 248]
            mem[32] = 1
            payments[stor4[idx << 248]] += 0 / sub_20178db3
            require totalPayments + (0 / sub_20178db3) >= totalPayments
            totalPayments += 0 / sub_20178db3
            s = 0 / sub_20178db3
            t = sub_5b98f169[idx << 248]
            idx = idx + 1
            continue 
    else:
        require msg.value
        require 19 * msg.value / msg.value == 19
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_66cd442a[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 5
            if not sub_5b98f169[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            if not 19 * msg.value / 50:
                require sub_20178db3 > 0
                require sub_20178db3
                require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                mem[0] = sub_66cd442a[idx << 248]
                mem[32] = 1
                payments[stor4[idx << 248]] += 0 / sub_20178db3
                require totalPayments + (0 / sub_20178db3) >= totalPayments
                totalPayments += 0 / sub_20178db3
                s = 0 / sub_20178db3
                t = sub_5b98f169[idx << 248]
                idx = idx + 1
                continue 
            require 19 * msg.value / 50
            require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
            require sub_20178db3 > 0
            require sub_20178db3
            require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
            mem[0] = sub_66cd442a[idx << 248]
            mem[32] = 1
            payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
            require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
            totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
            s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
            t = sub_5b98f169[idx << 248]
            idx = idx + 1
            continue 
    require sub_03fca061 + (msg.value / 20) >= sub_03fca061
    sub_03fca061 += msg.value / 20
    if not arg3:
        if not msg.value:
            require payments[stor7] >= payments[stor7]
            require totalPayments >= totalPayments
            require payments[stor8] >= payments[stor8]
            require totalPayments >= totalPayments
            require payments[stor9] >= payments[stor9]
            require totalPayments >= totalPayments
        else:
            require msg.value
            require 17 * msg.value / msg.value == 17
            require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
            payments[stor7] += 17 * msg.value / 100 / 3
            require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
            totalPayments += 17 * msg.value / 100 / 3
            require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
            payments[stor8] += 17 * msg.value / 100 / 3
            require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
            totalPayments += 17 * msg.value / 100 / 3
            require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
            payments[stor9] += 17 * msg.value / 100 / 3
            require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
            totalPayments += 17 * msg.value / 100 / 3
    else:
        if not msg.value:
            require payments[stor7] >= payments[stor7]
            require totalPayments >= totalPayments
            require payments[stor8] >= payments[stor8]
            require totalPayments >= totalPayments
            require payments[stor9] >= payments[stor9]
            require totalPayments >= totalPayments
        else:
            require msg.value
            require 3 * msg.value / msg.value == 3
            require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
            payments[stor7] += 3 * msg.value / 25 / 3
            require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
            totalPayments += 3 * msg.value / 25 / 3
            require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
            payments[stor8] += 3 * msg.value / 25 / 3
            require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
            totalPayments += 3 * msg.value / 25 / 3
            require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
            payments[stor9] += 3 * msg.value / 25 / 3
            require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
            totalPayments += 3 * msg.value / 25 / 3
    if not arg3:
        require payments[address(arg3)] >= payments[address(arg3)]
        require totalPayments >= totalPayments
    else:
        require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
        payments[address(arg3)] += msg.value / 20
        require totalPayments + (msg.value / 20) >= totalPayments
        totalPayments += msg.value / 20
    sub_5b98f169[arg1 << 248] = arg2
    require sub_5b98f169[arg1 << 248] <= sub_20178db3
    require arg2 >= 0
    sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
    require block.timestamp + sub_c2539429 >= block.timestamp
    if roundEndTime < block.timestamp + sub_c2539429:
        roundEndTime = block.timestamp + sub_c2539429
    emit GameRoundExtended(roundEndTime);
    require jackpot <= jackpot
    require sub_8771fc4a >= sub_8771fc4a
    if sub_8771fc4a >= 10 * 10^18:
        if stor14 >= 10:
            sub_c2539429 = stor14
        else:
            sub_c2539429 = 10
        sub_8771fc4a = 0
    emit TilePriceChanged(sub_5b98f169[arg1 << 248], arg2, arg1, sub_66cd442a[arg1 << 248]);
}

function endGameRound() {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    if block.timestamp < roundEndTime:
        revert with 0, 'Round must be over!'
    if not jackpot:
        mem[128 len 640] = code.data[13178 len 640]
        s = 0
        idx = 1
        s = 0
        t = 0
        u = 0
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 5
            require sub_5b98f169[idx << 248] <= sub_20178db3
            if t:
                if sub_20178db3 - sub_5b98f169[idx << 248] <= t:
                    require uint8(idx) < 20
                    mem[(32 * uint8(idx)) + 128] = sub_20178db3 - sub_5b98f169[idx << 248]
                    require u + sub_20178db3 - sub_5b98f169[idx << 248] >= u
                    s = sub_20178db3 - sub_5b98f169[idx << 248]
                    idx = idx + 1
                    s = s
                    t = t
                    u = u + sub_20178db3 - sub_5b98f169[idx << 248]
                    continue 
            require uint8(idx) < 20
            mem[(32 * uint8(idx)) + 128] = sub_20178db3 - sub_5b98f169[idx << 248]
            require u + sub_20178db3 - sub_5b98f169[idx << 248] >= u
            s = sub_20178db3 - sub_5b98f169[idx << 248]
            idx = idx + 1
            s = idx
            t = sub_20178db3 - sub_5b98f169[idx << 248]
            u = u + sub_20178db3 - sub_5b98f169[idx << 248]
            continue 
        v = 0
        idx = 1
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 5
            require sub_5b98f169[idx << 248] <= sub_20178db3
            if sub_20178db3 - sub_5b98f169[idx << 248] != t:
                v = v
                idx = idx + 1
                continue 
            v = v + 1
            idx = idx + 1
            continue 
        if v != 1:
            idx = 1
            while uint8(idx) <= 19:
                mem[0] = uint8(idx)
                mem[32] = 5
                require sub_5b98f169[idx << 248] <= sub_20178db3
                if sub_20178db3 - sub_5b98f169[idx << 248] == t:
                    require v > 0
                    require v
                    require payments[stor4[idx << 248]] + (stor16 / v) >= payments[stor4[idx << 248]]
                    mem[0] = sub_66cd442a[idx << 248]
                    mem[32] = 1
                    payments[stor4[idx << 248]] += stor16 / v
                    require totalPayments + (stor16 / v) >= totalPayments
                    totalPayments += stor16 / v
                idx = idx + 1
                continue 
        else:
            require payments[stor4[s << 248]] + stor16 >= payments[stor4[s << 248]]
            payments[stor4[s << 248]] += stor16
            require totalPayments + stor16 >= totalPayments
            totalPayments += stor16
        s = 0
        idx = 1
        while uint8(idx) <= 19:
            require uint8(idx) < 20
            if mem[(32 * uint8(idx)) + 128]:
                require mem[(32 * uint8(idx)) + 128]
                require not 0 / mem[(32 * uint8(idx)) + 128]
            require u > 0
            require u
            require payments[stor4[idx << 248]] + (0 / u) >= payments[stor4[idx << 248]]
            mem[0] = sub_66cd442a[idx << 248]
            mem[32] = 1
            payments[stor4[idx << 248]] += 0 / u
            require totalPayments + (0 / u) >= totalPayments
            totalPayments += 0 / u
            s = 0 / u
            idx = idx + 1
            continue 
    else:
        require jackpot
        require 7 * jackpot / jackpot == 7
        mem[128 len 640] = code.data[13178 len 640]
        s = 0
        idx = 1
        s = 0
        t = 0
        u = 0
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 5
            require sub_5b98f169[idx << 248] <= sub_20178db3
            if t:
                if sub_20178db3 - sub_5b98f169[idx << 248] <= t:
                    require uint8(idx) < 20
                    mem[(32 * uint8(idx)) + 128] = sub_20178db3 - sub_5b98f169[idx << 248]
                    require u + sub_20178db3 - sub_5b98f169[idx << 248] >= u
                    s = sub_20178db3 - sub_5b98f169[idx << 248]
                    idx = idx + 1
                    s = s
                    t = t
                    u = u + sub_20178db3 - sub_5b98f169[idx << 248]
                    continue 
            require uint8(idx) < 20
            mem[(32 * uint8(idx)) + 128] = sub_20178db3 - sub_5b98f169[idx << 248]
            require u + sub_20178db3 - sub_5b98f169[idx << 248] >= u
            s = sub_20178db3 - sub_5b98f169[idx << 248]
            idx = idx + 1
            s = idx
            t = sub_20178db3 - sub_5b98f169[idx << 248]
            u = u + sub_20178db3 - sub_5b98f169[idx << 248]
            continue 
        v = 0
        idx = 1
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 5
            require sub_5b98f169[idx << 248] <= sub_20178db3
            if sub_20178db3 - sub_5b98f169[idx << 248] != t:
                v = v
                idx = idx + 1
                continue 
            v = v + 1
            idx = idx + 1
            continue 
        if v != 1:
            idx = 1
            while uint8(idx) <= 19:
                mem[0] = uint8(idx)
                mem[32] = 5
                require sub_5b98f169[idx << 248] <= sub_20178db3
                if sub_20178db3 - sub_5b98f169[idx << 248] == t:
                    require v > 0
                    require v
                    require payments[stor4[idx << 248]] + (stor16 / v) >= payments[stor4[idx << 248]]
                    mem[0] = sub_66cd442a[idx << 248]
                    mem[32] = 1
                    payments[stor4[idx << 248]] += stor16 / v
                    require totalPayments + (stor16 / v) >= totalPayments
                    totalPayments += stor16 / v
                idx = idx + 1
                continue 
        else:
            require payments[stor4[s << 248]] + stor16 >= payments[stor4[s << 248]]
            payments[stor4[s << 248]] += stor16
            require totalPayments + stor16 >= totalPayments
            totalPayments += stor16
        s = 0
        idx = 1
        while uint8(idx) <= 19:
            require uint8(idx) < 20
            if not mem[(32 * uint8(idx)) + 128]:
                require u > 0
                require u
                require payments[stor4[idx << 248]] + (0 / u) >= payments[stor4[idx << 248]]
                mem[0] = sub_66cd442a[idx << 248]
                mem[32] = 1
                payments[stor4[idx << 248]] += 0 / u
                require totalPayments + (0 / u) >= totalPayments
                totalPayments += 0 / u
                s = 0 / u
                idx = idx + 1
                continue 
            require mem[(32 * uint8(idx)) + 128]
            require mem[(32 * uint8(idx)) + 128] * 7 * jackpot / 20 / mem[(32 * uint8(idx)) + 128] == 7 * jackpot / 20
            require u > 0
            require u
            require payments[stor4[idx << 248]] + (mem[(32 * uint8(idx)) + 128] * 7 * jackpot / 20 / u) >= payments[stor4[idx << 248]]
            mem[0] = sub_66cd442a[idx << 248]
            mem[32] = 1
            payments[stor4[idx << 248]] += mem[(32 * uint8(idx)) + 128] * 7 * jackpot / 20 / u
            require totalPayments + (mem[(32 * uint8(idx)) + 128] * 7 * jackpot / 20 / u) >= totalPayments
            totalPayments += mem[(32 * uint8(idx)) + 128] * 7 * jackpot / 20 / u
            s = mem[(32 * uint8(idx)) + 128] * 7 * jackpot / 20 / u
            idx = idx + 1
            continue 
    require payments[address(msg.sender)] + (jackpot / 20) >= payments[address(msg.sender)]
    payments[address(msg.sender)] += jackpot / 20
    require totalPayments + (jackpot / 20) >= totalPayments
    totalPayments += jackpot / 20
    require payments[stor7] + (jackpot / 20 / 3) >= payments[stor7]
    payments[stor7] += jackpot / 20 / 3
    require totalPayments + (jackpot / 20 / 3) >= totalPayments
    totalPayments += jackpot / 20 / 3
    require payments[stor8] + (jackpot / 20 / 3) >= payments[stor8]
    payments[stor8] += jackpot / 20 / 3
    require totalPayments + (jackpot / 20 / 3) >= totalPayments
    totalPayments += jackpot / 20 / 3
    require payments[stor9] + (jackpot / 20 / 3) >= payments[stor9]
    payments[stor9] += jackpot / 20 / 3
    require totalPayments + (jackpot / 20 / 3) >= totalPayments
    totalPayments += jackpot / 20 / 3
    require sub_03fca061 + (jackpot / 20) >= sub_03fca061
    sub_03fca061 += jackpot / 20
    emit GameRoundEnded(jackpot);
    idx = 1
    while uint8(idx) < 19:
        sub_66cd442a[idx << 248] = 0
        mem[0] = uint8(idx)
        mem[32] = 5
        sub_5b98f169[idx << 248] = 10^18
        require sub_5b98f169[idx << 248] <= sub_20178db3
        sub_20178db3 = sub_20178db3 + -sub_5b98f169[idx << 248] + 10^18
        idx = idx + 1
        continue 
    auctionStartTime = block.timestamp
    sub_71566c23 = 0
    stage = 0
    emit AuctionStarted(10^18, 5 * 10^16, 120 * 24 * 3600, auctionStartTime);
}

function buyTile(uint8 arg1, uint256 arg2, address arg3) payable {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    if block.timestamp >= roundEndTime:
        revert with 0, 'Round can't be over!'
    if sub_66cd442a[arg1 << 248] == msg.sender:
        revert with 0, 'Can't buy a tile you already own'
    if arg2 > jackpot:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set tile price greater than the current jackpot.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tiles must have a value greater than zero.'
    if not arg2:
        require sub_5b98f169[arg1 << 248] >= 0
        if msg.value < sub_5b98f169[arg1 << 248]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must pay full price and tax for tile'
    else:
        require arg2
        require 4 * arg2 / arg2 == 4
        require (4 * arg2 / 25) + sub_5b98f169[arg1 << 248] >= 4 * arg2 / 25
        if msg.value < (4 * arg2 / 25) + sub_5b98f169[arg1 << 248]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must pay full price and tax for tile'
    require payments[stor4[arg1 << 248]] + sub_5b98f169[arg1 << 248] >= payments[stor4[arg1 << 248]]
    payments[stor4[arg1 << 248]] += sub_5b98f169[arg1 << 248]
    require totalPayments + sub_5b98f169[arg1 << 248] >= totalPayments
    totalPayments += sub_5b98f169[arg1 << 248]
    sub_66cd442a[arg1 << 248] = msg.sender
    require sub_5b98f169[arg1 << 248] <= msg.value
    if not msg.value - sub_5b98f169[arg1 << 248]:
        require jackpot >= jackpot
    else:
        require msg.value - sub_5b98f169[arg1 << 248]
        require 2 * msg.value - sub_5b98f169[arg1 << 248] / msg.value - sub_5b98f169[arg1 << 248] == 2
        require jackpot + (2 * msg.value - sub_5b98f169[arg1 << 248] / 5) >= jackpot
        jackpot += 2 * msg.value - sub_5b98f169[arg1 << 248] / 5
    if not msg.value - sub_5b98f169[arg1 << 248]:
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_66cd442a[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 5
            if not sub_5b98f169[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            require sub_20178db3 > 0
            require sub_20178db3
            require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
            mem[0] = sub_66cd442a[idx << 248]
            mem[32] = 1
            payments[stor4[idx << 248]] += 0 / sub_20178db3
            require totalPayments + (0 / sub_20178db3) >= totalPayments
            totalPayments += 0 / sub_20178db3
            s = 0 / sub_20178db3
            t = sub_5b98f169[idx << 248]
            idx = idx + 1
            continue 
    else:
        require msg.value - sub_5b98f169[arg1 << 248]
        require (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / msg.value - sub_5b98f169[arg1 << 248] == 19
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 19:
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_66cd442a[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 5
            if not sub_5b98f169[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            if not (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50:
                require sub_20178db3 > 0
                require sub_20178db3
                require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                mem[0] = sub_66cd442a[idx << 248]
                mem[32] = 1
                payments[stor4[idx << 248]] += 0 / sub_20178db3
                require totalPayments + (0 / sub_20178db3) >= totalPayments
                totalPayments += 0 / sub_20178db3
                s = 0 / sub_20178db3
                t = sub_5b98f169[idx << 248]
                idx = idx + 1
                continue 
            require (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50
            require (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 * sub_5b98f169[idx << 248] / (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 == sub_5b98f169[idx << 248]
            require sub_20178db3 > 0
            require sub_20178db3
            require payments[stor4[idx << 248]] + ((19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
            mem[0] = sub_66cd442a[idx << 248]
            mem[32] = 1
            payments[stor4[idx << 248]] += (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 * sub_5b98f169[idx << 248] / sub_20178db3
            require totalPayments + ((19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
            totalPayments += (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 * sub_5b98f169[idx << 248] / sub_20178db3
            s = (19 * msg.value) - (19 * sub_5b98f169[arg1 << 248]) / 50 * sub_5b98f169[idx << 248] / sub_20178db3
            t = sub_5b98f169[idx << 248]
            idx = idx + 1
            continue 
    require sub_03fca061 + (msg.value - sub_5b98f169[arg1 << 248] / 20) >= sub_03fca061
    sub_03fca061 += msg.value - sub_5b98f169[arg1 << 248] / 20
    if not arg3:
        if not msg.value - sub_5b98f169[arg1 << 248]:
            require payments[stor7] >= payments[stor7]
            require totalPayments >= totalPayments
            require payments[stor8] >= payments[stor8]
            require totalPayments >= totalPayments
            require payments[stor9] >= payments[stor9]
            require totalPayments >= totalPayments
        else:
            require msg.value - sub_5b98f169[arg1 << 248]
            require (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / msg.value - sub_5b98f169[arg1 << 248] == 17
            require payments[stor7] + ((17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3) >= payments[stor7]
            payments[stor7] += (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3
            require totalPayments + ((17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3) >= totalPayments
            totalPayments += (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3
            require payments[stor8] + ((17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3) >= payments[stor8]
            payments[stor8] += (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3
            require totalPayments + ((17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3) >= totalPayments
            totalPayments += (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3
            require payments[stor9] + ((17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3) >= payments[stor9]
            payments[stor9] += (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3
            require totalPayments + ((17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3) >= totalPayments
            totalPayments += (17 * msg.value) - (17 * sub_5b98f169[arg1 << 248]) / 100 / 3
    else:
        if not msg.value - sub_5b98f169[arg1 << 248]:
            require payments[stor7] >= payments[stor7]
            require totalPayments >= totalPayments
            require payments[stor8] >= payments[stor8]
            require totalPayments >= totalPayments
            require payments[stor9] >= payments[stor9]
            require totalPayments >= totalPayments
        else:
            require msg.value - sub_5b98f169[arg1 << 248]
            require (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / msg.value - sub_5b98f169[arg1 << 248] == 3
            require payments[stor7] + ((3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3) >= payments[stor7]
            payments[stor7] += (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3
            require totalPayments + ((3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3) >= totalPayments
            totalPayments += (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3
            require payments[stor8] + ((3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3) >= payments[stor8]
            payments[stor8] += (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3
            require totalPayments + ((3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3) >= totalPayments
            totalPayments += (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3
            require payments[stor9] + ((3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3) >= payments[stor9]
            payments[stor9] += (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3
            require totalPayments + ((3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3) >= totalPayments
            totalPayments += (3 * msg.value) - (3 * sub_5b98f169[arg1 << 248]) / 25 / 3
    if not arg3:
        require payments[address(arg3)] >= payments[address(arg3)]
        require totalPayments >= totalPayments
    else:
        require payments[address(arg3)] + (msg.value - sub_5b98f169[arg1 << 248] / 20) >= payments[address(arg3)]
        payments[address(arg3)] += msg.value - sub_5b98f169[arg1 << 248] / 20
        require totalPayments + (msg.value - sub_5b98f169[arg1 << 248] / 20) >= totalPayments
        totalPayments += msg.value - sub_5b98f169[arg1 << 248] / 20
    sub_5b98f169[arg1 << 248] = arg2
    require sub_5b98f169[arg1 << 248] <= sub_20178db3
    require arg2 >= 0
    sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
    require block.timestamp + sub_c2539429 >= block.timestamp
    if roundEndTime < block.timestamp + sub_c2539429:
        roundEndTime = block.timestamp + sub_c2539429
    emit GameRoundExtended(roundEndTime);
    require jackpot <= jackpot
    require sub_8771fc4a >= sub_8771fc4a
    if sub_8771fc4a >= 10 * 10^18:
        if stor14 >= 10:
            sub_c2539429 = stor14
        else:
            sub_c2539429 = 10
        sub_8771fc4a = 0
    emit TileOwnerChanged(sub_5b98f169[arg1 << 248], arg2, arg1, sub_66cd442a[arg1 << 248], msg.sender);
}

function buyTileAuction(uint8 arg1, uint256 arg2, address arg3) payable {
    require stage <= 1
    if stage:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    if sub_66cd442a[arg1 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't buy a tile that's already been auctioned off'
    if sub_5b98f169[arg1 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't buy a tile that's already been auctioned off'
    if arg2 > 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum tile price during auction is 1 ether.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tile price must be greater than zero.'
    if not arg2:
        require stage <= 1
        if stage:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
        if block.timestamp <= auctionStartTime:
            if msg.value < 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Must pay the full price and tax for a tile on auction'
            if not msg.value:
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 19:
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_66cd442a[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 5
                    if not sub_5b98f169[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    require sub_20178db3 > 0
                    require sub_20178db3
                    require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                    mem[0] = sub_66cd442a[idx << 248]
                    mem[32] = 1
                    payments[stor4[idx << 248]] += 0 / sub_20178db3
                    require totalPayments + (0 / sub_20178db3) >= totalPayments
                    totalPayments += 0 / sub_20178db3
                    s = 0 / sub_20178db3
                    t = sub_5b98f169[idx << 248]
                    idx = idx + 1
                    continue 
            else:
                require msg.value
                require 19 * msg.value / msg.value == 19
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 19:
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_66cd442a[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 5
                    if not sub_5b98f169[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    if not 19 * msg.value / 50:
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 0 / sub_20178db3
                        require totalPayments + (0 / sub_20178db3) >= totalPayments
                        totalPayments += 0 / sub_20178db3
                        s = 0 / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                    require 19 * msg.value / 50
                    require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
                    require sub_20178db3 > 0
                    require sub_20178db3
                    require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
                    mem[0] = sub_66cd442a[idx << 248]
                    mem[32] = 1
                    payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                    require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
                    totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                    s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                    t = sub_5b98f169[idx << 248]
                    idx = idx + 1
                    continue 
            if not msg.value:
                require msg.value / 20 >= 0
                require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                sub_03fca061 += msg.value / 20
            else:
                require msg.value
                require 2 * msg.value / msg.value == 2
                require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
            if not arg3:
                if not msg.value:
                    require payments[stor7] >= payments[stor7]
                    require totalPayments >= totalPayments
                    require payments[stor8] >= payments[stor8]
                    require totalPayments >= totalPayments
                    require payments[stor9] >= payments[stor9]
                    require totalPayments >= totalPayments
                else:
                    require msg.value
                    require 17 * msg.value / msg.value == 17
                    require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
                    payments[stor7] += 17 * msg.value / 100 / 3
                    require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                    totalPayments += 17 * msg.value / 100 / 3
                    require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
                    payments[stor8] += 17 * msg.value / 100 / 3
                    require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                    totalPayments += 17 * msg.value / 100 / 3
                    require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
                    payments[stor9] += 17 * msg.value / 100 / 3
                    require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                    totalPayments += 17 * msg.value / 100 / 3
            else:
                if not msg.value:
                    require payments[stor7] >= payments[stor7]
                    require totalPayments >= totalPayments
                    require payments[stor8] >= payments[stor8]
                    require totalPayments >= totalPayments
                    require payments[stor9] >= payments[stor9]
                    require totalPayments >= totalPayments
                else:
                    require msg.value
                    require 3 * msg.value / msg.value == 3
                    require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
                    payments[stor7] += 3 * msg.value / 25 / 3
                    require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                    totalPayments += 3 * msg.value / 25 / 3
                    require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
                    payments[stor8] += 3 * msg.value / 25 / 3
                    require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                    totalPayments += 3 * msg.value / 25 / 3
                    require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
                    payments[stor9] += 3 * msg.value / 25 / 3
                    require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                    totalPayments += 3 * msg.value / 25 / 3
            if not arg3:
                require payments[address(arg3)] >= payments[address(arg3)]
                require totalPayments >= totalPayments
            else:
                require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                payments[address(arg3)] += msg.value / 20
                require totalPayments + (msg.value / 20) >= totalPayments
                totalPayments += msg.value / 20
            sub_66cd442a[arg1 << 248] = msg.sender
            sub_5b98f169[arg1 << 248] = arg2
            require sub_5b98f169[arg1 << 248] <= sub_20178db3
            require arg2 >= 0
            sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
            require sub_71566c23 + 1 >= sub_71566c23
            sub_71566c23++
            emit TileOwnerChanged(10^18, arg2, arg1, 0, msg.sender);
        else:
            require auctionStartTime <= block.timestamp
            if block.timestamp - auctionStartTime >= 120 * 24 * 3600:
                if msg.value < 5 * 10^16:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must pay the full price and tax for a tile on auction'
                if not msg.value:
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 0 / sub_20178db3
                        require totalPayments + (0 / sub_20178db3) >= totalPayments
                        totalPayments += 0 / sub_20178db3
                        s = 0 / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                else:
                    require msg.value
                    require 19 * msg.value / msg.value == 19
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        if not 19 * msg.value / 50:
                            require sub_20178db3 > 0
                            require sub_20178db3
                            require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                            mem[0] = sub_66cd442a[idx << 248]
                            mem[32] = 1
                            payments[stor4[idx << 248]] += 0 / sub_20178db3
                            require totalPayments + (0 / sub_20178db3) >= totalPayments
                            totalPayments += 0 / sub_20178db3
                            s = 0 / sub_20178db3
                            t = sub_5b98f169[idx << 248]
                            idx = idx + 1
                            continue 
                        require 19 * msg.value / 50
                        require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
                        totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                if not msg.value:
                    require msg.value / 20 >= 0
                    require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 += msg.value / 20
                else:
                    require msg.value
                    require 2 * msg.value / msg.value == 2
                    require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                    require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
                if not arg3:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 17 * msg.value / msg.value == 17
                        require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
                        payments[stor7] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
                        payments[stor8] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
                        payments[stor9] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                else:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
                        payments[stor7] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
                        payments[stor8] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
                        payments[stor9] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                if not arg3:
                    require payments[address(arg3)] >= payments[address(arg3)]
                    require totalPayments >= totalPayments
                else:
                    require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                    payments[address(arg3)] += msg.value / 20
                    require totalPayments + (msg.value / 20) >= totalPayments
                    totalPayments += msg.value / 20
                sub_66cd442a[arg1 << 248] = msg.sender
                sub_5b98f169[arg1 << 248] = arg2
                require sub_5b98f169[arg1 << 248] <= sub_20178db3
                require arg2 >= 0
                sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
                require sub_71566c23 + 1 >= sub_71566c23
                sub_71566c23++
                emit TileOwnerChanged(5 * 10^16, arg2, arg1, 0, msg.sender);
            else:
                require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 95 * 10^16 == block.timestamp - auctionStartTime
                require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600 <= 10^18
                require -((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18 >= 0
                if msg.value < -((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must pay the full price and tax for a tile on auction'
                if not msg.value:
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 0 / sub_20178db3
                        require totalPayments + (0 / sub_20178db3) >= totalPayments
                        totalPayments += 0 / sub_20178db3
                        s = 0 / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                else:
                    require msg.value
                    require 19 * msg.value / msg.value == 19
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        if not 19 * msg.value / 50:
                            require sub_20178db3 > 0
                            require sub_20178db3
                            require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                            mem[0] = sub_66cd442a[idx << 248]
                            mem[32] = 1
                            payments[stor4[idx << 248]] += 0 / sub_20178db3
                            require totalPayments + (0 / sub_20178db3) >= totalPayments
                            totalPayments += 0 / sub_20178db3
                            s = 0 / sub_20178db3
                            t = sub_5b98f169[idx << 248]
                            idx = idx + 1
                            continue 
                        require 19 * msg.value / 50
                        require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
                        totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                if not msg.value:
                    require msg.value / 20 >= 0
                    require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 += msg.value / 20
                else:
                    require msg.value
                    require 2 * msg.value / msg.value == 2
                    require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                    require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
                if not arg3:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 17 * msg.value / msg.value == 17
                        require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
                        payments[stor7] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
                        payments[stor8] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
                        payments[stor9] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                else:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
                        payments[stor7] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
                        payments[stor8] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
                        payments[stor9] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                if not arg3:
                    require payments[address(arg3)] >= payments[address(arg3)]
                    require totalPayments >= totalPayments
                else:
                    require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                    payments[address(arg3)] += msg.value / 20
                    require totalPayments + (msg.value / 20) >= totalPayments
                    totalPayments += msg.value / 20
                sub_66cd442a[arg1 << 248] = msg.sender
                sub_5b98f169[arg1 << 248] = arg2
                require sub_5b98f169[arg1 << 248] <= sub_20178db3
                require arg2 >= 0
                sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
                require sub_71566c23 + 1 >= sub_71566c23
                sub_71566c23++
                emit TileOwnerChanged(-((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18, arg2, arg1, 0, msg.sender);
    else:
        require arg2
        require 4 * arg2 / arg2 == 4
        require stage <= 1
        if stage:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
        if block.timestamp <= auctionStartTime:
            require (4 * arg2 / 25) + 10^18 >= 4 * arg2 / 25
            if msg.value < (4 * arg2 / 25) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Must pay the full price and tax for a tile on auction'
            if not msg.value:
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 19:
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_66cd442a[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 5
                    if not sub_5b98f169[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    require sub_20178db3 > 0
                    require sub_20178db3
                    require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                    mem[0] = sub_66cd442a[idx << 248]
                    mem[32] = 1
                    payments[stor4[idx << 248]] += 0 / sub_20178db3
                    require totalPayments + (0 / sub_20178db3) >= totalPayments
                    totalPayments += 0 / sub_20178db3
                    s = 0 / sub_20178db3
                    t = sub_5b98f169[idx << 248]
                    idx = idx + 1
                    continue 
            else:
                require msg.value
                require 19 * msg.value / msg.value == 19
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 19:
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_66cd442a[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 5
                    if not sub_5b98f169[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    if not 19 * msg.value / 50:
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 0 / sub_20178db3
                        require totalPayments + (0 / sub_20178db3) >= totalPayments
                        totalPayments += 0 / sub_20178db3
                        s = 0 / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                    require 19 * msg.value / 50
                    require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
                    require sub_20178db3 > 0
                    require sub_20178db3
                    require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
                    mem[0] = sub_66cd442a[idx << 248]
                    mem[32] = 1
                    payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                    require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
                    totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                    s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                    t = sub_5b98f169[idx << 248]
                    idx = idx + 1
                    continue 
            if not msg.value:
                require msg.value / 20 >= 0
                require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                sub_03fca061 += msg.value / 20
            else:
                require msg.value
                require 2 * msg.value / msg.value == 2
                require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
            if not arg3:
                if not msg.value:
                    require payments[stor7] >= payments[stor7]
                    require totalPayments >= totalPayments
                    require payments[stor8] >= payments[stor8]
                    require totalPayments >= totalPayments
                    require payments[stor9] >= payments[stor9]
                    require totalPayments >= totalPayments
                else:
                    require msg.value
                    require 17 * msg.value / msg.value == 17
                    require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
                    payments[stor7] += 17 * msg.value / 100 / 3
                    require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                    totalPayments += 17 * msg.value / 100 / 3
                    require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
                    payments[stor8] += 17 * msg.value / 100 / 3
                    require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                    totalPayments += 17 * msg.value / 100 / 3
                    require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
                    payments[stor9] += 17 * msg.value / 100 / 3
                    require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                    totalPayments += 17 * msg.value / 100 / 3
            else:
                if not msg.value:
                    require payments[stor7] >= payments[stor7]
                    require totalPayments >= totalPayments
                    require payments[stor8] >= payments[stor8]
                    require totalPayments >= totalPayments
                    require payments[stor9] >= payments[stor9]
                    require totalPayments >= totalPayments
                else:
                    require msg.value
                    require 3 * msg.value / msg.value == 3
                    require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
                    payments[stor7] += 3 * msg.value / 25 / 3
                    require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                    totalPayments += 3 * msg.value / 25 / 3
                    require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
                    payments[stor8] += 3 * msg.value / 25 / 3
                    require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                    totalPayments += 3 * msg.value / 25 / 3
                    require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
                    payments[stor9] += 3 * msg.value / 25 / 3
                    require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                    totalPayments += 3 * msg.value / 25 / 3
            if not arg3:
                require payments[address(arg3)] >= payments[address(arg3)]
                require totalPayments >= totalPayments
            else:
                require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                payments[address(arg3)] += msg.value / 20
                require totalPayments + (msg.value / 20) >= totalPayments
                totalPayments += msg.value / 20
            sub_66cd442a[arg1 << 248] = msg.sender
            sub_5b98f169[arg1 << 248] = arg2
            require sub_5b98f169[arg1 << 248] <= sub_20178db3
            require arg2 >= 0
            sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
            require sub_71566c23 + 1 >= sub_71566c23
            sub_71566c23++
            emit TileOwnerChanged(10^18, arg2, arg1, 0, msg.sender);
        else:
            require auctionStartTime <= block.timestamp
            if block.timestamp - auctionStartTime >= 120 * 24 * 3600:
                require (4 * arg2 / 25) + 5 * 10^16 >= 4 * arg2 / 25
                if msg.value < (4 * arg2 / 25) + 5 * 10^16:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must pay the full price and tax for a tile on auction'
                if not msg.value:
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 0 / sub_20178db3
                        require totalPayments + (0 / sub_20178db3) >= totalPayments
                        totalPayments += 0 / sub_20178db3
                        s = 0 / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                else:
                    require msg.value
                    require 19 * msg.value / msg.value == 19
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        if not 19 * msg.value / 50:
                            require sub_20178db3 > 0
                            require sub_20178db3
                            require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                            mem[0] = sub_66cd442a[idx << 248]
                            mem[32] = 1
                            payments[stor4[idx << 248]] += 0 / sub_20178db3
                            require totalPayments + (0 / sub_20178db3) >= totalPayments
                            totalPayments += 0 / sub_20178db3
                            s = 0 / sub_20178db3
                            t = sub_5b98f169[idx << 248]
                            idx = idx + 1
                            continue 
                        require 19 * msg.value / 50
                        require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
                        totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                if not msg.value:
                    require msg.value / 20 >= 0
                    require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 += msg.value / 20
                else:
                    require msg.value
                    require 2 * msg.value / msg.value == 2
                    require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                    require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
                if not arg3:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 17 * msg.value / msg.value == 17
                        require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
                        payments[stor7] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
                        payments[stor8] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
                        payments[stor9] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                else:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
                        payments[stor7] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
                        payments[stor8] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
                        payments[stor9] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                if not arg3:
                    require payments[address(arg3)] >= payments[address(arg3)]
                    require totalPayments >= totalPayments
                else:
                    require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                    payments[address(arg3)] += msg.value / 20
                    require totalPayments + (msg.value / 20) >= totalPayments
                    totalPayments += msg.value / 20
                sub_66cd442a[arg1 << 248] = msg.sender
                sub_5b98f169[arg1 << 248] = arg2
                require sub_5b98f169[arg1 << 248] <= sub_20178db3
                require arg2 >= 0
                sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
                require sub_71566c23 + 1 >= sub_71566c23
                sub_71566c23++
                emit TileOwnerChanged(5 * 10^16, arg2, arg1, 0, msg.sender);
            else:
                require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 95 * 10^16 == block.timestamp - auctionStartTime
                require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600 <= 10^18
                require (4 * arg2 / 25) + -((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18 >= 4 * arg2 / 25
                if msg.value < (4 * arg2 / 25) + -((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Must pay the full price and tax for a tile on auction'
                if not msg.value:
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 0 / sub_20178db3
                        require totalPayments + (0 / sub_20178db3) >= totalPayments
                        totalPayments += 0 / sub_20178db3
                        s = 0 / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                else:
                    require msg.value
                    require 19 * msg.value / msg.value == 19
                    s = 0
                    t = 0
                    idx = 1
                    while uint8(idx) <= 19:
                        mem[0] = uint8(idx)
                        mem[32] = 4
                        if not sub_66cd442a[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = 5
                        if not sub_5b98f169[idx << 248]:
                            s = s
                            t = t
                            idx = idx + 1
                            continue 
                        if not 19 * msg.value / 50:
                            require sub_20178db3 > 0
                            require sub_20178db3
                            require payments[stor4[idx << 248]] + (0 / sub_20178db3) >= payments[stor4[idx << 248]]
                            mem[0] = sub_66cd442a[idx << 248]
                            mem[32] = 1
                            payments[stor4[idx << 248]] += 0 / sub_20178db3
                            require totalPayments + (0 / sub_20178db3) >= totalPayments
                            totalPayments += 0 / sub_20178db3
                            s = 0 / sub_20178db3
                            t = sub_5b98f169[idx << 248]
                            idx = idx + 1
                            continue 
                        require 19 * msg.value / 50
                        require 19 * msg.value / 50 * sub_5b98f169[idx << 248] / 19 * msg.value / 50 == sub_5b98f169[idx << 248]
                        require sub_20178db3 > 0
                        require sub_20178db3
                        require payments[stor4[idx << 248]] + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= payments[stor4[idx << 248]]
                        mem[0] = sub_66cd442a[idx << 248]
                        mem[32] = 1
                        payments[stor4[idx << 248]] += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        require totalPayments + (19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3) >= totalPayments
                        totalPayments += 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        s = 19 * msg.value / 50 * sub_5b98f169[idx << 248] / sub_20178db3
                        t = sub_5b98f169[idx << 248]
                        idx = idx + 1
                        continue 
                if not msg.value:
                    require msg.value / 20 >= 0
                    require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 += msg.value / 20
                else:
                    require msg.value
                    require 2 * msg.value / msg.value == 2
                    require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                    require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                    sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
                if not arg3:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 17 * msg.value / msg.value == 17
                        require payments[stor7] + (17 * msg.value / 100 / 3) >= payments[stor7]
                        payments[stor7] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor8] + (17 * msg.value / 100 / 3) >= payments[stor8]
                        payments[stor8] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                        require payments[stor9] + (17 * msg.value / 100 / 3) >= payments[stor9]
                        payments[stor9] += 17 * msg.value / 100 / 3
                        require totalPayments + (17 * msg.value / 100 / 3) >= totalPayments
                        totalPayments += 17 * msg.value / 100 / 3
                else:
                    if not msg.value:
                        require payments[stor7] >= payments[stor7]
                        require totalPayments >= totalPayments
                        require payments[stor8] >= payments[stor8]
                        require totalPayments >= totalPayments
                        require payments[stor9] >= payments[stor9]
                        require totalPayments >= totalPayments
                    else:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        require payments[stor7] + (3 * msg.value / 25 / 3) >= payments[stor7]
                        payments[stor7] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor8] + (3 * msg.value / 25 / 3) >= payments[stor8]
                        payments[stor8] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                        require payments[stor9] + (3 * msg.value / 25 / 3) >= payments[stor9]
                        payments[stor9] += 3 * msg.value / 25 / 3
                        require totalPayments + (3 * msg.value / 25 / 3) >= totalPayments
                        totalPayments += 3 * msg.value / 25 / 3
                if not arg3:
                    require payments[address(arg3)] >= payments[address(arg3)]
                    require totalPayments >= totalPayments
                else:
                    require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                    payments[address(arg3)] += msg.value / 20
                    require totalPayments + (msg.value / 20) >= totalPayments
                    totalPayments += msg.value / 20
                sub_66cd442a[arg1 << 248] = msg.sender
                sub_5b98f169[arg1 << 248] = arg2
                require sub_5b98f169[arg1 << 248] <= sub_20178db3
                require arg2 >= 0
                sub_20178db3 = sub_20178db3 - sub_5b98f169[arg1 << 248] + arg2
                require sub_71566c23 + 1 >= sub_71566c23
                sub_71566c23++
                emit TileOwnerChanged(-((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18, arg2, arg1, 0, msg.sender);
    if sub_71566c23 >= 19:
        stage = 1
        sub_8771fc4a = 0
        sub_c2539429 = 12 * 3600
        jackpot = sub_03fca061
        sub_03fca061 = 0
        require roundNumber + 1 >= roundNumber
        roundNumber++
        require block.timestamp + sub_c2539429 >= block.timestamp
        if roundEndTime < block.timestamp + sub_c2539429:
            roundEndTime = block.timestamp + sub_c2539429
        emit GameRoundExtended(roundEndTime);
        emit GameRoundStarted(jackpot, roundEndTime, roundNumber);
        emit AuctionEnded(block.timestamp);
}



}
