contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 7484]




// =====================  Runtime code  =====================


#
#  - scanOutputs(bytes arg1, uint256 arg2, uint256 arg3)
#  - getFirstTwoOutputs(bytes arg1)
#  - checkValueSent(bytes arg1, bytes20 arg2, uint256 arg3)
#
function _fallback() payable {
    revert
}

function sliceBytes20(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while address(idx) < 20:
        require address(idx) + arg2 < arg1.length
        idx = idx + 1
        s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 128 len 1])
        continue 
    return address(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
}

function isP2SH(bytes arg1, uint256 arg2, uint256 arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    if arg3 != 23:
        return (arg3 == 23)
    require arg2 < arg1.length
    if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 128]) == 0xa900000000000000000000000000000000000000000000000000000000000000
    else:
        require arg2 + 1 < arg1.length
        if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 129]) == 0x1400000000000000000000000000000000000000000000000000000000000000
        else:
            require arg2 + 22 < arg1.length
            mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 150]) == 0x8700000000000000000000000000000000000000000000000000000000000000
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function isP2PKH(bytes arg1, uint256 arg2, uint256 arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    if arg3 != 25:
        return (arg3 == 25)
    require arg2 < arg1.length
    if Mask(8, 248, mem[arg2 + 128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 128]) == 0x7600000000000000000000000000000000000000000000000000000000000000
    else:
        require arg2 + 1 < arg1.length
        if Mask(8, 248, mem[arg2 + 129]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 129]) == 0xa900000000000000000000000000000000000000000000000000000000000000
        else:
            require arg2 + 2 < arg1.length
            if Mask(8, 248, mem[arg2 + 130]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 130]) == 0x1400000000000000000000000000000000000000000000000000000000000000
            else:
                require arg2 + 23 < arg1.length
                if Mask(8, 248, mem[arg2 + 151]) != 0x8800000000000000000000000000000000000000000000000000000000000000:
                    mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 151]) == 0x8800000000000000000000000000000000000000000000000000000000000000
                else:
                    require arg2 + 24 < arg1.length
                    mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[arg2 + 152]) == 0xac00000000000000000000000000000000000000000000000000000000000000
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function parseVarInt(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    require arg2 < arg1.length
    if mem[arg2 + 128 len 1] < 253:
        mem[ceil32(arg1.length) + 128] = mem[arg2 + 128 len 1]
        return mem[ceil32(arg1.length) + 128], arg2 + 1
    if mem[arg2 + 128 len 1] == 253:
        require arg2 + 2 < arg1.length
        require arg2 + 1 < arg1.length
        mem[ceil32(arg1.length) + 128] = uint16(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240))
        return mem[ceil32(arg1.length) + 128], arg2 + 3
    if mem[arg2 + 128 len 1] == 254:
        require arg2 + 4 < arg1.length
        require arg2 + 3 < arg1.length
        require arg2 + 2 < arg1.length
        require arg2 + 1 < arg1.length
        mem[ceil32(arg1.length) + 128] = uint32(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224))
        return mem[ceil32(arg1.length) + 128], arg2 + 5
    if mem[arg2 + 128 len 1] != 255:
        return 0
    require arg2 + 8 < arg1.length
    require arg2 + 7 < arg1.length
    require arg2 + 6 < arg1.length
    require arg2 + 5 < arg1.length
    require arg2 + 4 < arg1.length
    require arg2 + 3 < arg1.length
    require arg2 + 2 < arg1.length
    require arg2 + 1 < arg1.length
    mem[ceil32(arg1.length) + 128] = uint64(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224) + (Mask(8, 248, mem[arg2 + 133]) >> 216) + (Mask(8, 248, mem[arg2 + 134]) >> 208) + (Mask(8, 248, mem[arg2 + 135]) >> 200) + (Mask(8, 248, mem[arg2 + 136]) >> 192))
    return mem[ceil32(arg1.length) + 128], arg2 + 9
}

