contract main {




// =====================  Runtime code  =====================


#
#  - getBets(uint256 arg1)
#
const sub_22b80ff8(?) = eth.balance(this.address)


address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint8 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
array of struct stor12;
uint256 sub_502d0c30;
uint8 N;

function OWNER_PERCENT() {
    return stor4.length
}

function sub_502d0c30(?) {
    return sub_502d0c30
}

function sub_52382794(?) {
    require arg1 < 6
    return uint16(sub_52382794[uint8(arg1)].field_0)
}

function sub_60b79784(?) {
    return stor2.length
}

function OWNER_AMOUNT() {
    return stor3.length
}

function sub_753feadd(?) {
    require arg1 < 6
    return uint16(sub_753feadd[uint8(arg1)].field_0)
}

function sub_833afd43(?) {
    return stor5.length
}

function owner() {
    return owner
}

function N() {
    return N
}

function sub_e210c049(?) {
    require arg1 < 6
    return uint16(sub_e210c049[uint8(arg1)].field_0)
}

function admin() {
    return address(stor1.length)
}

function kill() {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    if stor2.length:
        revert with 0, 'invalid lockedIn'
    selfdestruct(owner)
}

function sub_31af8eb0(?) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    stor5.length = arg1
}

function sub_ac7e64d5(?) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    stor4.length = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAdmin(address arg1) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    if not arg1:
        revert with 0, 'invalid addr'
    address(stor1.length) = arg1
}

function sub_8afc2d35(?) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    require N
    sub_502d0c30 = sub_502d0c30 + N + (block.number + -sub_502d0c30 - 1 / N * N)
    N = arg1
}

function cashOut() {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    if stor3.length <= 0:
        revert with 0, 'invalid OWNER_AMOUNT'
    call owner with:
       value stor3.length wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    s = 0
    t = 0
    t = calldata.size
    while uint8(s) < uint8(t):
        require uint8(s) < calldata.size
        if Mask(8, 248, cd[uint8(s)]):
            if Mask(8, 248, cd[uint8(s)]) >> 248 <= 6:
                s = s + 1
                t = Mask(8, 248, cd[uint8(s)]) >> 248
                t = t
                continue 
        s = s + 1
        t = Mask(8, 248, cd[uint8(s)]) >> 248
        t = t - 1
        continue 
    if not uint8(t):
    if uint8(t) <= 0:
        revert with 0, 'invalid diceNum'
    if uint8(t) >= 6:
        revert with 0, 'invalid diceNum'
    if msg.value < 10^16:
        revert with 0, 'invalid amount'
    if msg.value > uint64(10^18 * uint16(uint16(sub_e210c049[uint8(t)].field_0) / 100)):
        revert with 0, 'invalid amount'
    revert with 0, 'invalid betMask'
}

function output() {
    idx = 672
    s = 0
    while 864 > idx + 32:
        mem[idx + 32] = uint16(sub_753feadd.length.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    idx = 864
    s = 0
    while 1056 > idx + 32:
        mem[idx + 32] = uint16(sub_e210c049.length.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    idx = 1056
    s = 0
    while 1248 > idx + 32:
        mem[idx + 32] = uint16(sub_52382794.length.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    return sub_502d0c30, 
           N,
           stor4.length,
           stor5.length,
           mem[704 len 160] >> 1280,
           mem[896 len 160] >> 1280,
           sub_52382794.length,
           mem[1088 len 160]
}

function sub_f74797d1(?) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    if sub_502d0c30 + N + (arg1 * N) != uint256(stor6[arg1].field_0):
        revert with 0, 'invalid bet'
    if uint256(stor6[arg1].field_256):
        revert with 0, 'invalid bet'
    if uint256(stor6[arg1].field_1280) != arg4:
        revert with 0, 'invalid bet'
    stor2.length -= uint256(stor6[arg1].field_512)
    uint256(stor6[arg1].field_256) = (sha3(arg2, arg3) % 6) + 1
    uint256(stor6[arg1].field_768) = arg2
    uint256(stor6[arg1].field_1024) = sha3(arg2, arg3)
    idx = 0
    s = 0
    t = 0
    while idx < uint256(stor6[arg1].field_1280):
        mem[0] = sha3(arg1, 6) + 5
        if uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512) and 2^(sha3(arg2, arg3) % 6) <= 0:
            idx = idx + 1
            s = s
            t = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512) and 2^(sha3(arg2, arg3) % 6)
            continue 
        require idx < uint256(stor6[arg1].field_1280)
        uint8(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_1280) = 1
        mem[0] = sha3(arg1, 6) + 5
        call stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_0 with:
           value uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_1024) wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        s = s + 1
        t = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512) and 2^(sha3(arg2, arg3) % 6)
        continue 
    emit 0x12d56cbc: uint256(stor6[arg1].field_0), uint256(stor6[arg1].field_256), arg2, s, arg1
}

