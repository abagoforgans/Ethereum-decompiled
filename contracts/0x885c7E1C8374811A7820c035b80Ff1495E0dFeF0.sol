contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
address stor7;
uint16 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor4 = 1492214399
    stor9 = 0
    stor10 = 10
    stor11 = 2000 * 10^18
    stor12 = 8000 * 10^18
    require not msg.value
    stor0 = code.data[2218 len 20]
    stor1 = code.data[2250 len 20]
    stor2 = 10^18 * code.data[2270 len 32]
    stor7 = code.data[2314 len 20]
    require ext_code.size(code.data[2314 len 20])
    call code.data[2314 len 20].0x313ce567 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor10 = stor10^ext_call.return_data[31 len 1]
    return code.data[311 len 1895]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
address foundersAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 tokenPrice;
uint256 stor6;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor10;
uint256 stor11;
uint256 stor12;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function founders() {
    return foundersAddress
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

function tokenPrice() {
    return tokenPrice
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor9.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        uint8(stor9.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor9.field_8)
    if amountRaised <= stor11:
        tokenPrice = 4 * 10^15
    else:
        if amountRaised > stor12:
            tokenPrice = 10^16
        else:
            tokenPrice = 6 * 10^15
    require stor10
    stor6 = tokenPrice / stor10
    balanceOf[address(msg.sender)] = msg.value
    amountRaised += msg.value
    require stor6
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.mintToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value / stor6
    require ext_call.success
    require stor6
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.mintToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args beneficiaryAddress, 29 * msg.value / stor6 / 100
    require ext_call.success
    require stor6
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.mintToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args foundersAddress, 14 * msg.value / stor6 / 100
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    require stor6
    if msg.value % stor6 > 0:
        require stor6
        amountRaised -= msg.value % stor6
        call msg.sender with:
           value msg.value % stor6 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            require stor6
            emit FundTransfer(msg.sender, msg.value % stor6, 0);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor9.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor9.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor9.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor9.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor9.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor9.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
