contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3842]




// =====================  Runtime code  =====================


array of uint256 stor1;

function _fallback() payable {
    revert
}

function sub_76a8de2a(?) payable {
    uint256(stor[arg1].field_0) = arg2
}

function sub_179d3059(?) payable {
    if arg2 != msg.sender:
        return 1, 0, 0, 0
    if uint256(stor[arg1].field_0) <= 0:
        return 2, 0, 0, 0
    idx = 0
    s = 8193
    t = 0
    u = 0
    while idx < uint256(stor[arg1].field_0):
        mem[0] = arg1
        if uint16(stor[(2 * idx) + sha3(arg1)].field_160) >= uint16(s):
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < uint256(stor[arg1].field_0)
        mem[0] = arg1
        idx = idx + 1
        s = uint16(stor[(2 * idx) + sha3(arg1)].field_160)
        t = uint256(stor[(2 * idx) + sha3(arg1) + 1].field_0)
        u = address(stor[(2 * idx) + sha3(arg1)].field_0)
        continue 
    return 0, address(u), t, uint16(s)
}

function sub_dd26031f(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if uint256(stor[arg1][address(msg.sender)].field_0):
        return 1
    idx = 0
    while idx < arg2.length:
        mem[32] = arg1
        uint256(stor[arg1][address(msg.sender)].field_0)++
        if not uint256(stor[arg1][address(msg.sender)].field_0) <= uint256(stor[arg1][address(msg.sender)].field_0) + 1:
            s = sha3(sha3(address(msg.sender), arg1)) + uint256(stor[arg1][address(msg.sender)].field_0) + 1
            while sha3(sha3(address(msg.sender), arg1)) + uint256(stor[arg1][address(msg.sender)].field_0) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        mem[0] = sha3(address(msg.sender), arg1)
        require idx < arg2.length
        uint256(stor[arg1][address(msg.sender)][uint256(stor[arg1][address(msg.sender)].field_0)].field_0) = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 0
}

function sub_5d5d5cb1(?) payable {
    mem[96 len 1024] = call.data[100 len 1024]
    if arg3 != msg.sender:
        return 1
    mem[64] = 1248
    mem[1120] = 0
    mem[1152 len 96] = 0
    idx = 0
    s = 0
    while uint8(idx) < 32:
        require uint8(idx + 1) < 32
        _19 = mem[(32 * uint8(idx + 1)) + 96]
        require uint8(idx + 2) < 32
        _21 = mem[(32 * uint8(idx + 2)) + 96]
        require uint8(idx + 3) < 32
        _26 = mem[(32 * uint8(idx + 3)) + 96]
        require uint8(idx + 4) < 32
        _27 = mem[(32 * uint8(idx + 4)) + 96]
        require uint8(idx + 5) < 32
        _28 = mem[(32 * uint8(idx + 5)) + 96]
        require uint8(idx + 6) < 32
        _29 = mem[(32 * uint8(idx + 6)) + 96]
        require uint8(idx + 7) < 32
        _30 = mem[(32 * uint8(idx + 7)) + 96]
        mem[mem[64]] = mem[(32 * uint8(idx)) + 96]
        mem[mem[64] + 32] = _19
        mem[mem[64] + 64] = _21
        mem[mem[64] + 96] = _26
        mem[mem[64] + 128] = _27
        mem[mem[64] + 160] = _28
        mem[mem[64] + 192] = _29
        mem[mem[64] + 224] = _30
        require uint8(s) < 4
        mem[(32 * uint8(s)) + 1120] = sha3(mem[mem[64]], _19, _21, _26, _27, _28, _29, _30)
        idx = idx + 8
        s = s + 1
        continue 
    _18 = mem[1152]
    _20 = mem[1184]
    _22 = mem[1216]
    mem[mem[64]] = mem[1120]
    mem[mem[64] + 32] = _18
    mem[mem[64] + 64] = _20
    mem[mem[64] + 96] = _22
    mem[mem[64] + 128] = Mask(64, 192, arg4)
    if sha3(mem[mem[64]], _18, _20, _22, arg4) != uint256(stor[arg1].field_0):
        return 2
    s = arg2
    idx = 96
    while 1120 > idx:
        uint256(stor[Mask(253, 0, None + 7) >> 3].field_0) = mem[idx]
        s = (Mask(253, 0, None + 7) >> 3) + 1
        idx = idx + 32
        continue 
    idx = Mask(253, 0, None + 7) >> 3
    while arg2 + 32 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    return 0
}

