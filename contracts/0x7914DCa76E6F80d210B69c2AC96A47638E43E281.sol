contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1419]




// =====================  Runtime code  =====================


array of uint256 votes;
uint256 stor1;
address stor2;
uint256 stor2;
uint256 stor3;
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
    if address(stor2) != msg.sender:
        return 0
    stor6 = 1
    return 1
}

function sub_03c79452(?) payable {
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    stor3 = arg1
    stor4 = arg2
    stor5[].field_0 = Array(len=arg3.length, data=arg3[all])
    stor6 = 0
}

function vote(bytes32 arg1) payable {
    if address(stor2) != msg.sender:
        return 0
    if stor6 == 1:
        return 0
    require stor1 < votes.length
    votes[stor1] = arg1
    stor1++
    emit 0x58b57dcb: arg1
    if votes.length >= stor4:
        if msg.sender == address(stor2):
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
    return address(stor2), 
           stor3,
           stor4,
           Array(len=stor5.length, data=mem[288 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]),
           stor6
}



}
