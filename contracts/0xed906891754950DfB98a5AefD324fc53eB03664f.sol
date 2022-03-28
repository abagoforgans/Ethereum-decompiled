contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 8053]




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
array of uint256 stor4;

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

function sub_3f3815d4(?) payable {
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    uint32(stor1[arg1].field_0) = arg2
    uint32(stor1[arg1].field_32) = arg3
    uint32(stor1[arg1].field_64) = arg4
    mem[0] = arg1 + 2
    uint256(stor[sha3(arg1 + 2)][].field_0) = Array(len=arg5.length, data=arg5[all])
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 0
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = 0
    mem[64] = ceil32(arg5.length) + ceil32(arg6.length) + 256
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 224] = 0
    if 0 == arg5.length:
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
        stor4[arg1] = (2 * arg6.length) + 1
        s = 0
        idx = ceil32(arg5.length) + 160
        while ceil32(arg5.length) + arg6.length + 160 > idx:
            uint256(stor[s + sha3(arg1 + 4)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor[arg1 + 4].length + 31 / 32 <= Mask(251, 0, arg6.length + 31) >> 5:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 296] = arg4 << 224
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 300 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            var37001 = floor32(arg5.length) + 128
            var37002 = ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 300
            var37003 = arg5.length - (32 * Mask(251, 0, arg5.length) >> 5)
        else:
            uint256(stor[sha3(arg1 + 4) + (Mask(251, 0, arg6.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg6.length + 31) >> 5) + 1
            while stor[arg1 + 4].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(arg1 + 4)].field_0) = 0
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 296] = arg4 << 224
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 300 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            var40001 = floor32(arg5.length) + 128
            var40002 = ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 300
            var40003 = arg5.length - (32 * Mask(251, 0, arg5.length) >> 5)
        mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 300] = mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 300] and 256^(-(arg5.length % 32) + 32) - 1 or call.data[arg5 + floor32(arg5.length) + 36 len arg5.length % 32], mem[arg5.length + 128 len -(arg5.length % 32) + 32] and !(256^(-(arg5.length % 32) + 32) - 1)
        uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 300 len arg5.length % 32])
    else:
        s = 1
        idx = 0
        while idx < arg5.length:
            require idx < arg5.length
            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                s = s
                idx = idx + 1
                continue 
            s = s + 1
            idx = idx + 1
            continue 
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 256] = s
        mem[64] = ceil32(arg5.length) + ceil32(arg6.length) + (32 * s) + 288
        if not s:
            s = ceil32(arg5.length) + ceil32(arg6.length) + 224
            t = 0
            u = 0
            idx = 0
            while idx <= arg5.length:
                if idx == mem[96]:
                    _8165 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = idx - u
                        mem[64] = mem[64] + (32 * idx - u) + 32
                        s = 0
                        while s < idx - u:
                            require s + u < mem[96]
                            require s < mem[_8165]
                            mem[_8165 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                            s = s + 1
                            continue 
                        require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                        mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _8165
                        s = _8165
                        t = t + 1
                        u = idx + 1
                        idx = idx + 1
                        continue 
                    _8245 = msize
                    mem[msize] = idx - u
                    mem[64] = _8245 + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[96]
                        require s < mem[_8245]
                        mem[_8245 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _8245
                    s = _8245
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                require idx < mem[96]
                if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    s = s
                    t = t
                    u = u
                    idx = idx + 1
                    continue 
                _8318 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = idx - u
                    mem[64] = mem[64] + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[96]
                        require s < mem[_8318]
                        mem[_8318 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _8318
                    s = _8318
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                _8377 = msize
                mem[msize] = idx - u
                mem[64] = _8377 + (32 * idx - u) + 32
                s = 0
                while s < idx - u:
                    require s + u < mem[96]
                    require s < mem[_8377]
                    mem[_8377 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                    s = s + 1
                    continue 
                require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _8377
                s = _8377
                t = t + 1
                u = idx + 1
                idx = idx + 1
                continue 
            stor3[arg1] = mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
            mem[0] = arg1 + 3
            if not mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]:
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
                mem[0] = arg1 + 4
                stor4[arg1] = (2 * mem[ceil32(arg5.length) + 128]) + 1
                s = 0
                idx = ceil32(arg5.length) + 160
                while ceil32(arg5.length) + mem[ceil32(arg5.length) + 128] + 160 > idx:
                    uint256(stor[s + sha3(arg1 + 4)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if stor[arg1 + 4].length + 31 / 32 <= Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5:
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _12618 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    var43001 = floor32(mem[96]) + 128
                    var43002 = mem[64] + floor32(mem[96]) + 12
                    var43003 = mem[96] - (32 * Mask(251, 0, mem[96]) >> 5)
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _12618])
                else:
                    uint256(stor[sha3(arg1 + 4) + (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5)].field_0) = 0
                    idx = (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5) + 1
                    while stor[arg1 + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3(arg1 + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _13695 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    var46001 = floor32(mem[96]) + 128
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _13695])
            else:
                s = 0
                idx = ceil32(arg5.length) + ceil32(arg6.length) + 288
                while ceil32(arg5.length) + ceil32(arg6.length) + (32 * mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]) + 288 > idx:
                    _10235 = mem[idx]
                    _10236 = mem[mem[idx]]
                    mem[0] = s + sha3(mem[0])
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _10236) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _10235 + 32
                    while _10235 + _10236 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    if stor[s + sha3(mem[0])].length + 31 / 32 > Mask(251, 0, _10236 + 31) >> 5:
                        uint256(stor[sha3(s + sha3(mem[0])) + (Mask(251, 0, _10236 + 31) >> 5)].field_0) = 0
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _10236 + 31) >> 5) + 1
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
                mem[0] = arg1 + 4
                stor4[arg1] = (2 * mem[ceil32(arg5.length) + 128]) + 1
                s = 0
                idx = ceil32(arg5.length) + 160
                while ceil32(arg5.length) + mem[ceil32(arg5.length) + 128] + 160 > idx:
                    uint256(stor[s + sha3(arg1 + 4)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if stor[arg1 + 4].length + 31 / 32 <= Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5:
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _13968 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    var46001 = floor32(mem[96]) + 128
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _13968])
                else:
                    uint256(stor[sha3(arg1 + 4) + (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5)].field_0) = 0
                    idx = (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5) + 1
                    while stor[arg1 + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3(arg1 + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _14470 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    var49001 = floor32(mem[96]) + 128
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _14470])
        else:
            mem[64] = ceil32(arg5.length) + ceil32(arg6.length) + (32 * s) + 320
            mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * s) + 288] = 0
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 288] = ceil32(arg5.length) + ceil32(arg6.length) + (32 * s) + 288
            t = ceil32(arg5.length) + ceil32(arg6.length) + 288
            idx = s
            while idx - 1:
                mem[64] = mem[64] + 32
                mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * s) + 288] = 0
                mem[t + 32] = ceil32(arg5.length) + ceil32(arg6.length) + (32 * s) + 288
                t = t + 32
                idx = idx - 1
                continue 
            _10136 = mem[96]
            s = ceil32(arg5.length) + ceil32(arg6.length) + 224
            t = 0
            u = 0
            idx = 0
            while idx <= _10136:
                if idx == mem[96]:
                    _10544 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = idx - u
                        mem[64] = mem[64] + (32 * idx - u) + 32
                        s = 0
                        while s < idx - u:
                            require s + u < mem[96]
                            require s < mem[_10544]
                            mem[_10544 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                            _10136 = mem[96]
                            s = s + 1
                            continue 
                        require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                        mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _10544
                        _10136 = mem[96]
                        s = _10544
                        t = t + 1
                        u = idx + 1
                        idx = idx + 1
                        continue 
                    _10626 = msize
                    mem[msize] = idx - u
                    mem[64] = _10626 + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[96]
                        require s < mem[_10626]
                        mem[_10626 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                        _10136 = mem[96]
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _10626
                    _10136 = mem[96]
                    s = _10626
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                require idx < mem[96]
                if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    _10136 = mem[96]
                    s = s
                    t = t
                    u = u
                    idx = idx + 1
                    continue 
                _10709 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = idx - u
                    mem[64] = mem[64] + (32 * idx - u) + 32
                    s = 0
                    while s < idx - u:
                        require s + u < mem[96]
                        require s < mem[_10709]
                        mem[_10709 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                        _10136 = mem[96]
                        s = s + 1
                        continue 
                    require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _10709
                    _10136 = mem[96]
                    s = _10709
                    t = t + 1
                    u = idx + 1
                    idx = idx + 1
                    continue 
                _10756 = msize
                mem[msize] = idx - u
                mem[64] = _10756 + (32 * idx - u) + 32
                s = 0
                while s < idx - u:
                    require s + u < mem[96]
                    require s < mem[_10756]
                    mem[_10756 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1), ('var', 3)), 32))), 0) - 256
                    _10136 = mem[96]
                    s = s + 1
                    continue 
                require t < mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
                mem[ceil32(arg5.length) + ceil32(arg6.length) + (32 * t) + 288] = _10756
                _10136 = mem[96]
                s = _10756
                t = t + 1
                u = idx + 1
                idx = idx + 1
                continue 
            stor3[arg1] = mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]
            mem[0] = arg1 + 3
            if not mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]:
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
                mem[0] = arg1 + 4
                stor4[arg1] = (2 * mem[ceil32(arg5.length) + 128]) + 1
                s = 0
                idx = ceil32(arg5.length) + 160
                while ceil32(arg5.length) + mem[ceil32(arg5.length) + 128] + 160 > idx:
                    uint256(stor[s + sha3(arg1 + 4)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if stor[arg1 + 4].length + 31 / 32 <= Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5:
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _13970 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _13970])
                else:
                    uint256(stor[sha3(arg1 + 4) + (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5)].field_0) = 0
                    idx = (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5) + 1
                    while stor[arg1 + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3(arg1 + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _14472 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _14472])
            else:
                s = 0
                idx = ceil32(arg5.length) + ceil32(arg6.length) + 288
                while ceil32(arg5.length) + ceil32(arg6.length) + (32 * mem[ceil32(arg5.length) + ceil32(arg6.length) + 256]) + 288 > idx:
                    _12146 = mem[idx]
                    _12147 = mem[mem[idx]]
                    mem[0] = s + sha3(mem[0])
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _12147) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _12146 + 32
                    while _12146 + _12147 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    if stor[s + sha3(mem[0])].length + 31 / 32 > Mask(251, 0, _12147 + 31) >> 5:
                        uint256(stor[sha3(s + sha3(mem[0])) + (Mask(251, 0, _12147 + 31) >> 5)].field_0) = 0
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _12147 + 31) >> 5) + 1
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
                mem[0] = arg1 + 4
                stor4[arg1] = (2 * mem[ceil32(arg5.length) + 128]) + 1
                s = 0
                idx = ceil32(arg5.length) + 160
                while ceil32(arg5.length) + mem[ceil32(arg5.length) + 128] + 160 > idx:
                    uint256(stor[s + sha3(arg1 + 4)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                if stor[arg1 + 4].length + 31 / 32 <= Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5:
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _14620 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _14620])
                else:
                    uint256(stor[sha3(arg1 + 4) + (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5)].field_0) = 0
                    idx = (Mask(251, 0, mem[ceil32(arg5.length) + 128] + 31) >> 5) + 1
                    while stor[arg1 + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3(arg1 + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2 << 224
                    mem[mem[64] + 4] = arg3 << 224
                    mem[mem[64] + 8] = arg4 << 224
                    _14750 = mem[96]
                    mem[mem[64] + 12 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + floor32(mem[96]) + 12] = mem[mem[64] + floor32(mem[96]) + 12] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                    uint256(stor[arg1].field_0) = sha3(arg2, arg3, arg4, mem[mem[64] + 12 len _14750])
    return 1
}



}
