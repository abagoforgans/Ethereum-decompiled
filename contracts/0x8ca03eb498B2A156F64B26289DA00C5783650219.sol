contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() {
    stor0 = code.data[748 len 20]
    stor1 = 10^15 * code.data[768 len 32]
    stor2 = code.data[812 len 20]
    return code.data[133 len 603]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 sub_d67476eb;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_d67476eb(?) {
    return sub_d67476eb
}

function _fallback() payable {
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[address(msg.sender)] = msg.value
    require sub_d67476eb
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / sub_d67476eb
    require ext_call.success
}



}