function getBytesLE(bytes arg1, uint256 arg2, uint256 arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    if arg3 == 8:
        require arg2 < arg1.length
        mem[ceil32(arg1.length) + 128] = mem[arg2 + 128 len 1]
    else:
        if arg3 == 16:
            require arg2 + 1 < arg1.length
            require arg2 < arg1.length
            mem[ceil32(arg1.length) + 128] = uint16(mem[arg2 + 128 len 1] + (Mask(8, 248, mem[arg2 + 129]) >> 240))
        else:
            if arg3 == 32:
                require arg2 + 3 < arg1.length
                require arg2 + 2 < arg1.length
                require arg2 + 1 < arg1.length
                require arg2 < arg1.length
                mem[ceil32(arg1.length) + 128] = uint32(mem[arg2 + 128 len 1] + (Mask(8, 248, mem[arg2 + 129]) >> 240) + (Mask(8, 248, mem[arg2 + 130]) >> 232) + (Mask(8, 248, mem[arg2 + 131]) >> 224))
            else:
                if arg3 != 64:
                    return 0
                require arg2 + 7 < arg1.length
                require arg2 + 6 < arg1.length
                require arg2 + 5 < arg1.length
                require arg2 + 4 < arg1.length
                require arg2 + 3 < arg1.length
                require arg2 + 2 < arg1.length
                require arg2 + 1 < arg1.length
                require arg2 < arg1.length
                mem[ceil32(arg1.length) + 128] = uint64(mem[arg2 + 128 len 1] + (Mask(8, 248, mem[arg2 + 129]) >> 240) + (Mask(8, 248, mem[arg2 + 130]) >> 232) + (Mask(8, 248, mem[arg2 + 131]) >> 224) + (Mask(8, 248, mem[arg2 + 132]) >> 216) + (Mask(8, 248, mem[arg2 + 133]) >> 208) + (Mask(8, 248, mem[arg2 + 134]) >> 200) + (Mask(8, 248, mem[arg2 + 135]) >> 192))
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function parseOutputScript(bytes arg1, uint256 arg2, uint256 arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    if arg3 != 25:
        if arg3 != 23:
            return 0
        require arg2 < arg1.length
        if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
            return 0
        require arg2 + 1 < arg1.length
        if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
            return 0
        require arg2 + 22 < arg1.length
        if Mask(8, 248, mem[arg2 + 150]) != 0x8700000000000000000000000000000000000000000000000000000000000000:
            return 0
        idx = 0
        s = 0
        while address(idx) < 20:
            require address(idx) + arg2 + 2 < arg1.length
            idx = idx + 1
            s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 130 len 1])
            continue 
    else:
        require arg2 < arg1.length
        if Mask(8, 248, mem[arg2 + 128]) != 0x7600000000000000000000000000000000000000000000000000000000000000:
            if arg3 != 23:
                return 0
            require arg2 < arg1.length
            if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
                return 0
            require arg2 + 1 < arg1.length
            if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                return 0
            require arg2 + 22 < arg1.length
            if Mask(8, 248, mem[arg2 + 150]) != 0x8700000000000000000000000000000000000000000000000000000000000000:
                return 0
            idx = 0
            s = 0
            while address(idx) < 20:
                require address(idx) + arg2 + 2 < arg1.length
                idx = idx + 1
                s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 130 len 1])
                continue 
        else:
            require arg2 + 1 < arg1.length
            if Mask(8, 248, mem[arg2 + 129]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
                if arg3 != 23:
                    return 0
                require arg2 < arg1.length
                if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
                    return 0
                require arg2 + 1 < arg1.length
                if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                    return 0
                require arg2 + 22 < arg1.length
                if Mask(8, 248, mem[arg2 + 150]) != 0x8700000000000000000000000000000000000000000000000000000000000000:
                    return 0
                idx = 0
                s = 0
                while address(idx) < 20:
                    require address(idx) + arg2 + 2 < arg1.length
                    idx = idx + 1
                    s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 130 len 1])
                    continue 
            else:
                require arg2 + 2 < arg1.length
                if Mask(8, 248, mem[arg2 + 130]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                    if arg3 != 23:
                        return 0
                    require arg2 < arg1.length
                    if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
                        return 0
                    require arg2 + 1 < arg1.length
                    if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                        return 0
                    require arg2 + 22 < arg1.length
                    if Mask(8, 248, mem[arg2 + 150]) != 0x8700000000000000000000000000000000000000000000000000000000000000:
                        return 0
                    idx = 0
                    s = 0
                    while address(idx) < 20:
                        require address(idx) + arg2 + 2 < arg1.length
                        idx = idx + 1
                        s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 130 len 1])
                        continue 
                else:
                    require arg2 + 23 < arg1.length
                    if Mask(8, 248, mem[arg2 + 151]) != 0x8800000000000000000000000000000000000000000000000000000000000000:
                        if arg3 != 23:
                            return 0
                        require arg2 < arg1.length
                        if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
                            return 0
                        require arg2 + 1 < arg1.length
                        if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                            return 0
                        require arg2 + 22 < arg1.length
                        if Mask(8, 248, mem[arg2 + 150]) != 0x8700000000000000000000000000000000000000000000000000000000000000:
                            return 0
                        idx = 0
                        s = 0
                        while address(idx) < 20:
                            require address(idx) + arg2 + 2 < arg1.length
                            idx = idx + 1
                            s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 130 len 1])
                            continue 
                    else:
                        require arg2 + 24 < arg1.length
                        if Mask(8, 248, mem[arg2 + 152]) == 0xac00000000000000000000000000000000000000000000000000000000000000:
                            idx = 0
                            s = 0
                            while address(idx) < 20:
                                require address(idx) + arg2 + 3 < arg1.length
                                idx = idx + 1
                                s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 131 len 1])
                                continue 
                        else:
                            if arg3 != 23:
                                return 0
                            require arg2 < arg1.length
                            if Mask(8, 248, mem[arg2 + 128]) != 0xa900000000000000000000000000000000000000000000000000000000000000:
                                return 0
                            require arg2 + 1 < arg1.length
                            if Mask(8, 248, mem[arg2 + 129]) != 0x1400000000000000000000000000000000000000000000000000000000000000:
                                return 0
                            require arg2 + 22 < arg1.length
                            if Mask(8, 248, mem[arg2 + 150]) != 0x8700000000000000000000000000000000000000000000000000000000000000:
                                return 0
                            idx = 0
                            s = 0
                            while address(idx) < 20:
                                require address(idx) + arg2 + 2 < arg1.length
                                idx = idx + 1
                                s = s + (2^(8 * Mask(157, 0, -idx + 19)) * mem[address(idx) + arg2 + 130 len 1])
                                continue 
    return address(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
}

