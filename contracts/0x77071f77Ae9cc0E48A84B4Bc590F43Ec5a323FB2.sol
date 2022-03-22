contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2637]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
array of struct stor1;

function _fallback() payable {
  stop
}

function Join(uint256 arg1) payable {
    if arg1 < 1:
        return 0
    if stor0[address(msg.sender)] > 0:
        return 0
    stor0[address(msg.sender)] = arg1
    return 1
}

function sub_4115ae40(?) payable {
    mem[96] = 0
    if stor0[address(arg1)] <= 0:
        return 0
    mem[32] = 1
    mem[64] = (32 * stor1[address(arg1)].field_0) + 160
    mem[128] = stor1[address(arg1)].field_0
    s = 160
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        _30 = mem[64]
        mem[64] = mem[64] + 96
        mem[_30] = stor1[address(arg1)][idx].field_0
        _31 = mem[64]
        mem[64] = mem[64] + 224
        mem[_31] = stor1[address(arg1)][idx].field_256
        t = _31
        u = (9 * idx) + sha3(sha3(address(arg1), 1)) + 1
        while _31 + 224 > t + 32:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[_30 + 32] = _31
        mem[_30 + 64] = stor1[address(arg1)][idx].field_2048
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    s = 80
    idx = 0
    while idx < mem[128]:
        require idx < mem[128]
        if mem[mem[(32 * idx) + 160] + 64] >= s:
            s = s
            idx = idx + 1
            continue 
        require idx < mem[128]
        s = mem[mem[(32 * idx) + 160] + 64]
        idx = idx + 1
        continue 
    return s
}

function sub_ea64fff6(?) payable {
    mem[96] = 0
    if stor0[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        mem[64] = (32 * stor1[address(arg1)].field_0) + 160
        mem[128] = stor1[address(arg1)].field_0
        s = 160
        idx = 0
        while idx < stor1[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 1)
            _46 = mem[64]
            mem[64] = mem[64] + 96
            mem[_46] = stor1[address(arg1)][idx].field_0
            _47 = mem[64]
            mem[64] = mem[64] + 224
            mem[_47] = stor1[address(arg1)][idx].field_256
            t = _47
            u = (9 * idx) + sha3(sha3(address(arg1), 1)) + 1
            while _47 + 224 > t + 32:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_46 + 32] = _47
            mem[_46 + 64] = stor1[address(arg1)][idx].field_2048
            mem[s] = _46
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[128]:
            require idx < mem[128]
            if mem[mem[(32 * idx) + 160]] == arg2:
                require idx < mem[128]
                if var21005 < 7:
                    require idx < mem[128]
                    require var23003 < 7
                    require idx < mem[128]
                    t = var23002
                    s = var23003
                    while s + 1 < 7:
                        require idx < mem[128]
                        require s + 1 < 7
                        require idx < mem[128]
                        t = t + mem[(32 * var23003) + mem[mem[(32 * idx) + 160] + 32]]
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_18c6331d(?) payable {
    mem[96 len 224] = call.data[68 len 224]
    mem[320] = 0
    if stor1[address(msg.sender)].field_0 < 1:
        return 0
    mem[0] = msg.sender
    mem[32] = 1
    mem[64] = (32 * stor1[address(msg.sender)].field_0) + 384
    mem[352] = stor1[address(msg.sender)].field_0
    s = 384
    idx = 0
    while idx < stor1[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        _82 = mem[64]
        mem[64] = mem[64] + 96
        mem[_82] = stor1[address(msg.sender)][idx].field_0
        _83 = mem[64]
        mem[64] = mem[64] + 224
        mem[_83] = stor1[address(msg.sender)][idx].field_256
        t = _83
        u = (9 * idx) + sha3(sha3(address(msg.sender), 1)) + 1
        while _83 + 224 > t + 32:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[_82 + 32] = _83
        mem[_82 + 64] = stor1[address(msg.sender)][idx].field_2048
        mem[s] = _82
        s = s + 32
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < mem[352]:
        require idx < mem[352]
        if mem[mem[(32 * idx) + 384]] != arg1:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    if s:
        return 0
    stor1[address(msg.sender)].field_0++
    if not stor1[address(msg.sender)].field_0 <= stor1[address(msg.sender)].field_0 + 1:
        idx = (9 * stor1[address(msg.sender)].field_0) + 9
        while 9 * stor1[address(msg.sender)].field_0 > idx:
            stor1[address(msg.sender)][idx].field_0 = 0
            s = s + sha3(sha3(address(msg.sender), 1)) + 1
            while 1:
                stor1[address(msg.sender)][s].field_0 = 0
                s = s + 1
                continue 
            stor1[address(msg.sender)][s].field_2048 = 0
            s = s + 1
            continue 
    require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = arg1
    require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
    s = (9 * stor1[address(msg.sender)].field_0) + 1
    idx = 96
    while 320 > idx:
        stor1[address(msg.sender)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (9 * stor1[address(msg.sender)].field_0) + 8
    while (9 * stor1[address(msg.sender)].field_0) + 8 > idx:
        stor1[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_2048 = arg2
    return 1
}



}