function sub_24b9719d(?) payable {
    mem[96 len 1024] = call.data[100 len 1024]
    mem[1120 len 512] = call.data[1156 len 512]
    mem[1632] = 0
    mem[1664] = 0
    mem[1696] = 0
    mem[0] = msg.sender
    mem[32] = arg2
    if uint256(stor[arg2][address(msg.sender)].field_0) <= 0:
        return 2
    mem[64] = 1856
    mem[1728] = 0
    mem[1760 len 96] = 0
    idx = 0
    s = 0
    while uint8(idx) < 32:
        require uint8(idx + 1) < 32
        _22 = mem[(32 * uint8(idx + 1)) + 96]
        require uint8(idx + 2) < 32
        _24 = mem[(32 * uint8(idx + 2)) + 96]
        require uint8(idx + 3) < 32
        _29 = mem[(32 * uint8(idx + 3)) + 96]
        require uint8(idx + 4) < 32
        _30 = mem[(32 * uint8(idx + 4)) + 96]
        require uint8(idx + 5) < 32
        _32 = mem[(32 * uint8(idx + 5)) + 96]
        require uint8(idx + 6) < 32
        _34 = mem[(32 * uint8(idx + 6)) + 96]
        require uint8(idx + 7) < 32
        _36 = mem[(32 * uint8(idx + 7)) + 96]
        mem[mem[64]] = mem[(32 * uint8(idx)) + 96]
        mem[mem[64] + 32] = _22
        mem[mem[64] + 64] = _24
        mem[mem[64] + 96] = _29
        mem[mem[64] + 128] = _30
        mem[mem[64] + 160] = _32
        mem[mem[64] + 192] = _34
        mem[mem[64] + 224] = _36
        require uint8(s) < 4
        mem[(32 * uint8(s)) + 1728] = sha3(mem[mem[64]], _22, _24, _29, _30, _32, _34, _36)
        idx = idx + 8
        s = s + 1
        continue 
    _21 = mem[1760]
    _23 = mem[1792]
    _25 = mem[1824]
    mem[mem[64]] = mem[1728]
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64] = _23
    mem[mem[64] + 96] = _25
    mem[mem[64] + 128] = Mask(64, 192, arg4)
    _28 = sha3(mem[mem[64]], _21, _23, _25, arg4)
    mem[0] = msg.sender
    mem[32] = arg2
    idx = 0
    while idx < uint256(stor[arg2][address(msg.sender)].field_0):
        mem[32] = arg2
        require idx < uint256(stor[arg2][address(msg.sender)].field_0)
        mem[0] = sha3(address(msg.sender), arg2)
        if _28 != uint256(stor[arg2][address(msg.sender)][idx].field_0):
            mem[0] = msg.sender
            mem[32] = arg2
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[64] = mem[64] + 1024
        mem[_46] = uint256(stor[arg1].field_0)
        s = _46
        t = arg1
        while _46 + 1024 > s + 32:
            mem[0] = msg.sender
            mem[32] = arg2
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        t = 0
        t = 0
        s = 0
        t = 0
        while uint8(s) < 32:
            _56 = mem[(32 * uint8(s)) + _46]
            idx = 0
            u = t
            while uint8(idx) < 32:
                require uint8(idx) < 32
                mem[0] = msg.sender
                mem[32] = arg2
                idx = idx + 1
                u = u + (2 * mem[1151 len 1])
                continue 
            mem[0] = msg.sender
            mem[32] = arg2
            t = None
            t = _56 xor mem[(32 * uint8(s)) + 96]
            s = s + 1
            t = t + (t * None) + (t * None * None) + (t * None * None * None) + (t * None * None * None * None) + (t * None * None * None * None * None) + (t * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            continue 
        uint256(stor[arg3].field_0)++
        if not uint256(stor[arg3].field_0) > uint256(stor[arg3].field_0) + 1:
            address(stor[(2 * uint256(stor[arg3].field_0)) + sha3(arg3)].field_0) = msg.sender
            uint16(stor[(2 * uint256(stor[arg3].field_0)) + sha3(arg3)].field_160) = uint16(t)
        else:
            mem[0] = arg3
            s = sha3(mem[0]) + (2 * uint256(stor[arg3].field_0) + 1)
            while sha3(arg3) + (2 * uint256(stor[arg3].field_0)) > s:
                address(stor[s].field_0) = 0
                uint16(stor[s].field_160) = 0
                stor1[s] = 0
                mem[0] = msg.sender
                mem[32] = arg2
                s = s + 2
                continue 
            address(stor[(2 * uint256(stor[arg3].field_0)) + sha3(arg3)].field_0) = msg.sender
            uint16(stor[(2 * uint256(stor[arg3].field_0)) + sha3(arg3)].field_160) = 0
        uint256(stor[(2 * uint256(stor[arg3].field_0)) + sha3(arg3) + 1].field_0) = idx
        return 0
    return 3
}



}
