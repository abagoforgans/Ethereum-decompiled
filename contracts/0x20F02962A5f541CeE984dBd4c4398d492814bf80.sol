contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -623] = code.data[838 len -623]
    mem[64] = -527
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
    return code.data[215 len 623]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint256 stor2;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function greet() payable {
    mem[160] = stor1.length
    if not stor1.length:
        emit 0xefdeaaf5: 32, stor1.length
        stor2++
    else:
        mem[192] = uint256(stor1.field_0)
        idx = 192
        s = 0
        while stor1.length + 192 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xefdeaaf5: Array(len=stor1.length, data=mem[192 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32)])
        stor2++
        if stor1.length:
            mem[160] = uint256(stor1.field_0)
            idx = 160
            s = 0
            while stor1.length + 128 > idx:
                mem[idx + 32] = stor1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}



}
