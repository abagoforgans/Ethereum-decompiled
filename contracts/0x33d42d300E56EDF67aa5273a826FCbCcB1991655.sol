contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    mem[96 len -1237] = code.data[1600 len -1237]
    mem[64] = -1141
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = mem[96]
    stor4 = mem[128]
    stor5[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor6 = 0
    return code.data[363 len 1237]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
bool stor1;
uint256 stor1; offset 1
uint256 stor1;
address stor2;
uint256 stor3;
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

function p() payable {
    mem[288] = uint256(stor5.field_0)
    idx = 288
    s = 0
    while stor5.length + 288 > idx + 32:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor2, 
           stor3,
           stor4,
           Array(len=stor5.length, data=mem[288 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]),
           stor6
}

function getVotes() payable {
    if stor0.length:
        mem[160] = stor0 / 256^0 << 128
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = stor0 / 256^((16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)) << 128
            idx = idx + 32
            s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
            continue 
    return Array(len=stor0.length, data=mem[160 len 32 * stor0.length])
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
