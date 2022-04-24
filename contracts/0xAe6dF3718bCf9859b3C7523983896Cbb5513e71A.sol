contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint8 stor6;
uint256 stor6; offset 8

function _fallback() payable {
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 0
    require not msg.value
    stor0 = 0xdd6d7facfb3d4da8c83d4d71c43e264d69588833
    stor1 = 24 * 10^18
    stor3 = block.timestamp + (168 * 24 * 3600)
    stor4 = 23 * 10^13
    return code.data[268 len 2006]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
mapping of uint256 balanceOf;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function _fallback() payable {
    require not uint8(stor6.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    emit FundTransfer(beneficiaryAddress, msg.value, 1);
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor6.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor6.field_8) = 1
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor6.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor6.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor6.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor6.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(beneficiaryAddress, balanceOf[address(msg.sender)], 0);
                if uint8(stor6.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor6.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
