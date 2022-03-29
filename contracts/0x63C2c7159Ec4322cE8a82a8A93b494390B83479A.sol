contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;

function _fallback() {
    mem[96 len -926] = code.data[1266 len -926]
    mem[64] = -830
    stor0 = msg.sender
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[160]
    stor4 = mem[192]
    stor5 = 1
    stor6 = 0
    return code.data[340 len 926]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint256 stor2;
array of struct stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;

function _fallback() payable {
    revert
}

function endPoll() {
    if stor0 != msg.sender:
        return 0
    stor5 = 0
    return 1
}

function vote(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if stor0 != msg.sender:
        return 0
    if bool(stor5) != 1:
        return 0
    stor6++
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit NewVote(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length]));
    if stor2 > 0:
        if stor6 >= stor2:
            if stor0 == msg.sender:
                stor5 = 0
    return 1
}

function p() {
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
           bool(stor5),
           stor6
}



}