function sub_7206a199(?) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    if block.hash(uint256(stor6[arg1].field_0)) <= 0:
        revert with 0, 'invalid openBlockNumber'
    if sub_502d0c30 + N + (arg1 * N) != uint256(stor6[arg1].field_0):
        revert with 0, 'invalid bet'
    if uint256(stor6[arg1].field_256):
        revert with 0, 'invalid bet'
    if uint256(stor6[arg1].field_1280) != arg3:
        revert with 0, 'invalid bet'
    stor2.length -= uint256(stor6[arg1].field_512)
    uint256(stor6[arg1].field_256) = (sha3(arg2, block.hash(uint256(stor6[arg1].field_0))) % 6) + 1
    uint256(stor6[arg1].field_768) = arg2
    uint256(stor6[arg1].field_1024) = sha3(arg2, block.hash(uint256(stor6[arg1].field_0)))
    idx = 0
    s = 0
    t = 0
    while idx < uint256(stor6[arg1].field_1280):
        mem[0] = sha3(arg1, 6) + 5
        if uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512) and 2^(sha3(arg2, block.hash(uint256(stor6[arg1].field_0))) % 6) <= 0:
            idx = idx + 1
            s = s
            t = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512) and 2^(sha3(arg2, block.hash(uint256(stor6[arg1].field_0))) % 6)
            continue 
        require idx < uint256(stor6[arg1].field_1280)
        uint8(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_1280) = 1
        mem[0] = sha3(arg1, 6) + 5
        call stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_0 with:
           value uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_1024) wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        s = s + 1
        t = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512) and 2^(sha3(arg2, block.hash(uint256(stor6[arg1].field_0))) % 6)
        continue 
    emit 0x12d56cbc: uint256(stor6[arg1].field_0), uint256(stor6[arg1].field_256), arg2, s, arg1
}

function getGame(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[32] = 6
    mem[288] = uint256(stor6[arg1].field_0)
    mem[320] = uint256(stor6[arg1].field_256)
    mem[352] = uint256(stor6[arg1].field_512)
    mem[384] = uint256(stor6[arg1].field_768)
    mem[416] = uint256(stor6[arg1].field_1024)
    mem[64] = (32 * uint256(stor6[arg1].field_1280)) + 512
    mem[480] = uint256(stor6[arg1].field_1280)
    s = 512
    idx = 0
    while idx < uint256(stor6[arg1].field_1280):
        mem[0] = sha3(arg1, 6) + 5
        _30 = mem[64]
        mem[64] = mem[64] + 192
        mem[_30] = stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_0
        mem[_30 + 32] = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_256)
        mem[_30 + 64] = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_512)
        mem[_30 + 96] = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_768)
        mem[_30 + 128] = uint256(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_1024)
        mem[_30 + 160] = bool(uint8(stor[(6 * idx) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))].field_1280))
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    mem[448] = 480
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < mem[480]:
        require idx < mem[480]
        require idx < mem[480]
        if not mem[mem[(32 * idx) + 512] + 160]:
            idx = idx + 1
            s = s
            t = t
            u = u + mem[mem[(32 * idx) + 512] + 96]
            continue 
        require idx < mem[480]
        idx = idx + 1
        s = s + 1
        t = t + mem[mem[(32 * idx) + 512] + 128]
        u = u + mem[mem[(32 * idx) + 512] + 96]
        continue 
    _56 = mem[320]
    _58 = mem[480]
    _59 = mem[384]
    _60 = mem[416]
    mem[mem[64]] = mem[288]
    mem[mem[64] + 64] = _58
    mem[mem[64] + 96] = s
    return mem[mem[64]], _56, _58, s, u, t, _59, _60
}

