contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    mem[96 len -1009] = code.data[1661 len -1009]
    mem[64] = -913
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[0] = 3
    stor3.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4.length = (2 * mem[mem[160] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor5 = mem[192]
    stor6 = 0
    stor7 = mem[224]
    stor8 = 1
    return code.data[652 len 1009]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
mapping of uint8 hasVoted;

function hasVoted(address arg1) payable {
    return hasVoted[arg1]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function vote(string arg1) payable {
    if stor8 != 1:
        return 0
    if hasVoted[address(msg.sender)]:
        return 0
    stor6++
    emit 0xe4f1f218: Array(len=arg1.length, data=arg1[all]), msg.sender
    hasVoted[address(msg.sender)] = 1
    if stor5 > 0:
        if stor6 >= stor5:
            stor8 = 0
    return 1
}

function p() payable {
    mem[384] = uint256(stor2.field_0)
    idx = 384
    s = 0
    while stor2.length + 384 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 384] = stor3.length
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 416] = uint256(stor3.field_0)
    idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 416
    s = 0
    while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + 416 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 448] = uint256(stor4.field_0)
    idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 448
    s = 0
    while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor4.length + 448 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1, 
           Array(len=stor2.length, data=mem[384 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 32], stor4.length, mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 448 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]),
           stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 288,
           stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 320,
           stor5,
           stor6,
           stor7,
           stor8
}



}
