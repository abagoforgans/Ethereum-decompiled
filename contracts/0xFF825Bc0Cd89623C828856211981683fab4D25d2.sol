contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;

function _fallback() payable {
    mem[96 len -1365] = code.data[1934 len -1365]
    mem[64] = -1269
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[160]
    stor4 = mem[192]
    stor5 = 1
    stor6 = 0
    return code.data[569 len 1365]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint256 stor2;
array of struct stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
array of struct stor7;

function _fallback() payable {
  stop
}

function endPoll() payable {
    if stor0 != msg.sender:
        return 0
    stor5 = 0
    return 1
}

function getVotes() payable {
    if stor7.length:
        mem[160] = uint256(stor7.field_0)
        idx = 160
        s = 0
        while (32 * stor7.length) + 128 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor7.length, data=mem[160 len 32 * stor7.length])
}

function vote(bytes32 arg1) payable {
    if stor0 != msg.sender:
        return 0
    if stor5 != 1:
        return 0
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    require stor7.length < stor7.length
    stor7[stor7.length].field_0 = arg1
    stor6++
    if stor2 > 0:
        if stor6 >= stor2:
            if msg.sender == stor0:
                stor5 = 0
    return 1
}

function p() payable {
    mem[352] = uint256(stor1.field_0)
    idx = 352
    s = 0
    while stor1.length + 352 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 352] = stor3.length
    mem[stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 384] = uint256(stor3.field_0)
    idx = stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 384
    s = 0
    while stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor3.length + 384 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0, 
           Array(len=stor1.length, data=mem[352 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 32]),
           stor2,
           stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 256,
           stor4,
           stor5,
           stor6
}



}
