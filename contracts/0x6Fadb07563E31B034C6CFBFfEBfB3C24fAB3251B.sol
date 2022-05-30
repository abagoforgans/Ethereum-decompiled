contract main {




// =====================  Runtime code  =====================


address stor1;
array of struct stor5;

function _fallback() payable {
    revert
}

function updateMokenName(uint256 arg1, string arg2) {
    if stor1 != msg.sender:
        revert with 0, 'Must own Mokens contract.'
    mem[32] = 5
    mem[64] = ceil32(stor5[arg1].length) + 128
    mem[96] = stor5[arg1].length
    mem[0] = sha3(arg1, 5)
    mem[128] = stor5[arg1].field_0
    idx = 128
    s = 0
    while stor5[arg1].length + 96 > idx:
        mem[idx + 32] = stor5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == stor5[arg1].length:
        revert with 0, 'The tokenId does not exist.'
    require stor5[arg1].length
    require stor5[arg1].length <= 100
    require Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 128, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 128, 32))), 0) - 256 >= 33
    require Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('stor', ('length', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('stor', ('length', ('map', ('param', 'arg1'), ('name', 'stor5', 5))))), 32))), 0) - 256 >= 33
    s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('mem', ('range', 96, 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('mem', ('range', 96, 32))), 32))), 0) - 256
    idx = 128
    while idx < stor5[arg1].length + 128:
        _330 = mem[idx]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 >= 91:
            s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
            idx = idx + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 <= 64:
            s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[idx len 8] = (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256) + 32
        s = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_330')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_330')), 0) - 256
        idx = idx + 1
        continue 
    _338 = mem[64]
    _339 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + _339] = 28
    stor[sha3(mem[mem[64] len _338 + _339 + -mem[64] + 32])] = 0
    mem[32] = 5
    mem[0] = sha3(arg1, 5)
    stor5[arg1].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor5[arg1][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor5[arg1].length + 31 / 32 > idx:
        stor5[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    _738 = mem[64]
    mem[64] = mem[64] + ceil32(arg2.length) + 32
    mem[_738] = arg2.length
    mem[_738 + 32 len arg2.length] = arg2[all]
    require arg2.length
    require arg2.length <= 100
    require Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 32, ('var', '_738')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 32, ('var', '_738')), 32))), 0) - 256 >= 33
    require Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))), ('var', '_738')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))), ('var', '_738')), 32))), 0) - 256 >= 33
    s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 31, ('mem', ('range', ('var', '_738'), 32)), ('var', '_738')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 31, ('mem', ('range', ('var', '_738'), 32)), ('var', '_738')), 32))), 0) - 256
    idx = _738 + 32
    while idx < _738 + arg2.length + 32:
        _775 = mem[idx]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 >= 91:
            s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
            idx = idx + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 <= 64:
            s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[idx len 8] = (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256) + 32
        s = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_775')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_775')), 0) - 256
        idx = idx + 1
        continue 
    _789 = mem[_738]
    mem[mem[64] len floor32(mem[_738])] = mem[_738 + 32 len floor32(mem[_738])]
    mem[mem[64] + floor32(mem[_738])] = 256^(-(mem[_738] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_738])] or mem[_738 + floor32(mem[_738]) + 32] and !(256^(-(mem[_738] % 32) + 32) - 1)
    mem[mem[64] + _789] = 28
    stor[sha3(mem[mem[64] len _789 + 32])] = arg1 + 1
    emit MokenNameChange(Array(len=arg2.length, data=arg2[all]), arg1);
}



}
