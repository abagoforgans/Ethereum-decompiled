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
    return code.data[50 len 6837]
}



// =====================  Runtime code  =====================


#
#  - sub_5cc8d53c(?)
#
address owner;
array of address moderators;
array of uint256 sub_0fbf88c3;
array of struct deposit;
array of uint256 sub_8fe46855;
mapping of uint8 stor5;
mapping of struct nicknames;
array of address sub_6661f1b8;
array of uint256 sub_b97da33b;
uint256 sub_71c4b965;
uint256 stor10;
uint256 stor11;
array of uint256 sub_e59f81c8;
array of struct sub_c51cad5b;

function sub_0fbf88c3(?) {
    return sub_0fbf88c3[arg1][arg2][0 len sub_0fbf88c3[arg1][arg2].length]
}

function deposit(address arg1, uint256 arg2) {
    require arg2 < 2
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
    return nicknames[arg1][0 len nicknames[arg1].length].field_0
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
    return sub_c51cad5b[arg1][0 len sub_c51cad5b[arg1].length].field_0
}

function sub_e59f81c8(?) {
    return sub_e59f81c8[arg1][0 len sub_e59f81c8[arg1].length]
}

function sub_4ade72d9(?) {
    require owner == msg.sender
    stor10 = arg1
}

function _fallback() payable {
    deposit[address(msg.sender)].field_0 += msg.value
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

function withdrawDeposit(uint256 arg1) {
    require arg1 <= deposit[address(msg.sender)].field_0
    require block.timestamp - deposit[address(msg.sender)].field_256 >= 24 * 3600
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    deposit[address(msg.sender)].field_0 -= arg1
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
        deposit[address(arg1)].field_0 = 0
    stor5[address(arg1)] = 1
    deposit[address(arg1)].field_0 = 0
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

function sub_d20d7539(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    while idx < sub_c51cad5b.length:
        mem[0] = 13
        _259 = mem[64]
        mem[64] = mem[64] + 32
        mem[_259] = 0
        if sub_c51cad5b[idx].length == mem[96]:
            require var21001 < sub_c51cad5b[idx].length
            require var21001 < mem[96]
            require var21001 < sub_c51cad5b[idx].length
            if not bool(sub_c51cad5b[idx].field_0):
                if Mask(8, -(('field', 3, ('stor', ('array', ('var', 0), ('name', 'sub_c51cad5b', 13)))), 0) + 256, var21001) << (('field', 3, ('stor', ('array', ('var', 0), ('name', 'sub_c51cad5b', 13)))), 0) - 8 == Mask(8, 248, mem[var21001 + 128]):
                    var21001 = var21001 + 1
                    continue 
            else:
                mem[0] = idx + sha3(13)
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 21001)), ('array', ('var', 0), ('name', 'sub_c51cad5b', 13))))), 0) + 256, var21001 % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 21001)), ('array', ('var', 0), ('name', 'sub_c51cad5b', 13))))), 0) - 8 == Mask(8, 248, mem[var21001 + 128]):
                    var21001 = var21001 + 1
                    continue 
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 6
    _255 = mem[64]
    mem[64] = mem[64] + 32
    mem[_255] = 0
    _257 = mem[64]
    mem[64] = mem[64] + 32
    mem[_257] = 0
    if not Mask(255, 1, (256 * not bool(nicknames[address(msg.sender)].field_0)) - 1 and nicknames[address(msg.sender)].field_0):
        idx = 0
        while idx < nicknames[address(msg.sender)].length:
            require idx < mem[_255]
            require idx < nicknames[address(msg.sender)].length
            if not bool(nicknames[address(msg.sender)].field_0):
                if Mask(8, -(('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) + 256, idx) << (('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) - 8 == Mask(8, 248, mem[_255 + idx + 32]):
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < sub_c51cad5b.length:
                    mem[32] = 6
                    mem[0] = 13
                    _766 = mem[64]
                    mem[64] = mem[64] + ceil32(sub_c51cad5b[idx].length) + 32
                    mem[_766] = sub_c51cad5b[idx].length
                    mem[0] = idx + sha3(13)
                    mem[_766 + 32] = sub_c51cad5b[idx].field_0
                    s = _766 + 32
                    t = sha3(mem[0])
                    while _766 + sub_c51cad5b[idx].length > s:
                        mem[s + 32] = uint256(moderators[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    _995 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_995] = 0
                    if nicknames[address(msg.sender)].length == mem[_766]:
                        s = 0
                        while s < nicknames[address(msg.sender)].length:
                            require s < mem[_766]
                            require s < nicknames[address(msg.sender)].length
                            if not bool(nicknames[address(msg.sender)].field_0):
                                if Mask(8, -(('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) - 8 == Mask(8, 248, mem[_766 + s + 32]):
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = sha3(address(msg.sender), 6)
                                if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) - 8 == Mask(8, 248, mem[_766 + s + 32]):
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require idx < sub_c51cad5b.length
                        mem[0] = 13
                        sub_c51cad5b[idx].field_0 = 0
                        if 31 < sub_c51cad5b[idx].length:
                            mem[0] = idx + sha3(13)
                            s = sha3(idx + sha3(13))
                            while sha3(idx + sha3(13)) + (sub_c51cad5b[idx].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            else:
                mem[0] = sha3(address(msg.sender), 6)
                if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) + 256, idx % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) - 8 == Mask(8, 248, mem[_255 + idx + 32]):
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < sub_c51cad5b.length:
                    mem[32] = 6
                    mem[0] = 13
                    _768 = mem[64]
                    mem[64] = mem[64] + ceil32(sub_c51cad5b[idx].length) + 32
                    mem[_768] = sub_c51cad5b[idx].length
                    mem[0] = idx + sha3(13)
                    mem[_768 + 32] = sub_c51cad5b[idx].field_0
                    s = _768 + 32
                    t = sha3(mem[0])
                    while _768 + sub_c51cad5b[idx].length > s:
                        mem[s + 32] = uint256(moderators[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    _998 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_998] = 0
                    if nicknames[address(msg.sender)].length == mem[_768]:
                        s = 0
                        while s < nicknames[address(msg.sender)].length:
                            require s < mem[_768]
                            require s < nicknames[address(msg.sender)].length
                            if not bool(nicknames[address(msg.sender)].field_0):
                                if Mask(8, -(('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) - 8 == Mask(8, 248, mem[_768 + s + 32]):
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = sha3(address(msg.sender), 6)
                                if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) - 8 == Mask(8, 248, mem[_768 + s + 32]):
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require idx < sub_c51cad5b.length
                        mem[0] = 13
                        sub_c51cad5b[idx].field_0 = 0
                        if 31 < sub_c51cad5b[idx].length:
                            mem[0] = idx + sha3(13)
                            s = sha3(idx + sha3(13))
                            while sha3(idx + sha3(13)) + (sub_c51cad5b[idx].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
            nicknames[address(msg.sender)].field_0 = (2 * mem[96]) + 1
            s = sha3(sha3(address(msg.sender), 6))
            idx = 128
            while mem[96] + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(msg.sender), 6)) + (Mask(251, 0, mem[96] + 31) >> 5)
            while sha3(sha3(address(msg.sender), 6)) + (nicknames[address(msg.sender)].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            sub_c51cad5b.length++
            if not sub_c51cad5b.length <= sub_c51cad5b.length + 1:
                mem[0] = 13
                idx = sub_c51cad5b.length + sha3(mem[0]) + 1
                while sha3(13) + sub_c51cad5b.length > idx:
                    stor[idx] = 0
                    if 31 < stor[idx].length:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
            sub_c51cad5b[sub_c51cad5b.length].field_0 = (2 * mem[96]) + 1
            s = sha3(sub_c51cad5b.length + sha3(13))
            idx = 128
            while mem[96] + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sub_c51cad5b.length + sha3(13)) + (Mask(251, 0, mem[96] + 31) >> 5)
            while sha3(sub_c51cad5b.length + sha3(13)) + (sub_c51cad5b[sub_c51cad5b.length].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    else:
        idx = 0
        while idx < sub_c51cad5b.length:
            mem[32] = 6
            mem[0] = 13
            _515 = mem[64]
            mem[64] = mem[64] + ceil32(sub_c51cad5b[idx].length) + 32
            mem[_515] = sub_c51cad5b[idx].length
            mem[0] = idx + sha3(13)
            mem[_515 + 32] = sub_c51cad5b[idx].field_0
            s = _515 + 32
            t = sha3(mem[0])
            while _515 + sub_c51cad5b[idx].length > s:
                mem[s + 32] = uint256(moderators[t])
                s = s + 32
                t = t + 1
                continue 
            _772 = mem[64]
            mem[64] = mem[64] + 32
            mem[_772] = 0
            if nicknames[address(msg.sender)].length == mem[_515]:
                s = 0
                while s < nicknames[address(msg.sender)].length:
                    require s < mem[_515]
                    require s < nicknames[address(msg.sender)].length
                    if not bool(nicknames[address(msg.sender)].field_0):
                        if Mask(8, -(('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6)))), 0) - 8 == Mask(8, 248, mem[_515 + s + 32]):
                            s = s + 1
                            continue 
                    else:
                        mem[0] = sha3(address(msg.sender), 6)
                        if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'nicknames', 6))))), 0) - 8 == Mask(8, 248, mem[_515 + s + 32]):
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                require idx < sub_c51cad5b.length
                mem[0] = 13
                sub_c51cad5b[idx].field_0 = 0
                if 31 < sub_c51cad5b[idx].length:
                    mem[0] = idx + sha3(13)
                    s = sha3(idx + sha3(13))
                    while sha3(idx + sha3(13)) + (sub_c51cad5b[idx].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    nicknames[address(msg.sender)][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    sub_c51cad5b.length++
    if not sub_c51cad5b.length <= sub_c51cad5b.length + 1:
        mem[0] = 13
        idx = sub_c51cad5b.length + 1
        while sha3(13) + sub_c51cad5b.length > idx + sha3(mem[0]):
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
    sub_c51cad5b[sub_c51cad5b.length][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
}



}
