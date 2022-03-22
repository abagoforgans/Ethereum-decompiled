contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3244]




// =====================  Runtime code  =====================


#
#  - parse(bytes32 arg1)
#
mapping of uint8 registered;
mapping of address institutions;
mapping of uint256 assets;

function registered(bytes32 arg1) payable {
    return registered[arg1]
}

function institutions(bytes32 arg1) payable {
    return address(institutions[arg1])
}

function assets(bytes32 arg1) payable {
    return assets[arg1]
}

function _fallback() payable {
  stop
}

function registerAsset(string arg1, bytes32 arg2) payable {
    if registered[arg1[all]]:
        return 0
    registered[arg1[all]] = 1
    assets[arg1[all]] = arg2
    return 1
}

function mod9710(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < 18:
        require uint8(idx) < arg1.length
        if mem[uint8(idx) + 128 len 1] < 48:
            s = mem[uint8(idx) + 128 len 1]
            idx = idx + 1
            s = (10 * (10 * s) + uint8(mem[uint8(idx) + 128 len 1] / 10) % 97) + uint8(mem[uint8(idx) + 128 len 1] % 10) % 97
            continue 
        s = mem[uint8(idx) + 128 len 1]
        idx = idx + 1
        s = uint8(mem[uint8(idx) + 128 len 1] - 48) + (10 * s) % 97
        continue 
    return uint8(10 * 10 * s % 97 % 97)
}

function sub_522842d1(?) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if not registered[arg1[all]]:
        return 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    if registered[mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]]:
        return 0
    registered[mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]] = 1
    uint256(institutions[mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]]) = arg3 or Mask(96, 160, uint256(institutions[mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]]))
    return 1
}

function prepare(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    while uint8(idx) < 16:
        require uint8(idx) < arg1.length
        _9 = mem[uint8(idx) + 128]
        if mem[uint8(idx) + 128 len 1] < 65:
            s = mem[uint8(idx) + 128 len 1]
            idx = idx + 1
            continue 
        if mem[uint8(idx) + 128 len 1] > 90:
            s = mem[uint8(idx) + 128 len 1]
            idx = idx + 1
            continue 
        require uint8(idx) < arg1.length
        mem[uint8(idx) + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -55, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 0, ('var', 0))), 1)))), 0) - 256
        s = Mask(8, 248, _9) >> 248
        idx = idx + 1
        continue 
    require 16 < arg1.length
    mem[144 len 8] = 33
    require 17 < arg1.length
    mem[145 len 8] = 14
    return Array(len=arg1.length, data=mem[128 len arg1.length])
}

