contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1289]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of struct stor1;
uint256 stor2;
array of struct stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;

function _fallback() payable {
  stop
}

function endPoll() payable {
    if address(stor0) != msg.sender:
        return 0
    stor5 = 0
    return 1
}

function vote(string arg1) payable {
    stor6++
    emit NewVote(Array(len=arg1.length, data=arg1[all]));
    if stor2 > 0:
        if stor6 >= stor2:
            if address(stor0) == msg.sender:
                stor5 = 0
    return 1
}

function NewPoll(string arg1, string arg2, uint256 arg3, uint256 arg4) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor3.length = (2 * arg1.length) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2 = arg3
    stor4 = arg4
    stor5 = 1
    stor6 = 0
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
    return address(stor0), 
           Array(len=stor1.length, data=mem[352 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 32]),
           stor2,
           stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 256,
           stor4,
           stor5,
           stor6
}



}
