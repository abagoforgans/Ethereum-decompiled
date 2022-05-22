contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    revert
}

function rand() {
    mem[0] = msg.sender
    mem[32] = 1
    stor1[msg.sender]++
    mem[128] = stor0
    mem[160] = stor1[msg.sender]
    mem[96] = 64
    mem[64] = 192
    mem[192 len 64] = stor0, stor1[msg.sender]
    mem[256] = None or mem[256]
    idx = 0
    s = sha3(mem[mem[64] len mem[96] + -mem[64] + 192])
    while idx < (stor1[msg.sender] % 11) + 10:
        _41 = mem[64]
        mem[mem[64] + 32] = s
        _42 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _43 = mem[_42]
        t = _42 + 32
        u = _41 + 64
        s = mem[_42]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_41 + floor32(mem[_42]) + 64] = mem[_41 + floor32(mem[_42]) + 64] and 256^(-(mem[_42] % 32) + 32) - 1 or mem[_42 + floor32(mem[_42]) + 32] and !(256^(-(mem[_42] % 32) + 32) - 1)
        idx = idx + 1
        s = sha3(mem[mem[64] len _41 + _43 + -mem[64] + 64])
        continue 
    stor0 = s
    emit NewRand(msg.sender, (stor1[msg.sender] % 11) + 10, s);
    return s
}



}
