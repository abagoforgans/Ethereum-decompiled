contract main {




// =====================  Runtime code  =====================


#
#  - sub_79054391(?)
#
mapping of struct stor0;
mapping of struct stor1;

function _fallback() payable {
    revert
}

function sub_6e730329(?) {
    require calldata.size - 4 >= 32
    if not stor1[arg1].field_0:
        revert with 0, 'Product inexistent'
    idx = 288
    s = 4
    while 480 > idx + 32:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[arg1].field_1024, mem[320 len 160]
}

function sub_8c431b9f(?) {
    require calldata.size - 4 >= 32
    mem[32] = 0
    mem[96] = stor0[arg1][1].length
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][1].length) + 128] = stor0[arg1][2].length
    mem[ceil32(stor0[arg1][1].length) + 160] = stor0[arg1][2].field_0
    idx = ceil32(stor0[arg1][1].length) + 160
    s = 0
    while ceil32(stor0[arg1][1].length) + stor0[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 192
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160] = stor0[arg1][3].length
    mem[0] = sha3(arg1, 0) + 3
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192] = stor0[arg1][3].field_0
    idx = ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192
    s = 0
    while ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + stor0[arg1][3].length + 160 > idx:
        mem[idx + 32] = stor0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 192] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 224] = 128
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 320] = stor0[arg1][1].length
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 352 len ceil32(stor0[arg1][1].length)] = mem[128 len ceil32(stor0[arg1][1].length)]
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 256] = stor0[arg1][1].length + 160
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 352] = stor0[arg1][2].length
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 384 len ceil32(stor0[arg1][2].length)] = mem[ceil32(stor0[arg1][1].length) + 160 len ceil32(stor0[arg1][2].length)]
    if not stor0[arg1][2].length % 32:
        mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 288] = stor0[arg1][2].length + stor0[arg1][1].length + 192
        mem[stor0[arg1][2].length + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 384] = stor0[arg1][3].length
        mem[stor0[arg1][2].length + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 416 len ceil32(stor0[arg1][3].length)] = mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192 len ceil32(stor0[arg1][3].length)]
        if not stor0[arg1][3].length % 32:
            return stor0[arg1].field_0, 
                   Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 352 len stor0[arg1][2].length + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 32], stor0[arg1][3].length, mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192 len stor0[arg1][3].length]),
                   stor0[arg1][1].length + 160,
                   stor0[arg1][2].length + stor0[arg1][1].length + 192
        mem[floor32(stor0[arg1][3].length) + stor0[arg1][2].length + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 416] = mem[floor32(stor0[arg1][3].length) + stor0[arg1][2].length + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + -stor0[arg1][3].length % 32 + 448 len stor0[arg1][3].length % 32]
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 352 len stor0[arg1][2].length + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 32], stor0[arg1][3].length, mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192 len ceil32(stor0[arg1][3].length)], mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + (2 * ceil32(stor0[arg1][3].length)) + stor0[arg1][2].length + stor0[arg1][1].length + 416 len floor32(stor0[arg1][3].length) + -ceil32(stor0[arg1][3].length) + 32]),
               stor0[arg1][1].length + 160,
               stor0[arg1][2].length + stor0[arg1][1].length + 192
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 384] = mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + -stor0[arg1][2].length % 32 + 416 len stor0[arg1][2].length % 32]
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 288] = floor32(stor0[arg1][2].length) + stor0[arg1][1].length + 224
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 416] = stor0[arg1][3].length
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 448 len ceil32(stor0[arg1][3].length)] = mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192 len ceil32(stor0[arg1][3].length)]
    if not stor0[arg1][3].length % 32:
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 352 len floor32(stor0[arg1][2].length) + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 64], stor0[arg1][3].length, mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192 len stor0[arg1][3].length]),
               stor0[arg1][1].length + 160,
               floor32(stor0[arg1][2].length) + stor0[arg1][1].length + 224
    mem[floor32(stor0[arg1][3].length) + floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 448] = mem[floor32(stor0[arg1][3].length) + floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + -stor0[arg1][3].length % 32 + 480 len stor0[arg1][3].length % 32]
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + ceil32(stor0[arg1][3].length) + 352 len floor32(stor0[arg1][2].length) + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 64], stor0[arg1][3].length, mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192 len ceil32(stor0[arg1][3].length)], mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + (2 * ceil32(stor0[arg1][3].length)) + floor32(stor0[arg1][2].length) + stor0[arg1][1].length + 448 len floor32(stor0[arg1][3].length) + -ceil32(stor0[arg1][3].length) + 32]),
           stor0[arg1][1].length + 160,
           floor32(stor0[arg1][2].length) + stor0[arg1][1].length + 224
}

