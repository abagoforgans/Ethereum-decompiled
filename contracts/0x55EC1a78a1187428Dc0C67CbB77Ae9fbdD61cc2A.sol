contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -471] = code.data[700 len -471]
    mem[64] = -375
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
    return code.data[229 len 471]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
array of struct stor2;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function info() payable {
    require 6 < stor2.length
    uint256(stor2.field_1536) = stor1
    if stor2.length:
        mem[160] = uint256(stor2.field_0)
        idx = 160
        s = 0
        while (32 * stor2.length) + 128 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor2.length, data=mem[160 len 32 * stor2.length])
}



}
