contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor0 = 0
    mem[96 len -1255] = code.data[1815 len -1255]
    mem[64] = -1159
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[160]
    stor5 = mem[192]
    stor6 = 1
    return code.data[560 len 1255]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
array of struct stor2;
uint256 stor3;
array of struct stor4;
uint256 stor5;
uint8 stor6;
array of uint256 stor7;

function _fallback() payable {
  stop
}

function endPoll() payable {
    if stor1 != msg.sender:
        return 0
    stor6 = 0
    return 1
}

function vote(string arg1) payable {
    if stor1 != msg.sender:
        return 0
    if stor6 != 1:
        return 0
    require stor0 < stor7.length
    stor7[stor0][] = Array(len=arg1.length, data=arg1[all])
    stor0++
    if stor3 > 0:
        if stor0 >= stor3:
            if msg.sender == stor1:
                stor6 = 0
    return 1
}

function p() payable {
    mem[320] = uint256(stor2.field_0)
    idx = 320
    s = 0
    while stor2.length + 320 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320] = stor4.length
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 352] = uint256(stor4.field_0)
    idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 352
    s = 0
    while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor4.length + 352 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1, 
           Array(len=stor2.length, data=mem[320 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32) + 32]),
           stor3,
           stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 224,
           stor5,
           stor6
}



}
