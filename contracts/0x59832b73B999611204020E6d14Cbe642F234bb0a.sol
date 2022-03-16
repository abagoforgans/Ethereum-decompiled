contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    mem[96 len -304] = code.data[475 len -304]
    mem[64] = -208
    stor0.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length + 31 / 32 > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor0[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[96] + 96] + 31) >> 5
        while stor0.length + 31 / 32 > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    return code.data[171 len 304]
}



// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function greet() payable {
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
