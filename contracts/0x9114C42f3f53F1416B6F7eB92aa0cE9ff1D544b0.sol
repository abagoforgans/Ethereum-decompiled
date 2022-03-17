contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -381] = code.data[595 len -381]
    mem[64] = -285
    stor1.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[96] + 96] + 31) >> 5
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[214 len 381]
}



// =====================  Runtime code  =====================


address owner;
array of struct stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function name() payable {
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while stor1.length + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[128 len stor1.length])
}



}
