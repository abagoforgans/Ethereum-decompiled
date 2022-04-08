contract main {


// =======================  Init code  ======================


address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor2 = 0x54e2dcb1e02d7cfd3b095f55ff4294735f8f5c30
    stor3 = 0x8547085a4d23eca68d5c921987722031d80194c5
    stor4 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[130 len 1062]
}



// =====================  Runtime code  =====================


mapping of uint256 pay_claimed;
uint256 total_pay_claimed;
address saleAddress;
address tokenAddress;
address stor4;

function pay_claimed(address arg1) {
    return pay_claimed[arg1]
}

function sale() {
    return saleAddress
}

function total_pay_claimed() {
    return total_pay_claimed
}

function token() {
    return tokenAddress
}

function buy() payable {
    require ext_code.size(saleAddress)
    call saleAddress.0xcedbbeee with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
}

function withdraw() {
    pay_claimed[address(msg.sender)] = 0
    total_pay_claimed -= pay_claimed[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, pay_claimed[address(msg.sender)]
    require ext_call.success
}

function claim() payable {
    require block.number >= 3920000
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] - total_pay_claimed >= block.number - 3920000 / 10 * msg.value
    pay_claimed[address(msg.sender)] += block.number - 3920000 / 10 * msg.value
    total_pay_claimed += block.number - 3920000 / 10 * msg.value
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if not msg.value:
        pay_claimed[address(msg.sender)] = 0
        total_pay_claimed -= pay_claimed[address(msg.sender)]
        if ext_code.size(tokenAddress):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, pay_claimed[address(msg.sender)]
            if ext_call.success:
    else:
        require block.number >= 3920000
        if ext_code.size(tokenAddress):
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                require ext_call.return_data[0] - total_pay_claimed >= block.number - 3920000 / 10 * msg.value
                pay_claimed[address(msg.sender)] += block.number - 3920000 / 10 * msg.value
                total_pay_claimed += block.number - 3920000 / 10 * msg.value
                call stor4 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert
}



}
