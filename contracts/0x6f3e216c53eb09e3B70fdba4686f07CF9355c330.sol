contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 945]




// =====================  Runtime code  =====================


array of uint256 stor0;

function sub_189b36b4(?) payable {
    require arg1 < stor0.length
    require arg2 < 6
    return sub_189b36b4[uint8(arg2)]
}

function sub_c2cb6749(?) payable {
    require arg1 < 2
    require arg2 < 2
    return sub_c2cb6749[uint8(arg2)]
}

function _fallback() payable {
  stop
}

function sub_3c6aef56(?) payable {
    mem[64] = 160
    s = 96
    idx = 0
    while idx < 2:
        _3 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3 len 64] = call.data[(64 * idx) + 4 len 64]
        mem[s] = _3
        s = s + 32
        idx = idx + 1
        continue 
    s = 1
    idx = 96
    while 160 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 64 > u:
            uint256(stor[s]) = mem[u] * 256^t or !(255 * 256^t) and uint256(stor[s])
            t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
            u = u + 32
            continue 
        u = t
        v = s
        while u:
            uint256(stor[v]) = !(255 * 256^u) and uint256(stor[v])
            u = u + -(u + 1 / 32) + (-1 * u * u + 1 / 32) + 1
            v = (u + 1 / 32) + v
            continue 
        u = s + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (t * None + 3 / 32)
        while s + 1 > u:
            uint8(stor[u]) = 0
            u = u + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while 3 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_d44b75ff(?) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    s = 128
    idx = 0
    while idx < arg1.length:
        _7 = mem[64]
        mem[64] = mem[64] + 192
        mem[_7 len 192] = call.data[arg1 + (192 * idx) + 36 len 192]
        mem[s] = _7
        s = s + 32
        idx = idx + 1
        continue 
    stor0.length = mem[96]
    mem[0] = 0
    if not mem[96]:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            t = 0
            u = mem[idx]
            while mem[idx] + 192 > u:
                uint256(stor[s]) = mem[u] * 256^t or !(255 * 256^t) and uint256(stor[s])
                t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                u = u + 32
                continue 
            u = t
            v = s
            while u:
                uint256(stor[v]) = !(255 * 256^u) and uint256(stor[v])
                u = u + -(u + 1 / 32) + (-1 * u * u + 1 / 32) + 1
                v = (u + 1 / 32) + v
                continue 
            u = s + (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (t * None + 3 / 32)
            while s + 1 > u:
                uint8(stor[u]) = 0
                u = u + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while stor0.length + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}



}
