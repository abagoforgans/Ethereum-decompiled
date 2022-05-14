contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 price;
address tokenRewardAddress;

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function price() {
    return price
}

function sub_147011a7(?) {
    if beneficiaryAddress == msg.sender:
        price = arg2
        tokenRewardAddress = arg1
}

function safeWithdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7b05e437(?) {
    if beneficiaryAddress == msg.sender:
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
