contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
array of struct stor3;

function _fallback() payable {
    stor1 = 0xbeb3b1d443791e4b2207a9866800e02dacf19c02
    mem[96 len -983] = code.data[1424 len -983]
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2++
    mem[64] = -855
    stor3[stor2].field_0 = msg.sender or Mask(96, 160, stor3[stor2].field_0)
    stor3[stor2].field_256 = mem[128]
    stor3[stor2].field_512 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor3[stor2].field_512 > idx:
            stor3[stor2][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor3[stor2][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor3[stor2].field_512 > idx:
            stor3[stor2][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return code.data[441 len 983]
}



// =====================  Runtime code  =====================


#
#  - getInfo(uint256 arg1)
#
address stor0;
uint256 numEntries;

function getNumEntries() payable {
    return numEntries
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
