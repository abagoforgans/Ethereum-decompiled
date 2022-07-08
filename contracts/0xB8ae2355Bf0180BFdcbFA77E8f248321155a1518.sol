contract main {




// =====================  Runtime code  =====================


address owner;
address feeAccount1;
address feeAccount2;
address feeAccountToken;
mapping of struct seller;
uint256 stor5; offset 1
uint256 balanceOfEthFee;
uint256 feePercent;
uint256 maxFee;

function maxFee() {
    return maxFee
}

function getSellerAddressPayment(address arg1, uint256 arg2) {
    return seller[address(arg1)][arg2].field_256
}

function getBuyerAddressPayment(address arg1, uint256 arg2) {
    return seller[address(arg1)][arg2].field_0
}

function getValuePayment(address arg1, uint256 arg2) {
    return seller[address(arg1)][arg2].field_512
}

function balanceOfEthFee() {
    return balanceOfEthFee
}

function payment(address arg1, uint256 arg2) {
    return seller[arg1][arg2].field_0, seller[arg1][arg2].field_256, seller[arg1][arg2].field_512, seller[arg1][arg2].field_768
}

function feeAccount2() {
    return feeAccount2
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function getCurrencyPayment(address arg1, uint256 arg2) {
    return seller[address(arg1)][arg2].field_768
}

function feeAccount1() {
    return feeAccount1
}

function feeAccountToken() {
    return feeAccountToken
}

function setFeeAccount1(address arg1) {
    require msg.sender == owner
    feeAccount1 = arg1
}

function setFeeAccount2(address arg1) {
    require msg.sender == owner
    feeAccount2 = arg1
}

function setFeeAccountToken(address arg1) {
    require msg.sender == owner
    feeAccountToken = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setFeePercent(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= maxFee
    feePercent = arg1
}

function balanceOfToken(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferFee() {
    require msg.sender == owner
    call feeAccount1 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor5 <= balanceOfEthFee
    balanceOfEthFee -= stor5
    call feeAccount2 with:
       value balanceOfEthFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balanceOfEthFee = 0
}

function payToken(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require arg1
    require arg2
    require arg4 > 0
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg4
    if not arg4:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feeAccountToken, 0
    else:
        require arg4
        require arg4 * feePercent / arg4 == feePercent
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feeAccountToken, arg4 * feePercent / 100 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg4:
        require 0 <= arg4
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg4
    else:
        require arg4
        require arg4 * feePercent / arg4 == feePercent
        require arg4 * feePercent / 100 * 10^6 <= arg4
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg4 - (arg4 * feePercent / 100 * 10^6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seller[address(arg2)][arg3].field_0 = msg.sender
    seller[address(arg2)][arg3].field_256 = arg2
    seller[address(arg2)][arg3].field_512 = arg4
    seller[address(arg2)][arg3].field_768 = arg1
    return 1
}

function _fallback() payable {
    require calldata.size == 20
    require msg.value > 99999999999
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    idx = 20
    s = 1
    t = 0
    while idx > 0:
        require idx - 1 < calldata.size
        idx = idx - 1
        s = 256 * s
        t = t + (mem[idx + 127 len 1] * s)
        continue 
    if not msg.value / 10^10:
        require 0 <= msg.value
        require balanceOfEthFee + msg.value >= balanceOfEthFee
        balanceOfEthFee += msg.value
        revert
    require msg.value / 10^10
    require 10^10 * msg.value / 10^10 / msg.value / 10^10 == 10^10
    require 10^10 * msg.value / 10^10 <= msg.value
    require balanceOfEthFee + msg.value - (10^10 * msg.value / 10^10) >= balanceOfEthFee
    balanceOfEthFee = balanceOfEthFee + msg.value - (10^10 * msg.value / 10^10)
    require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)
    require 10^10 * msg.value / 10^10 > 0
    if not 10^10 * msg.value / 10^10:
        require 0 <= 10^10 * msg.value / 10^10
        call address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) with:
           value 10^10 * msg.value / 10^10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require balanceOfEthFee >= balanceOfEthFee
    else:
        require 10^10 * msg.value / 10^10
        require 10^10 * msg.value / 10^10 * feePercent / 10^10 * msg.value / 10^10 == feePercent
        require 10^10 * msg.value / 10^10 * feePercent / 100 * 10^6 <= 10^10 * msg.value / 10^10
        call address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) with:
           value (10^10 * msg.value / 10^10) - (10^10 * msg.value / 10^10 * feePercent / 100 * 10^6) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require balanceOfEthFee + (10^10 * msg.value / 10^10 * feePercent / 100 * 10^6) >= balanceOfEthFee
        balanceOfEthFee += 10^10 * msg.value / 10^10 * feePercent / 100 * 10^6
    seller[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)][msg.value - (10^10 * msg.value / 10^10)].field_0 = msg.sender
    seller[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)][msg.value - (10^10 * msg.value / 10^10)].field_256 = address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)
    seller[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)][msg.value - (10^10 * msg.value / 10^10)].field_512 = 10^10 * msg.value / 10^10
    seller[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)][msg.value - (10^10 * msg.value / 10^10)].field_768 = 1
    seller[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)][msg.value - (10^10 * msg.value / 10^10)].field_776 = 0
}



}
