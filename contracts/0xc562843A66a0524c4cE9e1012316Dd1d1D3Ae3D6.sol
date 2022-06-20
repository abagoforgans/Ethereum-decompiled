contract main {




// =====================  Runtime code  =====================


#
#  - fromHex(string arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of uint256 sub_68572880;
array of uint256 sub_ac0c84a1;
uint256 stor106;
uint256 stor107;
array of uint256 sub_c429d896;
uint256 stor109;
uint256 stor110;

function sub_68572880(?) {
    if arg1 < 0:
        revert with 0, 'Invalid generation supplied'
    if arg1 >= 3:
        revert with 0, 'Invalid generation supplied'
    return sub_68572880[arg1]
}

function owner() {
    return owner
}

function sub_ac0c84a1(?) {
    if arg1 < 0:
        revert with 0, 'Invalid index supplied'
    if arg1 >= 3:
        revert with 0, 'Invalid index supplied'
    return sub_ac0c84a1[arg1]
}

function sub_c429d896(?) {
    if arg1 < 0:
        revert with 0, 'Invalid index supplied'
    if arg1 >= 3:
        revert with 0, 'Invalid index supplied'
    return sub_c429d896[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function readBits(uint256 arg1, uint256 arg2, uint256 arg3) {
    return (arg1 and -2^arg2 + (2^arg3 * 2^arg2) / 2^arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_687fc220(?) {
    if arg1 >= stor107:
        return (15 * arg2 / 100)
    if arg1 >= stor106:
        return (arg2 / 10)
    if arg1 < sub_ac0c84a1.length:
        return 0
    return (arg2 / 20)
}

function sub_23ef92f1(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'Invalid index supplied'
    if arg1 >= 3:
        revert with 0, 'Invalid index supplied'
    sub_c429d896[arg1] = arg2
}

function sub_cef17d49(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'Invalid level supplied'
    if arg1 >= 3:
        revert with 0, 'Invalid level supplied'
    if arg2 <= 0:
        revert with 0, 'amount must be greater than zero'
    require arg1 < 3
    sub_ac0c84a1[arg1] = arg2
}

function fromHexChar(uint256 arg1) {
    if arg1 << 248 >= 0:
        if arg1 << 248 <= 9:
            return (arg1 - '0')
    if arg1 << 248 >= a:
        if arg1 << 248 <= f:
            return (arg1 + -'a' + 10)
    if arg1 << 248 < A:
        return 0
    if arg1 << 248 > F:
        return 0
    return (arg1 + -'A' + 10)
}

function sub_ce1e8eac(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'Invalid generation supplied'
    if arg1 >= 3:
        revert with 0, 'Invalid generation supplied'
    if arg2 <= 10^15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'price must be higher than 0.001 ETH'
    require arg1 < 3
    sub_68572880[arg1] = arg2
}

function sub_fa3da3ed(?) {
    require arg1 < 3
    if sub_c429d896.length != arg2:
        if stor109 == arg2:
            return (sub_68572880[arg1] - (sub_68572880[arg1] / 10))
        if stor110 == arg2:
            return (sub_68572880[arg1] - (15 * sub_68572880[arg1] / 100))
        if not arg3:
            return sub_68572880[arg1]
    return (sub_68572880[arg1] - (5 * sub_68572880[arg1] / 100))
}

function sub_c5ef3ec5(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        idx = idx + 1
        s = (10 * s) + mem[idx + 128 len 1] - 48
        continue 
    return s
}

function bytesToUint(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = s + (mem[idx + 128 len 1] * 2^(8 * arg1.length + -idx - 1))
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function initialize(address arg1) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    mem[96] = 3 * 10^16
    mem[128] = 35 * 10^15
    mem[160] = 4 * 10^16
    s = 102
    idx = 96
    while 192 > idx:
        stor[s].field_0 % 72057594037927936 = mem[idx + 25 len 7]
        Mask(200, 0, stor[s].field_56) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 105
    while 105 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[192] = 1
    mem[224] = 10
    mem[256] = 20
    s = 105
    idx = 192
    while 288 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 108
    while 108 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[288] = 5
    mem[320] = 10
    mem[352] = 15
    s = 108
    idx = 288
    while 384 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 111
    while 111 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function uintToHexStr(uint256 arg1) {
    if not arg1:
        return '0'
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 16
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = 0
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            if idx % 16 > 9:
                mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            else:
                mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            t = idx % 16
            t = t - 1
            idx = idx / 16
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _34 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_34) + _32 + -mem[64] + 96
    mem[128 len 32 * s] = code.data[8239 len 32 * s]
    t = 0
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        if idx % 16 > 9:
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
        else:
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
        t = idx % 16
        t = t - 1
        idx = idx / 16
        continue 
    _37 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _39 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_39) + _37 + -mem[64] + 96
}



}
