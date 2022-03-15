contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    stor1 = 0xbeb3b1d443791e4b2207a9866800e02dacf19c02
    mem[96 len -429] = code.data[728 len -429]
    mem[64] = -333
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = mem[128]
    stor3.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    return code.data[299 len 429]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor3;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function info() payable {
    if stor3.length:
        mem[160] = uint256(stor3.field_0)
        idx = 160
        s = 0
        while (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3.length, data=mem[160 len 32 * stor3.length])
}



}
