contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = 5 * 10^16
    stor1 = 5 * 10^18
    stor2 = 21
    require not msg.value
    return code.data[81 len 10316]
}



// =====================  Runtime code  =====================


#
#  - deal()
#  - stand()
#
uint256 minBet;
uint256 maxBet;
uint8 stor2;
mapping of struct games;

function maxBet() {
    return maxBet
}

function games(address arg1) {
    require games[arg1].field_1024 <= 3
    return games[arg1].field_0, games[arg1].field_256, games[arg1].field_1024, games[arg1].field_1032
}

function getHouseCard(uint8 arg1) {
    require games[address(msg.sender)].field_0
    require games[address(msg.sender)].field_1024 <= 3
    require not games[address(msg.sender)].field_1024
    require arg1 >= 0
    require arg1 <= games[address(msg.sender)].field_512
    require arg1 < games[address(msg.sender)].field_512
    return houseCard[uint8(arg1)]
}

function getHouseCardsNumber() {
    require games[address(msg.sender)].field_0
    require games[address(msg.sender)].field_1024 <= 3
    require not games[address(msg.sender)].field_1024
    return games[address(msg.sender)].field_512
}

function minBet() {
    return minBet
}

function getPlayerCard(uint8 arg1) {
    require games[address(msg.sender)].field_0
    require games[address(msg.sender)].field_1024 <= 3
    require not games[address(msg.sender)].field_1024
    require arg1 >= 0
    require arg1 <= games[address(msg.sender)].field_768
    require arg1 < games[address(msg.sender)].field_768
    return playerCard[uint8(arg1)]
}

function getPlayerCardsNumber() {
    require games[address(msg.sender)].field_0
    require games[address(msg.sender)].field_1024 <= 3
    require not games[address(msg.sender)].field_1024
    return games[address(msg.sender)].field_768
}

function _fallback() payable {
  stop
}

function getGameState() {
    require games[address(msg.sender)].field_0
    require games[address(msg.sender)].field_1024 <= 3
    if games[address(msg.sender)].field_1024 == 1:
        return 1
    require games[address(msg.sender)].field_1024 <= 3
    if games[address(msg.sender)].field_1024 == 3:
        return 2
    require games[address(msg.sender)].field_1024 <= 3
    if games[address(msg.sender)].field_1024 != 2:
        return 0
    return 3
}

