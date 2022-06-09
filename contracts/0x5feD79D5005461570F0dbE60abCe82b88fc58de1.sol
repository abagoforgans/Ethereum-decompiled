contract main {




// =====================  Runtime code  =====================


#
#  - sub_655b2e32(?)
#
uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
    revert
}

function revokeCertificate(uint256 arg1) {
    if stor1[arg1].field_256 != msg.sender:
        return 0
    stor1[arg1].field_1280 = 1
    return 1
}

function sub_c5280b60(?) {
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        idx = idx + 1
        continue 
    idx = 1
    s = 0
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].field_256 != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < 0
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    return ''
}

function sub_ee4f84a1(?) {
    idx = 1
    s = 0
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].field_512 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[6146 len 32 * s]
    idx = 1
    t = 0
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].field_512 != arg1:
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = idx
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function sub_f7e9fb7a(?) {
    idx = 1
    s = 0
    while idx < stor0 + 1:
        if arg1:
            if arg1 != 1:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 1
            if stor1[idx].field_512 != arg2:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 1
            if stor1[idx].field_256 != arg2:
                if arg1 != 1:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 1
                if stor1[idx].field_512 != arg2:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_1375fad4(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].length == arg1.length:
            s = 0
            while s < stor1[idx].length:
                require s < arg1.length
                require s < stor1[idx].length
                if not stor1[idx].field_0:
                    if Mask(8, -(('field', 3, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                        s = s + 1
                        continue 
                else:
                    mem[0] = sha3(idx, 1)
                    if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('var', 0), ('name', 'stor1', 1))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('var', 0), ('name', 'stor1', 1))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    mem[64] = ceil32(arg1.length) + 160
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].length != arg1.length:
            idx = idx + 1
            continue 
        s = 0
        while s < stor1[idx].length:
            require s < arg1.length
            require s < stor1[idx].length
            if not stor1[idx].field_0:
                if Mask(8, -(('field', 3, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            else:
                mem[0] = sha3(idx, 1)
                if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('var', 0), ('name', 'stor1', 1))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('var', 0), ('name', 'stor1', 1))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        revert
    return ''
}

function sub_c94f9cf8(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx][3].length == arg1.length:
            s = 0
            while s < stor1[idx][3].length:
                require s < arg1.length
                require s < stor1[idx][3].length
                if not stor1[idx].field_768:
                    if Mask(8, -(('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                        s = s + 1
                        continue 
                else:
                    mem[0] = sha3(idx, 1) + 3
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    mem[64] = ceil32(arg1.length) + 160
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx][3].length != arg1.length:
            idx = idx + 1
            continue 
        s = 0
        while s < stor1[idx][3].length:
            require s < arg1.length
            require s < stor1[idx][3].length
            if not stor1[idx].field_768:
                if Mask(8, -(('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            else:
                mem[0] = sha3(idx, 1) + 3
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        revert
    return ''
}

function sub_0cd94d8c(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx][4].length == arg1.length:
            s = 0
            while s < stor1[idx][4].length:
                require s < arg1.length
                require s < stor1[idx][4].length
                if not stor1[idx].field_1024:
                    if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                        s = s + 1
                        continue 
                else:
                    mem[0] = sha3(idx, 1) + 4
                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    mem[64] = ceil32(arg1.length) + 160
    idx = 1
    while idx < stor0 + 1:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx][4].length != arg1.length:
            idx = idx + 1
            continue 
        s = 0
        while s < stor1[idx][4].length:
            require s < arg1.length
            require s < stor1[idx][4].length
            if not stor1[idx].field_1024:
                if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            else:
                mem[0] = sha3(idx, 1) + 4
                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        revert
    return ''
}

function certificates(uint256 arg1) {
    mem[32] = 1
    mem[96] = stor1[arg1].length
    mem[128] = stor1[arg1].field_0
    idx = 128
    s = 0
    while stor1[arg1].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1].length) + 128] = stor1[arg1][3].length
    mem[ceil32(stor1[arg1].length) + 160] = stor1[arg1][3].field_0
    idx = ceil32(stor1[arg1].length) + 160
    s = 0
    while ceil32(stor1[arg1].length) + stor1[arg1][3].length + 128 > idx:
        mem[idx + 32] = stor1[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 192
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 160] = stor1[arg1][4].length
    mem[0] = sha3(arg1, 1) + 4
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192] = stor1[arg1][4].field_0
    idx = ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192
    s = 0
    while ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + stor1[arg1][4].length + 160 > idx:
        mem[idx + 32] = stor1[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 224] = stor1[arg1].field_256
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 256] = stor1[arg1].field_512
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 352] = bool(stor1[arg1].field_1280)
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 384] = stor1[arg1].field_1536
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 192] = 224
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 416] = stor1[arg1].length
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448 len ceil32(stor1[arg1].length)] = mem[128 len ceil32(stor1[arg1].length)]
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 288] = stor1[arg1].length + 256
    mem[stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448] = stor1[arg1][3].length
    mem[stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 480 len ceil32(stor1[arg1][3].length)] = mem[ceil32(stor1[arg1].length) + 160 len ceil32(stor1[arg1][3].length)]
    if not stor1[arg1][3].length % 32:
        mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 320] = stor1[arg1][3].length + stor1[arg1].length + 288
        mem[stor1[arg1][3].length + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 480] = stor1[arg1][4].length
        mem[stor1[arg1][3].length + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 512 len ceil32(stor1[arg1][4].length)] = mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192 len ceil32(stor1[arg1][4].length)]
        if not stor1[arg1][4].length % 32:
            return Array(len=stor1[arg1].length, data=mem[128 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448 len stor1[arg1][3].length + stor1[arg1].length + -ceil32(stor1[arg1].length) + 32], stor1[arg1][4].length, mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192 len stor1[arg1][4].length]), 
                   stor1[arg1].field_256,
                   stor1[arg1].field_512,
                   stor1[arg1].length + 256,
                   stor1[arg1][3].length + stor1[arg1].length + 288,
                   bool(stor1[arg1].field_1280),
                   stor1[arg1].field_1536
        mem[floor32(stor1[arg1][4].length) + stor1[arg1][3].length + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 512] = mem[floor32(stor1[arg1][4].length) + stor1[arg1][3].length + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + -stor1[arg1][4].length % 32 + 544 len stor1[arg1][4].length % 32]
        return Array(len=stor1[arg1].length, data=mem[128 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448 len stor1[arg1][3].length + stor1[arg1].length + -ceil32(stor1[arg1].length) + 32], stor1[arg1][4].length, mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192 len ceil32(stor1[arg1][4].length)], mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + (2 * ceil32(stor1[arg1][4].length)) + stor1[arg1][3].length + stor1[arg1].length + 512 len floor32(stor1[arg1][4].length) + -ceil32(stor1[arg1][4].length) + 32]), 
               stor1[arg1].field_256,
               stor1[arg1].field_512,
               stor1[arg1].length + 256,
               stor1[arg1][3].length + stor1[arg1].length + 288,
               bool(stor1[arg1].field_1280),
               stor1[arg1].field_1536
    mem[floor32(stor1[arg1][3].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 480] = mem[floor32(stor1[arg1][3].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + -stor1[arg1][3].length % 32 + 512 len stor1[arg1][3].length % 32]
    mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 320] = floor32(stor1[arg1][3].length) + stor1[arg1].length + 320
    mem[floor32(stor1[arg1][3].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 512] = stor1[arg1][4].length
    mem[floor32(stor1[arg1][3].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 544 len ceil32(stor1[arg1][4].length)] = mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192 len ceil32(stor1[arg1][4].length)]
    if not stor1[arg1][4].length % 32:
        return Array(len=stor1[arg1].length, data=mem[128 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448 len floor32(stor1[arg1][3].length) + stor1[arg1].length + -ceil32(stor1[arg1].length) + 64], stor1[arg1][4].length, mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192 len stor1[arg1][4].length]), 
               stor1[arg1].field_256,
               stor1[arg1].field_512,
               stor1[arg1].length + 256,
               floor32(stor1[arg1][3].length) + stor1[arg1].length + 320,
               bool(stor1[arg1].field_1280),
               stor1[arg1].field_1536
    mem[floor32(stor1[arg1][4].length) + floor32(stor1[arg1][3].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 544] = mem[floor32(stor1[arg1][4].length) + floor32(stor1[arg1][3].length) + stor1[arg1].length + ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + -stor1[arg1][4].length % 32 + 576 len stor1[arg1][4].length % 32]
    return Array(len=stor1[arg1].length, data=mem[128 len ceil32(stor1[arg1].length)], mem[(2 * ceil32(stor1[arg1].length)) + ceil32(stor1[arg1][3].length) + ceil32(stor1[arg1][4].length) + 448 len floor32(stor1[arg1][3].length) + stor1[arg1].length + -ceil32(stor1[arg1].length) + 64], stor1[arg1][4].length, mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + 192 len ceil32(stor1[arg1][4].length)], mem[ceil32(stor1[arg1].length) + ceil32(stor1[arg1][3].length) + (2 * ceil32(stor1[arg1][4].length)) + floor32(stor1[arg1][3].length) + stor1[arg1].length + 544 len floor32(stor1[arg1][4].length) + -ceil32(stor1[arg1][4].length) + 32]), 
           stor1[arg1].field_256,
           stor1[arg1].field_512,
           stor1[arg1].length + 256,
           floor32(stor1[arg1][3].length) + stor1[arg1].length + 320,
           bool(stor1[arg1].field_1280),
           stor1[arg1].field_1536
}

