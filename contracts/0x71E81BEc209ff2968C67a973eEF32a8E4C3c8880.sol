contract main {




// =====================  Runtime code  =====================


const sub_06a05014(?) = 0

const getVersion = 'v0.02.00'

const sub_0f854704(?) = 0, 1, 2, 3, 4, 5, 10, 25, 50, 100

const getAttributes = 96, 160, 224, 11, 'ScratchCard' << 168, 7, 'instant' << 200, 8, uint64('v0.02.00')

const getType = 'instant'

const getName = 'ScratchCard'

const sub_1f4cefd2(?) = 10

const sub_4e633c2c(?) = 1

const getConfiguration = 10, 9, 3, 0, 1, 2, 3, 4, 5, 10, 25, 50, 100

const getMultipliers = 10^10, 0

const sub_8afa7cee(?) = 2

const sub_9c3024a7(?) = 0

const sub_a56e3d44(?) = 1

const sub_e6765e16(?) = 'v1.04.01'

const sub_fa5da74e(?) = 0, 0, code.data[5899 len 192], code.data[5899 len 288]


function _fallback() payable {
    revert
}

function sub_ebb4998e(?) {
    if not arg1:
        return 0
    if arg2.length:
        return 0
    return 1, 100 * arg1, 0
}

function sub_4ecf870d(?) {
    mem[96 len 288] = call.data[68 len 288]
    mem[384] = arg3.length
    mem[416 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 416 len 192] = code.data[5899 len 192]
    mem[(32 * arg3.length) + 608 len 288] = code.data[5899 len 288]
    if arg1:
        if not arg3.length:
            mem[(32 * arg3.length) + 896 len 192] = code.data[5899 len 192]
            mem[(32 * arg3.length) + 1408 len 288] = code.data[5899 len 288]
            mem[(32 * arg3.length) + 1088] = (32 * arg3.length) + 1408
            mem[(32 * arg3.length) + 1120] = 0
            mem[(32 * arg3.length) + 1696 len 288] = code.data[5899 len 288]
            mem[(32 * arg3.length) + 1984 len 288] = code.data[5899 len 288]
            mem[(32 * arg3.length) + 2272 len 320] = code.data[5899 len 320]
            mem[(32 * arg3.length) + 2592] = 423
            mem[(32 * arg3.length) + 2624] = 16
            mem[(32 * arg3.length) + 2656] = 16
            mem[(32 * arg3.length) + 2688] = 14
            mem[(32 * arg3.length) + 2720] = 10
            mem[(32 * arg3.length) + 2752] = 9
            mem[(32 * arg3.length) + 2784] = 7
            mem[(32 * arg3.length) + 2816] = 3
            mem[(32 * arg3.length) + 2848] = 1
            mem[(32 * arg3.length) + 2880] = 1
            mem[(32 * arg3.length) + 2944] = arg2
            mem[(32 * arg3.length) + 2912] = 32
            mem[64] = (32 * arg3.length) + 2976
            mem[(32 * arg3.length) + 2976] = arg2
            mem[(32 * arg3.length) + 3008] = None or mem[(32 * arg3.length) + 3008]
            s = arg2 % 500
            idx = 0
            while uint8(idx) < 10:
                if uint16(s) >= mem[(32 * uint8(idx)) + (32 * arg3.length) + 2622 len 2]:
                    require uint8(idx) < 10
                    s = s - mem[(32 * uint8(idx)) + (32 * arg3.length) + 2592]
                    idx = idx + 1
                    continue 
                if uint8(idx) == 255:
                    idx = 0
                    while idx < 192:
                        mem[(32 * arg3.length) + idx + 3040] = mem[(32 * arg3.length) + idx + 896]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 288:
                        mem[(32 * arg3.length) + idx + 3232] = mem[(32 * arg3.length) + idx + 608]
                        idx = idx + 32
                        continue 
                    return 0, 0, mem[(32 * arg3.length) + 3040 len 480]
                mem[(32 * arg3.length) + 3008] = sha3(arg2)
                mem[(32 * arg3.length) + 2976] = 32
                mem[64] = (32 * arg3.length) + 3040
                t = (32 * arg3.length) + 3008
                u = mem[64]
                s = mem[(32 * arg3.length) + 2976]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[(32 * arg3.length) + 2976])] = mem[(32 * arg3.length) + floor32(mem[(32 * arg3.length) + 2976]) + -(mem[(32 * arg3.length) + 2976] % 32) + 3040 len mem[(32 * arg3.length) + 2976] % 32] or Mask(8 * -(mem[(32 * arg3.length) + 2976] % 32) + 32, -(8 * -(mem[(32 * arg3.length) + 2976] % 32) + 32) + 256, mem[mem[64] + floor32(mem[(32 * arg3.length) + 2976])])
                _92 = sha3(mem[mem[64] len (32 * arg3.length) + -mem[64] + 3072])
                if not uint8(idx):
                    _97 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_97 len 320] = code.data[5899 len 320]
                    _98 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_98] = 0
                    mem[_98 + 32] = 1
                    mem[_98 + 64] = 2
                    mem[_98 + 96] = 3
                    mem[_98 + 128] = 4
                    mem[_98 + 160] = 5
                    mem[_98 + 192] = 10
                    mem[_98 + 224] = 25
                    mem[_98 + 256] = 50
                    mem[_98 + 288] = 100
                    require uint8(idx) < 10
                    mem[(32 * arg3.length) + 1120] = arg1 * mem[(32 * uint8(idx)) + _98 + 31 len 1]
                    s = 1
                    t = 0
                    while uint8(s) <= 9:
                        if uint8(idx) == uint8(s):
                            s = s + 1
                            t = t
                            continue 
                        require uint8(t) < 9
                        mem[(32 * uint8(t)) + (32 * arg3.length) + 1984] = uint8(s)
                        s = s + 1
                        t = t + 1
                        continue 
                    s = 0
                    u = t
                    v = 0
                    w = idx
                    x = _92
                    while uint8(s) < uint8(bool(sha3(arg2)) + 1):
                        require uint8(u) > 0
                        require uint8(u)
                        _157 = mem[64]
                        mem[mem[64] + 32] = x
                        _158 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        _160 = mem[_158]
                        t = _158 + 32
                        w = _157 + 64
                        idx = mem[_158]
                        while idx >= 32:
                            mem[w] = mem[t]
                            t = t + 32
                            w = w + 32
                            idx = idx - 32
                            continue 
                        mem[_157 + floor32(mem[_158]) + 64] = mem[_158 + -(mem[_158] % 32) + floor32(mem[_158]) + 64 len mem[_158] % 32] or Mask(8 * -(mem[_158] % 32) + 32, -(8 * -(mem[_158] % 32) + 32) + 256, mem[_157 + floor32(mem[_158]) + 64])
                        _231 = sha3(mem[_157 + 64 len _160])
                        require uint8(x % uint8(u)) < 9
                        require uint8(v) < 9
                        mem[(32 * uint8(v)) + (32 * arg3.length) + 1696] = mem[(32 * uint8(x % uint8(u))) + (32 * arg3.length) + 2015 len 1]
                        require uint8(x % uint8(u)) < 9
                        require uint8(v + 1) < 9
                        mem[(32 * uint8(v + 1)) + (32 * arg3.length) + 1696] = mem[(32 * uint8(x % uint8(u))) + (32 * arg3.length) + 2015 len 1]
                        require uint8(u - 1) < 9
                        require uint8(x % uint8(u)) < 9
                        mem[(32 * uint8(x % uint8(u))) + (32 * arg3.length) + 1984] = mem[(32 * uint8(u - 1)) + (32 * arg3.length) + 2015 len 1]
                        s = s + 1
                        u = u - 1
                        v = v + 2
                        w = x % uint8(u)
                        x = _231
                        continue 
                    s = u
                    idx = v
                    t = w
                    y = x
                    while uint8(idx) < 9:
                        require uint8(s) > 0
                        require uint8(s)
                        _243 = mem[64]
                        mem[mem[64] + 32] = y
                        _244 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        _246 = mem[_244]
                        u = _244 + 32
                        v = mem[64]
                        t = mem[_244]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_244])] = mem[_244 + floor32(mem[_244]) + -(mem[_244] % 32) + 64 len mem[_244] % 32] or Mask(8 * -(mem[_244] % 32) + 32, -(8 * -(mem[_244] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_244])])
                        _295 = sha3(mem[mem[64] len _246 + _243 + -mem[64] + 64])
                        require uint8(y % uint8(s)) < 9
                        require uint8(idx) < 9
                        mem[(32 * uint8(idx)) + (32 * arg3.length) + 1696] = mem[(32 * uint8(y % uint8(s))) + (32 * arg3.length) + 2015 len 1]
                        require uint8(s - 1) < 9
                        require uint8(y % uint8(s)) < 9
                        mem[(32 * uint8(y % uint8(s))) + (32 * arg3.length) + 1984] = mem[(32 * uint8(s - 1)) + (32 * arg3.length) + 2015 len 1]
                        s = s - 1
                        idx = idx + 1
                        t = y % uint8(s)
                        y = _295
                        continue 
                    idx = 9
                    s = 0
                    u = t
                    u = y
                    while uint8(idx):
                        require uint8(idx) > 0
                        require uint8(idx)
                        _331 = mem[64]
                        mem[mem[64] + 32] = u
                        _332 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        _334 = mem[_332]
                        v = _332 + 32
                        w = mem[64]
                        t = mem[_332]
                        while t >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_332])] = mem[_332 + floor32(mem[_332]) + -(mem[_332] % 32) + 64 len mem[_332] % 32] or Mask(8 * -(mem[_332] % 32) + 32, -(8 * -(mem[_332] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_332])])
                        _379 = sha3(mem[mem[64] len _334 + _331 + -mem[64] + 64])
                        require uint8(u % uint8(idx)) < 9
                        require uint8(s) < 9
                        mem[(32 * uint8(s)) + mem[(32 * arg3.length) + 1088]] = mem[(32 * uint8(u % uint8(idx))) + (32 * arg3.length) + 1727 len 1]
                        require uint8(idx - 1) < 9
                        require uint8(u % uint8(idx)) < 9
                        mem[(32 * uint8(u % uint8(idx))) + (32 * arg3.length) + 1696] = mem[(32 * uint8(idx - 1)) + (32 * arg3.length) + 1727 len 1]
                        idx = idx - 1
                        s = s + 1
                        u = u % uint8(idx)
                        u = _379
                        continue 
                    _291 = mem[(32 * arg3.length) + 1120]
                    _298 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_298 len 192] = code.data[5899 len 192]
                    mem[_298] = mem[(32 * arg3.length) + 1120]
                    mem[_298 + 32] = uint8(mem[mem[(32 * arg3.length) + 1088]]) << 64 or uint8(mem[mem[(32 * arg3.length) + 1088] + 32]) << 56 or uint8(mem[mem[(32 * arg3.length) + 1088] + 64]) << 48 or uint8(mem[mem[(32 * arg3.length) + 1088] + 96]) << 40 or uint8(mem[mem[(32 * arg3.length) + 1088] + 128]) << 32 or uint8(mem[mem[(32 * arg3.length) + 1088] + 160]) << 24 or uint8(mem[mem[(32 * arg3.length) + 1088] + 192]) << 16 or uint8(mem[mem[(32 * arg3.length) + 1088] + 224]) << 8 or mem[mem[(32 * arg3.length) + 1088] + 287 len 1]
                    _366 = mem[64]
                    mem[mem[64]] = 2
                    mem[mem[64] + 32] = _291 - arg1
                    idx = 0
                    while idx < 192:
                        mem[_366 + idx + 64] = mem[_298 + idx]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 288:
                        mem[_366 + idx + 256] = mem[(32 * arg3.length) + idx + 608]
                        idx = idx + 32
                        continue 
                    return memory
                      from mem[64]
                       len _366 + -mem[64] + 544
                mem[(32 * arg3.length) + 1696] = uint8(idx)
                mem[(32 * arg3.length) + 1728] = uint8(idx)
                mem[(32 * arg3.length) + 1760] = uint8(idx)
                _99 = mem[64]
                mem[64] = mem[64] + 320
                mem[_99 len 320] = code.data[5899 len 320]
                _101 = mem[64]
                mem[64] = mem[64] + 320
                mem[_101] = 0
                mem[_101 + 32] = 1
                mem[_101 + 64] = 2
                mem[_101 + 96] = 3
                mem[_101 + 128] = 4
                mem[_101 + 160] = 5
                mem[_101 + 192] = 10
                mem[_101 + 224] = 25
                mem[_101 + 256] = 50
                mem[_101 + 288] = 100
                require uint8(idx) < 10
                mem[(32 * arg3.length) + 1120] = arg1 * mem[(32 * uint8(idx)) + _101 + 31 len 1]
                s = 1
                t = 0
                while uint8(s) <= 9:
                    if uint8(idx) == uint8(s):
                        s = s + 1
                        t = t
                        continue 
                    require uint8(t) < 9
                    mem[(32 * uint8(t)) + (32 * arg3.length) + 1984] = uint8(s)
                    s = s + 1
                    t = t + 1
                    continue 
                s = 0
                u = t
                v = 3
                w = idx
                x = _92
                while uint8(s) < bool(sha3(arg2)):
                    require uint8(u) > 0
                    require uint8(u)
                    _153 = mem[64]
                    mem[mem[64] + 32] = x
                    _154 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _156 = mem[_154]
                    t = _154 + 32
                    w = mem[64]
                    idx = mem[_154]
                    while idx >= 32:
                        mem[w] = mem[t]
                        t = t + 32
                        w = w + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_154])] = mem[_154 + floor32(mem[_154]) + -(mem[_154] % 32) + 64 len mem[_154] % 32] or Mask(8 * -(mem[_154] % 32) + 32, -(8 * -(mem[_154] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_154])])
                    _226 = sha3(mem[mem[64] len _156 + _153 + -mem[64] + 64])
                    require uint8(x % uint8(u)) < 9
                    require uint8(v) < 9
                    mem[(32 * uint8(v)) + (32 * arg3.length) + 1696] = mem[(32 * uint8(x % uint8(u))) + (32 * arg3.length) + 2015 len 1]
                    require uint8(x % uint8(u)) < 9
                    require uint8(v + 1) < 9
                    mem[(32 * uint8(v + 1)) + (32 * arg3.length) + 1696] = mem[(32 * uint8(x % uint8(u))) + (32 * arg3.length) + 2015 len 1]
                    require uint8(u - 1) < 9
                    require uint8(x % uint8(u)) < 9
                    mem[(32 * uint8(x % uint8(u))) + (32 * arg3.length) + 1984] = mem[(32 * uint8(u - 1)) + (32 * arg3.length) + 2015 len 1]
                    s = s + 1
                    u = u - 1
                    v = v + 2
                    w = x % uint8(u)
                    x = _226
                    continue 
                s = u
                idx = v
                t = w
                y = x
                while uint8(idx) < 9:
                    require uint8(s) > 0
                    require uint8(s)
                    _239 = mem[64]
                    mem[mem[64] + 32] = y
                    _240 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _242 = mem[_240]
                    u = _240 + 32
                    v = _239 + 64
                    t = mem[_240]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_239 + floor32(mem[_240]) + 64] = mem[_240 + -(mem[_240] % 32) + floor32(mem[_240]) + 64 len mem[_240] % 32] or Mask(8 * -(mem[_240] % 32) + 32, -(8 * -(mem[_240] % 32) + 32) + 256, mem[_239 + floor32(mem[_240]) + 64])
                    _289 = sha3(mem[_239 + 64 len _242])
                    require uint8(y % uint8(s)) < 9
                    require uint8(idx) < 9
                    mem[(32 * uint8(idx)) + (32 * arg3.length) + 1696] = mem[(32 * uint8(y % uint8(s))) + (32 * arg3.length) + 2015 len 1]
                    require uint8(s - 1) < 9
                    require uint8(y % uint8(s)) < 9
                    mem[(32 * uint8(y % uint8(s))) + (32 * arg3.length) + 1984] = mem[(32 * uint8(s - 1)) + (32 * arg3.length) + 2015 len 1]
                    s = s - 1
                    idx = idx + 1
                    t = y % uint8(s)
                    y = _289
                    continue 
                idx = 9
                s = 0
                u = t
                u = y
                while uint8(idx):
                    require uint8(idx) > 0
                    require uint8(idx)
                    _325 = mem[64]
                    mem[mem[64] + 32] = u
                    _326 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _328 = mem[_326]
                    v = _326 + 32
                    w = mem[64]
                    t = mem[_326]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_326])] = mem[_326 + floor32(mem[_326]) + -(mem[_326] % 32) + 64 len mem[_326] % 32] or Mask(8 * -(mem[_326] % 32) + 32, -(8 * -(mem[_326] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_326])])
                    _373 = sha3(mem[mem[64] len _328 + _325 + -mem[64] + 64])
                    require uint8(u % uint8(idx)) < 9
                    require uint8(s) < 9
                    mem[(32 * uint8(s)) + mem[(32 * arg3.length) + 1088]] = mem[(32 * uint8(u % uint8(idx))) + (32 * arg3.length) + 1727 len 1]
                    require uint8(idx - 1) < 9
                    require uint8(u % uint8(idx)) < 9
                    mem[(32 * uint8(u % uint8(idx))) + (32 * arg3.length) + 1696] = mem[(32 * uint8(idx - 1)) + (32 * arg3.length) + 1727 len 1]
                    idx = idx - 1
                    s = s + 1
                    u = u % uint8(idx)
                    u = _373
                    continue 
                _285 = mem[(32 * arg3.length) + 1120]
                _297 = mem[64]
                mem[64] = mem[64] + 192
                mem[_297 len 192] = code.data[5899 len 192]
                mem[_297] = mem[(32 * arg3.length) + 1120]
                mem[_297 + 32] = uint8(mem[mem[(32 * arg3.length) + 1088]]) << 64 or uint8(mem[mem[(32 * arg3.length) + 1088] + 32]) << 56 or uint8(mem[mem[(32 * arg3.length) + 1088] + 64]) << 48 or uint8(mem[mem[(32 * arg3.length) + 1088] + 96]) << 40 or uint8(mem[mem[(32 * arg3.length) + 1088] + 128]) << 32 or uint8(mem[mem[(32 * arg3.length) + 1088] + 160]) << 24 or uint8(mem[mem[(32 * arg3.length) + 1088] + 192]) << 16 or uint8(mem[mem[(32 * arg3.length) + 1088] + 224]) << 8 or mem[mem[(32 * arg3.length) + 1088] + 287 len 1]
                _365 = mem[64]
                mem[mem[64]] = 2
                mem[mem[64] + 32] = _285 - arg1
                idx = 0
                while idx < 192:
                    mem[_365 + idx + 64] = mem[_297 + idx]
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < 288:
                    mem[_365 + idx + 256] = mem[(32 * arg3.length) + idx + 608]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len _365 + -mem[64] + 544
    return 0, 0, code.data[5899 len 192], code.data[5899 len 288]
}



}
