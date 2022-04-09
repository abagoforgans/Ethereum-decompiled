contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint16 stor7;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor0 = code.data[1649 len 20]
    stor1 = 10^18 * code.data[1669 len 32]
    stor2 = (60 * code.data[1701 len 32]) + block.timestamp
    stor3 = 10^18 * code.data[1733 len 32]
    stor4 = code.data[1777 len 20]
    return code.data[167 len 1470]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 deadline;
uint256 pricePerToken;
address rewardTokenAddress;
mapping of uint256 contributionOf;
uint256 amountRaised;
uint8 stor7;
uint8 stor7; offset 8

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function fundingGoal() {
    return fundingGoal
}

function pricePerToken() {
    return pricePerToken
}

function amountRaised() {
    return amountRaised
}

function contributionOf(address arg1) {
    return contributionOf[arg1]
}

function rewardToken() {
    return rewardTokenAddress
}

function checkGoalReached() {
    require block.timestamp >= deadline
    uint8(stor7.field_8) = 1
    if amountRaised >= fundingGoal:
        uint8(stor7.field_0) = 1
        emit GoalReached(beneficiaryAddress, amountRaised);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    contributionOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require pricePerToken
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / pricePerToken
    require ext_call.success
    require ext_call.return_data[0]
    require pricePerToken
    call msg.sender with:
       value msg.value % pricePerToken wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundsReceived(msg.sender, msg.value);
}

function withdraw() {
    require block.timestamp >= deadline
    require uint8(stor7.field_8)
    if uint8(stor7.field_0):
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            uint8(stor7.field_0) = 0
        else:
            emit FundsWithdrawal(beneficiaryAddress, amountRaised);
    else:
        if contributionOf[address(msg.sender)] <= 0:
            if uint8(stor7.field_0):
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundsWithdrawal(beneficiaryAddress, amountRaised);
        else:
            call msg.sender with:
               value contributionOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundsWithdrawal(msg.sender, contributionOf[address(msg.sender)]);
                contributionOf[address(msg.sender)] = 0
            if uint8(stor7.field_0):
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundsWithdrawal(beneficiaryAddress, amountRaised);
}



}
