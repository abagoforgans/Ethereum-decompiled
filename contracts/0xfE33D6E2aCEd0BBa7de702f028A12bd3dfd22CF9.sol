contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -465] = code.data[856 len -465]
    mem[64] = -369
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1.length = mem[mem[96] + 96]
    mem[0] = 1
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
    stor2.length = mem[mem[128] + 96]
    mem[0] = 2
    if not mem[mem[128] + 96]:
        idx = 0
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + mem[mem[128] + 96] + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[128] + 96] + 31) >> 5
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3 = mem[160]
    stor4 = mem[192]
    return code.data[391 len 465]
}



// =====================  Runtime code  =====================


const get = 0, 192, 224, 0, 0, 0, 0, 0, 0, 0, None


address stor0;

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
