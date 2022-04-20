contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
uint8 stor13;
uint256 stor13; offset 8

function _fallback() payable {
    stor3 = block.timestamp + (168 * 24 * 3600)
    stor4 = block.timestamp + (336 * 24 * 3600)
    stor5 = block.timestamp + (504 * 24 * 3600)
    stor6 = block.timestamp + (672 * 24 * 3600)
    stor7 = block.timestamp + (840 * 24 * 3600)
    stor8 = block.timestamp + (1008 * 24 * 3600)
    uint8(stor13.field_0) = 0
    Mask(248, 0, stor13.field_8) = 0
    require not msg.value
    stor0 = code.data[3298 len 20]
    stor1 = 10^18 * code.data[3318 len 32]
    stor9 = block.timestamp + (24 * 3600 * code.data[3350 len 32])
    stor10 = 10^15 * code.data[3382 len 32]
    stor11 = code.data[3426 len 20]
    return code.data[383 len 2903]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 P1;
uint256 P2;
uint256 sub_a85e9c83;
uint256 sub_ccf85419;
uint256 sub_6e2a56d5;
uint256 DL;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8

function P1() {
    return P1
}

function deadline() {
    return deadline
}

function P2() {
    return P2
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_6e2a56d5(?) {
    return sub_6e2a56d5
}

function tokenReward() {
    return tokenRewardAddress
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

function sub_a85e9c83(?) {
    return sub_a85e9c83
}

function sub_ccf85419(?) {
    return sub_ccf85419
}

function DL() {
    return DL
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor13.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor13.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor13.field_8)
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function getRateAt() {
    if block.timestamp >= DL:
        return 0
    if block.timestamp < P1:
        if block.timestamp < P2:
            if block.timestamp < sub_a85e9c83:
                if block.timestamp < sub_ccf85419:
                    if block.timestamp < sub_6e2a56d5:
                        return 0
                else:
                    if block.timestamp < sub_6e2a56d5:
                        return 950
            else:
                if block.timestamp < sub_ccf85419:
                    return 900
                if block.timestamp < sub_6e2a56d5:
                    return 950
        else:
            if block.timestamp < sub_a85e9c83:
                return 850
            if block.timestamp < sub_ccf85419:
                return 900
            if block.timestamp < sub_6e2a56d5:
                return 950
    else:
        if block.timestamp < P2:
            return 750
        if block.timestamp < sub_a85e9c83:
            return 850
        if block.timestamp < sub_ccf85419:
            return 900
        if block.timestamp < sub_6e2a56d5:
            return 950
    ('ge', 'timestamp', ('stor', ('name', 'sub_6e2a56d5', 7)))
    if block.timestamp >= DL:
        return 0
    return 1000
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor13.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor13.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor13.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor13.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor13.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor13.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
