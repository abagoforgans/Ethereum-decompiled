contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    mem[96 len -1279] = code.data[1848 len -1279]
    mem[64] = -1183
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[160]
    stor5 = mem[192]
    stor6 = 1
    stor7 = 0
    return code.data[569 len 1279]
}



// =====================  Runtime code  =====================


array of uint256 votes;
address stor1;
array of struct stor2;
uint256 stor3;
array of struct stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;

function votes(uint256 arg1) payable {
    require arg1 < votes.length
    return votes[arg1]
}

function _fallback() payable {
  stop
}

function endPoll() payable {
    if stor1 != msg.sender:
        return 0
    stor6 = 0
    return 1
}

function vote(bytes32 arg1) payable {
    if stor1 != msg.sender:
        return 0
    if stor6 != 1:
        return 0
    votes.length++
    if not votes.length <= votes.length + 1:
        idx = votes.length + 1
        while votes.length > idx:
            votes[idx] = 0
            idx = idx + 1
            continue 
    require votes.length < votes.length
    votes[votes.length] = arg1
    stor7++
    emit 0xd11f40af: arg1
    if stor3 > 0:
        if stor7 >= stor3:
            if msg.sender == stor1:
                stor6 = 0
    return 1
}

function p() payable {
    mem[352] = uint256(stor2.field_0)
    idx = 352
    s = 0
    while stor2.length + 352 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 352] = stor4.length
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 384] = uint256(stor4.field_0)
    idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 384
    s = 0
    while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor4.length + 384 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1, 
           Array(len=stor2.length, data=mem[352 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32) + 32]),
           stor3,
           stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 256,
           stor5,
           stor6,
           stor7
}



}
