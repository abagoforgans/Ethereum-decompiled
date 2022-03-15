contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -280] = code.data[516 len -280]
    mem[64] = -184
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = mem[128]
    stor2.length = mem[mem[96] + 96]
    mem[0] = 2
    if not mem[mem[96] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[236 len 280]
}



// =====================  Runtime code  =====================


address stor0;
uint256 info;

function info() payable {
    return info
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
