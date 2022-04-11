contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1705]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function people(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512
}

function addPerson(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = (3 * stor0.length) + 3
        while 3 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor0[stor0.length].field_0 = arg1
    stor0[stor0.length].field_256 = arg2
    stor0[stor0.length].field_512 = arg3
    return 1
}

function getPeople() {
    if 0 >= stor0.length:
        return 96, 128, 160, 0, 0, 0
    stor0.length++
    if not stor0.length > stor0.length + 1:
        stor0[stor0.length].field_0 = uint256(stor0.field_0)
        stor0.length++
        stor0[stor0.length].field_0 = uint256(stor0.field_256)
        stor0.length++
        stor0[stor0.length].field_0 = uint256(stor0.field_512)
        if not stor0.length:
            mem[(64 * stor0.length) + 448] = stor0.length
            mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
            mem[(131 * stor0.length) + 608] = stor0.length
            mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
            mem[(164 * stor0.length) + 640] = stor0.length
            mem[(164 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
            return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(64 * stor0.length) + 480 len floor32(stor0.length)], mem[(164 * stor0.length) + floor32(stor0.length) + 672 len (33 * stor0.length) - floor32(stor0.length)]), 
                   (32 * stor0.length) + 128,
                   (64 * stor0.length) + 160
        mem[416] = uint256(stor0.field_0)
        idx = 416
        s = 0
        while (32 * stor0.length) + 384 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor0.length) + 416] = stor0.length
        if not stor0.length:
            mem[(64 * stor0.length) + 448] = stor0.length
            mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
            var40001 = floor32(stor0.length)
            mem[(131 * stor0.length) + 608] = stor0.length
            mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
            mem[(132 * stor0.length) + 640] = stor0.length
            mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
            return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (34 * stor0.length) + -floor32(stor0.length) + 32]), 
                   (32 * stor0.length) + 128,
                   (64 * stor0.length) + 160
        mem[(32 * stor0.length) + 448] = uint256(stor0.field_0)
        idx = (32 * stor0.length) + 448
        s = 0
        while (64 * stor0.length) + 416 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(64 * stor0.length) + 448] = stor0.length
        if not stor0.length:
            mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
            mem[(131 * stor0.length) + 608] = stor0.length
            mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
            mem[(132 * stor0.length) + 640] = stor0.length
            mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
            return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (65 * stor0.length) + -floor32(stor0.length) + 32]), 
                   (32 * stor0.length) + 128,
                   (64 * stor0.length) + 160
        mem[(64 * stor0.length) + 480] = uint256(stor0.field_0)
        idx = (64 * stor0.length) + 480
        s = 0
        while (98 * stor0.length) + 448 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(98 * stor0.length) + 480] = 96
        mem[(98 * stor0.length) + 576] = stor0.length
        mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
        mem[(98 * stor0.length) + 512] = (32 * stor0.length) + 128
        mem[(131 * stor0.length) + 608] = mem[(32 * stor0.length) + 416]
        mem[(131 * stor0.length) + 640 len floor32(mem[(32 * stor0.length) + 416])] = mem[(32 * stor0.length) + 448 len floor32(mem[(32 * stor0.length) + 416])]
        mem[(98 * stor0.length) + 544] = (32 * mem[(32 * stor0.length) + 416]) + (32 * stor0.length) + 160
        mem[(32 * mem[(32 * stor0.length) + 416]) + (131 * stor0.length) + 640] = stor0.length
        mem[(32 * mem[(32 * stor0.length) + 416]) + (131 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
    else:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor0[stor0.length].field_0 = uint256(stor0.field_0)
        stor0.length++
        if not stor0.length > stor0.length + 1:
            stor0[stor0.length].field_0 = uint256(stor0.field_256)
            stor0.length++
            stor0[stor0.length].field_0 = uint256(stor0.field_512)
            if not stor0.length:
                mem[(64 * stor0.length) + 448] = stor0.length
                mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                var43001 = floor32(stor0.length)
                mem[(131 * stor0.length) + 608] = stor0.length
                mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                mem[(164 * stor0.length) + 640] = stor0.length
                mem[(164 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                var49001 = floor32(stor0.length)
                return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(64 * stor0.length) + 480 len floor32(stor0.length)], mem[(164 * stor0.length) + floor32(stor0.length) + 672 len (33 * stor0.length) - floor32(stor0.length)]), 
                       (32 * stor0.length) + 128,
                       (64 * stor0.length) + 160
            mem[416] = uint256(stor0.field_0)
            idx = 416
            s = 0
            while (32 * stor0.length) + 384 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor0.length) + 416] = stor0.length
            if not stor0.length:
                mem[(64 * stor0.length) + 448] = stor0.length
                mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                var47001 = floor32(stor0.length)
                mem[(131 * stor0.length) + 608] = stor0.length
                mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                mem[(132 * stor0.length) + 640] = stor0.length
                mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (34 * stor0.length) + -floor32(stor0.length) + 32]), 
                       (32 * stor0.length) + 128,
                       (64 * stor0.length) + 160
            mem[(32 * stor0.length) + 448] = uint256(stor0.field_0)
            idx = (32 * stor0.length) + 448
            s = 0
            while (64 * stor0.length) + 416 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(64 * stor0.length) + 448] = stor0.length
            if not stor0.length:
                mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                var51001 = floor32(stor0.length)
                mem[(131 * stor0.length) + 608] = stor0.length
                mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                var54001 = floor32(stor0.length)
                mem[(132 * stor0.length) + 640] = stor0.length
                mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (65 * stor0.length) + -floor32(stor0.length) + 32]), 
                       (32 * stor0.length) + 128,
                       (64 * stor0.length) + 160
            mem[(64 * stor0.length) + 480] = uint256(stor0.field_0)
            idx = (64 * stor0.length) + 480
            s = 0
            while (98 * stor0.length) + 448 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(98 * stor0.length) + 480] = 96
            mem[(98 * stor0.length) + 576] = stor0.length
            mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
            mem[(98 * stor0.length) + 512] = (32 * stor0.length) + 128
            mem[(131 * stor0.length) + 608] = mem[(32 * stor0.length) + 416]
            mem[(131 * stor0.length) + 640 len floor32(mem[(32 * stor0.length) + 416])] = mem[(32 * stor0.length) + 448 len floor32(mem[(32 * stor0.length) + 416])]
            mem[(98 * stor0.length) + 544] = (32 * mem[(32 * stor0.length) + 416]) + (32 * stor0.length) + 160
            mem[(32 * mem[(32 * stor0.length) + 416]) + (131 * stor0.length) + 640] = stor0.length
            mem[(32 * mem[(32 * stor0.length) + 416]) + (131 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
            var61001 = floor32(stor0.length)
        else:
            idx = stor0.length + 1
            while stor0.length > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
            stor0[stor0.length].field_0 = uint256(stor0.field_256)
            stor0.length++
            if not stor0.length > stor0.length + 1:
                stor0[stor0.length].field_0 = uint256(stor0.field_512)
                if not stor0.length:
                    mem[(64 * stor0.length) + 448] = stor0.length
                    mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                    mem[(131 * stor0.length) + 608] = stor0.length
                    mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                    mem[(164 * stor0.length) + 640] = stor0.length
                    mem[(164 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                    var56001 = floor32(stor0.length)
                    return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(64 * stor0.length) + 480 len floor32(stor0.length)], mem[(164 * stor0.length) + floor32(stor0.length) + 672 len (33 * stor0.length) - floor32(stor0.length)]), 
                           (32 * stor0.length) + 128,
                           (64 * stor0.length) + 160
                mem[416] = uint256(stor0.field_0)
                idx = 416
                s = 0
                while (32 * stor0.length) + 384 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * stor0.length) + 416] = stor0.length
                if not stor0.length:
                    mem[(64 * stor0.length) + 448] = stor0.length
                    mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                    var54001 = floor32(stor0.length)
                    mem[(131 * stor0.length) + 608] = stor0.length
                    mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                    mem[(132 * stor0.length) + 640] = stor0.length
                    mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                    return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (34 * stor0.length) + -floor32(stor0.length) + 32]), 
                           (32 * stor0.length) + 128,
                           (64 * stor0.length) + 160
                mem[(32 * stor0.length) + 448] = uint256(stor0.field_0)
                idx = (32 * stor0.length) + 448
                s = 0
                while (64 * stor0.length) + 416 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(64 * stor0.length) + 448] = stor0.length
                if not stor0.length:
                    mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                    mem[(131 * stor0.length) + 608] = stor0.length
                    mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                    var61001 = floor32(stor0.length)
                    mem[(132 * stor0.length) + 640] = stor0.length
                    mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                    return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (65 * stor0.length) + -floor32(stor0.length) + 32]), 
                           (32 * stor0.length) + 128,
                           (64 * stor0.length) + 160
            else:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor0[stor0.length].field_0 = uint256(stor0.field_512)
                if not stor0.length:
                    mem[(64 * stor0.length) + 448] = stor0.length
                    mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                    mem[(131 * stor0.length) + 608] = stor0.length
                    mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                    mem[(164 * stor0.length) + 640] = stor0.length
                    mem[(164 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                    return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(64 * stor0.length) + 480 len floor32(stor0.length)], mem[(164 * stor0.length) + floor32(stor0.length) + 672 len (33 * stor0.length) - floor32(stor0.length)]), 
                           (32 * stor0.length) + 128,
                           (64 * stor0.length) + 160
                mem[416] = uint256(stor0.field_0)
                idx = 416
                s = 0
                while (32 * stor0.length) + 384 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * stor0.length) + 416] = stor0.length
                if not stor0.length:
                    mem[(64 * stor0.length) + 448] = stor0.length
                    mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                    var61001 = floor32(stor0.length)
                    mem[(131 * stor0.length) + 608] = stor0.length
                    mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                    mem[(132 * stor0.length) + 640] = stor0.length
                    mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                    return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (34 * stor0.length) + -floor32(stor0.length) + 32]), 
                           (32 * stor0.length) + 128,
                           (64 * stor0.length) + 160
                mem[(32 * stor0.length) + 448] = uint256(stor0.field_0)
                idx = (32 * stor0.length) + 448
                s = 0
                while (64 * stor0.length) + 416 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(64 * stor0.length) + 448] = stor0.length
                if not stor0.length:
                    mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
                    mem[(131 * stor0.length) + 608] = stor0.length
                    mem[(131 * stor0.length) + 640 len floor32(stor0.length)] = mem[(32 * stor0.length) + 448 len floor32(stor0.length)]
                    mem[(132 * stor0.length) + 640] = stor0.length
                    mem[(132 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
                    return Array(len=stor0.length, data=mem[416 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 608 len (33 * stor0.length) + -floor32(stor0.length) + 32], mem[(32 * stor0.length) + 448 len floor32(stor0.length)], mem[(131 * stor0.length) + floor32(stor0.length) + 640 len (65 * stor0.length) + -floor32(stor0.length) + 32]), 
                           (32 * stor0.length) + 128,
                           (64 * stor0.length) + 160
            ('bool', ('stor', ('length', ('name', 'stor0', 0))))
            mem[(64 * stor0.length) + 480] = uint256(stor0.field_0)
            idx = (64 * stor0.length) + 480
            s = 0
            while (98 * stor0.length) + 448 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(98 * stor0.length) + 480] = 96
            mem[(98 * stor0.length) + 576] = stor0.length
            mem[(98 * stor0.length) + 608 len floor32(stor0.length)] = mem[416 len floor32(stor0.length)]
            mem[(98 * stor0.length) + 512] = (32 * stor0.length) + 128
            mem[(131 * stor0.length) + 608] = mem[(32 * stor0.length) + 416]
            mem[(131 * stor0.length) + 640 len floor32(mem[(32 * stor0.length) + 416])] = mem[(32 * stor0.length) + 448 len floor32(mem[(32 * stor0.length) + 416])]
            mem[(98 * stor0.length) + 544] = (32 * mem[(32 * stor0.length) + 416]) + (32 * stor0.length) + 160
            mem[(32 * mem[(32 * stor0.length) + 416]) + (131 * stor0.length) + 640] = stor0.length
            mem[(32 * mem[(32 * stor0.length) + 416]) + (131 * stor0.length) + 672 len floor32(stor0.length)] = mem[(64 * stor0.length) + 480 len floor32(stor0.length)]
    return memory
      from (98 * stor0.length) + 480
       len (66 * stor0.length) + (32 * mem[(32 * stor0.length) + 416]) + 192
}



}
