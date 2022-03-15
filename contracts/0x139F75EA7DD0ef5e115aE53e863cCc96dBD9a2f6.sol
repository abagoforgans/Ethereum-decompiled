contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    mem[128] = 'Etherparty'
    stor0.length = 10
    s = 0
    idx = 128
    while 138 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    return code.data[195 len 304]
}



// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function get() payable {
    if stor0.length:
        mem[160] = uint256(stor0.field_0)
        idx = 160
        s = 0
        while stor0.length + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[160 len stor0.length])
}



}
