contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3247]
}



// =====================  Runtime code  =====================


#
#  - sub_11b918e6(?)
#  - sub_1dabb452(?)
#  - isValidSignature(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#  - ecrecover(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4)
#  - sub_e2a96737(?)
#
const sub_109c4be9(?) = 0x31031df1d95a84fc21e80922ccdf83971f3e755b

const sub_34ffbd3d(?) = 0x2000000000000000000000000000000000000000000000000000000000000000

const sub_48fe061f(?) = s

const priv = s

const r = s

const v = 32

const sub_a1e754ea(?) = address(hash)

const v2 = 28


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_ef36257a(?) payable {
    if arg1 >= 97:
        if arg1 <= 102:
            if arg2 >= 97:
                if arg2 <= 102:
                    return uint8((16 * arg1 - 87) + arg2 - 87)
            if arg2 < 48:
                return uint8((16 * arg1 - 87) + arg2)
            if arg2 > 57:
                return uint8((16 * arg1 - 87) + arg2)
            return uint8((16 * arg1 - 87) + arg2 - 48)
    if arg1 < 48:
        if arg2 >= 97:
            if arg2 <= 102:
                return uint8((16 * arg1) + arg2 - 87)
        if arg2 < 48:
            return uint8((16 * arg1) + arg2)
        if arg2 > 57:
            return uint8((16 * arg1) + arg2)
        return uint8((16 * arg1) + arg2 - 48)
    if arg1 > 57:
        if arg2 >= 97:
            if arg2 <= 102:
                return uint8((16 * arg1) + arg2 - 87)
        if arg2 < 48:
            return uint8((16 * arg1) + arg2)
        if arg2 > 57:
            return uint8((16 * arg1) + arg2)
        return uint8((16 * arg1) + arg2 - 48)
    if arg2 >= 97:
        if arg2 <= 102:
            return uint8((16 * arg1 - 48) + arg2 - 87)
    if arg2 < 48:
        return uint8((16 * arg1 - 48) + arg2)
    if arg2 > 57:
        return uint8((16 * arg1 - 48) + arg2)
    return uint8((16 * arg1 - 48) + arg2 - 48)
}

function sub_f61d442d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    require 0 < arg1.length
    require 1 < arg1.length
    if mem[128 len 1] >= 97:
        if mem[128 len 1] <= 102:
            if mem[129 len 1] >= 97:
                if mem[129 len 1] <= 102:
                    return uint8((16 * mem[128 len 1] - 87) + mem[129 len 1] - 87)
            if mem[129 len 1] < 48:
                return uint8((16 * mem[128 len 1] - 87) + mem[129 len 1])
            if mem[129 len 1] > 57:
                return uint8((16 * mem[128 len 1] - 87) + mem[129 len 1])
            return uint8((16 * mem[128 len 1] - 87) + mem[129 len 1] - 48)
    if mem[128 len 1] < 48:
        if mem[129 len 1] >= 97:
            if mem[129 len 1] <= 102:
                return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1] - 87)
        if mem[129 len 1] < 48:
            return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1])
        if mem[129 len 1] > 57:
            return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1])
        return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1] - 48)
    if mem[128 len 1] > 57:
        if mem[129 len 1] >= 97:
            if mem[129 len 1] <= 102:
                return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1] - 87)
        if mem[129 len 1] < 48:
            return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1])
        if mem[129 len 1] > 57:
            return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1])
        return uint8((Mask(8, 248, mem[128]) >> 244) + mem[129 len 1] - 48)
    if mem[129 len 1] >= 97:
        if mem[129 len 1] <= 102:
            return uint8((16 * mem[128 len 1] - 48) + mem[129 len 1] - 87)
    if mem[129 len 1] < 48:
        return uint8((16 * mem[128 len 1] - 48) + mem[129 len 1])
    if mem[129 len 1] > 57:
        return uint8((16 * mem[128 len 1] - 48) + mem[129 len 1])
    return uint8((16 * mem[128 len 1] - 48) + mem[129 len 1] - 48)
}