function placeBet(uint256 arg1, uint8 arg2) payable {
    if arg2 <= 0:
        revert with 0, 'invalid diceNum'
    if arg2 >= 6:
        revert with 0, 'invalid diceNum'
    if msg.value < 10^16:
        revert with 0, 'invalid amount'
    if msg.value > uint64(10^18 * uint16(uint16(sub_e210c049[uint8(arg2)].field_0) / 100)):
        revert with 0, 'invalid amount'
    if arg1 <= 0:
        revert with 0, 'invalid betMask'
    require arg2 < 6
    if arg1 > uint16(sub_753feadd[uint8(arg2)].field_0):
        revert with 0, 'invalid betMask'
    if msg.value * stor4.length / 100 >= stor5.length:
        stor3.length += msg.value * stor4.length / 100
        require arg2 < 6
        stor2.length += (msg.value * uint16(sub_52382794[uint8(arg2)].field_0)) - (msg.value * stor4.length / 100 * uint16(sub_52382794[uint8(arg2)].field_0)) / 100
        require N
        if not uint256(stor6[block.number + -stor13 - 1 / stor14].field_0):
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_0) = stor7
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_256) = stor8
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_512) = stor9
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_768) = stor10
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_1024) = stor11
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280) = stor12.length
            if not stor12.length:
                idx = 0
                while 6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280) > idx:
                    stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_0 = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_256) = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_512) = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_768) = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_1024) = 0
                    uint8(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_1280) = 0
                    idx = idx + 6
                    continue 
            else:
                s = 0
                idx = 0
                while 6 * stor12.length > idx:
                    stor6[block.number + -stor13 - 1 / stor14][s + 5].field_0 = stor12[idx].field_0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_256) = uint256(stor12[idx].field_256)
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_512) = uint256(stor12[idx].field_512)
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_768) = uint256(stor12[idx].field_768)
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_1024) = uint256(stor12[idx].field_1024)
                    uint8(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_1280) = uint8(bool(uint8(stor12[idx].field_1280)))
                    s = s + 6
                    idx = idx + 6
                    continue 
                idx = s
                while sha3(sha3(block.number + -sub_502d0c30 - 1 / N, 6) + 5) + (6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) > idx:
                    stor[idx] = 0
                    uint256(stor1[idx]) = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    stor4[idx] = 0
                    stor5[idx] = 0
                    idx = idx + 6
                    continue 
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_0) = sub_502d0c30 + N + (block.number + -sub_502d0c30 - 1 / N * N)
        uint256(stor6[block.number + -stor13 - 1 / stor14].field_512) += (msg.value * uint16(sub_52382794[uint8(arg2)].field_0)) - (msg.value * stor4.length / 100 * uint16(sub_52382794[uint8(arg2)].field_0)) / 100
        uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)++
        stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_0 = msg.sender
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_256) = block.number
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_512) = arg1
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_768) = msg.value
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_1024) = (msg.value * uint16(sub_52382794[uint8(arg2)].field_0)) - (msg.value * stor4.length / 100 * uint16(sub_52382794[uint8(arg2)].field_0)) / 100
    else:
        stor3.length += stor5.length
        require arg2 < 6
        stor2.length += (msg.value * uint16(sub_52382794[uint8(arg2)].field_0)) - (stor5.length * uint16(sub_52382794[uint8(arg2)].field_0)) / 100
        require N
        if not uint256(stor6[block.number + -stor13 - 1 / stor14].field_0):
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_0) = stor7
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_256) = stor8
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_512) = stor9
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_768) = stor10
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_1024) = stor11
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280) = stor12.length
            if not stor12.length:
                idx = 0
                while 6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280) > idx:
                    stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_0 = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_256) = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_512) = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_768) = 0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_1024) = 0
                    uint8(stor6[block.number + -stor13 - 1 / stor14][idx + 5].field_1280) = 0
                    idx = idx + 6
                    continue 
            else:
                s = 0
                idx = 0
                while 6 * stor12.length > idx:
                    stor6[block.number + -stor13 - 1 / stor14][s + 5].field_0 = stor12[idx].field_0
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_256) = uint256(stor12[idx].field_256)
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_512) = uint256(stor12[idx].field_512)
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_768) = uint256(stor12[idx].field_768)
                    uint256(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_1024) = uint256(stor12[idx].field_1024)
                    uint8(stor6[block.number + -stor13 - 1 / stor14][s + 5].field_1280) = uint8(bool(uint8(stor12[idx].field_1280)))
                    s = s + 6
                    idx = idx + 6
                    continue 
                idx = s
                while sha3(sha3(block.number + -sub_502d0c30 - 1 / N, 6) + 5) + (6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) > idx:
                    stor[idx] = 0
                    uint256(stor1[idx]) = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    stor4[idx] = 0
                    stor5[idx] = 0
                    idx = idx + 6
                    continue 
            uint256(stor6[block.number + -stor13 - 1 / stor14].field_0) = sub_502d0c30 + N + (block.number + -sub_502d0c30 - 1 / N * N)
        uint256(stor6[block.number + -stor13 - 1 / stor14].field_512) += (msg.value * uint16(sub_52382794[uint8(arg2)].field_0)) - (stor5.length * uint16(sub_52382794[uint8(arg2)].field_0)) / 100
        uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)++
        stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_0 = msg.sender
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_256) = block.number
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_512) = arg1
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_768) = msg.value
        uint256(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_1024) = (msg.value * uint16(sub_52382794[uint8(arg2)].field_0)) - (stor5.length * uint16(sub_52382794[uint8(arg2)].field_0)) / 100
    uint8(stor[(6 * uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280)) + ('array', 5, ('map', ('div', ('add', -1, 'number', ('mul', -1, ('stor', ('name', 'stor13', 13)))), ('stor', ('name', 'stor14', 14))), ('name', 'stor6', 6)))].field_1280) = 0
    emit 0xe9ad6516: uint256(stor6[block.number + -stor13 - 1 / stor14].field_1280) - 1, msg.sender, block.number, arg1, msg.value, block.number + -sub_502d0c30 - 1 / N
}



}