function hit() {
    require games[address(msg.sender)].field_0
    require games[address(msg.sender)].field_1024 <= 3
    require not games[address(msg.sender)].field_1024
    games[address(msg.sender)].field_768++
    if not games[address(msg.sender)].field_768 <= games[address(msg.sender)].field_768 + 1:
        idx = games[address(msg.sender)].field_768 + 32 / 32
        while games[address(msg.sender)].field_768 + 31 / 32 > idx:
            games[address(msg.sender)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor[games[address(msg.sender)].field_773 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'games', 3)))].field_0 = uint8(sha3(block.hash(block.number), msg.sender, games[address(msg.sender)].field_1032, block.timestamp) % 52) * 256^games[address(msg.sender)].field_768 or !(255 * 256^games[address(msg.sender)].field_768) and stor[games[address(msg.sender)].field_773 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'games', 3)))].field_0
    games[address(msg.sender)].field_1032 = uint8(games[address(msg.sender)].field_1032 + 1)
    require games[address(msg.sender)].field_768 - 1 < games[address(msg.sender)].field_768
    emit Deal(1, stor((0.03125 / Mask(256, 768, stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor3', 3))]) - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor3', 3))))[uint8(stor3[address(msg.sender)].field_768 - 1)]);
    if games[address(msg.sender)].field_512:
        mem[320] = games[address(msg.sender)][2].field_0
        idx = 320
        s = 0
        while (32 * games[address(msg.sender)].field_512) + 288 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor3', 3)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    mem[(32 * games[address(msg.sender)].field_512) + 320] = games[address(msg.sender)].field_768
    if games[address(msg.sender)].field_768:
        mem[(32 * games[address(msg.sender)].field_512) + 352] = games[address(msg.sender)][3].field_0
        idx = (32 * games[address(msg.sender)].field_512) + 352
        s = 0
        while (32 * games[address(msg.sender)].field_512) + (32 * games[address(msg.sender)].field_768) + 320 > idx:
            mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor3', 3)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    require games[address(msg.sender)].field_1024 <= 3
    s = 0
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < games[address(msg.sender)].field_512:
        require idx < games[address(msg.sender)].field_512
        if uint8(mem[(32 * idx) + 320]) / 4 != 1:
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                if not Mask(6, 2, mem[(32 * idx) + 320]):
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + 10
                u = u + (uint8(mem[(32 * idx) + 320]) / 4)
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                if not Mask(6, 2, mem[(32 * idx) + 320]):
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + 10
                u = u + (uint8(mem[(32 * idx) + 320]) / 4)
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                if not Mask(6, 2, mem[(32 * idx) + 320]):
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + 10
                u = u + (uint8(mem[(32 * idx) + 320]) / 4)
                continue 
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = s
            t = t + (uint8(mem[(32 * idx) + 320]) / 4)
            u = u + (uint8(mem[(32 * idx) + 320]) / 4)
            continue 
        if s:
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                if not Mask(6, 2, mem[(32 * idx) + 320]):
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + 10
                u = u + (uint8(mem[(32 * idx) + 320]) / 4)
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                if not Mask(6, 2, mem[(32 * idx) + 320]):
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + 10
                u = u + (uint8(mem[(32 * idx) + 320]) / 4)
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                if not Mask(6, 2, mem[(32 * idx) + 320]):
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                    s = mem[(32 * idx) + 320]
                    idx = idx + 1
                    s = s
                    t = t + 10
                    u = u + 10
                    continue 
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + 10
                u = u + (uint8(mem[(32 * idx) + 320]) / 4)
                continue 
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = s
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = s
            t = t + (uint8(mem[(32 * idx) + 320]) / 4)
            u = u + (uint8(mem[(32 * idx) + 320]) / 4)
            continue 
        if not Mask(6, 2, mem[(32 * idx) + 320]):
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + 10
            u = u + (uint8(mem[(32 * idx) + 320]) / 4)
            continue 
        if uint8(mem[(32 * idx) + 320]) / 4 == 11:
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + 10
            u = u + (uint8(mem[(32 * idx) + 320]) / 4)
            continue 
        if uint8(mem[(32 * idx) + 320]) / 4 == 12:
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + 10
                u = u + 10
                continue 
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + 10
            u = u + (uint8(mem[(32 * idx) + 320]) / 4)
            continue 
        if uint8(mem[(32 * idx) + 320]) / 4 != 1:
            if not Mask(6, 2, mem[(32 * idx) + 320]):
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 11:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            if uint8(mem[(32 * idx) + 320]) / 4 == 12:
                s = mem[(32 * idx) + 320]
                idx = idx + 1
                s = 1
                t = t + (uint8(mem[(32 * idx) + 320]) / 4)
                u = u + 10
                continue 
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + (uint8(mem[(32 * idx) + 320]) / 4)
            u = u + (uint8(mem[(32 * idx) + 320]) / 4)
            continue 
        if not Mask(6, 2, mem[(32 * idx) + 320]):
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + 11
            u = u + 10
            continue 
        if uint8(mem[(32 * idx) + 320]) / 4 == 11:
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + 11
            u = u + 10
            continue 
        if uint8(mem[(32 * idx) + 320]) / 4 == 12:
            s = mem[(32 * idx) + 320]
            idx = idx + 1
            s = 1
            t = t + 11
            u = u + 10
            continue 
        s = mem[(32 * idx) + 320]
        idx = idx + 1
        s = 1
        t = t + 11
        u = u + (uint8(mem[(32 * idx) + 320]) / 4)
        continue 
    s = 0
    idx = 0
    s = 0
    v = 0
    w = 0
    while idx < games[address(msg.sender)].field_768:
        require idx < games[address(msg.sender)].field_768
        if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 != 1:
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + 10
                w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + 10
                w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + 10
                w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                continue 
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = s
            v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            continue 
        if s:
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + 10
                w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + 10
                w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                    s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                    idx = idx + 1
                    s = s
                    v = v + 10
                    w = w + 10
                    continue 
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + 10
                w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                continue 
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = s
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = s
            v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            continue 
        if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + 10
            w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            continue 
        if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + 10
            w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            continue 
        if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + 10
                w = w + 10
                continue 
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + 10
            w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            continue 
        if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 != 1:
            if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
                s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
                idx = idx + 1
                s = 1
                v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
                w = w + 10
                continue 
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
            continue 
        if not Mask(6, 2, mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]):
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + 11
            w = w + 10
            continue 
        if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 11:
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + 11
            w = w + 10
            continue 
        if uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4 == 12:
            s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
            idx = idx + 1
            s = 1
            v = v + 11
            w = w + 10
            continue 
        s = mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]
        idx = idx + 1
        s = 1
        v = v + 11
        w = w + (uint8(mem[(32 * idx) + (32 * games[address(msg.sender)].field_512) + 352]) / 4)
        continue 
    mem[(32 * games[address(msg.sender)].field_512) + (32 * games[address(msg.sender)].field_768) + 352] = uint8(u)
    mem[(32 * games[address(msg.sender)].field_512) + (32 * games[address(msg.sender)].field_768) + 384] = uint8(t)
    emit GameStatus(u << 248, t << 248, w << 248, uint8(v));
    if uint8(t) == stor2:
        if uint8(w) == stor2:
            call msg.sender with:
               value games[address(msg.sender)].field_256 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            games[address(msg.sender)].field_1024 = 2
        else:
            if uint8(v) != stor2:
                games[address(msg.sender)].field_1024 = 3
            else:
                call msg.sender with:
                   value games[address(msg.sender)].field_256 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                games[address(msg.sender)].field_1024 = 2
    else:
        if uint8(u) == stor2:
            if uint8(w) == stor2:
                call msg.sender with:
                   value games[address(msg.sender)].field_256 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                games[address(msg.sender)].field_1024 = 2
            else:
                if uint8(v) != stor2:
                    games[address(msg.sender)].field_1024 = 3
                else:
                    call msg.sender with:
                       value games[address(msg.sender)].field_256 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    games[address(msg.sender)].field_1024 = 2
        else:
            if uint8(w) == stor2:
                if games[address(msg.sender)].field_768 != 2:
                    call msg.sender with:
                       value 2 * games[address(msg.sender)].field_256 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 0 < games[address(msg.sender)].field_768
                    if uint8(mem[(32 * games[address(msg.sender)].field_512) + 352]) / 4 == 10:
                        call msg.sender with:
                           value 5 * games[address(msg.sender)].field_256 / 2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 1 < games[address(msg.sender)].field_768
                        if uint8(mem[(32 * games[address(msg.sender)].field_512) + 384]) / 4 != 10:
                            call msg.sender with:
                               value 2 * games[address(msg.sender)].field_256 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call msg.sender with:
                               value 5 * games[address(msg.sender)].field_256 / 2 wei
                                 gas 2300 * is_zero(value) wei
                require ext_call.success
                games[address(msg.sender)].field_1024 = 1
            else:
                if uint8(v) != stor2:
                    if uint8(w) > stor2:
                        emit Log(1);
                        games[address(msg.sender)].field_1024 = 3
                else:
                    if games[address(msg.sender)].field_768 != 2:
                        call msg.sender with:
                           value 2 * games[address(msg.sender)].field_256 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 < games[address(msg.sender)].field_768
                        if uint8(mem[(32 * games[address(msg.sender)].field_512) + 352]) / 4 == 10:
                            call msg.sender with:
                               value 5 * games[address(msg.sender)].field_256 / 2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 1 < games[address(msg.sender)].field_768
                            if uint8(mem[(32 * games[address(msg.sender)].field_512) + 384]) / 4 != 10:
                                call msg.sender with:
                                   value 2 * games[address(msg.sender)].field_256 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call msg.sender with:
                                   value 5 * games[address(msg.sender)].field_256 / 2 wei
                                     gas 2300 * is_zero(value) wei
                    require ext_call.success
                    games[address(msg.sender)].field_1024 = 1
}



}