function sub_f8043b9e(?) payable {
    if Mask(8, 248, '20') >> 248 >= 97:
        if Mask(8, 248, '20') >> 248 <= 102:
            if Mask(8, 240, '20') >> 240 >= 97:
                if Mask(8, 240, '20') >> 240 <= 102:
                    return uint8((16 * (Mask(8, 248, '20') >> 248) - 87) + (Mask(8, 240, '20') >> 240) - 87)
            if Mask(8, 240, '20') >> 240 < 48:
                return uint8((16 * (Mask(8, 248, '20') >> 248) - 87) + (Mask(8, 240, '20') >> 240))
            if Mask(8, 240, '20') >> 240 > 57:
                return uint8((16 * (Mask(8, 248, '20') >> 248) - 87) + (Mask(8, 240, '20') >> 240))
            return uint8((16 * (Mask(8, 248, '20') >> 248) - 87) + (Mask(8, 240, '20') >> 240) - 48)
    if Mask(8, 248, '20') >> 248 < 48:
        if Mask(8, 240, '20') >> 240 >= 97:
            if Mask(8, 240, '20') >> 240 <= 102:
                return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240) - 87)
        if Mask(8, 240, '20') >> 240 < 48:
            return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240))
        if Mask(8, 240, '20') >> 240 > 57:
            return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240))
        return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240) - 48)
    if Mask(8, 248, '20') >> 248 > 57:
        if Mask(8, 240, '20') >> 240 >= 97:
            if Mask(8, 240, '20') >> 240 <= 102:
                return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240) - 87)
        if Mask(8, 240, '20') >> 240 < 48:
            return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240))
        if Mask(8, 240, '20') >> 240 > 57:
            return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240))
        return uint8((Mask(8, 248, '20') >> 244) + (Mask(8, 240, '20') >> 240) - 48)
    if Mask(8, 240, '20') >> 240 >= 97:
        if Mask(8, 240, '20') >> 240 <= 102:
            return uint8((16 * (Mask(8, 248, '20') >> 248) - 48) + (Mask(8, 240, '20') >> 240) - 87)
    if Mask(8, 240, '20') >> 240 < 48:
        return uint8((16 * (Mask(8, 248, '20') >> 248) - 48) + (Mask(8, 240, '20') >> 240))
    if Mask(8, 240, '20') >> 240 > 57:
        return uint8((16 * (Mask(8, 248, '20') >> 248) - 48) + (Mask(8, 240, '20') >> 240))
    return uint8((16 * (Mask(8, 248, '20') >> 248) - 48) + (Mask(8, 240, '20') >> 240) - 48)
}

function sub_7845dd05(?) payable {
    mem[96] = 40
    mem[128] = '31031df1d95a84fc21e80922ccdf8397'
    mem[160] = '1f3e755b'
    mem[64] = 224
    mem[192] = 0
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < 40
        require idx + 1 < 40
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 48
        continue 
    return address(s)
}

function parseAddr(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < arg1.length
        require idx + 1 < arg1.length
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 48
        continue 
    return address(s)
}

function sub_087e6e81(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require 2 * idx < arg1.length
        require (2 * idx) + 1 < arg1.length
        if mem[(2 * idx) + 128 len 1] >= 97:
            if mem[(2 * idx) + 128 len 1] <= 102:
                if mem[(2 * idx) + 129 len 1] >= 97:
                    if mem[(2 * idx) + 129 len 1] <= 102:
                        s = mem[(2 * idx) + 129 len 1] - 87
                        s = mem[(2 * idx) + 128 len 1] - 87
                        idx = idx + 1
                        s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87) - 87)
                        continue 
                if mem[(2 * idx) + 129 len 1] < 48:
                    s = mem[(2 * idx) + 129 len 1]
                    s = mem[(2 * idx) + 128 len 1] - 87
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87))
                    continue 
                if mem[(2 * idx) + 129 len 1] > 57:
                    s = mem[(2 * idx) + 129 len 1]
                    s = mem[(2 * idx) + 128 len 1] - 87
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87))
                    continue 
                s = mem[(2 * idx) + 129 len 1] - 48
                s = mem[(2 * idx) + 128 len 1] - 87
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87) - 48)
                continue 
        if mem[(2 * idx) + 128 len 1] < 48:
            if mem[(2 * idx) + 129 len 1] >= 97:
                if mem[(2 * idx) + 129 len 1] <= 102:
                    s = mem[(2 * idx) + 129 len 1] - 87
                    s = mem[(2 * idx) + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 129 len 1] < 48:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            if mem[(2 * idx) + 129 len 1] > 57:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            s = mem[(2 * idx) + 129 len 1] - 48
            s = mem[(2 * idx) + 128 len 1]
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 128 len 1] > 57:
            if mem[(2 * idx) + 129 len 1] >= 97:
                if mem[(2 * idx) + 129 len 1] <= 102:
                    s = mem[(2 * idx) + 129 len 1] - 87
                    s = mem[(2 * idx) + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 129 len 1] < 48:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            if mem[(2 * idx) + 129 len 1] > 57:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            s = mem[(2 * idx) + 129 len 1] - 48
            s = mem[(2 * idx) + 128 len 1]
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 129 len 1] >= 97:
            if mem[(2 * idx) + 129 len 1] <= 102:
                s = mem[(2 * idx) + 129 len 1] - 87
                s = mem[(2 * idx) + 128 len 1] - 48
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48) - 87)
                continue 
        if mem[(2 * idx) + 129 len 1] < 48:
            s = mem[(2 * idx) + 129 len 1]
            s = mem[(2 * idx) + 128 len 1] - 48
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48))
            continue 
        if mem[(2 * idx) + 129 len 1] > 57:
            s = mem[(2 * idx) + 129 len 1]
            s = mem[(2 * idx) + 128 len 1] - 48
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48))
            continue 
        s = mem[(2 * idx) + 129 len 1] - 48
        s = mem[(2 * idx) + 128 len 1] - 48
        idx = idx + 1
        s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48) - 48)
        continue 
    return s
}