function sub_7be5507d(?) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    idx = 1
    while idx < stor0 + 1:
        if arg1:
            if arg1 != 1:
                if arg1 == 2:
                    mem[0] = idx
                    mem[32] = 1
                    if stor1[idx][4].length == arg2.length:
                        s = 0
                        while s < stor1[idx][4].length:
                            require s < arg2.length
                            require s < stor1[idx][4].length
                            if not stor1[idx].field_1024:
                                if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = sha3(idx, 1) + 4
                                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
            else:
                mem[0] = idx
                mem[32] = 1
                if stor1[idx][3].length == arg2.length:
                    s = 0
                    while s < stor1[idx][3].length:
                        require s < arg2.length
                        require s < stor1[idx][3].length
                        if not stor1[idx].field_768:
                            if Mask(8, -(('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                s = s + 1
                                continue 
                        else:
                            mem[0] = sha3(idx, 1) + 3
                            if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                s = s + 1
                                continue 
                        if arg1 == 2:
                            mem[0] = idx
                            mem[32] = 1
                            if stor1[idx][4].length == arg2.length:
                                s = 0
                                while s < stor1[idx][4].length:
                                    require s < arg2.length
                                    require s < stor1[idx][4].length
                                    if not stor1[idx].field_1024:
                                        if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[0] = sha3(idx, 1) + 4
                                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = idx + 1
                        continue 
                if arg1 == 2:
                    mem[0] = idx
                    mem[32] = 1
                    if stor1[idx][4].length == arg2.length:
                        s = 0
                        while s < stor1[idx][4].length:
                            require s < arg2.length
                            require s < stor1[idx][4].length
                            if not stor1[idx].field_1024:
                                if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = sha3(idx, 1) + 4
                                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
        else:
            mem[0] = idx
            mem[32] = 1
            if stor1[idx].length == arg2.length:
                s = 0
                while s < stor1[idx].length:
                    require s < arg2.length
                    require s < stor1[idx].length
                    if not stor1[idx].field_0:
                        if Mask(8, -(('field', 3, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 3, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                            s = s + 1
                            continue 
                    else:
                        mem[0] = sha3(idx, 1)
                        if Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('var', 0), ('name', 'stor1', 1))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 1)), ('map', ('var', 0), ('name', 'stor1', 1))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                            s = s + 1
                            continue 
                    if arg1 != 1:
                        if arg1 == 2:
                            mem[0] = idx
                            mem[32] = 1
                            if stor1[idx][4].length == arg2.length:
                                s = 0
                                while s < stor1[idx][4].length:
                                    require s < arg2.length
                                    require s < stor1[idx][4].length
                                    if not stor1[idx].field_1024:
                                        if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[0] = sha3(idx, 1) + 4
                                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[0] = idx
                        mem[32] = 1
                        if stor1[idx][3].length == arg2.length:
                            s = 0
                            while s < stor1[idx][3].length:
                                require s < arg2.length
                                require s < stor1[idx][3].length
                                if not stor1[idx].field_768:
                                    if Mask(8, -(('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                        s = s + 1
                                        continue 
                                else:
                                    mem[0] = sha3(idx, 1) + 3
                                    if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                        s = s + 1
                                        continue 
                                if arg1 == 2:
                                    mem[0] = idx
                                    mem[32] = 1
                                    if stor1[idx][4].length == arg2.length:
                                        s = 0
                                        while s < stor1[idx][4].length:
                                            require s < arg2.length
                                            require s < stor1[idx][4].length
                                            if not stor1[idx].field_1024:
                                                if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                                    s = s + 1
                                                    continue 
                                            else:
                                                mem[0] = sha3(idx, 1) + 4
                                                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                                    s = s + 1
                                                    continue 
                                            idx = idx + 1
                                            continue 
                                idx = idx + 1
                                continue 
                        if arg1 == 2:
                            mem[0] = idx
                            mem[32] = 1
                            if stor1[idx][4].length == arg2.length:
                                s = 0
                                while s < stor1[idx][4].length:
                                    require s < arg2.length
                                    require s < stor1[idx][4].length
                                    if not stor1[idx].field_1024:
                                        if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[0] = sha3(idx, 1) + 4
                                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                    idx = idx + 1
                    continue 
            if arg1 != 1:
                if arg1 == 2:
                    mem[0] = idx
                    mem[32] = 1
                    if stor1[idx][4].length == arg2.length:
                        s = 0
                        while s < stor1[idx][4].length:
                            require s < arg2.length
                            require s < stor1[idx][4].length
                            if not stor1[idx].field_1024:
                                if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = sha3(idx, 1) + 4
                                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
            else:
                mem[0] = idx
                mem[32] = 1
                if stor1[idx][3].length == arg2.length:
                    s = 0
                    while s < stor1[idx][3].length:
                        require s < arg2.length
                        require s < stor1[idx][3].length
                        if not stor1[idx].field_768:
                            if Mask(8, -(('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 771, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                s = s + 1
                                continue 
                        else:
                            mem[0] = sha3(idx, 1) + 3
                            if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 3, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                s = s + 1
                                continue 
                        if arg1 == 2:
                            mem[0] = idx
                            mem[32] = 1
                            if stor1[idx][4].length == arg2.length:
                                s = 0
                                while s < stor1[idx][4].length:
                                    require s < arg2.length
                                    require s < stor1[idx][4].length
                                    if not stor1[idx].field_1024:
                                        if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[0] = sha3(idx, 1) + 4
                                        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                            s = s + 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                        idx = idx + 1
                        continue 
                if arg1 == 2:
                    mem[0] = idx
                    mem[32] = 1
                    if stor1[idx][4].length == arg2.length:
                        s = 0
                        while s < stor1[idx][4].length:
                            require s < arg2.length
                            require s < stor1[idx][4].length
                            if not stor1[idx].field_1024:
                                if Mask(8, -(('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) + 256, s) << (('field', 1027, ('stor', ('map', ('var', 0), ('name', 'stor1', 1)))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = sha3(idx, 1) + 4
                                if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) + 256, s % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 1)), ('array', 4, ('map', ('var', 0), ('name', 'stor1', 1)))))), 0) - 8 == Mask(8, 248, mem[s + 128]):
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
        idx = idx + 1
        continue 
    return 0
}



}
