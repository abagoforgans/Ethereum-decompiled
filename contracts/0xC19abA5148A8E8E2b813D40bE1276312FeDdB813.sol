contract main {




// =====================  Runtime code  =====================


#
#  - addressToString(address arg1)
#  - sub_b07a0d04(?)
#
const getTotalBalance = eth.balance(this.address)


address creatorAddress;
array of uint256 stor1;
array of uint256 stor2;
uint256 sub_f2e68fbb;

function getCreator() {
    return creatorAddress
}

function sub_f2e68fbb(?) {
    return sub_f2e68fbb
}

function resetGame() {
    if creatorAddress != msg.sender:
    selfdestruct(0xdc3df52bb1d116471f18b4931895d91eeefdc2b3)
}

function _fallback() payable {
  stop
}

function clone(address arg1) {
    create contract with 0 wei
                    code: (0x5880730000000000000000000000000000000000000000803b80938091923cf3 or address(arg1) << 72)
    return address(create.new_address)
}

function substring(string arg1, uint256 arg2, uint256 arg3) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3 - arg2
    mem[64] = ceil32(arg1.length) + floor32(arg3 + -arg2 + 31) + 160
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            require idx < mem[96]
            require idx - arg2 < mem[ceil32(arg1.length) + 128]
            mem[ceil32(arg1.length) + idx + -arg2 + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        _25 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        _27 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
        if not _27 % 32:
            return 32, mem[mem[64] + 32 len _27 + 32]
        mem[floor32(_27) + mem[64] + 64] = mem[floor32(_27) + mem[64] + -(_27 % 32) + 96 len _27 % 32]
        return memory
          from mem[64]
           len floor32(_27) + _25 + -mem[64] + 96
    mem[ceil32(arg1.length) + 160 len 32 * arg3 - arg2] = code.data[7705 len 32 * arg3 - arg2]
    idx = arg2
    while idx < arg3:
        require idx < mem[96]
        require idx - arg2 < mem[ceil32(arg1.length) + 128]
        mem[ceil32(arg1.length) + idx + -arg2 + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _32 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _32 % 32:
        return 32, mem[mem[64] + 32 len _32 + 32]
    mem[floor32(_32) + mem[64] + 64] = mem[floor32(_32) + mem[64] + -(_32 % 32) + 96 len _32 % 32]
    return memory
      from mem[64]
       len floor32(_32) + _30 + -mem[64] + 96
}

function sub_22400b78(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[0] = 2
    bool(stor2.length) = 0
    uint255(stor2.length.field_1) = 0
    Mask(248, 0, stor2.length.field_8) = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 31]
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < 5:
        s = 0
        while s < 5:
            require s < mem[96]
            _790 = mem[64]
            mem[mem[64] + 32] = Mask(8, 248, mem[s + 128])
            _791 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 33
            require idx < mem[ceil32(arg1.length) + 128]
            mem[_790 + 65] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
            mem[_790 + 33] = 1
            mem[64] = _790 + 66
            if mem[_791] != 1:
                s = s + 1
                continue 
            u = _790 + 65
            v = mem[64] + 32
            t = mem[_790 + 33]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_790 + 33]) + 32] = mem[_790 + floor32(mem[_790 + 33]) + -(mem[_790 + 33] % 32) + 97 len mem[_790 + 33] % 32] or Mask(8 * -(mem[_790 + 33] % 32) + 32, -(8 * -(mem[_790 + 33] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_790 + 33]) + 32])
            _984 = mem[64]
            mem[mem[64]] = _790 + -mem[64] + 67
            mem[64] = _790 + 99
            _986 = mem[_984]
            t = _984 + 32
            v = mem[64]
            s = mem[_984]
            while s >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_984])] = mem[_984 + floor32(mem[_984]) + -(mem[_984] % 32) + 64 len mem[_984] % 32] or Mask(8 * -(mem[_984] % 32) + 32, -(8 * -(mem[_984] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_984])])
            _1159 = sha3(mem[mem[64] len _986 + _790 + -mem[64] + 99])
            _1160 = mem[64]
            _1161 = mem[_791]
            t = _791 + 32
            v = mem[64] + 32
            s = mem[_791]
            while s >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_791]) + 32] = mem[_791 + floor32(mem[_791]) + -(mem[_791] % 32) + 64 len mem[_791] % 32] or Mask(8 * -(mem[_791] % 32) + 32, -(8 * -(mem[_791] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_791]) + 32])
            _1302 = mem[64]
            mem[mem[64]] = _1161 + _1160 - mem[64]
            mem[64] = _1161 + _1160 + 32
            _1304 = mem[_1302]
            t = _1302 + 32
            v = mem[64]
            s = mem[_1302]
            while s >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_1302])] = mem[_1302 + floor32(mem[_1302]) + -(mem[_1302] % 32) + 64 len mem[_1302] % 32] or Mask(8 * -(mem[_1302] % 32) + 32, -(8 * -(mem[_1302] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1302])])
            if sha3(mem[mem[64] len _1304 + _1161 + _1160 + -mem[64] + 32]) == _1159:
                require u < mem[96]
                _1436 = mem[u + 128]
                require idx < mem[ceil32(arg1.length) + 128]
                _1441 = mem[ceil32(arg1.length) + idx + 160]
                _1442 = mem[64]
                mem[0] = 2
                mem[mem[64] + 32] = uint256(stor2.field_0)
                s = mem[64] + 32
                t = sha3(2)
                while _1442 + stor2.length > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1442 + stor2.length + 32] = '*'
                mem[_1442 + stor2.length + 33] = Mask(8, 248, _1436)
                mem[_1442 + stor2.length + 34] = '**'
                mem[_1442 + stor2.length + 36] = Mask(8, 248, _1441)
                _1579 = mem[64]
                mem[mem[64]] = _1442 + stor2.length + -mem[64] + 5
                mem[64] = _1442 + stor2.length + 37
                _1580 = mem[_1579]
                mem[0] = 2
                stor2.length = (2 * _1580) + 1
                t = sha3(2)
                s = _1579 + 32
                while _1579 + _1580 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(2) + (Mask(251, 0, _1580 + 31) >> 5)
                while sha3(2) + (stor2.length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                require u < mem[96]
                mem[u + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'X'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'X'"), 0) - 256
                require idx < mem[ceil32(arg1.length) + 128]
                mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'Y'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'Y'"), 0) - 256
            u = u + 1
            continue 
        s = s
        idx = idx + 1
        continue 
    return 0
}



}
