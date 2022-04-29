contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor6;
address stor8;

function _fallback() {
    stor0 = 0xd83a4537f917feff68088eab619dc6c529a55ad4
    stor6 = block.timestamp
    stor3 = stor6 + (48 * 24 * 3600)
    stor4 = 280
    stor8 = 0x2ca8e1fbcde534c8c71d8f39864395c2ed76fb0e
    return code.data[229 len 2264]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 tokenBalance;
uint256 amountRaised;
uint256 deadline;
uint256 stor4;
uint256 stor7;
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
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
            require ext_call.success
            tokenBalance = 0
}

function _fallback() payable {
    if block.timestamp <= deadline:
        tokenBalance = 4930089
        balanceOf[address(msg.sender)] += msg.value
        amountRaised += msg.value
        require stor4
        stor7 = 35 * 10^16 / stor4
        if msg.value >= 375 * 10^17:
            if msg.value < 83 * 10^18:
                require 100 * stor7 / 100 == stor7
                stor7 = 100 * stor7 / 110
            if msg.value >= 875 * 10^17:
                if msg.value < 166 * 10^18:
                    require 100 * stor7 / 100 == stor7
                    stor7 = 100 * stor7 / 115
                if msg.value >= 175 * 10^18:
                    require 100 * stor7 / 100 == stor7
                    stor7 = 100 * stor7 / 120
        require stor7
        require msg.value / stor7 <= tokenBalance
        tokenBalance -= msg.value / stor7
        require tokenBalance >= 0
        require stor7
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^18 * msg.value / stor7
        require ext_call.success
        emit FundTransfer(msg.sender, msg.value, 1);
}



}
