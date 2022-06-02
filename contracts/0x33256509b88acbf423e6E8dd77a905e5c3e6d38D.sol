contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
address tokenRewardAddress;
mapping of uint8 stor2;

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function sub_af8bd5be(?) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    if not stor2[msg.sender]:
        stor2[msg.sender] = 1
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 20 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
