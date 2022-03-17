contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3350]
}



// =====================  Runtime code  =====================


#
#  - sub_6bd9273a(?)
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

function isValidSignature(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    require erecover.result
    if address(signer) != arg1:
        return 0
    return 1
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

function sub_7845dd05(?) payable {
    mem[96] = 40
    mem[128] = '31031df1d95a84fc21e80922ccdf8397'
    mem[160] = 0x3166336537353562000000000000000000000000000000000000000000000000
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

function sub_e2a96737(?) payable {
    mem[96] = 40
    mem[128] = '31031df1d95a84fc21e80922ccdf8397'
    mem[160] = 0x3166336537353562000000000000000000000000000000000000000000000000
    mem[192] = 64
    mem[224] = '58e2f335bbd6f2b0da93eae19342e730'
    mem[256] = '9654fbfeed9a214a1e5d835ac09cc226'
    mem[288] = 2
    mem[320] = '1b'
    mem[352] = 64
    mem[384] = '0b7effb7704f726bc64139753dc2d0a3'
    mem[416] = '929af2309dd2930ad7a722f5b214cf6e'
    mem[448] = 64
    mem[480] = '73a461ce418e9e483f13a98c0cba5cdd'
    mem[512] = 'f07f647ea1d6ba2e88d494dfcd411c9c'
    mem[544] = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require 2 * idx < 64
        require (2 * idx) + 1 < 64
        if mem[(2 * idx) + 224 len 1] >= 97:
            if mem[(2 * idx) + 224 len 1] <= 102:
                if mem[(2 * idx) + 225 len 1] >= 97:
                    if mem[(2 * idx) + 225 len 1] <= 102:
                        s = mem[(2 * idx) + 225 len 1] - 87
                        s = mem[(2 * idx) + 224 len 1] - 87
                        idx = idx + 1
                        s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 87) - 87)
                        continue 
                if mem[(2 * idx) + 225 len 1] < 48:
                    s = mem[(2 * idx) + 225 len 1]
                    s = mem[(2 * idx) + 224 len 1] - 87
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 87))
                    continue 
                if mem[(2 * idx) + 225 len 1] > 57:
                    s = mem[(2 * idx) + 225 len 1]
                    s = mem[(2 * idx) + 224 len 1] - 87
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 87))
                    continue 
                s = mem[(2 * idx) + 225 len 1] - 48
                s = mem[(2 * idx) + 224 len 1] - 87
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 87) - 48)
                continue 
        if mem[(2 * idx) + 224 len 1] < 48:
            if mem[(2 * idx) + 225 len 1] >= 97:
                if mem[(2 * idx) + 225 len 1] <= 102:
                    s = mem[(2 * idx) + 225 len 1] - 87
                    s = mem[(2 * idx) + 224 len 1]
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 225 len 1] < 48:
                s = mem[(2 * idx) + 225 len 1]
                s = mem[(2 * idx) + 224 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244))
                continue 
            if mem[(2 * idx) + 225 len 1] > 57:
                s = mem[(2 * idx) + 225 len 1]
                s = mem[(2 * idx) + 224 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244))
                continue 
            s = mem[(2 * idx) + 225 len 1] - 48
            s = mem[(2 * idx) + 224 len 1]
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 224 len 1] > 57:
            if mem[(2 * idx) + 225 len 1] >= 97:
                if mem[(2 * idx) + 225 len 1] <= 102:
                    s = mem[(2 * idx) + 225 len 1] - 87
                    s = mem[(2 * idx) + 224 len 1]
                    idx = idx + 1
                    s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 225 len 1] < 48:
                s = mem[(2 * idx) + 225 len 1]
                s = mem[(2 * idx) + 224 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244))
                continue 
            if mem[(2 * idx) + 225 len 1] > 57:
                s = mem[(2 * idx) + 225 len 1]
                s = mem[(2 * idx) + 224 len 1]
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244))
                continue 
            s = mem[(2 * idx) + 225 len 1] - 48
            s = mem[(2 * idx) + 224 len 1]
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (Mask(8, 248, mem[(2 * idx) + 224]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 225 len 1] >= 97:
            if mem[(2 * idx) + 225 len 1] <= 102:
                s = mem[(2 * idx) + 225 len 1] - 87
                s = mem[(2 * idx) + 224 len 1] - 48
                idx = idx + 1
                s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 48) - 87)
                continue 
        if mem[(2 * idx) + 225 len 1] < 48:
            s = mem[(2 * idx) + 225 len 1]
            s = mem[(2 * idx) + 224 len 1] - 48
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 48))
            continue 
        if mem[(2 * idx) + 225 len 1] > 57:
            s = mem[(2 * idx) + 225 len 1]
            s = mem[(2 * idx) + 224 len 1] - 48
            idx = idx + 1
            s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 48))
            continue 
        s = mem[(2 * idx) + 225 len 1] - 48
        s = mem[(2 * idx) + 224 len 1] - 48
        idx = idx + 1
        s = (256 * s) + uint8(mem[(2 * idx) + 225 len 1] + (16 * mem[(2 * idx) + 224 len 1] - 48) - 48)
        continue 
    mem[576] = 0
    mem[608] = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < 32:
        require 2 * idx < 64
        require (2 * idx) + 1 < 64
        if mem[(2 * idx) + 384 len 1] >= 97:
            if mem[(2 * idx) + 384 len 1] <= 102:
                if mem[(2 * idx) + 385 len 1] >= 97:
                    if mem[(2 * idx) + 385 len 1] <= 102:
                        t = mem[(2 * idx) + 385 len 1] - 87
                        t = mem[(2 * idx) + 384 len 1] - 87
                        idx = idx + 1
                        t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 87) - 87)
                        continue 
                if mem[(2 * idx) + 385 len 1] < 48:
                    t = mem[(2 * idx) + 385 len 1]
                    t = mem[(2 * idx) + 384 len 1] - 87
                    idx = idx + 1
                    t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 87))
                    continue 
                if mem[(2 * idx) + 385 len 1] > 57:
                    t = mem[(2 * idx) + 385 len 1]
                    t = mem[(2 * idx) + 384 len 1] - 87
                    idx = idx + 1
                    t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 87))
                    continue 
                t = mem[(2 * idx) + 385 len 1] - 48
                t = mem[(2 * idx) + 384 len 1] - 87
                idx = idx + 1
                t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 87) - 48)
                continue 
        if mem[(2 * idx) + 384 len 1] < 48:
            if mem[(2 * idx) + 385 len 1] >= 97:
                if mem[(2 * idx) + 385 len 1] <= 102:
                    t = mem[(2 * idx) + 385 len 1] - 87
                    t = mem[(2 * idx) + 384 len 1]
                    idx = idx + 1
                    t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 385 len 1] < 48:
                t = mem[(2 * idx) + 385 len 1]
                t = mem[(2 * idx) + 384 len 1]
                idx = idx + 1
                t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244))
                continue 
            if mem[(2 * idx) + 385 len 1] > 57:
                t = mem[(2 * idx) + 385 len 1]
                t = mem[(2 * idx) + 384 len 1]
                idx = idx + 1
                t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244))
                continue 
            t = mem[(2 * idx) + 385 len 1] - 48
            t = mem[(2 * idx) + 384 len 1]
            idx = idx + 1
            t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 384 len 1] > 57:
            if mem[(2 * idx) + 385 len 1] >= 97:
                if mem[(2 * idx) + 385 len 1] <= 102:
                    t = mem[(2 * idx) + 385 len 1] - 87
                    t = mem[(2 * idx) + 384 len 1]
                    idx = idx + 1
                    t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 385 len 1] < 48:
                t = mem[(2 * idx) + 385 len 1]
                t = mem[(2 * idx) + 384 len 1]
                idx = idx + 1
                t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244))
                continue 
            if mem[(2 * idx) + 385 len 1] > 57:
                t = mem[(2 * idx) + 385 len 1]
                t = mem[(2 * idx) + 384 len 1]
                idx = idx + 1
                t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244))
                continue 
            t = mem[(2 * idx) + 385 len 1] - 48
            t = mem[(2 * idx) + 384 len 1]
            idx = idx + 1
            t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (Mask(8, 248, mem[(2 * idx) + 384]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 385 len 1] >= 97:
            if mem[(2 * idx) + 385 len 1] <= 102:
                t = mem[(2 * idx) + 385 len 1] - 87
                t = mem[(2 * idx) + 384 len 1] - 48
                idx = idx + 1
                t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 48) - 87)
                continue 
        if mem[(2 * idx) + 385 len 1] < 48:
            t = mem[(2 * idx) + 385 len 1]
            t = mem[(2 * idx) + 384 len 1] - 48
            idx = idx + 1
            t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 48))
            continue 
        if mem[(2 * idx) + 385 len 1] > 57:
            t = mem[(2 * idx) + 385 len 1]
            t = mem[(2 * idx) + 384 len 1] - 48
            idx = idx + 1
            t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 48))
            continue 
        t = mem[(2 * idx) + 385 len 1] - 48
        t = mem[(2 * idx) + 384 len 1] - 48
        idx = idx + 1
        t = (256 * t) + uint8(mem[(2 * idx) + 385 len 1] + (16 * mem[(2 * idx) + 384 len 1] - 48) - 48)
        continue 
    mem[640] = 0
    u = 0
    u = 0
    idx = 0
    u = 0
    while idx < 32:
        require 2 * idx < 64
        require (2 * idx) + 1 < 64
        if mem[(2 * idx) + 480 len 1] >= 97:
            if mem[(2 * idx) + 480 len 1] <= 102:
                if mem[(2 * idx) + 481 len 1] >= 97:
                    if mem[(2 * idx) + 481 len 1] <= 102:
                        u = mem[(2 * idx) + 481 len 1] - 87
                        u = mem[(2 * idx) + 480 len 1] - 87
                        idx = idx + 1
                        u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 87) - 87)
                        continue 
                if mem[(2 * idx) + 481 len 1] < 48:
                    u = mem[(2 * idx) + 481 len 1]
                    u = mem[(2 * idx) + 480 len 1] - 87
                    idx = idx + 1
                    u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 87))
                    continue 
                if mem[(2 * idx) + 481 len 1] > 57:
                    u = mem[(2 * idx) + 481 len 1]
                    u = mem[(2 * idx) + 480 len 1] - 87
                    idx = idx + 1
                    u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 87))
                    continue 
                u = mem[(2 * idx) + 481 len 1] - 48
                u = mem[(2 * idx) + 480 len 1] - 87
                idx = idx + 1
                u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 87) - 48)
                continue 
        if mem[(2 * idx) + 480 len 1] < 48:
            if mem[(2 * idx) + 481 len 1] >= 97:
                if mem[(2 * idx) + 481 len 1] <= 102:
                    u = mem[(2 * idx) + 481 len 1] - 87
                    u = mem[(2 * idx) + 480 len 1]
                    idx = idx + 1
                    u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 481 len 1] < 48:
                u = mem[(2 * idx) + 481 len 1]
                u = mem[(2 * idx) + 480 len 1]
                idx = idx + 1
                u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244))
                continue 
            if mem[(2 * idx) + 481 len 1] > 57:
                u = mem[(2 * idx) + 481 len 1]
                u = mem[(2 * idx) + 480 len 1]
                idx = idx + 1
                u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244))
                continue 
            u = mem[(2 * idx) + 481 len 1] - 48
            u = mem[(2 * idx) + 480 len 1]
            idx = idx + 1
            u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 480 len 1] > 57:
            if mem[(2 * idx) + 481 len 1] >= 97:
                if mem[(2 * idx) + 481 len 1] <= 102:
                    u = mem[(2 * idx) + 481 len 1] - 87
                    u = mem[(2 * idx) + 480 len 1]
                    idx = idx + 1
                    u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244) - 87)
                    continue 
            if mem[(2 * idx) + 481 len 1] < 48:
                u = mem[(2 * idx) + 481 len 1]
                u = mem[(2 * idx) + 480 len 1]
                idx = idx + 1
                u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244))
                continue 
            if mem[(2 * idx) + 481 len 1] > 57:
                u = mem[(2 * idx) + 481 len 1]
                u = mem[(2 * idx) + 480 len 1]
                idx = idx + 1
                u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244))
                continue 
            u = mem[(2 * idx) + 481 len 1] - 48
            u = mem[(2 * idx) + 480 len 1]
            idx = idx + 1
            u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (Mask(8, 248, mem[(2 * idx) + 480]) >> 244) - 48)
            continue 
        if mem[(2 * idx) + 481 len 1] >= 97:
            if mem[(2 * idx) + 481 len 1] <= 102:
                u = mem[(2 * idx) + 481 len 1] - 87
                u = mem[(2 * idx) + 480 len 1] - 48
                idx = idx + 1
                u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 48) - 87)
                continue 
        if mem[(2 * idx) + 481 len 1] < 48:
            u = mem[(2 * idx) + 481 len 1]
            u = mem[(2 * idx) + 480 len 1] - 48
            idx = idx + 1
            u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 48))
            continue 
        if mem[(2 * idx) + 481 len 1] > 57:
            u = mem[(2 * idx) + 481 len 1]
            u = mem[(2 * idx) + 480 len 1] - 48
            idx = idx + 1
            u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 48))
            continue 
        u = mem[(2 * idx) + 481 len 1] - 48
        u = mem[(2 * idx) + 480 len 1] - 48
        idx = idx + 1
        u = (256 * u) + uint8(mem[(2 * idx) + 481 len 1] + (16 * mem[(2 * idx) + 480 len 1] - 48) - 48)
        continue 
    mem[64] = 704
    mem[672] = 0
    idx = 2
    v = 0
    v = 0
    v = 0
    while idx < 42:
        require idx < 40
        require idx + 1 < 40
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        v = mem[idx + 129 len 1] - 87
                        v = mem[idx + 128 len 1] - 87
                        v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * v) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    v = mem[idx + 129 len 1]
                    v = mem[idx + 128 len 1] - 87
                    v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * v)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    v = mem[idx + 129 len 1]
                    v = mem[idx + 128 len 1] - 87
                    v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * v)
                    continue 
                idx = idx + 2
                v = mem[idx + 129 len 1] - 48
                v = mem[idx + 128 len 1] - 87
                v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * v) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    v = mem[idx + 129 len 1] - 87
                    v = mem[idx + 128 len 1]
                    v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                v = mem[idx + 129 len 1]
                v = mem[idx + 128 len 1]
                v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                v = mem[idx + 129 len 1]
                v = mem[idx + 128 len 1]
                v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v)
                continue 
            idx = idx + 2
            v = mem[idx + 129 len 1] - 48
            v = mem[idx + 128 len 1]
            v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    v = mem[idx + 129 len 1] - 87
                    v = mem[idx + 128 len 1]
                    v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                v = mem[idx + 129 len 1]
                v = mem[idx + 128 len 1]
                v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                v = mem[idx + 129 len 1]
                v = mem[idx + 128 len 1]
                v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v)
                continue 
            idx = idx + 2
            v = mem[idx + 129 len 1] - 48
            v = mem[idx + 128 len 1]
            v = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * v) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                v = mem[idx + 129 len 1] - 87
                v = mem[idx + 128 len 1] - 48
                v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * v) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            v = mem[idx + 129 len 1]
            v = mem[idx + 128 len 1] - 48
            v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * v)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            v = mem[idx + 129 len 1]
            v = mem[idx + 128 len 1] - 48
            v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * v)
            continue 
        idx = idx + 2
        v = mem[idx + 129 len 1] - 48
        v = mem[idx + 128 len 1] - 48
        v = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * v) - 48
        continue 
    if Mask(8, 248, '1b') >> 248 < 97:
        if Mask(8, 248, '1b') >> 248 < 48:
            if Mask(8, 240, '1b') >> 240 < 97:
                if Mask(8, 240, '1b') >> 240 < 48:
                    signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 > 57:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
            else:
                if Mask(8, 240, '1b') >> 240 <= 102:
                    signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 < 48:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 > 57:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
        else:
            if Mask(8, 248, '1b') >> 248 > 57:
                if Mask(8, 240, '1b') >> 240 < 97:
                    if Mask(8, 240, '1b') >> 240 < 48:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 > 57:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 <= 102:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 < 48:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 > 57:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
            else:
                if Mask(8, 240, '1b') >> 240 < 97:
                    if Mask(8, 240, '1b') >> 240 < 48:
                        signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 > 57:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 <= 102:
                        signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 < 48:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 > 57:
                                signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
    else:
        if Mask(8, 248, '1b') >> 248 <= 102:
            if Mask(8, 240, '1b') >> 240 < 97:
                if Mask(8, 240, '1b') >> 240 < 48:
                    signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 > 57:
                        signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
            else:
                if Mask(8, 240, '1b') >> 240 <= 102:
                    signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 < 48:
                        signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 > 57:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 87) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
        else:
            if Mask(8, 248, '1b') >> 248 < 48:
                if Mask(8, 240, '1b') >> 240 < 97:
                    if Mask(8, 240, '1b') >> 240 < 48:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 > 57:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 <= 102:
                        signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 < 48:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 > 57:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
            else:
                if Mask(8, 248, '1b') >> 248 > 57:
                    if Mask(8, 240, '1b') >> 240 < 97:
                        if Mask(8, 240, '1b') >> 240 < 48:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 > 57:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 <= 102:
                            signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 < 48:
                                signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                if Mask(8, 240, '1b') >> 240 > 57:
                                    signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                                else:
                                    signer = erecover(s, (Mask(8, 248, '1b') >> 244) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
                else:
                    if Mask(8, 240, '1b') >> 240 < 97:
                        if Mask(8, 240, '1b') >> 240 < 48:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 > 57:
                                signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
                    else:
                        if Mask(8, 240, '1b') >> 240 <= 102:
                            signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 87 << 248, t, u) 
                        else:
                            if Mask(8, 240, '1b') >> 240 < 48:
                                signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                            else:
                                if Mask(8, 240, '1b') >> 240 > 57:
                                    signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) << 248, t, u) 
                                else:
                                    signer = erecover(s, (16 * (Mask(8, 248, '1b') >> 248) - 48) + (Mask(8, 248, Mask(248, 0, '1b'), 0) >> 248) - 48 << 248, t, u) 
    require erecover.result
    if address(v) != address(signer):
        return 0
    return 1
}



}
