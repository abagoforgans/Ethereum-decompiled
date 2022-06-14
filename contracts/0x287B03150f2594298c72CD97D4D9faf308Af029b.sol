contract main {




// =====================  Runtime code  =====================


address owner;
address feeAccount1;
address feeAccount2;
address feeAccountToken;
mapping of struct seller;
mapping of uint256 balances;
uint256 stor6; offset 1
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

function balances(address arg1) {
    return balances[arg1]
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

function getBalanceEth() {
    return balances[address(msg.sender)]
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

function _fallback() payable {
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}

function refund() {
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
       value stor6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor6 <= balanceOfEthFee
    balanceOfEthFee -= stor6
    call feeAccount2 with:
       value balanceOfEthFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balanceOfEthFee = 0
}

function payEth(address arg1, uint256 arg2, uint256 arg3) {
    require arg1
    require arg3 > 0
    require balances[address(msg.sender)] >= arg3
    if arg3:
        require arg3
        require arg3 * feePercent / arg3 == feePercent
    require arg3 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg3
    require arg3 * feePercent / 100 * 10^6 <= arg3
    call arg1 with:
       value arg3 - (arg3 * feePercent / 100 * 10^6) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require balanceOfEthFee + (arg3 * feePercent / 100 * 10^6) >= balanceOfEthFee
    balanceOfEthFee += arg3 * feePercent / 100 * 10^6
    seller[address(arg1)][arg2].field_0 = msg.sender
    seller[address(arg1)][arg2].field_256 = arg1
    seller[address(arg1)][arg2].field_512 = arg3
    seller[address(arg1)][arg2].field_768 = 1
    seller[address(arg1)][arg2].field_776 = 0
    return 1
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
    if arg4:
        require arg4
        require arg4 * feePercent / arg4 == feePercent
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeAccountToken, arg4 * feePercent / 100 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
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



}
