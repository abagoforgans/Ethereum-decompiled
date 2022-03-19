contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;
uint64 stor3;
uint256 stor3; offset 64

function _fallback() payable {
    mem[96 len -749] = code.data[1053 len -749]
    mem[64] = -653
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint64(stor3.field_0) = uint64(1000 * block.timestamp)
    Mask(192, 0, stor3.field_64) = 0
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
    return code.data[304 len 749]
}



// =====================  Runtime code  =====================


address versionAddress;
array of struct stor2;
uint64 stor3;
uint256 stor3;

function getVersion() payable {
    return versionAddress
}

function kill() payable {
    selfdestruct(versionAddress)
}

function _fallback() payable {
  stop
}

function get() payable {
    mem[160] = uint256(stor2.field_0)
    idx = 160
    s = 0
    while stor2.length + 160 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2.length, data=mem[160 len stor2.length]), uint64(stor3), uint64(stor3)
}

function sub_4ec58e14(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if versionAddress == msg.sender:
        uint256(stor3) = 18446744073709551616000 * block.timestamp or Mask(128, 128, uint256(stor3)) or uint64(stor3)
        stor2.length = (2 * arg1.length) + 1
        s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        idx = 128
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
