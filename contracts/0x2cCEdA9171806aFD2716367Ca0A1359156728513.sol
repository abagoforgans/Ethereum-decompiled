contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    mem[96 len -488] = code.data[703 len -488]
    mem[64] = -392
    require mem[mem[96] + 96] != 0
    require mem[mem[96] + 96] <= 4
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
    return code.data[215 len 488]
}



// =====================  Runtime code  =====================


array of address sub_0a39ce02;

function sub_0a39ce02(?) {
    require arg1 < sub_0a39ce02.length
    return sub_0a39ce02[arg1]
}

function _fallback() payable {
    emit Payment(msg.sender, msg.value);
}

function payout() {
    require sub_0a39ce02.length
    emit Payout(0, eth.balance(this.address));
    idx = 0
    while idx < sub_0a39ce02.length:
        call sub_0a39ce02[idx] with:
           value eth.balance(this.address) / sub_0a39ce02.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_0a39ce02.length
        mem[0] = 0
        mem[96] = sub_0a39ce02[idx]
        mem[128] = eth.balance(this.address) / sub_0a39ce02.length
        emit Payout(sub_0a39ce02[idx], eth.balance(this.address) / sub_0a39ce02.length);
        idx = idx + 1
        continue 
}



}
