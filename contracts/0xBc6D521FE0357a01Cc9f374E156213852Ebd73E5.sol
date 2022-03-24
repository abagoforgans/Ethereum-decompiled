contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    mem[96 len -185] = code.data[379 len -185]
    mem[64] = -89
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
    return code.data[194 len 185]
}



// =====================  Runtime code  =====================


array of address stor0;

function _fallback() payable {
    idx = 0
    while idx < 1:
        require idx < stor0.length
        mem[0] = 0
        call stor0[idx] with:
           value eth.balance(this.address) wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function sendPayment() payable {
    idx = 0
    while idx < 1:
        require idx < stor0.length
        mem[0] = 0
        call stor0[idx] with:
           value eth.balance(this.address) wei
             gas 0 wei
        idx = idx + 1
        continue 
}



}
