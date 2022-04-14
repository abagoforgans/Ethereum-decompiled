contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
address stor4;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = code.data[1748 len 20]
    stor2 = block.timestamp + (60 * code.data[1768 len 32])
    stor3 = 100 * 10^18
    stor4 = code.data[1812 len 20]
    return code.data[268 len 1468]
}



// =====================  Runtime code  =====================


const sub_6f2fbe9f(?) = 100


address beneficiaryAddress;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function safeWithdrawal() {
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 100 * 10^6 * 100 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
