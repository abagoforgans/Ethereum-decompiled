contract main {




// =====================  Runtime code  =====================


const sub_920d4135(?) = 1


function _fallback() payable {
    revert
}

function sub_3483cb78(?) {
    return (arg1 / 4)
}

function sub_ea9d9b53(?) {
    require arg2
    return arg1
}

function getSeed(uint256 arg1) {
    mem[212] = uint64(msg.sender), Mask(96, 160, block.hash(arg1)) >> 160 or Mask(96, 160, mem[212])
    return sha3(block.hash(arg1), mem[212 len 20])
}

function sub_ae3007d4(?) {
    mem[96 len 3200] = call.data[4 len 3200]
    idx = arg1
    while idx < arg2:
        require idx < 100
        if mem[(32 * idx) + 96] != arg3:
            idx = idx + 4
            continue 
        return 1
    return 0
}

function sub_76afb715(?) {
    mem[3296 len 3200] = code.data[2205 len 3200]
    if block.number > arg1 + 255:
        mem[6528] = block.hash(block.number - 1)
        mem[6560] = address(msg.sender)
        mem[6496] = 52
        mem[6580] = block.hash(block.number - 1)
        mem[6624 len 20] = uint64(msg.sender), Mask(96, 160, block.hash(block.number - 1)) >> 160
    else:
        mem[6528] = block.hash(arg1)
        mem[6560] = address(msg.sender)
        mem[6496] = 52
        mem[6580] = block.hash(arg1)
        mem[6624 len 20] = uint64(msg.sender), Mask(96, 160, block.hash(arg1)) >> 160
    s = 0
    idx = 0
    t = sha3(mem[6580 len mem[6496]]) % 4
    u = 0
    while idx < 7 * arg2:
        require uint8(arg4) / 4
        s = var45001
        u = var45006
        v = var45012
        while 0 < 7 * arg2:
            if mem[3296] != s:
                s = s
                u = u
                v = v
                continue 
            if idx < Mask(6, 2, arg4) >> 1:
                require uint8(arg4) / 4
                s = uint8(t) << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4)
                u = uint8(t) << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4)
                v = v / 4
                continue 
            require idx < 100
            mem[(32 * idx) + 3296] = u
            s = u
            idx = idx + 1
            t = t + 1 % 4
            u = v
            continue 
        require idx < 100
        mem[(32 * idx) + 3296] = u
        s = u
        idx = idx + 1
        t = t + 1 % 4
        u = v
        continue 
    v = s
    idx = 7 * arg2
    w = t
    x = u
    while idx < 9 * arg2:
        require uint8(arg4) / 4
        s = var48001
        t = var48006
        u = var48012
        while 7 * arg2 < 9 * arg2:
            require 7 * arg2 < 100
            if mem[(32 * 7 * arg2) + 3296] != s:
                s = s
                t = t
                u = u
                continue 
            if idx < (7 * arg2) + (Mask(6, 2, arg4) >> 1):
                require uint8(arg4) / 4
                s = uint8(w) << 8 or arg3 + (4 * u / 4 % uint8(arg4) / 4) + 1
                t = uint8(w) << 8 or arg3 + (4 * u / 4 % uint8(arg4) / 4) + 1
                u = u / 4
                continue 
            require idx < 100
            mem[(32 * idx) + 3296] = t
            v = t
            idx = idx + 1
            w = w + 1 % 4
            x = u
            continue 
        require idx < 100
        mem[(32 * idx) + 3296] = t
        v = t
        idx = idx + 1
        w = w + 1 % 4
        x = u
        continue 
    if block.number <= arg1 + 255:
        s = v
        idx = 9 * arg2
        s = w
        s = 1
        s = x
        while idx < 10 * arg2:
            if arg2 % 10:
                if s % 10:
                    require uint8(arg4) / 4
                    s = var61001
                    t = var61006
                    u = var61008
                    v = var61012
                    while 9 * arg2 < 10 * arg2:
                        require 9 * arg2 < 100
                        if mem[(32 * 9 * arg2) + 3296] != s:
                            s = s
                            t = t
                            u = u
                            v = v
                            continue 
                        if idx < (9 * arg2) + (Mask(6, 2, arg4) >> 1):
                            require uint8(arg4) / 4
                            s = u + 1 % 4 << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 2
                            t = u + 1 % 4 << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 2
                            u = u + 1 % 4
                            v = v / 4
                            continue 
                        require idx < 100
                        mem[(32 * idx) + 3296] = t
                        s = t
                        idx = idx + 1
                        s = u
                        s = 2
                        s = v
                        continue 
                    require idx < 100
                    mem[(32 * idx) + 3296] = t
                    s = t
                    idx = idx + 1
                    s = u
                    s = 2
                    s = v
                    continue 
            else:
                if idx % 10:
                    require uint8(arg4) / 4
                    s = var61001
                    t = var61006
                    u = var61008
                    v = var61012
                    while 9 * arg2 < 10 * arg2:
                        require 9 * arg2 < 100
                        if mem[(32 * 9 * arg2) + 3296] != s:
                            s = s
                            t = t
                            u = u
                            v = v
                            continue 
                        if idx < (9 * arg2) + (Mask(6, 2, arg4) >> 1):
                            require uint8(arg4) / 4
                            s = u + 1 % 4 << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 2
                            t = u + 1 % 4 << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 2
                            u = u + 1 % 4
                            v = v / 4
                            continue 
                        require idx < 100
                        mem[(32 * idx) + 3296] = t
                        s = t
                        idx = idx + 1
                        s = u
                        s = 2
                        s = v
                        continue 
                    require idx < 100
                    mem[(32 * idx) + 3296] = t
                    s = t
                    idx = idx + 1
                    s = u
                    s = 2
                    s = v
                    continue 
            require uint8(arg4) / 4
            s = var62001
            t = var62006
            u = var62008
            v = var62012
            while 9 * arg2 < 10 * arg2:
                require 9 * arg2 < 100
                if mem[(32 * 9 * arg2) + 3296] != s:
                    s = s
                    t = t
                    u = u
                    v = v
                    continue 
                if idx < (9 * arg2) + (Mask(6, 2, arg4) >> 1):
                    require uint8(arg4) / 4
                    s = u + 1 % 4 << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 3
                    t = u + 1 % 4 << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 3
                    u = u + 1 % 4
                    v = v / 4
                    continue 
                require idx < 100
                mem[(32 * idx) + 3296] = t
                s = t
                idx = idx + 1
                s = u
                s = 3
                s = v
                continue 
            require idx < 100
            mem[(32 * idx) + 3296] = t
            s = t
            idx = idx + 1
            s = u
            s = 3
            s = v
            continue 
    else:
        s = v
        idx = 9 * arg2
        s = w
        s = x
        while idx < 10 * arg2:
            require uint8(arg4) / 4
            s = var55001
            t = var55006
            u = var55008
            v = var55012
            while 9 * arg2 < 10 * arg2:
                require 9 * arg2 < 100
                if mem[(32 * 9 * arg2) + 3296] != s:
                    s = s
                    t = t
                    u = u
                    v = v
                    continue 
                if idx < (9 * arg2) + (Mask(6, 2, arg4) >> 1):
                    require uint8(arg4) / 4
                    s = uint8(u) << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 1
                    t = uint8(u) << 8 or arg3 + (4 * v / 4 % uint8(arg4) / 4) + 1
                    u = u + 1 % 4
                    v = v / 4
                    continue 
                require idx < 100
                mem[(32 * idx) + 3296] = t
                s = t
                idx = idx + 1
                s = u
                s = v
                continue 
            require idx < 100
            mem[(32 * idx) + 3296] = t
            s = t
            idx = idx + 1
            s = u
            s = v
            continue 
    return memory
      from 3296
       len 3200
}



}