function scanInputs(bytes arg1, uint256 arg2, uint256 arg3) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    require arg2 < arg1.length
    _5 = mem[arg2 + 128]
    if mem[arg2 + 128 len 1] < 253:
        if not arg3:
            mem[ceil32(arg1.length) + 192] = mem[arg2 + 128 len 1]
            mem[64] = ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 224
            idx = 0
            s = 0
            s = arg2 + 1
            while uint8(idx) < Mask(8, 248, _5) >> 248:
                require s + 36 < arg1.length
                _1260 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1260) >> 248
                    s = s + (Mask(8, 248, _1260) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1423 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1476 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1476) >> 248) + (Mask(8, 248, _1423) >> 240))
                    s = s + uint16((Mask(8, 248, _1476) >> 248) + (Mask(8, 248, _1423) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1527 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1623 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1727 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1831 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1831) >> 248) + (Mask(8, 248, _1727) >> 240) + (Mask(8, 248, _1623) >> 232) + (Mask(8, 248, _1527) >> 224))
                    s = s + uint32((Mask(8, 248, _1831) >> 248) + (Mask(8, 248, _1727) >> 240) + (Mask(8, 248, _1623) >> 232) + (Mask(8, 248, _1527) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1725 = mem[s + 172]
                require s + 43 < arg1.length
                _1829 = mem[s + 171]
                require s + 42 < arg1.length
                _1891 = mem[s + 170]
                require s + 41 < arg1.length
                _1943 = mem[s + 169]
                require s + 40 < arg1.length
                _1995 = mem[s + 168]
                require s + 39 < arg1.length
                _2068 = mem[s + 167]
                require s + 38 < arg1.length
                _2125 = mem[s + 166]
                require s + 37 < arg1.length
                _2156 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2156) >> 248) + (Mask(8, 248, _2125) >> 240) + (Mask(8, 248, _2068) >> 232) + (Mask(8, 248, _1995) >> 224) + (Mask(8, 248, _1943) >> 216) + (Mask(8, 248, _1891) >> 208) + (Mask(8, 248, _1829) >> 200) + (Mask(8, 248, _1725) >> 192))
                s = s + uint64((Mask(8, 248, _2156) >> 248) + (Mask(8, 248, _2125) >> 240) + (Mask(8, 248, _2068) >> 232) + (Mask(8, 248, _1995) >> 224) + (Mask(8, 248, _1943) >> 216) + (Mask(8, 248, _1891) >> 208) + (Mask(8, 248, _1829) >> 200) + (Mask(8, 248, _1725) >> 192)) + 49
                continue 
        else:
            if arg3 <= mem[arg2 + 128 len 1]:
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * arg3) + 224
                idx = 0
                s = 0
                s = arg2 + 1
                while uint8(idx) < arg3:
                    require s + 36 < arg1.length
                    _1268 = mem[s + 164]
                    if mem[s + 164 len 1] < 253:
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                        idx = idx + 1
                        s = Mask(8, 248, _1268) >> 248
                        s = s + (Mask(8, 248, _1268) >> 248) + 41
                        continue 
                    if mem[s + 164 len 1] == 253:
                        require s + 38 < arg1.length
                        _1427 = mem[s + 166]
                        require s + 37 < arg1.length
                        _1480 = mem[s + 165]
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                        idx = idx + 1
                        s = uint16((Mask(8, 248, _1480) >> 248) + (Mask(8, 248, _1427) >> 240))
                        s = s + uint16((Mask(8, 248, _1480) >> 248) + (Mask(8, 248, _1427) >> 240)) + 43
                        continue 
                    if mem[s + 164 len 1] == 254:
                        require s + 40 < arg1.length
                        _1531 = mem[s + 168]
                        require s + 39 < arg1.length
                        _1631 = mem[s + 167]
                        require s + 38 < arg1.length
                        _1735 = mem[s + 166]
                        require s + 37 < arg1.length
                        _1839 = mem[s + 165]
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                        idx = idx + 1
                        s = uint32((Mask(8, 248, _1839) >> 248) + (Mask(8, 248, _1735) >> 240) + (Mask(8, 248, _1631) >> 232) + (Mask(8, 248, _1531) >> 224))
                        s = s + uint32((Mask(8, 248, _1839) >> 248) + (Mask(8, 248, _1735) >> 240) + (Mask(8, 248, _1631) >> 232) + (Mask(8, 248, _1531) >> 224)) + 45
                        continue 
                    if mem[s + 164 len 1] != 255:
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                        idx = idx + 1
                        s = 0
                        s = 4
                        continue 
                    require s + 44 < arg1.length
                    _1733 = mem[s + 172]
                    require s + 43 < arg1.length
                    _1837 = mem[s + 171]
                    require s + 42 < arg1.length
                    _1895 = mem[s + 170]
                    require s + 41 < arg1.length
                    _1947 = mem[s + 169]
                    require s + 40 < arg1.length
                    _1999 = mem[s + 168]
                    require s + 39 < arg1.length
                    _2074 = mem[s + 167]
                    require s + 38 < arg1.length
                    _2129 = mem[s + 166]
                    require s + 37 < arg1.length
                    _2158 = mem[s + 165]
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                    idx = idx + 1
                    s = uint64((Mask(8, 248, _2158) >> 248) + (Mask(8, 248, _2129) >> 240) + (Mask(8, 248, _2074) >> 232) + (Mask(8, 248, _1999) >> 224) + (Mask(8, 248, _1947) >> 216) + (Mask(8, 248, _1895) >> 208) + (Mask(8, 248, _1837) >> 200) + (Mask(8, 248, _1733) >> 192))
                    s = s + uint64((Mask(8, 248, _2158) >> 248) + (Mask(8, 248, _2129) >> 240) + (Mask(8, 248, _2074) >> 232) + (Mask(8, 248, _1999) >> 224) + (Mask(8, 248, _1947) >> 216) + (Mask(8, 248, _1895) >> 208) + (Mask(8, 248, _1837) >> 200) + (Mask(8, 248, _1733) >> 192)) + 49
                    continue 
                mem[ceil32(arg1.length) + (32 * arg3) + 320 len floor32(arg3)] = mem[ceil32(arg1.length) + 224 len floor32(arg3)]
                return Array(len=arg3, data=mem[ceil32(arg1.length) + 224 len floor32(arg3)], mem[ceil32(arg1.length) + (32 * arg3) + floor32(arg3) + 320 len (32 * arg3) - floor32(arg3)]), 
                       s
            mem[ceil32(arg1.length) + 192] = mem[arg2 + 128 len 1]
            mem[64] = ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 224
            idx = 0
            s = 0
            s = arg2 + 1
            while uint8(idx) < Mask(8, 248, _5) >> 248:
                require s + 36 < arg1.length
                _1276 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1276) >> 248
                    s = s + (Mask(8, 248, _1276) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1431 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1484 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1484) >> 248) + (Mask(8, 248, _1431) >> 240))
                    s = s + uint16((Mask(8, 248, _1484) >> 248) + (Mask(8, 248, _1431) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1535 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1639 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1743 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1847 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1847) >> 248) + (Mask(8, 248, _1743) >> 240) + (Mask(8, 248, _1639) >> 232) + (Mask(8, 248, _1535) >> 224))
                    s = s + uint32((Mask(8, 248, _1847) >> 248) + (Mask(8, 248, _1743) >> 240) + (Mask(8, 248, _1639) >> 232) + (Mask(8, 248, _1535) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1741 = mem[s + 172]
                require s + 43 < arg1.length
                _1845 = mem[s + 171]
                require s + 42 < arg1.length
                _1899 = mem[s + 170]
                require s + 41 < arg1.length
                _1951 = mem[s + 169]
                require s + 40 < arg1.length
                _2003 = mem[s + 168]
                require s + 39 < arg1.length
                _2080 = mem[s + 167]
                require s + 38 < arg1.length
                _2133 = mem[s + 166]
                require s + 37 < arg1.length
                _2160 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2160) >> 248) + (Mask(8, 248, _2133) >> 240) + (Mask(8, 248, _2080) >> 232) + (Mask(8, 248, _2003) >> 224) + (Mask(8, 248, _1951) >> 216) + (Mask(8, 248, _1899) >> 208) + (Mask(8, 248, _1845) >> 200) + (Mask(8, 248, _1741) >> 192))
                s = s + uint64((Mask(8, 248, _2160) >> 248) + (Mask(8, 248, _2133) >> 240) + (Mask(8, 248, _2080) >> 232) + (Mask(8, 248, _2003) >> 224) + (Mask(8, 248, _1951) >> 216) + (Mask(8, 248, _1899) >> 208) + (Mask(8, 248, _1845) >> 200) + (Mask(8, 248, _1741) >> 192)) + 49
                continue 
        mem[ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 256] = s
        mem[ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 224] = 64
        mem[ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 288] = mem[ceil32(arg1.length) + 192]
        mem[ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 320 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
        return 64, s, mem[ceil32(arg1.length) + (Mask(8, 248, _5) >> 243) + 288 len (32 * mem[ceil32(arg1.length) + 192]) + 32]
    if mem[arg2 + 128 len 1] == 253:
        require arg2 + 2 < arg1.length
        _7 = mem[arg2 + 130]
        require arg2 + 1 < arg1.length
        _12 = mem[arg2 + 129]
        if not arg3:
            mem[ceil32(arg1.length) + 192] = uint16(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240))
            mem[64] = ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 224
            idx = 0
            s = 0
            s = arg2 + 3
            while uint8(idx) < uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240)):
                require s + 36 < arg1.length
                _1236 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1236) >> 248
                    s = s + (Mask(8, 248, _1236) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1411 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1464 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1464) >> 248) + (Mask(8, 248, _1411) >> 240))
                    s = s + uint16((Mask(8, 248, _1464) >> 248) + (Mask(8, 248, _1411) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1515 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1599 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1703 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1807 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1807) >> 248) + (Mask(8, 248, _1703) >> 240) + (Mask(8, 248, _1599) >> 232) + (Mask(8, 248, _1515) >> 224))
                    s = s + uint32((Mask(8, 248, _1807) >> 248) + (Mask(8, 248, _1703) >> 240) + (Mask(8, 248, _1599) >> 232) + (Mask(8, 248, _1515) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1701 = mem[s + 172]
                require s + 43 < arg1.length
                _1805 = mem[s + 171]
                require s + 42 < arg1.length
                _1879 = mem[s + 170]
                require s + 41 < arg1.length
                _1931 = mem[s + 169]
                require s + 40 < arg1.length
                _1983 = mem[s + 168]
                require s + 39 < arg1.length
                _2050 = mem[s + 167]
                require s + 38 < arg1.length
                _2113 = mem[s + 166]
                require s + 37 < arg1.length
                _2150 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2150) >> 248) + (Mask(8, 248, _2113) >> 240) + (Mask(8, 248, _2050) >> 232) + (Mask(8, 248, _1983) >> 224) + (Mask(8, 248, _1931) >> 216) + (Mask(8, 248, _1879) >> 208) + (Mask(8, 248, _1805) >> 200) + (Mask(8, 248, _1701) >> 192))
                s = s + uint64((Mask(8, 248, _2150) >> 248) + (Mask(8, 248, _2113) >> 240) + (Mask(8, 248, _2050) >> 232) + (Mask(8, 248, _1983) >> 224) + (Mask(8, 248, _1931) >> 216) + (Mask(8, 248, _1879) >> 208) + (Mask(8, 248, _1805) >> 200) + (Mask(8, 248, _1701) >> 192)) + 49
                continue 
        else:
            if arg3 <= uint16(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240)):
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * arg3) + 224
                idx = 0
                s = 0
                s = arg2 + 3
                while uint8(idx) < arg3:
                    require s + 36 < arg1.length
                    _1244 = mem[s + 164]
                    if mem[s + 164 len 1] < 253:
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                        idx = idx + 1
                        s = Mask(8, 248, _1244) >> 248
                        s = s + (Mask(8, 248, _1244) >> 248) + 41
                        continue 
                    if mem[s + 164 len 1] == 253:
                        require s + 38 < arg1.length
                        _1415 = mem[s + 166]
                        require s + 37 < arg1.length
                        _1468 = mem[s + 165]
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                        idx = idx + 1
                        s = uint16((Mask(8, 248, _1468) >> 248) + (Mask(8, 248, _1415) >> 240))
                        s = s + uint16((Mask(8, 248, _1468) >> 248) + (Mask(8, 248, _1415) >> 240)) + 43
                        continue 
                    if mem[s + 164 len 1] == 254:
                        require s + 40 < arg1.length
                        _1519 = mem[s + 168]
                        require s + 39 < arg1.length
                        _1607 = mem[s + 167]
                        require s + 38 < arg1.length
                        _1711 = mem[s + 166]
                        require s + 37 < arg1.length
                        _1815 = mem[s + 165]
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                        idx = idx + 1
                        s = uint32((Mask(8, 248, _1815) >> 248) + (Mask(8, 248, _1711) >> 240) + (Mask(8, 248, _1607) >> 232) + (Mask(8, 248, _1519) >> 224))
                        s = s + uint32((Mask(8, 248, _1815) >> 248) + (Mask(8, 248, _1711) >> 240) + (Mask(8, 248, _1607) >> 232) + (Mask(8, 248, _1519) >> 224)) + 45
                        continue 
                    if mem[s + 164 len 1] != 255:
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                        idx = idx + 1
                        s = 0
                        s = 4
                        continue 
                    require s + 44 < arg1.length
                    _1709 = mem[s + 172]
                    require s + 43 < arg1.length
                    _1813 = mem[s + 171]
                    require s + 42 < arg1.length
                    _1883 = mem[s + 170]
                    require s + 41 < arg1.length
                    _1935 = mem[s + 169]
                    require s + 40 < arg1.length
                    _1987 = mem[s + 168]
                    require s + 39 < arg1.length
                    _2056 = mem[s + 167]
                    require s + 38 < arg1.length
                    _2117 = mem[s + 166]
                    require s + 37 < arg1.length
                    _2152 = mem[s + 165]
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                    idx = idx + 1
                    s = uint64((Mask(8, 248, _2152) >> 248) + (Mask(8, 248, _2117) >> 240) + (Mask(8, 248, _2056) >> 232) + (Mask(8, 248, _1987) >> 224) + (Mask(8, 248, _1935) >> 216) + (Mask(8, 248, _1883) >> 208) + (Mask(8, 248, _1813) >> 200) + (Mask(8, 248, _1709) >> 192))
                    s = s + uint64((Mask(8, 248, _2152) >> 248) + (Mask(8, 248, _2117) >> 240) + (Mask(8, 248, _2056) >> 232) + (Mask(8, 248, _1987) >> 224) + (Mask(8, 248, _1935) >> 216) + (Mask(8, 248, _1883) >> 208) + (Mask(8, 248, _1813) >> 200) + (Mask(8, 248, _1709) >> 192)) + 49
                    continue 
                mem[ceil32(arg1.length) + (32 * arg3) + 320 len floor32(arg3)] = mem[ceil32(arg1.length) + 224 len floor32(arg3)]
                return Array(len=arg3, data=mem[ceil32(arg1.length) + 224 len floor32(arg3)], mem[ceil32(arg1.length) + (32 * arg3) + floor32(arg3) + 320 len (32 * arg3) - floor32(arg3)]), 
                       s
            mem[ceil32(arg1.length) + 192] = uint16(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240))
            mem[64] = ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 224
            idx = 0
            s = 0
            s = arg2 + 3
            while uint8(idx) < uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240)):
                require s + 36 < arg1.length
                _1252 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1252) >> 248
                    s = s + (Mask(8, 248, _1252) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1419 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1472 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1472) >> 248) + (Mask(8, 248, _1419) >> 240))
                    s = s + uint16((Mask(8, 248, _1472) >> 248) + (Mask(8, 248, _1419) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1523 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1615 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1719 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1823 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1823) >> 248) + (Mask(8, 248, _1719) >> 240) + (Mask(8, 248, _1615) >> 232) + (Mask(8, 248, _1523) >> 224))
                    s = s + uint32((Mask(8, 248, _1823) >> 248) + (Mask(8, 248, _1719) >> 240) + (Mask(8, 248, _1615) >> 232) + (Mask(8, 248, _1523) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1717 = mem[s + 172]
                require s + 43 < arg1.length
                _1821 = mem[s + 171]
                require s + 42 < arg1.length
                _1887 = mem[s + 170]
                require s + 41 < arg1.length
                _1939 = mem[s + 169]
                require s + 40 < arg1.length
                _1991 = mem[s + 168]
                require s + 39 < arg1.length
                _2062 = mem[s + 167]
                require s + 38 < arg1.length
                _2121 = mem[s + 166]
                require s + 37 < arg1.length
                _2154 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2154) >> 248) + (Mask(8, 248, _2121) >> 240) + (Mask(8, 248, _2062) >> 232) + (Mask(8, 248, _1991) >> 224) + (Mask(8, 248, _1939) >> 216) + (Mask(8, 248, _1887) >> 208) + (Mask(8, 248, _1821) >> 200) + (Mask(8, 248, _1717) >> 192))
                s = s + uint64((Mask(8, 248, _2154) >> 248) + (Mask(8, 248, _2121) >> 240) + (Mask(8, 248, _2062) >> 232) + (Mask(8, 248, _1991) >> 224) + (Mask(8, 248, _1939) >> 216) + (Mask(8, 248, _1887) >> 208) + (Mask(8, 248, _1821) >> 200) + (Mask(8, 248, _1717) >> 192)) + 49
                continue 
        mem[ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 256] = s
        mem[ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 224] = 64
        mem[ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 288] = mem[ceil32(arg1.length) + 192]
        mem[ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 320 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
        return 64, 
               s,
               mem[ceil32(arg1.length) + (32 * uint16((Mask(8, 248, _12) >> 248) + (Mask(8, 248, _7) >> 240))) + 288 len (32 * mem[ceil32(arg1.length) + 192]) + 32]
    if mem[arg2 + 128 len 1] == 254:
        require arg2 + 4 < arg1.length
        _18 = mem[arg2 + 132]
        require arg2 + 3 < arg1.length
        _23 = mem[arg2 + 131]
        require arg2 + 2 < arg1.length
        _27 = mem[arg2 + 130]
        require arg2 + 1 < arg1.length
        _31 = mem[arg2 + 129]
        if not arg3:
            mem[ceil32(arg1.length) + 192] = uint32(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224))
            mem[64] = ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 224
            idx = 0
            s = 0
            s = arg2 + 5
            while uint8(idx) < uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224)):
                require s + 36 < arg1.length
                _1212 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1212) >> 248
                    s = s + (Mask(8, 248, _1212) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1399 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1452 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1452) >> 248) + (Mask(8, 248, _1399) >> 240))
                    s = s + uint16((Mask(8, 248, _1452) >> 248) + (Mask(8, 248, _1399) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1503 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1575 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1679 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1783 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1783) >> 248) + (Mask(8, 248, _1679) >> 240) + (Mask(8, 248, _1575) >> 232) + (Mask(8, 248, _1503) >> 224))
                    s = s + uint32((Mask(8, 248, _1783) >> 248) + (Mask(8, 248, _1679) >> 240) + (Mask(8, 248, _1575) >> 232) + (Mask(8, 248, _1503) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1677 = mem[s + 172]
                require s + 43 < arg1.length
                _1781 = mem[s + 171]
                require s + 42 < arg1.length
                _1867 = mem[s + 170]
                require s + 41 < arg1.length
                _1919 = mem[s + 169]
                require s + 40 < arg1.length
                _1971 = mem[s + 168]
                require s + 39 < arg1.length
                _2032 = mem[s + 167]
                require s + 38 < arg1.length
                _2101 = mem[s + 166]
                require s + 37 < arg1.length
                _2144 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2144) >> 248) + (Mask(8, 248, _2101) >> 240) + (Mask(8, 248, _2032) >> 232) + (Mask(8, 248, _1971) >> 224) + (Mask(8, 248, _1919) >> 216) + (Mask(8, 248, _1867) >> 208) + (Mask(8, 248, _1781) >> 200) + (Mask(8, 248, _1677) >> 192))
                s = s + uint64((Mask(8, 248, _2144) >> 248) + (Mask(8, 248, _2101) >> 240) + (Mask(8, 248, _2032) >> 232) + (Mask(8, 248, _1971) >> 224) + (Mask(8, 248, _1919) >> 216) + (Mask(8, 248, _1867) >> 208) + (Mask(8, 248, _1781) >> 200) + (Mask(8, 248, _1677) >> 192)) + 49
                continue 
        else:
            if arg3 <= uint32(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224)):
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * arg3) + 224
                idx = 0
                s = 0
                s = arg2 + 5
                while uint8(idx) < arg3:
                    require s + 36 < arg1.length
                    _1220 = mem[s + 164]
                    if mem[s + 164 len 1] < 253:
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                        idx = idx + 1
                        s = Mask(8, 248, _1220) >> 248
                        s = s + (Mask(8, 248, _1220) >> 248) + 41
                        continue 
                    if mem[s + 164 len 1] == 253:
                        require s + 38 < arg1.length
                        _1403 = mem[s + 166]
                        require s + 37 < arg1.length
                        _1456 = mem[s + 165]
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                        idx = idx + 1
                        s = uint16((Mask(8, 248, _1456) >> 248) + (Mask(8, 248, _1403) >> 240))
                        s = s + uint16((Mask(8, 248, _1456) >> 248) + (Mask(8, 248, _1403) >> 240)) + 43
                        continue 
                    if mem[s + 164 len 1] == 254:
                        require s + 40 < arg1.length
                        _1507 = mem[s + 168]
                        require s + 39 < arg1.length
                        _1583 = mem[s + 167]
                        require s + 38 < arg1.length
                        _1687 = mem[s + 166]
                        require s + 37 < arg1.length
                        _1791 = mem[s + 165]
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                        idx = idx + 1
                        s = uint32((Mask(8, 248, _1791) >> 248) + (Mask(8, 248, _1687) >> 240) + (Mask(8, 248, _1583) >> 232) + (Mask(8, 248, _1507) >> 224))
                        s = s + uint32((Mask(8, 248, _1791) >> 248) + (Mask(8, 248, _1687) >> 240) + (Mask(8, 248, _1583) >> 232) + (Mask(8, 248, _1507) >> 224)) + 45
                        continue 
                    if mem[s + 164 len 1] != 255:
                        require uint8(idx) < arg3
                        mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                        idx = idx + 1
                        s = 0
                        s = 4
                        continue 
                    require s + 44 < arg1.length
                    _1685 = mem[s + 172]
                    require s + 43 < arg1.length
                    _1789 = mem[s + 171]
                    require s + 42 < arg1.length
                    _1871 = mem[s + 170]
                    require s + 41 < arg1.length
                    _1923 = mem[s + 169]
                    require s + 40 < arg1.length
                    _1975 = mem[s + 168]
                    require s + 39 < arg1.length
                    _2038 = mem[s + 167]
                    require s + 38 < arg1.length
                    _2105 = mem[s + 166]
                    require s + 37 < arg1.length
                    _2146 = mem[s + 165]
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                    idx = idx + 1
                    s = uint64((Mask(8, 248, _2146) >> 248) + (Mask(8, 248, _2105) >> 240) + (Mask(8, 248, _2038) >> 232) + (Mask(8, 248, _1975) >> 224) + (Mask(8, 248, _1923) >> 216) + (Mask(8, 248, _1871) >> 208) + (Mask(8, 248, _1789) >> 200) + (Mask(8, 248, _1685) >> 192))
                    s = s + uint64((Mask(8, 248, _2146) >> 248) + (Mask(8, 248, _2105) >> 240) + (Mask(8, 248, _2038) >> 232) + (Mask(8, 248, _1975) >> 224) + (Mask(8, 248, _1923) >> 216) + (Mask(8, 248, _1871) >> 208) + (Mask(8, 248, _1789) >> 200) + (Mask(8, 248, _1685) >> 192)) + 49
                    continue 
                mem[ceil32(arg1.length) + (32 * arg3) + 320 len floor32(arg3)] = mem[ceil32(arg1.length) + 224 len floor32(arg3)]
                return Array(len=arg3, data=mem[ceil32(arg1.length) + 224 len floor32(arg3)], mem[ceil32(arg1.length) + (32 * arg3) + floor32(arg3) + 320 len (32 * arg3) - floor32(arg3)]), 
                       s
            mem[ceil32(arg1.length) + 192] = uint32(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224))
            mem[64] = ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 224
            idx = 0
            s = 0
            s = arg2 + 5
            while uint8(idx) < uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224)):
                require s + 36 < arg1.length
                _1228 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1228) >> 248
                    s = s + (Mask(8, 248, _1228) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1407 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1460 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1460) >> 248) + (Mask(8, 248, _1407) >> 240))
                    s = s + uint16((Mask(8, 248, _1460) >> 248) + (Mask(8, 248, _1407) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1511 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1591 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1695 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1799 = mem[s + 165]
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1799) >> 248) + (Mask(8, 248, _1695) >> 240) + (Mask(8, 248, _1591) >> 232) + (Mask(8, 248, _1511) >> 224))
                    s = s + uint32((Mask(8, 248, _1799) >> 248) + (Mask(8, 248, _1695) >> 240) + (Mask(8, 248, _1591) >> 232) + (Mask(8, 248, _1511) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < mem[ceil32(arg1.length) + 192]
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1693 = mem[s + 172]
                require s + 43 < arg1.length
                _1797 = mem[s + 171]
                require s + 42 < arg1.length
                _1875 = mem[s + 170]
                require s + 41 < arg1.length
                _1927 = mem[s + 169]
                require s + 40 < arg1.length
                _1979 = mem[s + 168]
                require s + 39 < arg1.length
                _2044 = mem[s + 167]
                require s + 38 < arg1.length
                _2109 = mem[s + 166]
                require s + 37 < arg1.length
                _2148 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2148) >> 248) + (Mask(8, 248, _2109) >> 240) + (Mask(8, 248, _2044) >> 232) + (Mask(8, 248, _1979) >> 224) + (Mask(8, 248, _1927) >> 216) + (Mask(8, 248, _1875) >> 208) + (Mask(8, 248, _1797) >> 200) + (Mask(8, 248, _1693) >> 192))
                s = s + uint64((Mask(8, 248, _2148) >> 248) + (Mask(8, 248, _2109) >> 240) + (Mask(8, 248, _2044) >> 232) + (Mask(8, 248, _1979) >> 224) + (Mask(8, 248, _1927) >> 216) + (Mask(8, 248, _1875) >> 208) + (Mask(8, 248, _1797) >> 200) + (Mask(8, 248, _1693) >> 192)) + 49
                continue 
        mem[ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 256] = s
        mem[ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 224] = 64
        mem[ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 288] = mem[ceil32(arg1.length) + 192]
        mem[ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 320 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
        return 64, 
               s,
               mem[ceil32(arg1.length) + (32 * uint32((Mask(8, 248, _31) >> 248) + (Mask(8, 248, _27) >> 240) + (Mask(8, 248, _23) >> 232) + (Mask(8, 248, _18) >> 224))) + 288 len (32 * mem[ceil32(arg1.length) + 192]) + 32]
    if mem[arg2 + 128 len 1] != 255:
        if not arg3:
            return 64, 0, 0
        if arg3 > 0:
            return 64, 0, 0
        mem[ceil32(arg1.length) + 192] = arg3
        mem[64] = ceil32(arg1.length) + (32 * arg3) + 224
        idx = 0
        s = 0
        s = 0
        while uint8(idx) < arg3:
            require s + 36 < arg1.length
            _1180 = mem[s + 164]
            if mem[s + 164 len 1] < 253:
                require uint8(idx) < arg3
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                idx = idx + 1
                s = Mask(8, 248, _1180) >> 248
                s = s + (Mask(8, 248, _1180) >> 248) + 41
                continue 
            if mem[s + 164 len 1] == 253:
                require s + 38 < arg1.length
                _1383 = mem[s + 166]
                require s + 37 < arg1.length
                _1436 = mem[s + 165]
                require uint8(idx) < arg3
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                idx = idx + 1
                s = uint16((Mask(8, 248, _1436) >> 248) + (Mask(8, 248, _1383) >> 240))
                s = s + uint16((Mask(8, 248, _1436) >> 248) + (Mask(8, 248, _1383) >> 240)) + 43
                continue 
            if mem[s + 164 len 1] == 254:
                require s + 40 < arg1.length
                _1487 = mem[s + 168]
                require s + 39 < arg1.length
                _1543 = mem[s + 167]
                require s + 38 < arg1.length
                _1647 = mem[s + 166]
                require s + 37 < arg1.length
                _1751 = mem[s + 165]
                require uint8(idx) < arg3
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                idx = idx + 1
                s = uint32((Mask(8, 248, _1751) >> 248) + (Mask(8, 248, _1647) >> 240) + (Mask(8, 248, _1543) >> 232) + (Mask(8, 248, _1487) >> 224))
                s = s + uint32((Mask(8, 248, _1751) >> 248) + (Mask(8, 248, _1647) >> 240) + (Mask(8, 248, _1543) >> 232) + (Mask(8, 248, _1487) >> 224)) + 45
                continue 
            if mem[s + 164 len 1] != 255:
                require uint8(idx) < arg3
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                idx = idx + 1
                s = 0
                s = 4
                continue 
            require s + 44 < arg1.length
            _1645 = mem[s + 172]
            require s + 43 < arg1.length
            _1749 = mem[s + 171]
            require s + 42 < arg1.length
            _1851 = mem[s + 170]
            require s + 41 < arg1.length
            _1903 = mem[s + 169]
            require s + 40 < arg1.length
            _1955 = mem[s + 168]
            require s + 39 < arg1.length
            _2008 = mem[s + 167]
            require s + 38 < arg1.length
            _2085 = mem[s + 166]
            require s + 37 < arg1.length
            _2136 = mem[s + 165]
            require uint8(idx) < arg3
            mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
            idx = idx + 1
            s = uint64((Mask(8, 248, _2136) >> 248) + (Mask(8, 248, _2085) >> 240) + (Mask(8, 248, _2008) >> 232) + (Mask(8, 248, _1955) >> 224) + (Mask(8, 248, _1903) >> 216) + (Mask(8, 248, _1851) >> 208) + (Mask(8, 248, _1749) >> 200) + (Mask(8, 248, _1645) >> 192))
            s = s + uint64((Mask(8, 248, _2136) >> 248) + (Mask(8, 248, _2085) >> 240) + (Mask(8, 248, _2008) >> 232) + (Mask(8, 248, _1955) >> 224) + (Mask(8, 248, _1903) >> 216) + (Mask(8, 248, _1851) >> 208) + (Mask(8, 248, _1749) >> 200) + (Mask(8, 248, _1645) >> 192)) + 49
            continue 
        mem[ceil32(arg1.length) + (32 * arg3) + 320 len floor32(arg3)] = mem[ceil32(arg1.length) + 224 len floor32(arg3)]
        return Array(len=arg3, data=mem[ceil32(arg1.length) + 224 len floor32(arg3)], mem[ceil32(arg1.length) + (32 * arg3) + floor32(arg3) + 320 len (32 * arg3) - floor32(arg3)]), 
               s
    require arg2 + 8 < arg1.length
    _25 = mem[arg2 + 136]
    require arg2 + 7 < arg1.length
    _29 = mem[arg2 + 135]
    require arg2 + 6 < arg1.length
    _35 = mem[arg2 + 134]
    require arg2 + 5 < arg1.length
    _49 = mem[arg2 + 133]
    require arg2 + 4 < arg1.length
    _67 = mem[arg2 + 132]
    require arg2 + 3 < arg1.length
    _81 = mem[arg2 + 131]
    require arg2 + 2 < arg1.length
    _95 = mem[arg2 + 130]
    require arg2 + 1 < arg1.length
    _106 = mem[arg2 + 129]
    if not arg3:
        mem[ceil32(arg1.length) + 192] = uint64(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224) + (Mask(8, 248, mem[arg2 + 133]) >> 216) + (Mask(8, 248, mem[arg2 + 134]) >> 208) + (Mask(8, 248, mem[arg2 + 135]) >> 200) + (Mask(8, 248, mem[arg2 + 136]) >> 192))
        mem[64] = ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 224
        idx = 0
        s = 0
        s = arg2 + 9
        while uint8(idx) < uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192)):
            require s + 36 < arg1.length
            _1188 = mem[s + 164]
            if mem[s + 164 len 1] < 253:
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                idx = idx + 1
                s = Mask(8, 248, _1188) >> 248
                s = s + (Mask(8, 248, _1188) >> 248) + 41
                continue 
            if mem[s + 164 len 1] == 253:
                require s + 38 < arg1.length
                _1387 = mem[s + 166]
                require s + 37 < arg1.length
                _1440 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                idx = idx + 1
                s = uint16((Mask(8, 248, _1440) >> 248) + (Mask(8, 248, _1387) >> 240))
                s = s + uint16((Mask(8, 248, _1440) >> 248) + (Mask(8, 248, _1387) >> 240)) + 43
                continue 
            if mem[s + 164 len 1] == 254:
                require s + 40 < arg1.length
                _1491 = mem[s + 168]
                require s + 39 < arg1.length
                _1551 = mem[s + 167]
                require s + 38 < arg1.length
                _1655 = mem[s + 166]
                require s + 37 < arg1.length
                _1759 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                idx = idx + 1
                s = uint32((Mask(8, 248, _1759) >> 248) + (Mask(8, 248, _1655) >> 240) + (Mask(8, 248, _1551) >> 232) + (Mask(8, 248, _1491) >> 224))
                s = s + uint32((Mask(8, 248, _1759) >> 248) + (Mask(8, 248, _1655) >> 240) + (Mask(8, 248, _1551) >> 232) + (Mask(8, 248, _1491) >> 224)) + 45
                continue 
            if mem[s + 164 len 1] != 255:
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                idx = idx + 1
                s = 0
                s = 4
                continue 
            require s + 44 < arg1.length
            _1653 = mem[s + 172]
            require s + 43 < arg1.length
            _1757 = mem[s + 171]
            require s + 42 < arg1.length
            _1855 = mem[s + 170]
            require s + 41 < arg1.length
            _1907 = mem[s + 169]
            require s + 40 < arg1.length
            _1959 = mem[s + 168]
            require s + 39 < arg1.length
            _2014 = mem[s + 167]
            require s + 38 < arg1.length
            _2089 = mem[s + 166]
            require s + 37 < arg1.length
            _2138 = mem[s + 165]
            require uint8(idx) < mem[ceil32(arg1.length) + 192]
            mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
            idx = idx + 1
            s = uint64((Mask(8, 248, _2138) >> 248) + (Mask(8, 248, _2089) >> 240) + (Mask(8, 248, _2014) >> 232) + (Mask(8, 248, _1959) >> 224) + (Mask(8, 248, _1907) >> 216) + (Mask(8, 248, _1855) >> 208) + (Mask(8, 248, _1757) >> 200) + (Mask(8, 248, _1653) >> 192))
            s = s + uint64((Mask(8, 248, _2138) >> 248) + (Mask(8, 248, _2089) >> 240) + (Mask(8, 248, _2014) >> 232) + (Mask(8, 248, _1959) >> 224) + (Mask(8, 248, _1907) >> 216) + (Mask(8, 248, _1855) >> 208) + (Mask(8, 248, _1757) >> 200) + (Mask(8, 248, _1653) >> 192)) + 49
            continue 
    else:
        if arg3 <= uint64(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224) + (Mask(8, 248, mem[arg2 + 133]) >> 216) + (Mask(8, 248, mem[arg2 + 134]) >> 208) + (Mask(8, 248, mem[arg2 + 135]) >> 200) + (Mask(8, 248, mem[arg2 + 136]) >> 192)):
            mem[ceil32(arg1.length) + 192] = arg3
            mem[64] = ceil32(arg1.length) + (32 * arg3) + 224
            idx = 0
            s = 0
            s = arg2 + 9
            while uint8(idx) < arg3:
                require s + 36 < arg1.length
                _1196 = mem[s + 164]
                if mem[s + 164 len 1] < 253:
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                    idx = idx + 1
                    s = Mask(8, 248, _1196) >> 248
                    s = s + (Mask(8, 248, _1196) >> 248) + 41
                    continue 
                if mem[s + 164 len 1] == 253:
                    require s + 38 < arg1.length
                    _1391 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1444 = mem[s + 165]
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                    idx = idx + 1
                    s = uint16((Mask(8, 248, _1444) >> 248) + (Mask(8, 248, _1391) >> 240))
                    s = s + uint16((Mask(8, 248, _1444) >> 248) + (Mask(8, 248, _1391) >> 240)) + 43
                    continue 
                if mem[s + 164 len 1] == 254:
                    require s + 40 < arg1.length
                    _1495 = mem[s + 168]
                    require s + 39 < arg1.length
                    _1559 = mem[s + 167]
                    require s + 38 < arg1.length
                    _1663 = mem[s + 166]
                    require s + 37 < arg1.length
                    _1767 = mem[s + 165]
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                    idx = idx + 1
                    s = uint32((Mask(8, 248, _1767) >> 248) + (Mask(8, 248, _1663) >> 240) + (Mask(8, 248, _1559) >> 232) + (Mask(8, 248, _1495) >> 224))
                    s = s + uint32((Mask(8, 248, _1767) >> 248) + (Mask(8, 248, _1663) >> 240) + (Mask(8, 248, _1559) >> 232) + (Mask(8, 248, _1495) >> 224)) + 45
                    continue 
                if mem[s + 164 len 1] != 255:
                    require uint8(idx) < arg3
                    mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                    idx = idx + 1
                    s = 0
                    s = 4
                    continue 
                require s + 44 < arg1.length
                _1661 = mem[s + 172]
                require s + 43 < arg1.length
                _1765 = mem[s + 171]
                require s + 42 < arg1.length
                _1859 = mem[s + 170]
                require s + 41 < arg1.length
                _1911 = mem[s + 169]
                require s + 40 < arg1.length
                _1963 = mem[s + 168]
                require s + 39 < arg1.length
                _2020 = mem[s + 167]
                require s + 38 < arg1.length
                _2093 = mem[s + 166]
                require s + 37 < arg1.length
                _2140 = mem[s + 165]
                require uint8(idx) < arg3
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
                idx = idx + 1
                s = uint64((Mask(8, 248, _2140) >> 248) + (Mask(8, 248, _2093) >> 240) + (Mask(8, 248, _2020) >> 232) + (Mask(8, 248, _1963) >> 224) + (Mask(8, 248, _1911) >> 216) + (Mask(8, 248, _1859) >> 208) + (Mask(8, 248, _1765) >> 200) + (Mask(8, 248, _1661) >> 192))
                s = s + uint64((Mask(8, 248, _2140) >> 248) + (Mask(8, 248, _2093) >> 240) + (Mask(8, 248, _2020) >> 232) + (Mask(8, 248, _1963) >> 224) + (Mask(8, 248, _1911) >> 216) + (Mask(8, 248, _1859) >> 208) + (Mask(8, 248, _1765) >> 200) + (Mask(8, 248, _1661) >> 192)) + 49
                continue 
            mem[ceil32(arg1.length) + (32 * arg3) + 320 len floor32(arg3)] = mem[ceil32(arg1.length) + 224 len floor32(arg3)]
            return Array(len=arg3, data=mem[ceil32(arg1.length) + 224 len floor32(arg3)], mem[ceil32(arg1.length) + (32 * arg3) + floor32(arg3) + 320 len (32 * arg3) - floor32(arg3)]), 
                   s
        mem[ceil32(arg1.length) + 192] = uint64(mem[arg2 + 129 len 1] + (Mask(8, 248, mem[arg2 + 130]) >> 240) + (Mask(8, 248, mem[arg2 + 131]) >> 232) + (Mask(8, 248, mem[arg2 + 132]) >> 224) + (Mask(8, 248, mem[arg2 + 133]) >> 216) + (Mask(8, 248, mem[arg2 + 134]) >> 208) + (Mask(8, 248, mem[arg2 + 135]) >> 200) + (Mask(8, 248, mem[arg2 + 136]) >> 192))
        mem[64] = ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 224
        idx = 0
        s = 0
        s = arg2 + 9
        while uint8(idx) < uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192)):
            require s + 36 < arg1.length
            _1204 = mem[s + 164]
            if mem[s + 164 len 1] < 253:
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = mem[s + 164 len 1]
                idx = idx + 1
                s = Mask(8, 248, _1204) >> 248
                s = s + (Mask(8, 248, _1204) >> 248) + 41
                continue 
            if mem[s + 164 len 1] == 253:
                require s + 38 < arg1.length
                _1395 = mem[s + 166]
                require s + 37 < arg1.length
                _1448 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint16(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240))
                idx = idx + 1
                s = uint16((Mask(8, 248, _1448) >> 248) + (Mask(8, 248, _1395) >> 240))
                s = s + uint16((Mask(8, 248, _1448) >> 248) + (Mask(8, 248, _1395) >> 240)) + 43
                continue 
            if mem[s + 164 len 1] == 254:
                require s + 40 < arg1.length
                _1499 = mem[s + 168]
                require s + 39 < arg1.length
                _1567 = mem[s + 167]
                require s + 38 < arg1.length
                _1671 = mem[s + 166]
                require s + 37 < arg1.length
                _1775 = mem[s + 165]
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint32(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224))
                idx = idx + 1
                s = uint32((Mask(8, 248, _1775) >> 248) + (Mask(8, 248, _1671) >> 240) + (Mask(8, 248, _1567) >> 232) + (Mask(8, 248, _1499) >> 224))
                s = s + uint32((Mask(8, 248, _1775) >> 248) + (Mask(8, 248, _1671) >> 240) + (Mask(8, 248, _1567) >> 232) + (Mask(8, 248, _1499) >> 224)) + 45
                continue 
            if mem[s + 164 len 1] != 255:
                require uint8(idx) < mem[ceil32(arg1.length) + 192]
                mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = 0
                idx = idx + 1
                s = 0
                s = 4
                continue 
            require s + 44 < arg1.length
            _1669 = mem[s + 172]
            require s + 43 < arg1.length
            _1773 = mem[s + 171]
            require s + 42 < arg1.length
            _1863 = mem[s + 170]
            require s + 41 < arg1.length
            _1915 = mem[s + 169]
            require s + 40 < arg1.length
            _1967 = mem[s + 168]
            require s + 39 < arg1.length
            _2026 = mem[s + 167]
            require s + 38 < arg1.length
            _2097 = mem[s + 166]
            require s + 37 < arg1.length
            _2142 = mem[s + 165]
            require uint8(idx) < mem[ceil32(arg1.length) + 192]
            mem[(32 * uint8(idx)) + ceil32(arg1.length) + 224] = uint64(mem[s + 165 len 1] + (Mask(8, 248, mem[s + 166]) >> 240) + (Mask(8, 248, mem[s + 167]) >> 232) + (Mask(8, 248, mem[s + 168]) >> 224) + (Mask(8, 248, mem[s + 169]) >> 216) + (Mask(8, 248, mem[s + 170]) >> 208) + (Mask(8, 248, mem[s + 171]) >> 200) + (Mask(8, 248, mem[s + 172]) >> 192))
            idx = idx + 1
            s = uint64((Mask(8, 248, _2142) >> 248) + (Mask(8, 248, _2097) >> 240) + (Mask(8, 248, _2026) >> 232) + (Mask(8, 248, _1967) >> 224) + (Mask(8, 248, _1915) >> 216) + (Mask(8, 248, _1863) >> 208) + (Mask(8, 248, _1773) >> 200) + (Mask(8, 248, _1669) >> 192))
            s = s + uint64((Mask(8, 248, _2142) >> 248) + (Mask(8, 248, _2097) >> 240) + (Mask(8, 248, _2026) >> 232) + (Mask(8, 248, _1967) >> 224) + (Mask(8, 248, _1915) >> 216) + (Mask(8, 248, _1863) >> 208) + (Mask(8, 248, _1773) >> 200) + (Mask(8, 248, _1669) >> 192)) + 49
            continue 
    mem[ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 256] = s
    mem[ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 224] = 64
    mem[ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 288] = mem[ceil32(arg1.length) + 192]
    mem[ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 320 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
    return 64, 
           s,
           mem[ceil32(arg1.length) + (32 * uint64((Mask(8, 248, _106) >> 248) + (Mask(8, 248, _95) >> 240) + (Mask(8, 248, _81) >> 232) + (Mask(8, 248, _67) >> 224) + (Mask(8, 248, _49) >> 216) + (Mask(8, 248, _35) >> 208) + (Mask(8, 248, _29) >> 200) + (Mask(8, 248, _25) >> 192))) + 288 len (32 * mem[ceil32(arg1.length) + 192]) + 32]
}



}