function decodeIndirect(bytes arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = 0
    mem[ceil32(arg1.length) + 320] = 3
    mem[ceil32(arg1.length) + 448] = 4
    mem[ceil32(arg1.length) + 480] = 9
    mem[64] = ceil32(arg1.length) + 800
    idx = 0
    s = 0
    while idx < mem[ceil32(arg1.length) + 320]:
        require s < arg1.length
        require idx < mem[ceil32(arg1.length) + 320]
        mem[ceil32(arg1.length) + idx + 352 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = mem[ceil32(arg1.length) + 320]
    while idx < mem[ceil32(arg1.length) + 448]:
        require s < arg1.length
        require idx < mem[ceil32(arg1.length) + 448]
        mem[ceil32(arg1.length) + idx + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = mem[ceil32(arg1.length) + 320] + mem[ceil32(arg1.length) + 448]
    while idx < mem[ceil32(arg1.length) + 480]:
        require s < mem[96]
        require idx < mem[ceil32(arg1.length) + 480]
        mem[ceil32(arg1.length) + idx + 512 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _1046 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[ceil32(arg1.length) + 320]
    _1048 = mem[ceil32(arg1.length) + 320]
    mem[mem[64] + 128 len mem[ceil32(arg1.length) + 320]] = mem[ceil32(arg1.length) + 352 len mem[ceil32(arg1.length) + 320]]
    if not _1048 % 32:
        mem[mem[64] + 32] = _1048 + 128
        mem[_1048 + _1046 + 128] = mem[ceil32(arg1.length) + 448]
        _1077 = mem[ceil32(arg1.length) + 448]
        mem[_1048 + _1046 + 160 len mem[ceil32(arg1.length) + 448]] = mem[ceil32(arg1.length) + 480 len mem[ceil32(arg1.length) + 448]]
        if not _1077 % 32:
            mem[_1046 + 64] = _1077 + _1048 + 160
            mem[_1077 + _1048 + _1046 + 160] = mem[ceil32(arg1.length) + 480]
            _1111 = mem[ceil32(arg1.length) + 480]
            mem[_1077 + _1048 + _1046 + 192 len mem[ceil32(arg1.length) + 480]] = mem[ceil32(arg1.length) + 512 len mem[ceil32(arg1.length) + 480]]
            if not _1111 % 32:
                return memory
                  from mem[64]
                   len _1111 + _1077 + _1048 + _1046 + -mem[64] + 192
            mem[floor32(_1111) + _1077 + _1048 + _1046 + 192] = mem[floor32(_1111) + _1077 + _1048 + _1046 + -(_1111 % 32) + 224 len _1111 % 32]
            return memory
              from mem[64]
               len floor32(_1111) + _1077 + _1048 + _1046 + -mem[64] + 224
        mem[floor32(_1077) + _1048 + _1046 + 160] = mem[floor32(_1077) + _1048 + _1046 + -(_1077 % 32) + 192 len _1077 % 32]
        mem[_1046 + 64] = floor32(_1077) + _1048 + 192
        mem[floor32(_1077) + _1048 + _1046 + 192] = mem[ceil32(arg1.length) + 480]
        _1163 = mem[ceil32(arg1.length) + 480]
        mem[floor32(_1077) + _1048 + _1046 + 224 len mem[ceil32(arg1.length) + 480]] = mem[ceil32(arg1.length) + 512 len mem[ceil32(arg1.length) + 480]]
        if not _1163 % 32:
            return memory
              from mem[64]
               len _1163 + floor32(_1077) + _1048 + _1046 + -mem[64] + 224
        mem[floor32(_1163) + floor32(_1077) + _1048 + _1046 + 224] = mem[floor32(_1163) + floor32(_1077) + _1048 + _1046 + -(_1163 % 32) + 256 len _1163 % 32]
        return memory
          from mem[64]
           len floor32(_1163) + floor32(_1077) + _1048 + _1046 + -mem[64] + 256
    mem[floor32(_1048) + mem[64] + 128] = mem[floor32(_1048) + mem[64] + -(_1048 % 32) + 160 len _1048 % 32]
    mem[mem[64] + 32] = floor32(_1048) + 160
    mem[floor32(_1048) + _1046 + 160] = mem[ceil32(arg1.length) + 448]
    _1114 = mem[ceil32(arg1.length) + 448]
    mem[floor32(_1048) + _1046 + 192 len mem[ceil32(arg1.length) + 448]] = mem[ceil32(arg1.length) + 480 len mem[ceil32(arg1.length) + 448]]
    if not _1114 % 32:
        mem[_1046 + 64] = _1114 + floor32(_1048) + 192
        mem[_1114 + floor32(_1048) + _1046 + 192] = mem[ceil32(arg1.length) + 480]
        _1165 = mem[ceil32(arg1.length) + 480]
        mem[_1114 + floor32(_1048) + _1046 + 224 len mem[ceil32(arg1.length) + 480]] = mem[ceil32(arg1.length) + 512 len mem[ceil32(arg1.length) + 480]]
        if not _1165 % 32:
            return memory
              from mem[64]
               len _1165 + _1114 + floor32(_1048) + _1046 + -mem[64] + 224
        mem[floor32(_1165) + _1114 + floor32(_1048) + _1046 + 224] = mem[floor32(_1165) + _1114 + floor32(_1048) + _1046 + -(_1165 % 32) + 256 len _1165 % 32]
        return memory
          from mem[64]
           len floor32(_1165) + _1114 + floor32(_1048) + _1046 + -mem[64] + 256
    mem[floor32(_1114) + floor32(_1048) + _1046 + 192] = mem[floor32(_1114) + floor32(_1048) + _1046 + -(_1114 % 32) + 224 len _1114 % 32]
    mem[_1046 + 64] = floor32(_1114) + floor32(_1048) + 224
    mem[floor32(_1114) + floor32(_1048) + _1046 + 224] = mem[ceil32(arg1.length) + 480]
    _1222 = mem[ceil32(arg1.length) + 480]
    mem[floor32(_1114) + floor32(_1048) + _1046 + 256 len mem[ceil32(arg1.length) + 480]] = mem[ceil32(arg1.length) + 512 len mem[ceil32(arg1.length) + 480]]
    if not _1222 % 32:
        return memory
          from mem[64]
           len _1222 + floor32(_1114) + floor32(_1048) + _1046 + -mem[64] + 256
    mem[floor32(_1222) + floor32(_1114) + floor32(_1048) + _1046 + 256] = mem[floor32(_1222) + floor32(_1114) + floor32(_1048) + _1046 + -(_1222 % 32) + 288 len _1222 % 32]
    return memory
      from mem[64]
       len floor32(_1222) + floor32(_1114) + floor32(_1048) + _1046 + -mem[64] + 288
}



}
