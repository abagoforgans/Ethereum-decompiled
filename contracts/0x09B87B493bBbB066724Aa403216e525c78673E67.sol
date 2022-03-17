contract main {


// =======================  Init code  ======================


uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    mem[96 len -1158] = code.data[1684 len -1158]
    mem[64] = -1062
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[160]
    stor6 = 1
    return code.data[526 len 1158]
}



// =====================  Runtime code  =====================


array of uint256 votes;
uint256 stor1;
address stor2;
array of struct stor3;
uint256 stor4;
array of struct stor5;
uint8 stor6;

function votes(uint256 arg1) payable {
    require arg1 < votes.length
    return votes[arg1]
}

function _fallback() payable {
  stop
}

function endPoll() payable {
    if stor2 != msg.sender:
        return 0
    stor6 = 0
    return 1
}

function vote(bytes32 arg1) payable {
    if stor2 != msg.sender:
        return 0
    if stor6 != 1:
        return 0
    require stor1 < votes.length
    votes[stor1] = arg1
    stor1++
    emit 0x58b57dcb: arg1
    if stor4 > 0:
        if votes.length >= stor4:
            if msg.sender == stor2:
                stor6 = 0
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
