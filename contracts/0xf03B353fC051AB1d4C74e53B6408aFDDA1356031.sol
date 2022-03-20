contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -742] = code.data[982 len -742]
    mem[64] = -646
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[240 len 742]
}



// =====================  Runtime code  =====================


address owner;
mapping of address items;
uint256 count;
array of uint256 sub_ce90e9a3;

function count() payable {
    return count
}

function owner() payable {
    return owner
}

function items(uint256 arg1) payable {
    return address(items[arg1])
}

function sub_ce90e9a3(?) payable {
    return sub_ce90e9a3[0 len sub_ce90e9a3.length]
}

function _fallback() payable {
  stop
}

function register(address arg1) payable {
    uint256(items[stor2]) = arg1 or Mask(96, 160, uint256(items[stor2]))
    count++
}

function sub_4a3b2899(?) payable {
    require owner == msg.sender
    sub_ce90e9a3[] = Array(len=arg1.length, data=arg1[all])
}



}
