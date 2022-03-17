contract main {


// =======================  Init code  ======================


uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint8 stor7;

function _fallback() payable {
    mem[96 len -1724] = code.data[2276 len -1724]
    mem[64] = -1628
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[160]
    stor6 = mem[192]
    stor7 = 1
    return code.data[552 len 1724]
}



// =====================  Runtime code  =====================


array of uint256 votes;
uint256 stor1;
address stor2;
array of struct stor3;
uint256 stor4;
array of struct stor5;
uint256 stor6;
uint8 stor7;

function votes(uint256 arg1) payable {
    return votes[arg1][0 len votes[arg1].length]
}

function _fallback() payable {
  stop
}

function endPoll() payable {
    if stor2 != msg.sender:
        return 0
    stor7 = 0
    return 1
}

function vote(string arg1) payable {
    if stor2 != msg.sender:
        return 0
    if stor7 != 1:
        return 0
    require stor1 < votes.length
    votes[stor1][] = Array(len=arg1.length, data=arg1[all])
    stor1++
    emit 0x38cb362e: Array(len=arg1.length, data=arg1[all])
    if stor4 > 0:
        if stor1 >= stor4:
            if msg.sender == stor2:
                stor7 = 0
    return 1
}

function p() payable {
    mem[320] = uint256(stor3.field_0)
    idx = 320
    s = 0
    while stor3.length + 320 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 320] = stor5.length
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 352] = uint256(stor5.field_0)
    idx = stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 352
    s = 0
    while stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor5.length + 352 > idx + 32:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor2, 
           Array(len=stor3.length, data=mem[320 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32) + 32]),
           stor4,
           stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 224,
           stor6,
           stor7
}



}
