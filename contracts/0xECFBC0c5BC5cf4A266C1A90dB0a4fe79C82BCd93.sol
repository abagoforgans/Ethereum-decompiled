contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint8 stor4; offset 160
address stor4;

function _fallback() payable {
    uint8(stor4.field_160) = 0
    require not msg.value
    stor0 = code.data[854 len 20]
    stor2 = code.data[874 len 32]
    stor3 = code.data[906 len 32]
    address(stor4.field_0) = code.data[950 len 20]
    return code.data[146 len 696]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function safeWithdrawal() {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < deadline
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
}



}
