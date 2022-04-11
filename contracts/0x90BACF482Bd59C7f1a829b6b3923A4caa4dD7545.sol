contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1455]




// =====================  Runtime code  =====================


function sub_e3f09bfd(?) payable {
    idx = 0
    while idx < stor[arg1]:
        idx = idx + 1
        continue 
    return stor[sha3(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9ff3faf0(?) payable {
    idx = 0
    s = 0
    while idx < stor[arg1]:
        idx = idx + 1
        s = stor[sha3(arg1) + idx] + s
        continue 
    return (stor[_4 + stor[arg1]] * stor[arg1])
}

function sub_66c19bcd(?) payable {
    if not arg3:
        idx = 0
        while stor[sha3(arg1) + idx] != arg2:
            if idx + 1 < stor[arg1]:
                idx = idx + 1
                continue 
            else:
                return 0
        return 1, None + 2
    s = 0
    idx = 0
    while idx <= stor[arg1] - 1:
        if arg2 < stor[sha3(arg1) + (0.5 / idx + stor[arg1] - 1)]:
            s = idx + stor[arg1] - 1 / 2
            idx = idx
            continue 
        if arg2 > stor[sha3(arg1) + (0.5 / idx + stor[arg1] - 1)]:
            s = idx + stor[arg1] - 1 / 2
            idx = (idx + stor[arg1] - 1 / 2) + 1
            continue 
        return 1, idx + stor[arg1] - 1 / 2
    return 0
}

function sub_303773f0(?) payable {
    s = 0
    idx = stor[arg1] - 2 / 2
    while idx >= 0:
        t = 0
        u = 0
        s = (2 * idx) + 1
        while s <= stor[arg1] - 1:
            require s < stor[arg1]
            require idx < stor[arg1]
            mem[0] = arg1
            if stor[idx + sha3(arg1)] >= stor[s + sha3(arg1)]:
                if s + 1 > stor[arg1] - 1:
                    if idx == idx:
                        t = idx
                        u = s + 1
                        s = stor[arg1]
                        continue 
                    require idx < stor[arg1]
                    mem[0] = arg1
                    t = idx
                    u = s + 1
                    s = (2 * idx) + 1
                    continue 
                require s + 1 < stor[arg1]
                require idx < stor[arg1]
                mem[0] = arg1
                if stor[idx + sha3(arg1)] >= stor[s + sha3(arg1) + 1]:
                    if idx == idx:
                        t = idx
                        u = s + 1
                        s = stor[arg1]
                        continue 
                    require idx < stor[arg1]
                    mem[0] = arg1
                    t = idx
                    u = s + 1
                    s = (2 * idx) + 1
                    continue 
            else:
                if s + 1 > stor[arg1] - 1:
                    if s == idx:
                        t = s
                        u = s + 1
                        s = stor[arg1]
                        continue 
                    require s < stor[arg1]
                    require idx < stor[arg1]
                    require s < stor[arg1]
                    stor[s + sha3(arg1)] = stor[idx + sha3(arg1)]
                    require idx < stor[arg1]
                    mem[0] = arg1
                    stor[idx + sha3(arg1)] = stor[s + sha3(arg1)]
                    t = s
                    u = s + 1
                    s = (2 * s) + 1
                    continue 
                require s + 1 < stor[arg1]
                require s < stor[arg1]
                mem[0] = arg1
                if stor[s + sha3(arg1)] >= stor[s + sha3(arg1) + 1]:
                    if s == idx:
                        t = s
                        u = s + 1
                        s = stor[arg1]
                        continue 
                    require s < stor[arg1]
                    require idx < stor[arg1]
                    require s < stor[arg1]
                    stor[s + sha3(arg1)] = stor[idx + sha3(arg1)]
                    require idx < stor[arg1]
                    mem[0] = arg1
                    stor[idx + sha3(arg1)] = stor[s + sha3(arg1)]
                    t = s
                    u = s + 1
                    s = (2 * s) + 1
                    continue 
            if s + 1 == idx:
                t = s + 1
                u = s + 1
                s = stor[arg1]
                continue 
            require s + 1 < stor[arg1]
            require idx < stor[arg1]
            require s + 1 < stor[arg1]
            stor[s + sha3(arg1) + 1] = stor[idx + sha3(arg1)]
            require idx < stor[arg1]
            mem[0] = arg1
            stor[idx + sha3(arg1)] = stor[s + sha3(arg1) + 1]
            t = s + 1
            u = s + 1
            s = (2 * s + 1) + 1
            continue 
        if idx:
            s = s
            idx = idx - 1
            continue 
        w = 0
        w = s
        w = idx
        v = stor[arg1] - 1
        while v > 0:
            require v < stor[arg1]
            require 0 < stor[arg1]
            require v < stor[arg1]
            stor[v + sha3(arg1)] = stor[sha3(arg1)]
            require 0 < stor[arg1]
            mem[0] = arg1
            stor[sha3(arg1)] = stor[v + sha3(arg1)]
            s = stor[v + sha3(arg1)]
            w = t
            w = u
            w = 1
            x = 0
            while w <= v - 1:
                require w < stor[arg1]
                require x < stor[arg1]
                mem[0] = arg1
                if stor[x + sha3(arg1)] >= stor[w + sha3(arg1)]:
                    if w + 1 > v - 1:
                        if x == x:
                            s = s
                            w = x
                            w = w + 1
                            w = v
                            x = x
                            continue 
                        require x < stor[arg1]
                        mem[0] = arg1
                        s = stor[x + sha3(arg1)]
                        w = x
                        w = w + 1
                        w = (2 * x) + 1
                        x = x
                        continue 
                    require w + 1 < stor[arg1]
                    require x < stor[arg1]
                    mem[0] = arg1
                    if stor[x + sha3(arg1)] >= stor[w + sha3(arg1) + 1]:
                        if x == x:
                            s = s
                            w = x
                            w = w + 1
                            w = v
                            x = x
                            continue 
                        require x < stor[arg1]
                        mem[0] = arg1
                        s = stor[x + sha3(arg1)]
                        w = x
                        w = w + 1
                        w = (2 * x) + 1
                        x = x
                        continue 
                else:
                    if w + 1 > v - 1:
                        if w == x:
                            s = s
                            w = w
                            w = w + 1
                            w = v
                            x = x
                            continue 
                        require w < stor[arg1]
                        require x < stor[arg1]
                        require w < stor[arg1]
                        stor[w + sha3(arg1)] = stor[x + sha3(arg1)]
                        require x < stor[arg1]
                        mem[0] = arg1
                        stor[x + sha3(arg1)] = stor[w + sha3(arg1)]
                        s = stor[w + sha3(arg1)]
                        w = w
                        w = w + 1
                        w = (2 * w) + 1
                        x = w
                        continue 
                    require w + 1 < stor[arg1]
                    require w < stor[arg1]
                    mem[0] = arg1
                    if stor[w + sha3(arg1)] >= stor[w + sha3(arg1) + 1]:
                        if w == x:
                            s = s
                            w = w
                            w = w + 1
                            w = v
                            x = x
                            continue 
                        require w < stor[arg1]
                        require x < stor[arg1]
                        require w < stor[arg1]
                        stor[w + sha3(arg1)] = stor[x + sha3(arg1)]
                        require x < stor[arg1]
                        mem[0] = arg1
                        stor[x + sha3(arg1)] = stor[w + sha3(arg1)]
                        s = stor[w + sha3(arg1)]
                        w = w
                        w = w + 1
                        w = (2 * w) + 1
                        x = w
                        continue 
                if w + 1 == x:
                    s = s
                    w = w + 1
                    w = w + 1
                    w = v
                    x = x
                    continue 
                require w + 1 < stor[arg1]
                require x < stor[arg1]
                require w + 1 < stor[arg1]
                stor[w + sha3(arg1) + 1] = stor[x + sha3(arg1)]
                require x < stor[arg1]
                mem[0] = arg1
                stor[x + sha3(arg1)] = stor[w + sha3(arg1) + 1]
                s = stor[w + sha3(arg1) + 1]
                w = w + 1
                w = w + 1
                w = (2 * w + 1) + 1
                x = w + 1
                continue 
            w = s
            w = w
            w = x
            v = v - 1
            continue 
    t = 0
    t = s
    t = stor[arg1] - 2 / 2
    idx = stor[arg1] - 1
    while idx > 0:
        require idx < stor[arg1]
        require 0 < stor[arg1]
        require idx < stor[arg1]
        stor[idx + sha3(arg1)] = stor[sha3(arg1)]
        require 0 < stor[arg1]
        mem[0] = arg1
        stor[sha3(arg1)] = stor[idx + sha3(arg1)]
        s = stor[idx + sha3(arg1)]
        t = 0
        t = 0
        t = 1
        u = 0
        while t <= idx - 1:
            require t < stor[arg1]
            require u < stor[arg1]
            mem[0] = arg1
            if stor[u + sha3(arg1)] >= stor[t + sha3(arg1)]:
                if t + 1 > idx - 1:
                    if u == u:
                        s = s
                        t = u
                        t = t + 1
                        t = idx
                        u = u
                        continue 
                    require u < stor[arg1]
                    mem[0] = arg1
                    s = stor[u + sha3(arg1)]
                    t = u
                    t = t + 1
                    t = (2 * u) + 1
                    u = u
                    continue 
                require t + 1 < stor[arg1]
                require u < stor[arg1]
                mem[0] = arg1
                if stor[u + sha3(arg1)] >= stor[t + sha3(arg1) + 1]:
                    if u == u:
                        s = s
                        t = u
                        t = t + 1
                        t = idx
                        u = u
                        continue 
                    require u < stor[arg1]
                    mem[0] = arg1
                    s = stor[u + sha3(arg1)]
                    t = u
                    t = t + 1
                    t = (2 * u) + 1
                    u = u
                    continue 
            else:
                if t + 1 > idx - 1:
                    if t == u:
                        s = s
                        t = t
                        t = t + 1
                        t = idx
                        u = u
                        continue 
                    require t < stor[arg1]
                    require u < stor[arg1]
                    require t < stor[arg1]
                    stor[t + sha3(arg1)] = stor[u + sha3(arg1)]
                    require u < stor[arg1]
                    mem[0] = arg1
                    stor[u + sha3(arg1)] = stor[t + sha3(arg1)]
                    s = stor[t + sha3(arg1)]
                    t = t
                    t = t + 1
                    t = (2 * t) + 1
                    u = t
                    continue 
                require t + 1 < stor[arg1]
                require t < stor[arg1]
                mem[0] = arg1
                if stor[t + sha3(arg1)] >= stor[t + sha3(arg1) + 1]:
                    if t == u:
                        s = s
                        t = t
                        t = t + 1
                        t = idx
                        u = u
                        continue 
                    require t < stor[arg1]
                    require u < stor[arg1]
                    require t < stor[arg1]
                    stor[t + sha3(arg1)] = stor[u + sha3(arg1)]
                    require u < stor[arg1]
                    mem[0] = arg1
                    stor[u + sha3(arg1)] = stor[t + sha3(arg1)]
                    s = stor[t + sha3(arg1)]
                    t = t
                    t = t + 1
                    t = (2 * t) + 1
                    u = t
                    continue 
            if t + 1 == u:
                s = s
                t = t + 1
                t = t + 1
                t = idx
                u = u
                continue 
            require t + 1 < stor[arg1]
            require u < stor[arg1]
            require t + 1 < stor[arg1]
            stor[t + sha3(arg1) + 1] = stor[u + sha3(arg1)]
            require u < stor[arg1]
            mem[0] = arg1
            stor[u + sha3(arg1)] = stor[t + sha3(arg1) + 1]
            s = stor[t + sha3(arg1) + 1]
            t = t + 1
            t = t + 1
            t = (2 * t + 1) + 1
            u = t + 1
            continue 
        t = s
        t = t
        t = u
        idx = idx - 1
        continue 
}



}