function sub_b9c2dc3a(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg1.length + arg2.length + arg3.length + 20
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length + arg2.length + arg3.length + 51) + 224
    if not arg1.length + arg2.length + arg3.length + 20:
        idx = 0
        s = 0
        while idx < 20:
            require s < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 20
        while idx < arg1.length:
            require idx < arg1.length
            require s < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg1.length + 20
        while idx < arg2.length:
            require idx < arg2.length
            require s < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = mem[96] + arg2.length + 20
        while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
            require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
            require s < arg1.length + arg2.length + arg3.length + 20
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _847 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20])
        mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20])
        mem[32] = 0
        if stor0[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20]].field_0:
            revert with 0, 'Part ID already used'
        _862 = mem[64]
        mem[64] = mem[64] + 128
        mem[_862] = 0
        mem[_862 + 32] = 96
        mem[_862 + 64] = 96
        mem[_862 + 96] = 96
        _864 = mem[64]
        mem[64] = mem[64] + 128
        mem[_864] = msg.sender
        mem[_864 + 32] = 96
        mem[_864 + 64] = ceil32(arg1.length) + 128
        mem[_864 + 96] = ceil32(arg1.length) + ceil32(arg2.length) + 160
        stor0[_847].field_0 = msg.sender
        stor0[_847][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        stor0[_847][2][].field_0 = Array(len=arg2.length, data=mem[ceil32(arg1.length) + 160 len arg2.length])
        stor0[_847][3][].field_0 = Array(len=mem[ceil32(arg1.length) + ceil32(arg2.length) + 160], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]])
        return _847
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20] = code.data[6263 len arg1.length + arg2.length + arg3.length + 20]
    idx = 0
    s = 0
    while idx < 20:
        require s < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 20
    while idx < arg1.length:
        require idx < arg1.length
        require s < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 20
    while idx < arg2.length:
        require idx < arg2.length
        require s < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = mem[96] + arg2.length + 20
    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
        require s < arg1.length + arg2.length + arg3.length + 20
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _850 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20])
    mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20])
    mem[32] = 0
    if stor0[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length + arg2.length + arg3.length + 20]].field_0:
        revert with 0, 'Part ID already used'
    _863 = mem[64]
    mem[64] = mem[64] + 128
    mem[_863] = 0
    mem[_863 + 32] = 96
    mem[_863 + 64] = 96
    mem[_863 + 96] = 96
    _869 = mem[64]
    mem[64] = mem[64] + 128
    mem[_869] = msg.sender
    mem[_869 + 32] = 96
    mem[_869 + 64] = ceil32(arg1.length) + 128
    mem[_869 + 96] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    stor0[_850].field_0 = msg.sender
    stor0[_850][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    stor0[_850][2][].field_0 = Array(len=arg2.length, data=mem[ceil32(arg1.length) + 160 len arg2.length])
    stor0[_850][3][].field_0 = Array(len=mem[ceil32(arg1.length) + ceil32(arg2.length) + 160], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]])
    return _850
}

function sub_d2af2aec(?) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len 192] = call.data[100 len 192]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 0
    idx = 0
    while idx < 6:
        mem[0] = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192]
        mem[32] = 0
        if not stor0[mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192]].field_0:
            revert with 0, 'Inexistent part used on product'
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 51) + 416
    if not arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20:
        idx = 0
        s = 0
        while idx < 20:
            require s < arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 20
        while idx < arg1.length:
            require idx < arg1.length
            require s < arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg1.length + 20
        while idx < arg2.length:
            require idx < arg2.length
            require s < arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = mem[96] + arg2.length + 20
        while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
            require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
            require s < mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _1186 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]])
        mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]])
        mem[32] = 1
        if stor1[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]]].field_0:
            revert with 0, 'Product ID already used'
        _1201 = mem[64]
        mem[64] = mem[64] + 320
        mem[_1201] = 0
        mem[_1201 + 32] = 96
        mem[_1201 + 64] = 96
        mem[_1201 + 96] = 96
        _1203 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1203 len 192] = code.data[6263 len 192]
        mem[_1201 + 128] = _1203
        _1205 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1205] = msg.sender
        mem[_1205 + 32] = 96
        mem[_1205 + 64] = ceil32(arg1.length) + 128
        mem[_1205 + 96] = ceil32(arg1.length) + ceil32(arg2.length) + 160
        mem[_1205 + 128] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
        stor1[_1186].field_0 = msg.sender
        stor1[_1186][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        stor1[_1186][2][].field_0 = Array(len=arg2.length, data=mem[ceil32(arg1.length) + 160 len arg2.length])
        stor1[_1186][3][].field_0 = Array(len=mem[ceil32(arg1.length) + ceil32(arg2.length) + 160], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]])
        s = 4
        idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 > idx:
            stor1[_1186][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 10
        while 10 > idx:
            stor1[_1186][idx].field_0 = 0
            idx = idx + 1
            continue 
        return _1186
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20] = code.data[6263 len arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20]
    idx = 0
    s = 0
    while idx < 20:
        require s < arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, 'msg.sender'), 0))), ('add', -11, (('mask_shl', 160, 0, 93, 'msg.sender'), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 20
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length + 20
    while idx < arg2.length:
        require idx < arg2.length
        require s < arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 20
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = mem[96] + arg2.length + 20
    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
        require s < mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + s + 416 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _1189 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]])
    mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]])
    mem[32] = 1
    if stor1[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384]]].field_0:
        revert with 0, 'Product ID already used'
    _1202 = mem[64]
    mem[64] = mem[64] + 320
    mem[_1202] = 0
    mem[_1202 + 32] = 96
    mem[_1202 + 64] = 96
    mem[_1202 + 96] = 96
    _1204 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1204 len 192] = code.data[6263 len 192]
    mem[_1202 + 128] = _1204
    _1210 = mem[64]
    mem[64] = mem[64] + 160
    mem[_1210] = msg.sender
    mem[_1210 + 32] = 96
    mem[_1210 + 64] = ceil32(arg1.length) + 128
    mem[_1210 + 96] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[_1210 + 128] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
    stor1[_1189].field_0 = msg.sender
    stor1[_1189][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    stor1[_1189][2][].field_0 = Array(len=arg2.length, data=mem[ceil32(arg1.length) + 160 len arg2.length])
    stor1[_1189][3][].field_0 = Array(len=mem[ceil32(arg1.length) + ceil32(arg2.length) + 160], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]])
    s = 4
    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 > idx:
        stor1[_1189][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while 10 > idx:
        stor1[_1189][idx].field_0 = 0
        idx = idx + 1
        continue 
    return _1189
}



}