function s() payable {
    mem[128] = '73a461ce418e9e483f13a98c0cba5cdd'
    mem[160] = 'f07f647ea1d6ba2e88d494dfcd411c9c'
    mem[192] = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require 2 * idx < 64
        require (2 * idx) + 1 < 64
        if mem[(2 * idx) + 128 len 1] >= 97:
            if mem[(2 * idx) + 128 len 1] <= 102:
                if mem[(2 * idx) + 129 len 1] >= 97:
                    if mem[(2 * idx) + 129 len 1] <= 102:
                        s = mem[(2 * idx) + 129 len 1] - 87
                        s = mem[(2 * idx) + 128 len 1] - 87
                        idx = idx + 1
                        s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87) - 87)
                        continue 
                if mem[(2 * idx) + 129 len 1] < 48:
                    s = mem[(2 * idx) + 129 len 1]
                    s = mem[(2 * idx) + 128 len 1] - 87
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87))
                    continue 
                if mem[(2 * idx) + 129 len 1] > 57:
                    s = mem[(2 * idx) + 129 len 1]
                    s = mem[(2 * idx) + 128 len 1] - 87
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87))
                    continue 
                s = mem[(2 * idx) + 129 len 1] - 48
                s = mem[(2 * idx) + 128 len 1] - 87
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 87) - 48)
                continue 
        if mem[(2 * idx) + 128 len 1] < 48:
            if mem[(2 * idx) + 129 len 1] >= 97:
                if mem[(2 * idx) + 129 len 1] <= 102:
                    s = mem[(2 * idx) + 129 len 1] - 87
                    s = mem[(2 * idx) + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 129 len 1] < 48:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            if mem[(2 * idx) + 129 len 1] > 57:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            s = mem[(2 * idx) + 129 len 1] - 48
            s = mem[(2 * idx) + 128 len 1]
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 128 len 1] > 57:
            if mem[(2 * idx) + 129 len 1] >= 97:
                if mem[(2 * idx) + 129 len 1] <= 102:
                    s = mem[(2 * idx) + 129 len 1] - 87
                    s = mem[(2 * idx) + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 129 len 1] < 48:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            if mem[(2 * idx) + 129 len 1] > 57:
                s = mem[(2 * idx) + 129 len 1]
                s = mem[(2 * idx) + 128 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244))
                continue 
            s = mem[(2 * idx) + 129 len 1] - 48
            s = mem[(2 * idx) + 128 len 1]
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (Mask(8, 248, mem[(2 * idx) + 128]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 129 len 1] >= 97:
            if mem[(2 * idx) + 129 len 1] <= 102:
                s = mem[(2 * idx) + 129 len 1] - 87
                s = mem[(2 * idx) + 128 len 1] - 48
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48) - 87)
                continue 
        if mem[(2 * idx) + 129 len 1] < 48:
            s = mem[(2 * idx) + 129 len 1]
            s = mem[(2 * idx) + 128 len 1] - 48
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48))
            continue 
        if mem[(2 * idx) + 129 len 1] > 57:
            s = mem[(2 * idx) + 129 len 1]
            s = mem[(2 * idx) + 128 len 1] - 48
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48))
            continue 
        s = mem[(2 * idx) + 129 len 1] - 48
        s = mem[(2 * idx) + 128 len 1] - 48
        idx = idx + 1
        s = (256 * s) + uint8(mem[(2 * idx) + 129 len 1] + (16 * mem[(2 * idx) + 128 len 1] - 48) - 48)
        continue 
    return s
}



}
