contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 7872]




// =====================  Runtime code  =====================


#
#  - sub_02abe853(?)
#  - sub_11cce1df(?)
#  - sub_1261f2d8(?)
#  - sub_3359a31e(?)
#  - sub_42297905(?)
#  - sub_48e724d5(?)
#  - sub_8512a98a(?)
#  - sub_e4667ff3(?)
#
array of struct stor1;
array of uint256 stor3;

function _fallback() payable {
    revert 
}

function sub_f9e724a5(?) payable {
    return (uint256(stor[arg1].field_0) == uint256(stor[arg2].field_0))
}

function sub_1989308e(?) payable {
    mem[224 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 224 len 96] = call.data[132 len 96]
    mem[ceil32(arg1.length) + 352 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 448] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 224 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 448]
    _30 = sha3(call.data[4], call.data[36], call.data[68], call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 448 len arg1.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = call.data[132]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 448] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 448] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 352 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    return (sha3(call.data[132], call.data[164], call.data[196], call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 448 len arg2.length % 32]) == _30)
}

function sub_3725624e(?) payable {
    mem[160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('param', 'arg2')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('param', 'arg2')), 0) - 256
    idx = 0
    while idx < 1:
        if 31 >= stor[arg1].length:
            if 31 >= stor[arg1].length + 1:
                uint256(stor[arg1].field_0) = Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + 2 or uint256(stor[arg1].field_0) / 2^(-(8 * stor[arg1].length + 1) + 256) * 2^(-(8 * stor[arg1].length + 1) + 256)
            else:
                mem[0] = arg1
                uint8(stor[sha3(arg1)].field_0) = 0
                Mask(248, 0, stor[sha3(arg1)].field_8) = Mask(248, 0, stor[arg1].field_8)
                uint256(stor[arg1].field_0) = Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + 3
            if not bool(stor[arg1].field_0):
                require idx < 1
                uint256(stor[arg1].field_0) = mem[idx + 160 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
            else:
                mem[0] = arg1
                require idx < 1
                uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[idx + 160 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
            idx = idx + 1
            continue 
        uint256(stor[arg1].field_0) = Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + 3
        if not Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) > stor[arg1].length + 1:
            if not bool(stor[arg1].field_0):
                require idx < 1
                uint256(stor[arg1].field_0) = mem[idx + 160 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
            else:
                mem[0] = arg1
                require idx < 1
                uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[idx + 160 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
            idx = idx + 1
            continue 
        mem[0] = arg1
        if stor[arg1].length + 31 / 32 <= stor[arg1].length + 32 / 32:
            if not bool(stor[arg1].field_0):
                require idx < 1
                uint256(stor[arg1].field_0) = mem[idx + 160 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
            else:
                mem[0] = arg1
                require idx < 1
                uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[idx + 160 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
            idx = idx + 1
            continue 
        uint256(stor[sha3(arg1) + (0.03125 / stor[arg1].length + 32)].field_0) = 0
        s = sha3(arg1) + (stor[arg1].length + 32 / 32) + 1
        while sha3(arg1) + (stor[arg1].length + 31 / 32) > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        if not bool(stor[arg1].field_0):
            require sha3(arg1) + (stor[arg1].length + 31 / 32) < 1
            uint256(stor[arg1].field_0) = mem[sha3(arg1) + (stor[arg1].length + 31 / 32) + 160 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
        else:
            mem[0] = arg1
            require sha3(arg1) + (stor[arg1].length + 31 / 32) < 1
            uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[sha3(arg1) + (stor[arg1].length + 31 / 32) + 160 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
        s = sha3(arg1) + (stor[arg1].length + 31 / 32) + 1
        continue 
    return 1
}

function sub_bcf1ee23(?) payable {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    idx = 0
    while idx < arg2.length:
        if 31 >= stor[arg1].length:
            if 31 >= stor[arg1].length + 1:
                uint256(stor[arg1].field_0) = Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + 2 or uint256(stor[arg1].field_0) / 2^(-(8 * stor[arg1].length + 1) + 256) * 2^(-(8 * stor[arg1].length + 1) + 256)
            else:
                mem[0] = arg1
                uint8(stor[sha3(arg1)].field_0) = 0
                Mask(248, 0, stor[sha3(arg1)].field_8) = Mask(248, 0, stor[arg1].field_8)
                uint256(stor[arg1].field_0) = Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + 3
            if not bool(stor[arg1].field_0):
                require idx < arg2.length
                uint256(stor[arg1].field_0) = mem[idx + 128 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
            else:
                mem[0] = arg1
                require idx < arg2.length
                uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[idx + 128 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
            idx = idx + 1
            continue 
        uint256(stor[arg1].field_0) = Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + 3
        if not Mask(255, 1, (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) > stor[arg1].length + 1:
            if not bool(stor[arg1].field_0):
                require idx < arg2.length
                uint256(stor[arg1].field_0) = mem[idx + 128 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
            else:
                mem[0] = arg1
                require idx < arg2.length
                uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[idx + 128 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
            idx = idx + 1
            continue 
        mem[0] = arg1
        if stor[arg1].length + 31 / 32 <= stor[arg1].length + 32 / 32:
            if not bool(stor[arg1].field_0):
                require idx < arg2.length
                uint256(stor[arg1].field_0) = mem[idx + 128 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
            else:
                mem[0] = arg1
                require idx < arg2.length
                uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[idx + 128 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
            idx = idx + 1
            continue 
        uint256(stor[sha3(arg1) + (0.03125 / stor[arg1].length + 32)].field_0) = 0
        s = sha3(arg1) + (stor[arg1].length + 32 / 32) + 1
        while sha3(arg1) + (stor[arg1].length + 31 / 32) > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        if not bool(stor[arg1].field_0):
            require sha3(arg1) + (stor[arg1].length + 31 / 32) < arg2.length
            uint256(stor[arg1].field_0) = mem[sha3(arg1) + (stor[arg1].length + 31 / 32) + 128 len 1] * 256^(-stor[arg1].length + 31) or !(255 * 256^(-stor[arg1].length + 31)) and uint256(stor[arg1].field_0)
        else:
            mem[0] = arg1
            require sha3(arg1) + (stor[arg1].length + 31 / 32) < arg2.length
            uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0) = mem[sha3(arg1) + (stor[arg1].length + 31 / 32) + 128 len 1] * 256^(-stor[arg1].length % 32 + 31) or !(255 * 256^(-stor[arg1].length % 32 + 31)) and uint256(stor[(0.015625 / (256 * not bool(stor[arg1].field_0)) - 1 and uint256(stor[arg1].field_0)) + sha3(arg1)].field_0)
        s = sha3(arg1) + (stor[arg1].length + 31 / 32) + 1
        continue 
    return 1
}

function sub_9c2bf848(?) payable {
    mem[96 len 96] = call.data[36 len 96]
    mem[192] = arg2.length
    mem[224 len arg2.length] = arg2[all]
    uint32(stor1[arg1].field_0) = uint32(call.data[36])
    uint32(stor1[arg1].field_32) = uint32(call.data[68])
    uint32(stor1[arg1].field_64) = uint32(call.data[100])
    mem[0] = arg1 + 2
    uint256(stor[sha3(arg1 + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg2.length) + 256] = 0
    mem[64] = ceil32(arg2.length) + 320
    mem[ceil32(arg2.length) + 288] = 0
    if 0 == arg2.length:
        stor3[arg1] = 0
        mem[0] = arg1 + 3
        idx = 0
        while sha3(arg1 + 3) + stor3[arg1] > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                    uint256(stor[sha3(idx + sha3(mem[0]))].field_0) = 0
                    s = sha3(idx + sha3(mem[0])) + 1
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        mem[ceil32(arg2.length) + 360] = call.data[100] << 224
        mem[ceil32(arg2.length) + 364 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 364] = mem[ceil32(arg2.length) + floor32(arg2.length) + 364] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 224 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        uint256(stor[arg1].field_0) = sha3(uint32(call.data[36]), uint32(call.data[68]), uint32(call.data[100]), call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 364 len arg2.length % 32])
    else:
        s = 1
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 224]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                s = s
                idx = idx + 1
                continue 
            s = s + 1
            idx = idx + 1
            continue 
        mem[ceil32(arg2.length) + 320] = s
        mem[64] = ceil32(arg2.length) + (32 * s) + 352
        if not s:
            s = ceil32(arg2.length) + 288
            t = 0
            u = 0
            idx = 0
            while idx <= arg2.length:
                if idx == mem[192]:
                    _2712 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = idx - u
                        mem[64] = mem[64] + (32 * idx - u) + 32
                        s = 0
                        while s < idx - u:
                            require s + u < mem[192]
                            require s < mem[_2712]
                            mem[_2712 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                            s = s + 1
                            continue 
                        require t < mem[ceil32(arg2.length) + 320]
                        mem[ceil32(arg2.length) + (32 * t) + 352] = _2712
                        s = _2712
                        t = t + 1
                        u = idx + 1
                        idx = idx + 1
                        continue 
                    _2748 = msize
                    mem[msize] = idx - u
                    mem[64] = _2748 + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[192]
                        require s < mem[_2748]
                        mem[_2748 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg2.length) + 320]
                    mem[ceil32(arg2.length) + (32 * t) + 352] = _2748
                    s = _2748
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                require idx < mem[192]
                if Mask(8, 248, mem[idx + 224]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    s = s
                    t = t
                    u = u
                    idx = idx + 1
                    continue 
                _2793 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = idx - u
                    mem[64] = mem[64] + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[192]
                        require s < mem[_2793]
                        mem[_2793 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg2.length) + 320]
                    mem[ceil32(arg2.length) + (32 * t) + 352] = _2793
                    s = _2793
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                _2838 = msize
                mem[msize] = idx - u
                mem[64] = _2838 + (32 * idx - u) + 32
                s = 0
                while s < idx - u:
                    require s + u < mem[192]
                    require s < mem[_2838]
                    mem[_2838 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                    s = s + 1
                    continue 
                require t < mem[ceil32(arg2.length) + 320]
                mem[ceil32(arg2.length) + (32 * t) + 352] = _2838
                s = _2838
                t = t + 1
                u = idx + 1
                idx = idx + 1
                continue 
            stor3[arg1] = mem[ceil32(arg2.length) + 320]
            mem[0] = arg1 + 3
            if not mem[ceil32(arg2.length) + 320]:
                idx = 0
                while sha3(arg1 + 3) + stor3[arg1] > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].length:
                        mem[0] = idx + sha3(mem[0])
                        if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                            uint256(stor[sha3(idx + sha3(mem[0]))].field_0) = 0
                            s = sha3(idx + sha3(mem[0])) + 1
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _3393 = mem[128]
                _3394 = mem[160]
                _3395 = mem[64]
                mem[mem[64]] = mem[96] << 224
                mem[mem[64] + 4] = _3393 << 224
                mem[mem[64] + 8] = _3394 << 224
                _3396 = mem[192]
                mem[mem[64] + 12 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                var34001 = floor32(mem[192]) + 224
                var34002 = mem[64] + floor32(mem[192]) + 12
                var34003 = mem[192] - (32 * Mask(251, 0, mem[192]) >> 5)
                mem[mem[64] + floor32(mem[192]) + 12] = mem[mem[64] + floor32(mem[192]) + 12] and 256^(-(mem[192] % 32) + 32) - 1 or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                uint256(stor[arg1].field_0) = sha3(mem[mem[64] len _3395 + _3396 + -mem[64] + 12])
            else:
                s = 0
                idx = ceil32(arg2.length) + 352
                while ceil32(arg2.length) + (32 * mem[ceil32(arg2.length) + 320]) + 352 > idx:
                    _3278 = mem[idx]
                    _3279 = mem[mem[idx]]
                    mem[0] = s + sha3(mem[0])
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _3279) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _3278 + 32
                    while _3278 + _3279 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    if stor[s + sha3(mem[0])].length + 31 / 32 > Mask(251, 0, _3279 + 31) >> 5:
                        uint256(stor[sha3(s + sha3(mem[0])) + (Mask(251, 0, _3279 + 31) >> 5)].field_0) = 0
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _3279 + 31) >> 5) + 1
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(arg1 + 3) + stor3[arg1] > idx:
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].length:
                        mem[0] = idx
                        if sha3(idx) + (stor[idx].length + 31 / 32) > sha3(idx):
                            uint256(stor[sha3(idx)].field_0) = 0
                            s = sha3(idx) + 1
                            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _3840 = mem[128]
                _3841 = mem[160]
                _3842 = mem[64]
                mem[mem[64]] = mem[96] << 224
                mem[mem[64] + 4] = _3840 << 224
                mem[mem[64] + 8] = _3841 << 224
                _3843 = mem[192]
                mem[mem[64] + 12 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                var37001 = floor32(mem[192]) + 224
                s = mem[64] + floor32(mem[192]) + 12
                idx = mem[192] - (32 * Mask(251, 0, mem[192]) >> 5)
                mem[mem[64] + floor32(mem[192]) + 12] = mem[mem[64] + floor32(mem[192]) + 12] and 256^(-(mem[192] % 32) + 32) - 1 or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                uint256(stor[arg1].field_0) = sha3(mem[mem[64] len _3842 + _3843 + -mem[64] + 12])
        else:
            mem[64] = ceil32(arg2.length) + (32 * s) + 384
            mem[ceil32(arg2.length) + (32 * s) + 352] = 0
            mem[ceil32(arg2.length) + 352] = ceil32(arg2.length) + (32 * s) + 352
            t = ceil32(arg2.length) + 352
            idx = s
            while idx - 1:
                mem[64] = mem[64] + 32
                mem[ceil32(arg2.length) + (32 * s) + 352] = 0
                mem[t + 32] = ceil32(arg2.length) + (32 * s) + 352
                t = t + 32
                idx = idx - 1
                continue 
            _3231 = mem[192]
            s = ceil32(arg2.length) + 288
            t = 0
            u = 0
            idx = 0
            while idx <= _3231:
                if idx == mem[192]:
                    _3461 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = idx - u
                        mem[64] = mem[64] + (32 * idx - u) + 32
                        s = 0
                        while s < idx - u:
                            require s + u < mem[192]
                            require s < mem[_3461]
                            mem[_3461 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                            _3231 = mem[192]
                            s = s + 1
                            continue 
                        require t < mem[ceil32(arg2.length) + 320]
                        mem[ceil32(arg2.length) + (32 * t) + 352] = _3461
                        _3231 = mem[192]
                        s = _3461
                        t = t + 1
                        u = idx + 1
                        idx = idx + 1
                        continue 
                    _3503 = msize
                    mem[msize] = idx - u
                    mem[64] = _3503 + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[192]
                        require s < mem[_3503]
                        mem[_3503 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                        _3231 = mem[192]
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg2.length) + 320]
                    mem[ceil32(arg2.length) + (32 * t) + 352] = _3503
                    _3231 = mem[192]
                    s = _3503
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                require idx < mem[192]
                if Mask(8, 248, mem[idx + 224]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    _3231 = mem[192]
                    s = s
                    t = t
                    u = u
                    idx = idx + 1
                    continue 
                _3554 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = idx - u
                    mem[64] = mem[64] + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[192]
                        require s < mem[_3554]
                        mem[_3554 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                        _3231 = mem[192]
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg2.length) + 320]
                    mem[ceil32(arg2.length) + (32 * t) + 352] = _3554
                    _3231 = mem[192]
                    s = _3554
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                _3589 = msize
                mem[msize] = idx - u
                mem[64] = _3589 + (32 * idx - u) + 32
                s = 0
                while s < idx - u:
                    require s + u < mem[192]
                    require s < mem[_3589]
                    mem[_3589 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('var', 3)), 32))), 0) - 256
                    _3231 = mem[192]
                    s = s + 1
                    continue 
                require t < mem[ceil32(arg2.length) + 320]
                mem[ceil32(arg2.length) + (32 * t) + 352] = _3589
                _3231 = mem[192]
                s = _3589
                t = t + 1
                u = idx + 1
                idx = idx + 1
                continue 
            stor3[arg1] = mem[ceil32(arg2.length) + 320]
            mem[0] = arg1 + 3
            if not mem[ceil32(arg2.length) + 320]:
                idx = 0
                while sha3(arg1 + 3) + stor3[arg1] > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].length:
                        mem[0] = idx + sha3(mem[0])
                        if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                            uint256(stor[sha3(idx + sha3(mem[0]))].field_0) = 0
                            s = sha3(idx + sha3(mem[0])) + 1
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _3846 = mem[128]
                _3847 = mem[160]
                _3848 = mem[64]
                mem[mem[64]] = mem[96] << 224
                mem[mem[64] + 4] = _3846 << 224
                mem[mem[64] + 8] = _3847 << 224
                _3849 = mem[192]
                mem[mem[64] + 12 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                var38001 = floor32(mem[192]) + 224
                var38002 = mem[64] + floor32(mem[192]) + 12
                var38003 = mem[192] - (32 * Mask(251, 0, mem[192]) >> 5)
                mem[mem[64] + floor32(mem[192]) + 12] = mem[mem[64] + floor32(mem[192]) + 12] and 256^(-(mem[192] % 32) + 32) - 1 or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                uint256(stor[arg1].field_0) = sha3(mem[mem[64] len _3848 + _3849 + -mem[64] + 12])
            else:
                s = 0
                idx = ceil32(arg2.length) + 352
                while ceil32(arg2.length) + (32 * mem[ceil32(arg2.length) + 320]) + 352 > idx:
                    _3773 = mem[idx]
                    _3774 = mem[mem[idx]]
                    mem[0] = s + sha3(mem[0])
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _3774) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _3773 + 32
                    while _3773 + _3774 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    if stor[s + sha3(mem[0])].length + 31 / 32 > Mask(251, 0, _3774 + 31) >> 5:
                        uint256(stor[sha3(s + sha3(mem[0])) + (Mask(251, 0, _3774 + 31) >> 5)].field_0) = 0
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _3774 + 31) >> 5) + 1
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(arg1 + 3) + stor3[arg1] > idx:
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].length:
                        mem[0] = idx
                        if sha3(idx) + (stor[idx].length + 31 / 32) > sha3(idx):
                            uint256(stor[sha3(idx)].field_0) = 0
                            s = sha3(idx) + 1
                            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _4025 = mem[128]
                _4026 = mem[160]
                _4027 = mem[64]
                mem[mem[64]] = mem[96] << 224
                mem[mem[64] + 4] = _4025 << 224
                mem[mem[64] + 8] = _4026 << 224
                _4028 = mem[192]
                mem[mem[64] + 12 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                var41001 = floor32(mem[192]) + 224
                s = mem[64] + floor32(mem[192]) + 12
                idx = mem[192] - (32 * Mask(251, 0, mem[192]) >> 5)
                mem[mem[64] + floor32(mem[192]) + 12] = mem[mem[64] + floor32(mem[192]) + 12] and 256^(-(mem[192] % 32) + 32) - 1 or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                uint256(stor[arg1].field_0) = sha3(mem[mem[64] len _4027 + _4028 + -mem[64] + 12])
    return 1
}



}
