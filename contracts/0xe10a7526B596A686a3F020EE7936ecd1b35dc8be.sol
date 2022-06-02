contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOfThis;

function balanceOfThis(address arg1) {
    return balanceOfThis[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function price() {
    return price
}

function _fallback() payable {
    balanceOfThis[msg.sender] += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function sub_66b6b666(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
