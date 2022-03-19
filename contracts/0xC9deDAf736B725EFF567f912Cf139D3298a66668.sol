contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 446]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_83d4a9b3(?) payable {
    mem[96] = 0
    mem[64] = 288
    mem[256] = 0
    mem[128] = 256
    s = 128
    idx = 4
    while idx - 1:
        mem[64] = mem[64] + 32
        mem[256] = 0
        mem[s + 32] = 256
        s = s + 32
        idx = idx - 1
        continue 
    _3 = mem[64]
    mem[64] = mem[64] + 192
    mem[_3 + 128] = 12
    mem[_3 + 160] = 'Chris DeRose'
    mem[_3] = _3 + 128
    _4 = mem[64]
    mem[64] = mem[64] + 64
    mem[_4] = 15
    mem[_4 + 32] = 'Vitalik Buterin'
    mem[_3 + 32] = _4
    _5 = mem[64]
    mem[64] = mem[64] + 64
    mem[_5] = 13
    mem[_5 + 32] = 'Joshua Unseth'
    mem[_3 + 64] = _5
    _6 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6] = 10
    mem[_6 + 32] = 'Lisa Chang'
    mem[_3 + 96] = _6
    require arg1 < 4
    _7 = mem[(32 * arg1) + _3]
    _8 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_7]
    _10 = mem[_7]
    mem[mem[64] + 64 len mem[_7]] = mem[_7 + 32 len mem[_7]]
    if not _10 % 32:
        return 32, mem[mem[64] + 32 len _10 + 32]
    mem[floor32(_10) + mem[64] + 64] = mem[floor32(_10) + mem[64] + -(_10 % 32) + 96 len _10 % 32]
    return memory
      from mem[64]
       len floor32(_10) + _8 + -mem[64] + 96
}



}
