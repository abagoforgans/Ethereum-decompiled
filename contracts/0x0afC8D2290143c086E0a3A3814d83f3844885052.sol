contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 377]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function test() payable {
    mem[128] = 0
    mem[64] = 192
    mem[160] = 0
    s = 0
    s = 0
    idx = 0
    s = 39
    t = msg.sender
    while idx < 20:
        require s < mem[160]
        if t % 16 <= 9:
            mem[s + 192] = (t % 16) + 72 << 248
        else:
            mem[s + 192] = (t % 16) + 151 << 248
        require s - 1 < mem[160]
        if address(Mask(4, 4, t) / 15) <= 9:
            mem[s + 191] = address(Mask(4, 4, t) / 15) + 72 << 248
        else:
            mem[s + 191] = address(Mask(4, 4, t) / 15) + 151 << 248
        s = t % 16
        s = address(Mask(4, 4, t) / 15)
        idx = idx + 1
        s = s - 2
        t = t / 255
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[160]
    _12 = mem[160]
    mem[mem[64] + 64 len mem[160]] = mem[192 len mem[160]]
    if not _12 % 32:
        return 32, mem[mem[64] + 32 len _12 + 32]
    mem[floor32(_12) + mem[64] + 64] = mem[floor32(_12) + mem[64] + -(_12 % 32) + 96 len _12 % 32]
    return 32, mem[mem[64] + 32 len floor32(_12) + 64]
}



}
