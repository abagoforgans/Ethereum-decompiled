contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1212]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function log() payable {
  stop
}

function _fallback() payable {
  stop
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
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 48
        continue 
    return address(s)
}

function test() payable {
    mem[96] = 66
    mem[128] = '036421f6eca2ef7a43ce0af4a150b933'
    mem[160] = 'afb3cf0764323b8ff9ebfd4935fd86d4'
    mem[192] = '36'
    mem[64] = 256
    mem[224] = 0
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < 66
        require idx + 1 < 66
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 48
        continue 
    mem[256] = 2
    mem[288] = '20'
    mem[64] = 352
    mem[320] = 0
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < 2
        require idx + 1 < 2
        if mem[idx + 288 len 1] >= 97:
            if mem[idx + 288 len 1] <= 102:
                if mem[idx + 289 len 1] >= 97:
                    if mem[idx + 289 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 289 len 1] - 87
                        s = mem[idx + 288 len 1] - 87
                        s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 87) - 87
                        continue 
                if mem[idx + 289 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 289 len 1]
                    s = mem[idx + 288 len 1] - 87
                    s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 87)
                    continue 
                if mem[idx + 289 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 289 len 1]
                    s = mem[idx + 288 len 1] - 87
                    s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 87)
                    continue 
                idx = idx + 2
                s = mem[idx + 289 len 1] - 48
                s = mem[idx + 288 len 1] - 87
                s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 87) - 48
                continue 
        if mem[idx + 288 len 1] < 48:
            if mem[idx + 289 len 1] >= 97:
                if mem[idx + 289 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 289 len 1] - 87
                    s = mem[idx + 288 len 1]
                    s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244) - 87
                    continue 
            if mem[idx + 289 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 289 len 1]
                s = mem[idx + 288 len 1]
                s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244)
                continue 
            if mem[idx + 289 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 289 len 1]
                s = mem[idx + 288 len 1]
                s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 289 len 1] - 48
            s = mem[idx + 288 len 1]
            s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244) - 48
            continue 
        if mem[idx + 288 len 1] > 57:
            if mem[idx + 289 len 1] >= 97:
                if mem[idx + 289 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 289 len 1] - 87
                    s = mem[idx + 288 len 1]
                    s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244) - 87
                    continue 
            if mem[idx + 289 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 289 len 1]
                s = mem[idx + 288 len 1]
                s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244)
                continue 
            if mem[idx + 289 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 289 len 1]
                s = mem[idx + 288 len 1]
                s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 289 len 1] - 48
            s = mem[idx + 288 len 1]
            s = (256 * s) + mem[idx + 289 len 1] + (Mask(8, 248, mem[idx + 288]) >> 244) - 48
            continue 
        if mem[idx + 289 len 1] >= 97:
            if mem[idx + 289 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 289 len 1] - 87
                s = mem[idx + 288 len 1] - 48
                s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 48) - 87
                continue 
        if mem[idx + 289 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 289 len 1]
            s = mem[idx + 288 len 1] - 48
            s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 48)
            continue 
        if mem[idx + 289 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 289 len 1]
            s = mem[idx + 288 len 1] - 48
            s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 48)
            continue 
        idx = idx + 2
        s = mem[idx + 289 len 1] - 48
        s = mem[idx + 288 len 1] - 48
        s = (256 * s) + mem[idx + 289 len 1] + (16 * mem[idx + 288 len 1] - 48) - 48
        continue 
    mem[352] = 64
    mem[384] = '0b7effb7704f726bc64139753dc2d0a3'
    mem[416] = '929af2309dd2930ad7a722f5b214cf6e'
    mem[64] = 480
    mem[448] = 0
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < 64
        require idx + 1 < 64
        if mem[idx + 384 len 1] >= 97:
            if mem[idx + 384 len 1] <= 102:
                if mem[idx + 385 len 1] >= 97:
                    if mem[idx + 385 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 385 len 1] - 87
                        s = mem[idx + 384 len 1] - 87
                        s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 87) - 87
                        continue 
                if mem[idx + 385 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 385 len 1]
                    s = mem[idx + 384 len 1] - 87
                    s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 87)
                    continue 
                if mem[idx + 385 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 385 len 1]
                    s = mem[idx + 384 len 1] - 87
                    s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 87)
                    continue 
                idx = idx + 2
                s = mem[idx + 385 len 1] - 48
                s = mem[idx + 384 len 1] - 87
                s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 87) - 48
                continue 
        if mem[idx + 384 len 1] < 48:
            if mem[idx + 385 len 1] >= 97:
                if mem[idx + 385 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 385 len 1] - 87
                    s = mem[idx + 384 len 1]
                    s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244) - 87
                    continue 
            if mem[idx + 385 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 385 len 1]
                s = mem[idx + 384 len 1]
                s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244)
                continue 
            if mem[idx + 385 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 385 len 1]
                s = mem[idx + 384 len 1]
                s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 385 len 1] - 48
            s = mem[idx + 384 len 1]
            s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244) - 48
            continue 
        if mem[idx + 384 len 1] > 57:
            if mem[idx + 385 len 1] >= 97:
                if mem[idx + 385 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 385 len 1] - 87
                    s = mem[idx + 384 len 1]
                    s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244) - 87
                    continue 
            if mem[idx + 385 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 385 len 1]
                s = mem[idx + 384 len 1]
                s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244)
                continue 
            if mem[idx + 385 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 385 len 1]
                s = mem[idx + 384 len 1]
                s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 385 len 1] - 48
            s = mem[idx + 384 len 1]
            s = (256 * s) + mem[idx + 385 len 1] + (Mask(8, 248, mem[idx + 384]) >> 244) - 48
            continue 
        if mem[idx + 385 len 1] >= 97:
            if mem[idx + 385 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 385 len 1] - 87
                s = mem[idx + 384 len 1] - 48
                s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 48) - 87
                continue 
        if mem[idx + 385 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 385 len 1]
            s = mem[idx + 384 len 1] - 48
            s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 48)
            continue 
        if mem[idx + 385 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 385 len 1]
            s = mem[idx + 384 len 1] - 48
            s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 48)
            continue 
        idx = idx + 2
        s = mem[idx + 385 len 1] - 48
        s = mem[idx + 384 len 1] - 48
        s = (256 * s) + mem[idx + 385 len 1] + (16 * mem[idx + 384 len 1] - 48) - 48
        continue 
    mem[480] = 64
    mem[512] = '73a461ce418e9e483f13a98c0cba5cdd'
    mem[544] = 'f07f647ea1d6ba2e88d494dfcd411c9c'
    mem[64] = 608
    mem[576] = 0
    idx = 2
    t = 0
    t = 0
    t = 0
    while idx < 42:
        require idx < 64
        require idx + 1 < 64
        if mem[idx + 512 len 1] >= 97:
            if mem[idx + 512 len 1] <= 102:
                if mem[idx + 513 len 1] >= 97:
                    if mem[idx + 513 len 1] <= 102:
                        idx = idx + 2
                        t = mem[idx + 513 len 1] - 87
                        t = mem[idx + 512 len 1] - 87
                        t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 87) - 87
                        continue 
                if mem[idx + 513 len 1] < 48:
                    idx = idx + 2
                    t = mem[idx + 513 len 1]
                    t = mem[idx + 512 len 1] - 87
                    t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 87)
                    continue 
                if mem[idx + 513 len 1] > 57:
                    idx = idx + 2
                    t = mem[idx + 513 len 1]
                    t = mem[idx + 512 len 1] - 87
                    t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 87)
                    continue 
                idx = idx + 2
                t = mem[idx + 513 len 1] - 48
                t = mem[idx + 512 len 1] - 87
                t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 87) - 48
                continue 
        if mem[idx + 512 len 1] < 48:
            if mem[idx + 513 len 1] >= 97:
                if mem[idx + 513 len 1] <= 102:
                    idx = idx + 2
                    t = mem[idx + 513 len 1] - 87
                    t = mem[idx + 512 len 1]
                    t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244) - 87
                    continue 
            if mem[idx + 513 len 1] < 48:
                idx = idx + 2
                t = mem[idx + 513 len 1]
                t = mem[idx + 512 len 1]
                t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244)
                continue 
            if mem[idx + 513 len 1] > 57:
                idx = idx + 2
                t = mem[idx + 513 len 1]
                t = mem[idx + 512 len 1]
                t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244)
                continue 
            idx = idx + 2
            t = mem[idx + 513 len 1] - 48
            t = mem[idx + 512 len 1]
            t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244) - 48
            continue 
        if mem[idx + 512 len 1] > 57:
            if mem[idx + 513 len 1] >= 97:
                if mem[idx + 513 len 1] <= 102:
                    idx = idx + 2
                    t = mem[idx + 513 len 1] - 87
                    t = mem[idx + 512 len 1]
                    t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244) - 87
                    continue 
            if mem[idx + 513 len 1] < 48:
                idx = idx + 2
                t = mem[idx + 513 len 1]
                t = mem[idx + 512 len 1]
                t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244)
                continue 
            if mem[idx + 513 len 1] > 57:
                idx = idx + 2
                t = mem[idx + 513 len 1]
                t = mem[idx + 512 len 1]
                t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244)
                continue 
            idx = idx + 2
            t = mem[idx + 513 len 1] - 48
            t = mem[idx + 512 len 1]
            t = (256 * t) + mem[idx + 513 len 1] + (Mask(8, 248, mem[idx + 512]) >> 244) - 48
            continue 
        if mem[idx + 513 len 1] >= 97:
            if mem[idx + 513 len 1] <= 102:
                idx = idx + 2
                t = mem[idx + 513 len 1] - 87
                t = mem[idx + 512 len 1] - 48
                t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 48) - 87
                continue 
        if mem[idx + 513 len 1] < 48:
            idx = idx + 2
            t = mem[idx + 513 len 1]
            t = mem[idx + 512 len 1] - 48
            t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 48)
            continue 
        if mem[idx + 513 len 1] > 57:
            idx = idx + 2
            t = mem[idx + 513 len 1]
            t = mem[idx + 512 len 1] - 48
            t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 48)
            continue 
        idx = idx + 2
        t = mem[idx + 513 len 1] - 48
        t = mem[idx + 512 len 1] - 48
        t = (256 * t) + mem[idx + 513 len 1] + (16 * mem[idx + 512 len 1] - 48) - 48
        continue 
    mem[608] = 64
    mem[640] = '58e2f335bbd6f2b0da93eae19342e730'
    mem[672] = '9654fbfeed9a214a1e5d835ac09cc226'
    mem[64] = 736
    mem[704] = 0
    idx = 2
    t = 0
    t = 0
    t = 0
    while idx < 42:
        require idx < 64
        require idx + 1 < 64
        if mem[idx + 640 len 1] >= 97:
            if mem[idx + 640 len 1] <= 102:
                if mem[idx + 641 len 1] >= 97:
                    if mem[idx + 641 len 1] <= 102:
                        idx = idx + 2
                        t = mem[idx + 641 len 1] - 87
                        t = mem[idx + 640 len 1] - 87
                        t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 87) - 87
                        continue 
                if mem[idx + 641 len 1] < 48:
                    idx = idx + 2
                    t = mem[idx + 641 len 1]
                    t = mem[idx + 640 len 1] - 87
                    t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 87)
                    continue 
                if mem[idx + 641 len 1] > 57:
                    idx = idx + 2
                    t = mem[idx + 641 len 1]
                    t = mem[idx + 640 len 1] - 87
                    t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 87)
                    continue 
                idx = idx + 2
                t = mem[idx + 641 len 1] - 48
                t = mem[idx + 640 len 1] - 87
                t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 87) - 48
                continue 
        if mem[idx + 640 len 1] < 48:
            if mem[idx + 641 len 1] >= 97:
                if mem[idx + 641 len 1] <= 102:
                    idx = idx + 2
                    t = mem[idx + 641 len 1] - 87
                    t = mem[idx + 640 len 1]
                    t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244) - 87
                    continue 
            if mem[idx + 641 len 1] < 48:
                idx = idx + 2
                t = mem[idx + 641 len 1]
                t = mem[idx + 640 len 1]
                t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244)
                continue 
            if mem[idx + 641 len 1] > 57:
                idx = idx + 2
                t = mem[idx + 641 len 1]
                t = mem[idx + 640 len 1]
                t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244)
                continue 
            idx = idx + 2
            t = mem[idx + 641 len 1] - 48
            t = mem[idx + 640 len 1]
            t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244) - 48
            continue 
        if mem[idx + 640 len 1] > 57:
            if mem[idx + 641 len 1] >= 97:
                if mem[idx + 641 len 1] <= 102:
                    idx = idx + 2
                    t = mem[idx + 641 len 1] - 87
                    t = mem[idx + 640 len 1]
                    t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244) - 87
                    continue 
            if mem[idx + 641 len 1] < 48:
                idx = idx + 2
                t = mem[idx + 641 len 1]
                t = mem[idx + 640 len 1]
                t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244)
                continue 
            if mem[idx + 641 len 1] > 57:
                idx = idx + 2
                t = mem[idx + 641 len 1]
                t = mem[idx + 640 len 1]
                t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244)
                continue 
            idx = idx + 2
            t = mem[idx + 641 len 1] - 48
            t = mem[idx + 640 len 1]
            t = (256 * t) + mem[idx + 641 len 1] + (Mask(8, 248, mem[idx + 640]) >> 244) - 48
            continue 
        if mem[idx + 641 len 1] >= 97:
            if mem[idx + 641 len 1] <= 102:
                idx = idx + 2
                t = mem[idx + 641 len 1] - 87
                t = mem[idx + 640 len 1] - 48
                t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 48) - 87
                continue 
        if mem[idx + 641 len 1] < 48:
            idx = idx + 2
            t = mem[idx + 641 len 1]
            t = mem[idx + 640 len 1] - 48
            t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 48)
            continue 
        if mem[idx + 641 len 1] > 57:
            idx = idx + 2
            t = mem[idx + 641 len 1]
            t = mem[idx + 640 len 1] - 48
            t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 48)
            continue 
        idx = idx + 2
        t = mem[idx + 641 len 1] - 48
        t = mem[idx + 640 len 1] - 48
        t = (256 * t) + mem[idx + 641 len 1] + (16 * mem[idx + 640 len 1] - 48) - 48
        continue 
}



}
