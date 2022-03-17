contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    mem[96 len -957] = code.data[1269 len -957]
    mem[64] = -861
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = mem[96]
    stor4 = mem[128]
    stor5.length = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        idx = 0
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor5[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor6 = 0
    return code.data[312 len 957]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
bool stor1;
uint256 stor1; offset 1
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint8 stor6;

function _fallback() payable {
  stop
}

function p() payable {
    return stor2, stor3, stor4, stor6
}

function endPoll() payable {
    if stor2 != msg.sender:
        return 0
    stor6 = 1
    return 1
}

function votes(uint256 arg1) payable {
    require arg1 < stor0.length
    return (stor0[0.5 / arg1] / 256^(16 * bool(arg1)) << 128)
}

function sub_7d56c366(?) payable {
    if stor2 != msg.sender:
        return 0
    if stor6 == 1:
        return 0
    require uint256(stor1.field_0) < stor0.length
    stor0[uint255(stor1.field_1)] = arg1 * 256^(16 * bool(stor1.field_0)) or !(test266151307() * 256^(16 * bool(stor1.field_0))) and stor0[uint255(stor1.field_1)]
    uint256(stor1.field_0)++
    emit 0x58b57dcb: arg1
    if stor0.length >= stor4:
        if msg.sender == stor2:
            stor6 = 1
    return 1
}



}
