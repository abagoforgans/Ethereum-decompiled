contract main {


// =======================  Init code  ======================


address stor2;
address stor3;

function _fallback() payable {
    stor2 = 0x744d70fdbe2ba4cf95131626614a1763df805b9e
    stor3 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[100 len 840]
}



// =====================  Runtime code  =====================


mapping of uint256 snt_claimed;
uint256 total_snt_claimed;
address tokenAddress;
address stor3;

function total_snt_claimed() {
    return total_snt_claimed
}

function snt_claimed(address arg1) {
    return snt_claimed[arg1]
}

function token() {
    return tokenAddress
}

function withdraw() {
    snt_claimed[address(msg.sender)] = 0
    total_snt_claimed -= snt_claimed[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, snt_claimed[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}

function claim() payable {
    require block.number >= 3915000
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] - total_snt_claimed >= 2 * (-3915000 * msg.value) + (block.number * msg.value)
    snt_claimed[address(msg.sender)] += 2 * (-3915000 * msg.value) + (block.number * msg.value)
    total_snt_claimed += 2 * (-3915000 * msg.value) + (block.number * msg.value)
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if not msg.value:
        snt_claimed[address(msg.sender)] = 0
        total_snt_claimed -= snt_claimed[address(msg.sender)]
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, snt_claimed[address(msg.sender)]
        require ext_call.success
        require ext_call.return_data[0]
    require block.number >= 3915000
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] - total_snt_claimed >= 2 * (-3915000 * msg.value) + (block.number * msg.value)
    snt_claimed[address(msg.sender)] += 2 * (-3915000 * msg.value) + (block.number * msg.value)
    total_snt_claimed += 2 * (-3915000 * msg.value) + (block.number * msg.value)
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
