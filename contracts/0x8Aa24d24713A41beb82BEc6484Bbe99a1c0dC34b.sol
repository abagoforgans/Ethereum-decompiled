contract main {


// =======================  Init code  ======================


uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    mem[96 len -1231] = code.data[1757 len -1231]
    mem[64] = -1135
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[160]
    stor6 = 0
    return code.data[526 len 1231]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
bool stor1;
uint256 stor1; offset 1
uint256 stor1;
address stor2;
array of struct stor3;
uint256 stor4;
array of struct stor5;
uint8 stor6;

function _fallback() payable {
  stop
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

function p() payable {
    mem[288] = uint256(stor3.field_0)
    idx = 288
    s = 0
    while stor3.length + 288 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 288] = stor5.length
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 320] = uint256(stor5.field_0)
    idx = stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 320
    s = 0
    while stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor5.length + 320 > idx + 32:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor2, 
           Array(len=stor3.length, data=mem[288 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + 32]),
           stor4,
           stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 192,
           stor6
}



}
