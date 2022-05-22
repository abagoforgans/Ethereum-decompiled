contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function hashLoop(uint256 arg1, bytes32 arg2) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = arg2
    while idx < arg1:
        _11 = mem[64]
        mem[mem[64] + 32] = s
        _12 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _13 = mem[_12]
        t = _12 + 32
        u = _11 + 64
        s = mem[_12]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_11 + floor32(mem[_12]) + 64] = mem[_11 + floor32(mem[_12]) + 64] and 256^(-(mem[_12] % 32) + 32) - 1 or mem[_12 + floor32(mem[_12]) + 32] and !(256^(-(mem[_12] % 32) + 32) - 1)
        idx = idx + 1
        s = sha3(mem[mem[64] len _11 + _13 + -mem[64] + 64])
        continue 
    return s
}



}
