contract main {


// =======================  Init code  ======================


uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor9 = 0
    stor10 = 3
    stor11 = 10^17
    require not msg.value
    return code.data[50 len 7038]
}



// =====================  Runtime code  =====================


#
#  - sub_d20d7539(?)
#
address owner;
array of address moderators;
array of struct sub_0fbf88c3;
array of struct deposit;
array of uint256 sub_8fe46855;
mapping of uint8 stor5;
array of uint256 nicknames;
array of address sub_6661f1b8;
array of uint256 sub_b97da33b;
uint256 sub_71c4b965;
uint256 stor10;
uint256 stor11;
array of uint256 sub_e59f81c8;
array of uint256 sub_c51cad5b;

function sub_0fbf88c3(?) {
    return sub_0fbf88c3[arg1][arg2][0 len sub_0fbf88c3[arg1][arg2].length].field_0
}

function deposit(address arg1, uint256 arg2) {
    require arg2 < deposit[arg1].field_0
    return deposit[arg1][arg2].field_0
}

function sub_6661f1b8(?) {
    require arg2 < uint256(sub_6661f1b8[arg1])
    return address(sub_6661f1b8[arg1][arg2])
}

function sub_71c4b965(?) {
    return sub_71c4b965
}

function owner() {
    return owner
}

function sub_8fe46855(?) {
    return sub_8fe46855[arg1][0 len sub_8fe46855[arg1].length]
}

function nicknames(address arg1) {
    return nicknames[arg1][0 len nicknames[arg1].length]
}

function banned(address arg1) {
    return bool(stor5[arg1])
}

function sub_b97da33b(?) {
    require arg2 < sub_b97da33b[arg1]
    return sub_b97da33b[arg1][arg2]
}

function moderators(uint256 arg1) {
    require arg1 < moderators.length
    return address(moderators[arg1])
}

function sub_c51cad5b(?) {
    return sub_c51cad5b[arg1][0 len sub_c51cad5b[arg1].length]
}

function sub_e59f81c8(?) {
    return sub_e59f81c8[arg1][0 len sub_e59f81c8[arg1].length]
}

function sub_4ade72d9(?) {
    require owner == msg.sender
    stor10 = arg1
}

