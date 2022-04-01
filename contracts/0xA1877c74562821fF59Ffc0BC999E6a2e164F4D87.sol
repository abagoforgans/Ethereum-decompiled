contract main {


// =======================  Init code  ======================


bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 8
address stor4; offset 16
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    uint8(stor4.field_0) = 1
    uint8(stor4.field_8) = 0
    address(stor4.field_16) = 0xc1fa2c60ea649a477e40c0510744f2881c0486d9
    stor4.field_256 % 1 = 0
    stor5 = 15 * 10^14
    stor6 = 625 * 10^15 * 3600
    stor7 = 1470453 * 10^16
    stor8 = block.timestamp + (720 * 24 * 3600)
    stor9 = 0x2fd8019ce2aac3bf9db18d851a57efe1a6151bbf
    require not msg.value
    return code.data[162 len 2406]
}



// =====================  Runtime code  =====================


uint256 amountRaised;
uint256 resAmount;
uint256 soldTokens;
mapping of uint256 balanceOf;
uint8 stor4;
uint8 stor4; offset 8
address stor4;
address beneficiaryAddress; offset 16
uint256 price;
uint256 minimumTarget;
uint256 maximumTarget;
uint256 deadline;
address tokenRewardAddress;

function maximumTarget() {
    return maximumTarget
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function minimumTarget() {
    return minimumTarget
}

function soldTokens() {
    return soldTokens
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

function minimumTargetReached() {
    return bool(uint8(stor4.field_8))
}

function price() {
    return price
}

function crowdsaleClosed() {
    return bool(uint8(stor4.field_0))
}

function resAmount() {
    return resAmount
}

function closeCrowdsale(bool arg1) {
    if beneficiaryAddress == msg.sender:
        uint8(stor4.field_0) = uint8(arg1)
}

function checkTargetReached() {
    if block.timestamp >= deadline:
        if amountRaised >= minimumTarget:
            uint8(stor4.field_8) = 1
}

function devResWithdrawal() {
    require uint8(stor4.field_8)
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value resAmount wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundTransfer(address(stor4.field_0), resAmount, 0);
        resAmount = 0
}

function devWithdrawal(uint256 arg1, uint256 arg2) {
    require uint8(stor4.field_8)
    require beneficiaryAddress == msg.sender
    require arg2
    call beneficiaryAddress with:
       value arg1 / arg2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundTransfer(address(stor4.field_0), arg1 / arg2, 0);
        resAmount -= arg1 / arg2
}

function returnTokens(uint256 arg1) {
    if block.timestamp >= deadline:
        require uint8(stor4.field_0)
        if beneficiaryAddress == msg.sender:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args address(stor4.field_0), arg1
            require ext_call.success
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        require uint8(stor4.field_0)
        if not uint8(stor4.field_8):
            if uint8(stor4.field_0):
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] > 0:
                    call msg.sender with:
                       value balanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                        resAmount -= balanceOf[address(msg.sender)]
}

function _fallback() payable {
    require not uint8(stor4.field_0)
    require maximumTarget - amountRaised >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    resAmount += msg.value
    require price
    soldTokens += msg.value / price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    if amountRaised < minimumTarget:
        if uint8(stor4.field_8):
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(address(stor4.field_0), msg.value, 0);
                resAmount -= msg.value
    else:
        if not uint8(stor4.field_8):
            uint8(stor4.field_8) = 1
            emit GoalReached(address rg1, uint256 rg2):
                             0,
                             beneficiaryAddress,
                             minimumTarget,
        else:
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit FundTransfer(address(stor4.field_0), msg.value, 0);
                resAmount -= msg.value
}



}
