contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#
array of uint256 name;
array of uint256 symbol;
array of uint256 stor2;
uint256 maxFee;
uint256 sub_1dc589db;
uint256 sub_10541879;
uint256 sub_6b1e925a;
uint256 sub_dc675ccd;
uint256 devFee;
uint8 stor9;
address developerAddr; offset 8
uint256 rId;
mapping of struct player;
mapping of struct roundInfo;
mapping of uint256 sub_1c25f1e7;
mapping of uint256 sub_654e9b42;
mapping of uint256 sub_5b539baa;

function maxFee() {
    return maxFee
}

function name() {
    return name[0 len name.length]
}

function sub_10541879(?) {
    return sub_10541879
}

function activated() {
    return bool(stor9)
}

function sub_1c25f1e7(?) {
    return sub_1c25f1e7[arg1][arg2][address(arg3)]
}

function sub_1dc589db(?) {
    return sub_1dc589db
}

function minFee() {
    return stor2.length
}

function developerAddr() {
    return developerAddr
}

function round(uint256 arg1) {
    return roundInfo[arg1].field_0, 
           roundInfo[arg1].field_256,
           bool(roundInfo[arg1].field_512),
           roundInfo[arg1].field_768,
           roundInfo[arg1].field_1024,
           roundInfo[arg1].field_1280,
           roundInfo[arg1].field_1536,
           roundInfo[arg1].field_1792,
           roundInfo[arg1].field_2048,
           roundInfo[arg1].field_2304
}

function player(address arg1) {
    return bool(player[arg1].field_0), player[arg1].field_256, player[arg1].field_512
}

function rId() {
    return rId
}

function sub_5b539baa(?) {
    return sub_5b539baa[arg1][arg2][arg3]
}

function sub_654e9b42(?) {
    return sub_654e9b42[arg1][arg2][address(arg3)]
}

function devFee() {
    return devFee
}

function sub_6b1e925a(?) {
    return sub_6b1e925a
}

function sub_8166065c(?) {
    return sub_1c25f1e7[arg1][arg2][arg3]
}

function sub_87fdb9e5(?) {
    return sub_654e9b42[arg1][arg2][arg3]
}

function getRoundInfo(uint256 arg1) {
    return roundInfo[arg1].field_0, 
           roundInfo[arg1].field_256,
           bool(roundInfo[arg1].field_512),
           roundInfo[arg1].field_768,
           roundInfo[arg1].field_1024,
           roundInfo[arg1].field_1280,
           roundInfo[arg1].field_1536,
           roundInfo[arg1].field_1792,
           roundInfo[arg1].field_2048,
           roundInfo[arg1].field_2304
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getRefBalance(address arg1) {
    return player[address(arg1)].field_256
}

function sub_dc675ccd(?) {
    return sub_dc675ccd
}

function _fallback() payable {
    revert
}

function sub_d25d729d(?) {
    if rId == 1:
        return ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length))
    require sub_6b1e925a
    return ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length))
}

function activate() {
    require msg.sender == developerAddr
    if stor9:
        revert with 0, 'Contract already activated'
    stor2.length = 5
    maxFee = 50
    sub_1dc589db = 70
    sub_10541879 = 25
    sub_6b1e925a = 12 * 3600
    rId = 1
    stor9 = 1
    sub_dc675ccd = 100
    require sub_1dc589db <= sub_dc675ccd
    require sub_10541879 <= sub_dc675ccd - sub_1dc589db
    sub_dc675ccd = sub_dc675ccd - sub_1dc589db - sub_10541879
    devFee = 100
    require sub_1dc589db <= devFee
    devFee -= sub_1dc589db
    roundInfo[stor10].field_0 = block.timestamp
    require block.timestamp + (48 * 24 * 3600) >= block.timestamp
    roundInfo[stor10].field_256 = block.timestamp + (48 * 24 * 3600)
    roundInfo[stor10].field_512 = 0
    roundInfo[stor10].field_2304 = 0
}

