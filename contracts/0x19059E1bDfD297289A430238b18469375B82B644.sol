contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -472] = code.data[639 len -472]
    mem[64] = -376
    stor0 = msg.sender or Mask(96, 160, stor0)
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
    return code.data[167 len 472]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of struct stor2;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function greet() payable {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while stor1.length + 160 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}

function books(uint256 arg1) payable {
    require arg1 < stor2.length
    if not stor2[arg1].field_0:
        return 32, stor2[arg1].field_0
    mem[160] = stor2[arg1].field_0
    idx = 160
    s = 0
    while stor2[arg1].field_0 + 160 > idx + 32:
        mem[idx + 32] = stor2[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1].field_0, data=mem[160 len stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32)]), 
}



}