function unban(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeDepositAmount(uint256 arg1) {
    require owner == msg.sender
    stor11 = arg1
}

function sub_d37d162a(?) {
    sub_8fe46855[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function sub_177db721(?) {
    require owner == msg.sender
    require arg1 < moderators.length
    address(moderators[arg1]) = 0
}

function _fallback() payable {
    require 0 < deposit[address(msg.sender)].field_0
    deposit[address(msg.sender)].field_0 += msg.value
}

function sub_3b4e075c(?) {
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function uintToBytes(uint256 arg1) {
    if not arg1:
        return '0'
    s = 0
    idx = arg1
    while idx > 0:
        s = (idx % 10) + 48 << 248 or s / 256
        idx = idx / 10
        continue 
    return s
}

function owned() {
    owner = msg.sender
    moderators.length++
    if not moderators.length <= moderators.length + 1:
        idx = moderators.length + 1
        while moderators.length > idx:
            uint256(moderators[idx]) = 0
            idx = idx + 1
            continue 
    address(moderators[moderators.length]) = msg.sender
}

function addModerator(address arg1) {
    require owner == msg.sender
    moderators.length++
    if not moderators.length <= moderators.length + 1:
        idx = moderators.length + 1
        while moderators.length > idx:
            uint256(moderators[idx]) = 0
            idx = idx + 1
            continue 
    address(moderators[moderators.length]) = arg1
}

function ban(address arg1) {
    idx = 0
    while idx < moderators.length:
        mem[0] = 1
        if address(moderators[idx]) != msg.sender:
            require idx != moderators.length - 1
            idx = idx + 1
            continue 
        stor5[address(arg1)] = 1
        require 0 < deposit[address(arg1)].field_0
        deposit[address(arg1)].field_0 = 0
    stor5[address(arg1)] = 1
    require 0 < deposit[address(arg1)].field_0
    deposit[address(arg1)].field_0 = 0
}

function withdrawDeposit(uint256 arg1) {
    require 0 < deposit[address(msg.sender)].field_0
    require arg1 <= deposit[address(msg.sender)].field_0
    require 1 < deposit[address(msg.sender)].field_0
    require block.timestamp - deposit[address(msg.sender)].field_256 >= 24 * 3600
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 0 < deposit[address(msg.sender)].field_0
    deposit[address(msg.sender)].field_0 -= arg1
}

function sub_deb8b65d(?) {
    require msg.sender == 0x9a7599ee122c5fde8ec79f6234b8598d220368ba
    sub_e59f81c8.length++
    if not sub_e59f81c8.length <= sub_e59f81c8.length + 1:
        mem[0] = 12
        idx = sub_e59f81c8.length + 1
        while sha3(12) + sub_e59f81c8.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_e59f81c8[sub_e59f81c8.length][] = Array(len=arg1.length, data=arg1[all])
}

function bytes32ToString(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s
    mem[64] = (_msize + 224) + (32 * s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + (32 * s) + 32] = 32
    mem[(_msize + 224) + (32 * s) + 64] = mem[_msize + 224]
    _76 = mem[_msize + 224]
    if not mem[max(0, s + 8) + 224]:
        if not mem[max(0, s + 8) + 224] % 32:
            return 32, mem[(_msize + 224) + (32 * s) + 64 len mem[_msize + 224] + 32]
        mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
        return 32, mem[(_msize + 224) + (32 * s) + 64 len floor32(_76) + 64]
    mem[(_msize + 224) + (32 * s) + 96] = mem[(_msize + 224) + 32]
    mem[(_msize + 224) + (32 * s) + 128 len floor32(mem[_msize + 224] - 1)] = mem[(_msize + 224) + 64 len floor32(mem[_msize + 224] - 1)]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + (32 * s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[(_msize + 224) + (32 * s) + 64 len floor32(mem[_msize + 224]) + 64]
}

function sub_5cc8d53c(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not stor5[address(msg.sender)]
    require 0 < deposit[address(msg.sender)].field_0
    require deposit[address(msg.sender)].field_0 + msg.value >= stor11
    require arg2 <= sub_71c4b965
    require 0 < deposit[address(msg.sender)].field_0
    deposit[address(msg.sender)].field_0 += msg.value
    if arg2 != sub_71c4b965:
        uint256(sub_6661f1b8[arg2])++
        if not uint256(sub_6661f1b8[arg2]) <= uint256(sub_6661f1b8[arg2]) + 1:
            idx = uint256(sub_6661f1b8[arg2]) + 1
            while uint256(sub_6661f1b8[arg2]) > idx:
                uint256(sub_6661f1b8[arg2][idx]) = 0
                idx = idx + 1
                continue 
        address(sub_6661f1b8[arg2][uint256(sub_6661f1b8[arg2])]) = msg.sender
        sub_0fbf88c3[arg2].field_0++
        if not sub_0fbf88c3[arg2].field_0 <= sub_0fbf88c3[arg2].field_0 + 1:
            mem[0] = sha3(arg2, 2)
            idx = sub_0fbf88c3[arg2].field_0 + 1
            while sha3(sha3(arg2, 2)) + sub_0fbf88c3[arg2].field_0 > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0][].field_0 = Array(len=arg1.length, data=arg1[all])
        sub_b97da33b[arg2]++
        if not sub_b97da33b[arg2] <= sub_b97da33b[arg2] + 1:
            idx = sub_b97da33b[arg2] + 1
            while sub_b97da33b[arg2] > idx:
                sub_b97da33b[arg2][idx] = 0
                idx = idx + 1
                continue 
        sub_b97da33b[arg2][sub_b97da33b[arg2]] = block.timestamp
        require 1 < deposit[address(msg.sender)].field_0
        deposit[address(msg.sender)].field_256 = block.timestamp
    else:
        require arg3 <= stor10
        mem[32] = 2
        sub_0fbf88c3[arg2].field_0++
        if not sub_0fbf88c3[arg2].field_0 <= sub_0fbf88c3[arg2].field_0 + 1:
            mem[0] = sha3(arg2, 2)
            idx = sub_0fbf88c3[arg2].field_0 + 1
            while sha3(sha3(arg2, 2)) + sub_0fbf88c3[arg2].field_0 > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        if not arg3:
            mem[ceil32(arg1.length) + 128] = 0
            mem[ceil32(arg1.length) + 160] = 0
            mem[ceil32(arg1.length) + 192] = 0
            mem[ceil32(arg1.length) + 224] = 32
            s = 0
            idx = 0
            s = 0
            while idx < 32:
                if not Mask(8, 248, '0' * 2^(8 * idx)):
                    s = '0' * 2^(8 * idx)
                    idx = idx + 1
                    s = s
                    continue 
                require s < 32
                mem[ceil32(arg1.length) + s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', "'0'", ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', "'0'", ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                s = '0' * 2^(8 * idx)
                idx = idx + 1
                s = s + 1
                continue 
            if s + 264 < 1280:
                mem[ceil32(arg1.length) + 1280] = s
                t = 0
                while t < s:
                    require t < 32
                    require t < s
                    mem[ceil32(arg1.length) + t + 1312 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 2)), 32))), 0) - 256
                    t = t + 1
                    continue 
                sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0][].field_0 = Array(len=s, data=mem[ceil32(arg1.length) + 1312 len s])
            else:
                mem[ceil32(arg1.length) + s + 264] = s
                mem[64] = ceil32(arg1.length) + (34 * s) + 296
                t = 0
                while t < s:
                    require t < 32
                    require t < s, None
                    mem[ceil32(arg1.length) + s + t + 296 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 2)), 32))), 0) - 256
                    t = t + 1
                    continue 
                mem[0] = sub_0fbf88c3[arg2].field_0 + sha3(sha3(arg2, 2))
                if 31 < s, None:
                    sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_0 = (2 * s) + 1
                    if not s, None:
                        idx = 0
                        while sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].length + 31 / 32 > idx:
                            sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = 0
                        u = ceil32(arg1.length) + s + 296
                        while ceil32(arg1.length) + s + s, None + 296 > u:
                            sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + t].field_0 = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = Mask(251, 0, s, None + 31) >> 5
                        while sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].length + 31 / 32 > idx:
                            sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    bool(sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_0) = 0
                    uint255(sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_1) = uint255(s)
                    Mask(248, 0, sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_8) = mem[ceil32(arg1.length) + s + 296 len 31]
                    idx = 0
                    while sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].length + 31 / 32 > idx:
                        sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            s = 0
            idx = arg3
            while idx > 0:
                s = (idx % 10) + 48 << 248 or s / 256
                idx = idx / 10
                continue 
            mem[ceil32(arg1.length) + 128] = 0
            mem[ceil32(arg1.length) + 160] = 0
            mem[ceil32(arg1.length) + 192] = 0
            mem[ceil32(arg1.length) + 224] = 32
            t = 0
            idx = 0
            t = 0
            while idx < 32:
                if not Mask(8, 248, s * 2^(8 * idx)):
                    t = s * 2^(8 * idx)
                    idx = idx + 1
                    t = t
                    continue 
                require t < 32
                mem[ceil32(arg1.length) + t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('var', 1), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('var', 1), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
                t = s * 2^(8 * idx)
                idx = idx + 1
                t = t + 1
                continue 
            if t + 264 < 1280:
                mem[ceil32(arg1.length) + 1280] = t
                s = 0
                while s < t:
                    require s < 32
                    require s < t
                    mem[ceil32(arg1.length) + s + 1312 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0][].field_0 = Array(len=t, data=mem[ceil32(arg1.length) + 1312 len t])
            else:
                mem[ceil32(arg1.length) + t + 264] = t
                mem[64] = ceil32(arg1.length) + (34 * t) + 296
                s = 0
                while s < t:
                    require s < 32
                    require s < t, None
                    mem[ceil32(arg1.length) + t + s + 296 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 1)), 32))), 0) - 256
                    s = s + 1
                    continue 
                mem[0] = sub_0fbf88c3[arg2].field_0 + sha3(sha3(arg2, 2))
                if 31 < t, None:
                    sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_0 = (2 * t) + 1
                    if not t, None:
                        idx = 0
                        while sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].length + 31 / 32 > idx:
                            sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        u = ceil32(arg1.length) + t + 296
                        while ceil32(arg1.length) + t + t, None + 296 > u:
                            sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + s].field_0 = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        idx = Mask(251, 0, t, None + 31) >> 5
                        while sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].length + 31 / 32 > idx:
                            sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    bool(sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_0) = 0
                    uint255(sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_1) = uint255(t)
                    Mask(248, 0, sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].field_8) = mem[ceil32(arg1.length) + t + 296 len 31]
                    idx = 0
                    while sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0].length + 31 / 32 > idx:
                        sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0 + idx].field_0 = 0
                        idx = idx + 1
                        continue 
        uint256(sub_6661f1b8[arg2])++
        if not uint256(sub_6661f1b8[arg2]) <= uint256(sub_6661f1b8[arg2]) + 1:
            idx = uint256(sub_6661f1b8[arg2]) + 1
            while uint256(sub_6661f1b8[arg2]) > idx:
                uint256(sub_6661f1b8[arg2][idx]) = 0
                idx = idx + 1
                continue 
        address(sub_6661f1b8[arg2][uint256(sub_6661f1b8[arg2])]) = msg.sender
        sub_0fbf88c3[arg2].field_0++
        if not sub_0fbf88c3[arg2].field_0 <= sub_0fbf88c3[arg2].field_0 + 1:
            mem[0] = sha3(arg2, 2)
            idx = sub_0fbf88c3[arg2].field_0 + 1
            while sha3(sha3(arg2, 2)) + sub_0fbf88c3[arg2].field_0 > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        sub_0fbf88c3[arg2][sub_0fbf88c3[arg2].field_0][].field_0 = Array(len=arg1.length, data=arg1[all])
        sub_b97da33b[arg2]++
        if not sub_b97da33b[arg2] <= sub_b97da33b[arg2] + 1:
            idx = sub_b97da33b[arg2] + 1
            while sub_b97da33b[arg2] > idx:
                sub_b97da33b[arg2][idx] = 0
                idx = idx + 1
                continue 
        sub_b97da33b[arg2][sub_b97da33b[arg2]] = block.timestamp
        require 1 < deposit[address(msg.sender)].field_0
        deposit[address(msg.sender)].field_256 = block.timestamp
        sub_71c4b965++
}



}