function getPlayerBalance(address arg1) {
    mem[0] = arg1
    mem[32] = 11
    idx = stor2[sha3(mem[0 len 64])]
    s = 0
    while idx < rId:
        mem[0] = idx
        mem[32] = 12
        if bool(roundInfo[idx].field_512) != 1:
            idx = idx + 1
            s = s
            continue 
        require roundInfo[idx].field_768 + roundInfo[idx].field_1024 >= roundInfo[idx].field_768
        require roundInfo[idx].field_1792 >= 0
        if roundInfo[idx].field_2304 != 1:
            if roundInfo[idx].field_2304 != 2:
                if roundInfo[idx].field_2304 != 3:
                    mem[0] = idx
                    mem[32] = 12
                    if roundInfo[idx].field_2304 != 1:
                        mem[0] = idx
                        mem[32] = 12
                        if roundInfo[idx].field_2304 != 2:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                        idx = idx + 1
                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                        continue 
                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                else:
                    if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                        if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                    else:
                        if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 1:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 2:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                        else:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
            else:
                if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                    if roundInfo[idx].field_2304 != 3:
                        mem[0] = idx
                        mem[32] = 12
                        if roundInfo[idx].field_2304 != 1:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 2:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                    else:
                        if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                        else:
                            if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                            else:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                else:
                    if not sub_1c25f1e7[idx][2][address(arg1)]:
                        if roundInfo[idx].field_1024 > 0:
                            if roundInfo[idx].field_1024:
                                if 0 == (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (0 % roundInfo[idx].field_1024):
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 0 / roundInfo[idx].field_1024:
                                            if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) % 10^6):
                                                if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                    else:
                        if sub_1c25f1e7[idx][2][address(arg1)]:
                            if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / sub_1c25f1e7[idx][2][address(arg1)] == 10^6:
                                if roundInfo[idx].field_1024 > 0:
                                    if roundInfo[idx].field_1024:
                                        if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] == (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (10^6 * sub_1c25f1e7[idx][2][address(arg1)] % roundInfo[idx].field_1024):
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 1:
                                                mem[0] = idx
                                                mem[32] = 12
                                                if roundInfo[idx].field_2304 != 2:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024:
                                                    if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) % 10^6):
                                                        if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                            idx = idx + 1
                                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                            continue 
        else:
            if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                if not sub_1c25f1e7[idx][1][address(arg1)]:
                    if roundInfo[idx].field_768 > 0:
                        if roundInfo[idx].field_768:
                            if 0 == (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (0 % roundInfo[idx].field_768):
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 0 / roundInfo[idx].field_768:
                                        if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) == (10^6 * (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) / 10^6) + ((roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) % 10^6):
                                            if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) / 10^6 >= 0:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                else:
                    if sub_1c25f1e7[idx][1][address(arg1)]:
                        if 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / sub_1c25f1e7[idx][1][address(arg1)] == 10^6:
                            if roundInfo[idx].field_768 > 0:
                                if roundInfo[idx].field_768:
                                    if 10^6 * sub_1c25f1e7[idx][1][address(arg1)] == (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (10^6 * sub_1c25f1e7[idx][1][address(arg1)] % roundInfo[idx].field_768):
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768:
                                                if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) == (10^6 * (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) / 10^6) + ((roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) % 10^6):
                                                    if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) / 10^6 >= 0:
                                                        idx = idx + 1
                                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                        continue 
            else:
                if roundInfo[idx].field_2304 != 2:
                    if roundInfo[idx].field_2304 != 3:
                        mem[0] = idx
                        mem[32] = 12
                        if roundInfo[idx].field_2304 != 1:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 2:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                    else:
                        if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                        else:
                            if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                            else:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                else:
                    if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                        if roundInfo[idx].field_2304 != 3:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 1:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 2:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                        else:
                            if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                            else:
                                if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                else:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                        if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 1:
                                                mem[0] = idx
                                                mem[32] = 12
                                                if roundInfo[idx].field_2304 != 2:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                    else:
                        if not sub_1c25f1e7[idx][2][address(arg1)]:
                            if roundInfo[idx].field_1024 > 0:
                                if roundInfo[idx].field_1024:
                                    if 0 == (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (0 % roundInfo[idx].field_1024):
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 0 / roundInfo[idx].field_1024:
                                                if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) % 10^6):
                                                    if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                        idx = idx + 1
                                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                        continue 
                        else:
                            if sub_1c25f1e7[idx][2][address(arg1)]:
                                if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / sub_1c25f1e7[idx][2][address(arg1)] == 10^6:
                                    if roundInfo[idx].field_1024 > 0:
                                        if roundInfo[idx].field_1024:
                                            if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] == (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (10^6 * sub_1c25f1e7[idx][2][address(arg1)] % roundInfo[idx].field_1024):
                                                mem[0] = idx
                                                mem[32] = 12
                                                if roundInfo[idx].field_2304 != 1:
                                                    mem[0] = idx
                                                    mem[32] = 12
                                                    if roundInfo[idx].field_2304 != 2:
                                                        idx = idx + 1
                                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                        continue 
                                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                    if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024:
                                                        if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) % 10^6):
                                                            if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                                idx = idx + 1
                                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                                continue 
        revert
    return 0
}

