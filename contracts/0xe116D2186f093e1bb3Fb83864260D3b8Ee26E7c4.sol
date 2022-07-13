contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4cde6eb6(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 32
    mem[64] = 160
    mem[128] = code.data[798 len 32]
    s = 0
    idx = arg1
    while idx:
        require s < mem[96]
        mem[s + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = s + 1
        idx = idx / 10
        continue 
    _15 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        idx = 0
        t = s - 1
        while idx < mem[_15]:
            require t < mem[96]
            require idx < mem[_15]
            mem[idx + _15 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
            idx = idx + 1
            t = t - 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_15]
        _45 = mem[_15]
        mem[mem[64] + 64 len ceil32(mem[_15])] = mem[_15 + 32 len ceil32(mem[_15])]
        if not _45 % 32:
            return 32, mem[mem[64] + 32 len _45 + 32]
        mem[floor32(_45) + mem[64] + 64] = mem[floor32(_45) + mem[64] + -(_45 % 32) + 96 len _45 % 32]
        return 32, mem[mem[64] + 32 len floor32(_45) + 64]
    mem[_15 + 32 len s] = code.data[798 len s]
    idx = 0
    t = s - 1
    while idx < mem[_15]:
        require t < mem[96]
        require idx < mem[_15]
        mem[idx + _15 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
        idx = idx + 1
        t = t - 1
        continue 
    _48 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_15]
    _50 = mem[_15]
    mem[mem[64] + 64 len ceil32(mem[_15])] = mem[_15 + 32 len ceil32(mem[_15])]
    if not _50 % 32:
        return 32, mem[mem[64] + 32 len _50 + 32]
    mem[floor32(_50) + mem[64] + 64] = mem[floor32(_50) + mem[64] + -(_50 % 32) + 96 len _50 % 32]
    return memory
      from mem[64]
       len floor32(_50) + _48 + -mem[64] + 96
}

function sub_ac29c739(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
    mem[96] = 32
    mem[64] = 160
    mem[128] = code.data[798 len 32]
    s = 0
    idx = arg1
    while idx:
        require s < mem[96]
        mem[s + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = s + 1
        idx = idx / 10
        continue 
    _3 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        idx = 0
        t = s - 1
        while idx < mem[_3]:
            require t < mem[96]
            require idx < mem[_3]
            mem[idx + _3 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
            idx = idx + 1
            t = t - 1
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_3]
        _33 = mem[_3]
        mem[mem[64] + 68 len ceil32(mem[_3])] = mem[_3 + 32 len ceil32(mem[_3])]
        if not _33 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _33 + 32]
        mem[floor32(_33) + mem[64] + 68] = mem[floor32(_33) + mem[64] + -(_33 % 32) + 100 len _33 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_33) + 64]
    mem[_3 + 32 len s] = code.data[798 len s]
    idx = 0
    t = s - 1
    while idx < mem[_3]:
        require t < mem[96]
        require idx < mem[_3]
        mem[idx + _3 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 2)), 32))), 0) - 256
        idx = idx + 1
        t = t - 1
        continue 
    _36 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_3]
    _38 = mem[_3]
    mem[mem[64] + 68 len ceil32(mem[_3])] = mem[_3 + 32 len ceil32(mem[_3])]
    if not _38 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _38 + 32]
    mem[floor32(_38) + mem[64] + 68] = mem[floor32(_38) + mem[64] + -(_38 % 32) + 100 len _38 % 32]
    revert with memory
      from mem[64]
       len floor32(_38) + _36 + -mem[64] + 100
}



}
