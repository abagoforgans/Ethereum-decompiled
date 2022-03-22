contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    mem[96 len -116] = code.data[310 len -116]
    mem[64] = -20
    stor0 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    return code.data[194 len 116]
}



// =====================  Runtime code  =====================


array of address beneficiaries;

function beneficiaries(uint256 arg1) payable {
    require arg1 < beneficiaries.length
    return beneficiaries[arg1]
}

function _fallback() payable {
  stop
}



}