function getPlayerInfo(address arg1) {
    mem[0] = arg1
    mem[32] = 11
    idx = stor2[sha3(mem[0 len 64])]
    s = 0
    while idx < rId:
        mem[0] = idx
        mem[32] = 12
        if bool(roundInfo[idx].field_512) != 1:
            idx = idx + 1
            s = s
            continue 
        require roundInfo[idx].field_768 + roundInfo[idx].field_1024 >= roundInfo[idx].field_768
        require roundInfo[idx].field_1792 >= 0
        if roundInfo[idx].field_2304 != 1:
            if roundInfo[idx].field_2304 != 2:
                if roundInfo[idx].field_2304 != 3:
                    mem[0] = idx
                    mem[32] = 12
                    if roundInfo[idx].field_2304 != 1:
                        mem[0] = idx
                        mem[32] = 12
                        if roundInfo[idx].field_2304 != 2:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                        idx = idx + 1
                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                        continue 
                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                else:
                    if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                        if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                    else:
                        if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 1:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 2:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                        else:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
            else:
                if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                    if roundInfo[idx].field_2304 != 3:
                        mem[0] = idx
                        mem[32] = 12
                        if roundInfo[idx].field_2304 != 1:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 2:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                    else:
                        if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                        else:
                            if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                            else:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                else:
                    if not sub_1c25f1e7[idx][2][address(arg1)]:
                        if roundInfo[idx].field_1024 > 0:
                            if roundInfo[idx].field_1024:
                                if 0 == (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (0 % roundInfo[idx].field_1024):
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 0 / roundInfo[idx].field_1024:
                                            if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) % 10^6):
                                                if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                    else:
                        if sub_1c25f1e7[idx][2][address(arg1)]:
                            if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / sub_1c25f1e7[idx][2][address(arg1)] == 10^6:
                                if roundInfo[idx].field_1024 > 0:
                                    if roundInfo[idx].field_1024:
                                        if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] == (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (10^6 * sub_1c25f1e7[idx][2][address(arg1)] % roundInfo[idx].field_1024):
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 1:
                                                mem[0] = idx
                                                mem[32] = 12
                                                if roundInfo[idx].field_2304 != 2:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024:
                                                    if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) % 10^6):
                                                        if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                            idx = idx + 1
                                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                            continue 
        else:
            if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                if not sub_1c25f1e7[idx][1][address(arg1)]:
                    if roundInfo[idx].field_768 > 0:
                        if roundInfo[idx].field_768:
                            if 0 == (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (0 % roundInfo[idx].field_768):
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 0 / roundInfo[idx].field_768:
                                        if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) == (10^6 * (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) / 10^6) + ((roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) % 10^6):
                                            if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_768) / 10^6 >= 0:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                else:
                    if sub_1c25f1e7[idx][1][address(arg1)]:
                        if 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / sub_1c25f1e7[idx][1][address(arg1)] == 10^6:
                            if roundInfo[idx].field_768 > 0:
                                if roundInfo[idx].field_768:
                                    if 10^6 * sub_1c25f1e7[idx][1][address(arg1)] == (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (10^6 * sub_1c25f1e7[idx][1][address(arg1)] % roundInfo[idx].field_768):
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768:
                                                if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) == (10^6 * (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) / 10^6) + ((roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) % 10^6):
                                                    if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][1][address(arg1)] / roundInfo[idx].field_768) / 10^6 >= 0:
                                                        idx = idx + 1
                                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                        continue 
            else:
                if roundInfo[idx].field_2304 != 2:
                    if roundInfo[idx].field_2304 != 3:
                        mem[0] = idx
                        mem[32] = 12
                        if roundInfo[idx].field_2304 != 1:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 2:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            idx = idx + 1
                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                            continue 
                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                    else:
                        if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                            if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                        else:
                            if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 1:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 2:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                            else:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                else:
                    if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                        if roundInfo[idx].field_2304 != 3:
                            mem[0] = idx
                            mem[32] = 12
                            if roundInfo[idx].field_2304 != 1:
                                mem[0] = idx
                                mem[32] = 12
                                if roundInfo[idx].field_2304 != 2:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                idx = idx + 1
                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                continue 
                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                    idx = idx + 1
                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                    continue 
                        else:
                            if sub_1c25f1e7[idx][1][address(arg1)] > 0:
                                if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                            else:
                                if sub_1c25f1e7[idx][2][address(arg1)] <= 0:
                                    mem[0] = idx
                                    mem[32] = 12
                                    if roundInfo[idx].field_2304 != 1:
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 2:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                    if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        idx = idx + 1
                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                        continue 
                                    if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                        if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                else:
                                    if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= sub_1c25f1e7[idx][1][address(arg1)]:
                                        if sub_1c25f1e7[idx][1][address(arg1)] + sub_1c25f1e7[idx][2][address(arg1)] >= 0:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 1:
                                                mem[0] = idx
                                                mem[32] = 12
                                                if roundInfo[idx].field_2304 != 2:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                                            if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                            if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                if not 0 / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                    else:
                        if not sub_1c25f1e7[idx][2][address(arg1)]:
                            if roundInfo[idx].field_1024 > 0:
                                if roundInfo[idx].field_1024:
                                    if 0 == (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (0 % roundInfo[idx].field_1024):
                                        mem[0] = idx
                                        mem[32] = 12
                                        if roundInfo[idx].field_2304 != 1:
                                            mem[0] = idx
                                            mem[32] = 12
                                            if roundInfo[idx].field_2304 != 2:
                                                idx = idx + 1
                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                continue 
                                        if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            idx = idx + 1
                                            s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                            continue 
                                        if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                            if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 0 / roundInfo[idx].field_1024:
                                                if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) % 10^6):
                                                    if (roundInfo[idx].field_768 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 0 / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 0 / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                        idx = idx + 1
                                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                        continue 
                        else:
                            if sub_1c25f1e7[idx][2][address(arg1)]:
                                if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / sub_1c25f1e7[idx][2][address(arg1)] == 10^6:
                                    if roundInfo[idx].field_1024 > 0:
                                        if roundInfo[idx].field_1024:
                                            if 10^6 * sub_1c25f1e7[idx][2][address(arg1)] == (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (10^6 * sub_1c25f1e7[idx][2][address(arg1)] % roundInfo[idx].field_1024):
                                                mem[0] = idx
                                                mem[32] = 12
                                                if roundInfo[idx].field_2304 != 1:
                                                    mem[0] = idx
                                                    mem[32] = 12
                                                    if roundInfo[idx].field_2304 != 2:
                                                        idx = idx + 1
                                                        s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                        continue 
                                                if not roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                    idx = idx + 1
                                                    s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                    continue 
                                                if roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792:
                                                    if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792 == 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024:
                                                        if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) == (10^6 * (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6) + ((roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) % 10^6):
                                                            if (roundInfo[idx].field_768 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1024 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) + (roundInfo[idx].field_1792 * 10^6 * sub_1c25f1e7[idx][2][address(arg1)] / roundInfo[idx].field_1024) / 10^6 >= 0:
                                                                idx = idx + 1
                                                                s = roundInfo[idx].field_768 + roundInfo[idx].field_1024 + roundInfo[idx].field_1792
                                                                continue 
        revert
    return bool(player[address(arg1)].field_0), 0, player[address(arg1)].field_256, player[address(arg1)].field_512
}

function invest(uint256 arg1) payable {
    if bool(stor9) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract hasn't been activated yet.'
    if msg.value < 10^16:
        call developerAddr with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.sender == tx.origin
        if arg1 == 1:
            if block.timestamp < roundInfo[stor10].field_256:
                if not player[address(msg.sender)].field_0:
                    player[address(msg.sender)].field_0 = 1
                    player[address(msg.sender)].field_512 = rId
                if rId == 1:
                    if not msg.value:
                        require 0 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                roundInfo[stor10].field_768 += msg.value
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        else:
                            if arg1 != 2:
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                    roundInfo[stor10].field_1024 += msg.value
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        revert
                    require msg.value
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                    require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                    sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                    require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                    sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                    if arg1 == 1:
                        require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                        roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                            sub_5b539baa[stor10][1][address(msg.sender)]++
                            roundInfo[stor10].field_1280++
                    else:
                        if arg1 == 2:
                            require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                            roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                roundInfo[stor10].field_1536++
                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                        require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                    else:
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                        require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                        roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                else:
                    require sub_6b1e925a
                    if not msg.value:
                        require 0 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                roundInfo[stor10].field_768 += msg.value
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        else:
                            if arg1 != 2:
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                    roundInfo[stor10].field_1024 += msg.value
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        revert
                    require msg.value
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                    require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                    sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                    require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                    sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                    if arg1 == 1:
                        require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                        roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                            sub_5b539baa[stor10][1][address(msg.sender)]++
                            roundInfo[stor10].field_1280++
                    else:
                        if arg1 == 2:
                            require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                            roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                roundInfo[stor10].field_1536++
                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                        require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                    else:
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                        require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                        roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
            else:
                if block.timestamp >= roundInfo[stor10].field_256:
                    if roundInfo[stor10].field_768 > roundInfo[stor10].field_1024:
                        roundInfo[stor10].field_2304 = 1
                    else:
                        if roundInfo[stor10].field_768 < roundInfo[stor10].field_1024:
                            roundInfo[stor10].field_2304 = 2
                        else:
                            if roundInfo[stor10].field_768 == roundInfo[stor10].field_1024:
                                roundInfo[stor10].field_2304 = 3
                    call developerAddr with:
                       value roundInfo[stor10].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    roundInfo[stor10].field_512 = 1
                    rId++
                    roundInfo[stor10].field_0 = block.timestamp
                    require block.timestamp + sub_6b1e925a >= block.timestamp
                    roundInfo[stor10].field_256 = block.timestamp + sub_6b1e925a
                    roundInfo[stor10].field_512 = 0
                    roundInfo[stor10].field_2304 = 0
                    if not player[address(msg.sender)].field_0:
                        player[address(msg.sender)].field_0 = 1
                        player[address(msg.sender)].field_512 = rId
                    if rId == 1:
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                    else:
                        require sub_6b1e925a
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
        else:
            if arg1 != 2:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if block.timestamp < roundInfo[stor10].field_256:
                    if not player[address(msg.sender)].field_0:
                        player[address(msg.sender)].field_0 = 1
                        player[address(msg.sender)].field_512 = rId
                    if rId == 1:
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                    else:
                        require sub_6b1e925a
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                else:
                    if block.timestamp >= roundInfo[stor10].field_256:
                        if roundInfo[stor10].field_768 > roundInfo[stor10].field_1024:
                            roundInfo[stor10].field_2304 = 1
                        else:
                            if roundInfo[stor10].field_768 < roundInfo[stor10].field_1024:
                                roundInfo[stor10].field_2304 = 2
                            else:
                                if roundInfo[stor10].field_768 == roundInfo[stor10].field_1024:
                                    roundInfo[stor10].field_2304 = 3
                        call developerAddr with:
                           value roundInfo[stor10].field_2048 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        roundInfo[stor10].field_512 = 1
                        rId++
                        roundInfo[stor10].field_0 = block.timestamp
                        require block.timestamp + sub_6b1e925a >= block.timestamp
                        roundInfo[stor10].field_256 = block.timestamp + sub_6b1e925a
                        roundInfo[stor10].field_512 = 0
                        roundInfo[stor10].field_2304 = 0
                        if not player[address(msg.sender)].field_0:
                            player[address(msg.sender)].field_0 = 1
                            player[address(msg.sender)].field_512 = rId
                        if rId == 1:
                            if not msg.value:
                                require 0 <= msg.value
                                require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                                sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                                require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                                sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                                if arg1 == 1:
                                    if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                        roundInfo[stor10].field_768 += msg.value
                                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                            sub_5b539baa[stor10][1][address(msg.sender)]++
                                            roundInfo[stor10].field_1280++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if arg1 != 2:
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                            roundInfo[stor10].field_1024 += msg.value
                                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                                roundInfo[stor10].field_1536++
                                            if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                revert
                            require msg.value
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                                roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                            else:
                                if arg1 == 2:
                                    require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                    roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                            else:
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                                require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                                roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            require sub_6b1e925a
                            if not msg.value:
                                require 0 <= msg.value
                                require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                                sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                                require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                                sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                                if arg1 == 1:
                                    if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                        roundInfo[stor10].field_768 += msg.value
                                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                            sub_5b539baa[stor10][1][address(msg.sender)]++
                                            roundInfo[stor10].field_1280++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if arg1 != 2:
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                            roundInfo[stor10].field_1024 += msg.value
                                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                                roundInfo[stor10].field_1536++
                                            if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                revert
                            require msg.value
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                                roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                            else:
                                if arg1 == 2:
                                    require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                    roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                            else:
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                                require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                                roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
}

function invest(uint256 arg1, address arg2) payable {
    if bool(stor9) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract hasn't been activated yet.'
    if msg.value < 10^16:
        call developerAddr with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.sender == tx.origin
        if arg1 == 1:
            if block.timestamp < roundInfo[stor10].field_256:
                if not player[address(msg.sender)].field_0:
                    player[address(msg.sender)].field_0 = 1
                    player[address(msg.sender)].field_512 = rId
                if rId == 1:
                    if not msg.value:
                        require 0 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                roundInfo[stor10].field_768 += msg.value
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if not arg2:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if arg2 == msg.sender:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if bool(player[address(arg2)].field_0) != 1:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        else:
                            if arg1 != 2:
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if not arg2:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if arg2 == msg.sender:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if bool(player[address(arg2)].field_0) != 1:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                    roundInfo[stor10].field_1024 += msg.value
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        revert
                    require msg.value
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                    require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                    sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                    require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                    sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                    if arg1 == 1:
                        require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                        roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                            sub_5b539baa[stor10][1][address(msg.sender)]++
                            roundInfo[stor10].field_1280++
                    else:
                        if arg1 == 2:
                            require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                            roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                roundInfo[stor10].field_1536++
                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                        require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                    else:
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                        require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                        roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                    if not arg2:
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                    else:
                        if arg2 == msg.sender:
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            if bool(player[address(arg2)].field_0) != 1:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                else:
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                    require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                    player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
                else:
                    require sub_6b1e925a
                    if not msg.value:
                        require 0 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                roundInfo[stor10].field_768 += msg.value
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if not arg2:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if arg2 == msg.sender:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if bool(player[address(arg2)].field_0) != 1:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        else:
                            if arg1 != 2:
                                if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                    if not arg2:
                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if arg2 == msg.sender:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if bool(player[address(arg2)].field_0) != 1:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                    roundInfo[stor10].field_1024 += msg.value
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                        revert
                    require msg.value
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                    require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                    sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                    require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                    sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                    if arg1 == 1:
                        require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                        roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                            sub_5b539baa[stor10][1][address(msg.sender)]++
                            roundInfo[stor10].field_1280++
                    else:
                        if arg1 == 2:
                            require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                            roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                roundInfo[stor10].field_1536++
                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                        require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                    else:
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                        require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                        roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                    if not arg2:
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                    else:
                        if arg2 == msg.sender:
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            if bool(player[address(arg2)].field_0) != 1:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                else:
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                    require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                    player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
            else:
                if block.timestamp >= roundInfo[stor10].field_256:
                    if roundInfo[stor10].field_768 > roundInfo[stor10].field_1024:
                        roundInfo[stor10].field_2304 = 1
                    else:
                        if roundInfo[stor10].field_768 < roundInfo[stor10].field_1024:
                            roundInfo[stor10].field_2304 = 2
                        else:
                            if roundInfo[stor10].field_768 == roundInfo[stor10].field_1024:
                                roundInfo[stor10].field_2304 = 3
                    call developerAddr with:
                       value roundInfo[stor10].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    roundInfo[stor10].field_512 = 1
                    rId++
                    roundInfo[stor10].field_0 = block.timestamp
                    require block.timestamp + sub_6b1e925a >= block.timestamp
                    roundInfo[stor10].field_256 = block.timestamp + sub_6b1e925a
                    roundInfo[stor10].field_512 = 0
                    roundInfo[stor10].field_2304 = 0
                    if not player[address(msg.sender)].field_0:
                        player[address(msg.sender)].field_0 = 1
                        player[address(msg.sender)].field_512 = rId
                    if rId == 1:
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not arg2:
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            if arg2 == msg.sender:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if bool(player[address(arg2)].field_0) != 1:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                else:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                    else:
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                        require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                        player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
                    else:
                        require sub_6b1e925a
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not arg2:
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            if arg2 == msg.sender:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if bool(player[address(arg2)].field_0) != 1:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                else:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                    else:
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                        require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                        player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
        else:
            if arg1 != 2:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if block.timestamp < roundInfo[stor10].field_256:
                    if not player[address(msg.sender)].field_0:
                        player[address(msg.sender)].field_0 = 1
                        player[address(msg.sender)].field_512 = rId
                    if rId == 1:
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not arg2:
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            if arg2 == msg.sender:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if bool(player[address(arg2)].field_0) != 1:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                else:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                    else:
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                        require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                        player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
                    else:
                        require sub_6b1e925a
                        if not msg.value:
                            require 0 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                    roundInfo[stor10].field_768 += msg.value
                                    if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                        sub_5b539baa[stor10][1][address(msg.sender)]++
                                        roundInfo[stor10].field_1280++
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            else:
                                if arg1 != 2:
                                    if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                        if not arg2:
                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                        else:
                                            if arg2 == msg.sender:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if bool(player[address(arg2)].field_0) != 1:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                        roundInfo[stor10].field_1024 += msg.value
                                        if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                            sub_5b539baa[stor10][2][address(msg.sender)]++
                                            roundInfo[stor10].field_1536++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                            revert
                        require msg.value
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                        require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                        sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                        require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                        sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                        if arg1 == 1:
                            require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                            roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                sub_5b539baa[stor10][1][address(msg.sender)]++
                                roundInfo[stor10].field_1280++
                        else:
                            if arg1 == 2:
                                require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                    sub_5b539baa[stor10][2][address(msg.sender)]++
                                    roundInfo[stor10].field_1536++
                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                            require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                        else:
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                            require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                            roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                        if not arg2:
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                            require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                            roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                        else:
                            if arg2 == msg.sender:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if bool(player[address(arg2)].field_0) != 1:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                else:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                    else:
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                        require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                        player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
                else:
                    if block.timestamp >= roundInfo[stor10].field_256:
                        if roundInfo[stor10].field_768 > roundInfo[stor10].field_1024:
                            roundInfo[stor10].field_2304 = 1
                        else:
                            if roundInfo[stor10].field_768 < roundInfo[stor10].field_1024:
                                roundInfo[stor10].field_2304 = 2
                            else:
                                if roundInfo[stor10].field_768 == roundInfo[stor10].field_1024:
                                    roundInfo[stor10].field_2304 = 3
                        call developerAddr with:
                           value roundInfo[stor10].field_2048 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        roundInfo[stor10].field_512 = 1
                        rId++
                        roundInfo[stor10].field_0 = block.timestamp
                        require block.timestamp + sub_6b1e925a >= block.timestamp
                        roundInfo[stor10].field_256 = block.timestamp + sub_6b1e925a
                        roundInfo[stor10].field_512 = 0
                        roundInfo[stor10].field_2304 = 0
                        if not player[address(msg.sender)].field_0:
                            player[address(msg.sender)].field_0 = 1
                            player[address(msg.sender)].field_512 = rId
                        if rId == 1:
                            if not msg.value:
                                require 0 <= msg.value
                                require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                                sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                                require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                                sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                                if arg1 == 1:
                                    if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                        roundInfo[stor10].field_768 += msg.value
                                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                            sub_5b539baa[stor10][1][address(msg.sender)]++
                                            roundInfo[stor10].field_1280++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if arg1 != 2:
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                            roundInfo[stor10].field_1024 += msg.value
                                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                                roundInfo[stor10].field_1536++
                                            if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                                if not arg2:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if arg2 == msg.sender:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if bool(player[address(arg2)].field_0) != 1:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                        else:
                                                            if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                revert
                            require msg.value
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600) + (10000 * stor2.length)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                                roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                            else:
                                if arg1 == 2:
                                    require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                    roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                            else:
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                                require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                                roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                            if not arg2:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if arg2 == msg.sender:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                else:
                                    if bool(player[address(arg2)].field_0) != 1:
                                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                    else:
                                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                            require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                        else:
                                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                            require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                            player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / 48 * 24 * 3600 * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
                        else:
                            require sub_6b1e925a
                            if not msg.value:
                                require 0 <= msg.value
                                require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                                sub_1c25f1e7[stor10][arg1][address(msg.sender)] += msg.value
                                require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                                sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                                if arg1 == 1:
                                    if roundInfo[stor10].field_768 + msg.value >= roundInfo[stor10].field_768:
                                        roundInfo[stor10].field_768 += msg.value
                                        if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                            sub_5b539baa[stor10][1][address(msg.sender)]++
                                            roundInfo[stor10].field_1280++
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                else:
                                    if arg1 != 2:
                                        if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                            if not arg2:
                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                            else:
                                                if arg2 == msg.sender:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if bool(player[address(arg2)].field_0) != 1:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                    else:
                                        if roundInfo[stor10].field_1024 + msg.value >= roundInfo[stor10].field_1024:
                                            roundInfo[stor10].field_1024 += msg.value
                                            if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                                sub_5b539baa[stor10][2][address(msg.sender)]++
                                                roundInfo[stor10].field_1536++
                                            if roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792:
                                                if not arg2:
                                                    if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                else:
                                                    if arg2 == msg.sender:
                                                        if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                    else:
                                                        if bool(player[address(arg2)].field_0) != 1:
                                                            if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                                        else:
                                                            if player[address(arg2)].field_256 >= player[address(arg2)].field_256:
                                                                if roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048:
                                revert
                            require msg.value
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / msg.value == (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a) + (10000 * stor2.length)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) == (10^6 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) % 10^6)
                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 <= msg.value
                            require sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= sub_1c25f1e7[stor10][arg1][address(msg.sender)]
                            sub_1c25f1e7[stor10][arg1][address(msg.sender)] = sub_1c25f1e7[stor10][arg1][address(msg.sender)] + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                            require sub_654e9b42[stor10][arg1][address(msg.sender)] + msg.value >= sub_654e9b42[stor10][arg1][address(msg.sender)]
                            sub_654e9b42[stor10][arg1][address(msg.sender)] += msg.value
                            if arg1 == 1:
                                require roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_768
                                roundInfo[stor10].field_768 = roundInfo[stor10].field_768 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                if not sub_5b539baa[stor10][1][address(msg.sender)]:
                                    sub_5b539baa[stor10][1][address(msg.sender)]++
                                    roundInfo[stor10].field_1280++
                            else:
                                if arg1 == 2:
                                    require roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6) >= roundInfo[stor10].field_1024
                                    roundInfo[stor10].field_1024 = roundInfo[stor10].field_1024 + msg.value - ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6)
                                    if not sub_5b539baa[stor10][2][address(msg.sender)]:
                                        sub_5b539baa[stor10][2][address(msg.sender)]++
                                        roundInfo[stor10].field_1536++
                            if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                require roundInfo[stor10 + 1].field_1792 >= roundInfo[stor10 + 1].field_1792
                            else:
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_1dc589db
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db % 100)
                                require roundInfo[stor10 + 1].field_1792 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100) >= roundInfo[stor10 + 1].field_1792
                                roundInfo[stor10 + 1].field_1792 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_1dc589db / 100
                            if not arg2:
                                if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                    require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                            else:
                                if arg2 == msg.sender:
                                    if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                        require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                    require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                    require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                    roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                else:
                                    if bool(player[address(arg2)].field_0) != 1:
                                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == devFee
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee % 100)
                                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100) >= roundInfo[stor10].field_2048
                                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * devFee / 100
                                    else:
                                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                            require player[address(arg2)].field_256 >= player[address(arg2)].field_256
                                        else:
                                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_10541879
                                            require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 % 100)
                                            require player[address(arg2)].field_256 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100) >= player[address(arg2)].field_256
                                            player[address(arg2)].field_256 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_10541879 / 100
                                        if not (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6:
                                            require roundInfo[stor10].field_2048 >= roundInfo[stor10].field_2048
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 == sub_dc675ccd
                                        require (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd == (100 * (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd % 100)
                                        require roundInfo[stor10].field_2048 + ((maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100) >= roundInfo[stor10].field_2048
                                        roundInfo[stor10].field_2048 += (maxFee * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) - (stor2.length * (10000 * block.timestamp) - (10000 * roundInfo[stor10].field_0) / sub_6b1e925a * msg.value) + (10000 * stor2.length * msg.value) / 10^6 * sub_dc675ccd / 100
}



}
