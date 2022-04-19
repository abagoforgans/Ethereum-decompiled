contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7;
address stor7; offset 8

function _fallback() {
    stor1 = 50000
    stor0 = 0x6519c9a1bf6d69a35c7c87435940b05e9915ccb3
    stor6 = block.timestamp
    stor3 = stor6 + (720 * 24 * 3600)
    stor4 = 295
    uint8(stor7.field_0) = 0
    Mask(152, 0, stor7.field_8) = 0x67682915bdfe37a04edcb8888c0f162181e9f4
    return code.data[238 len 1575]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 tokenBalance;
uint256 amountRaised;
uint256 deadline;
uint256 stor4;
uint256 stor6;
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

function tokenBalance() {
    return tokenBalance
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    if block.timestamp <= deadline:
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
        require stor4
        if block.timestamp > stor6 + (168 * 24 * 3600):
            require 3 * 10^18 / stor4
            require msg.value / 3 * 10^18 / stor4 <= tokenBalance
            tokenBalance -= msg.value / 3 * 10^18 / stor4
            require tokenBalance >= 0
            require 3 * 10^18 / stor4
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^18 * msg.value / 3 * 10^18 / stor4
        else:
            require 2 * 10^18 / stor4
            require msg.value / 2 * 10^18 / stor4 <= tokenBalance
            tokenBalance -= msg.value / 2 * 10^18 / stor4
            require tokenBalance >= 0
            require 2 * 10^18 / stor4
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^18 * msg.value / 2 * 10^18 / stor4
        require ext_call.success
        emit FundTransfer(msg.sender, msg.value, 1);
}



}
