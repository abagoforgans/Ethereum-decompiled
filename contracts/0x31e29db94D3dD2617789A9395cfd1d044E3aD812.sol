contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() {
    stor1 = msg.sender
    stor0 = code.data[1456 len 20]
    stor2 = code.data[1476 len 32]
    stor3 = code.data[1520 len 20]
    return code.data[280 len 1164]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address sub_02946804Address;
uint256 price;
address tokenRewardAddress;

function sub_02946804(?) {
    return sub_02946804Address
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
    call sub_02946804Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10000 * msg.value / price
        require ext_call.success
        emit FundTransfer(msg.sender, msg.value, 1);
        emit FundTransfer(beneficiaryAddress, msg.value, 0);
}



}
