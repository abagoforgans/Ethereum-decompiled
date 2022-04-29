contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;
address stor9;
uint256 stor10;
uint256 stor12;
uint256 stor13;
uint8 stor15;
uint256 stor15; offset 8

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'BitOptions' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'BITO' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 100 * 10^6
    uint8(stor15.field_0) = 0
    Mask(248, 0, stor15.field_8) = 0
    require not msg.value
    stor9 = msg.sender
    stor10 = 10^18 * code.data[5749 len 32]
    stor12 = block.timestamp + (60 * code.data[5781 len 32])
    stor13 = code.data[5813 len 32]
    stor6 = stor6 * 10^stor5
    stor7[stor9] = stor6
    return code.data[746 len 5003]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor9;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 rate;
mapping of uint256 etherBalanceOf;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8

function name() {
    return name[0 len name.length]
}

function etherBalanceOf(address arg1) {
    return etherBalanceOf[arg1]
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function rate() {
    return rate
}

function decimals() {
    return decimals
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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor15.field_0) = 1
            emit GoalReached(stor9, amountRaised);
        Mask(248, 0, stor15.field_8) = 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function _fallback() payable {
    require not uint8(stor15.field_8)
    etherBalanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require msg.sender
    require balanceOf[stor9] >= msg.value * rate
    require balanceOf[address(msg.sender)] + (msg.value * rate) > balanceOf[address(msg.sender)]
    balanceOf[stor9] += -1 * msg.value * rate
    balanceOf[address(msg.sender)] += msg.value * rate
    emit Transfer((msg.value * rate), stor9, msg.sender);
    require balanceOf[stor9] + balanceOf[address(msg.sender)] == balanceOf[stor9] + balanceOf[address(msg.sender)]
    call stor9 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor15.field_0):
            if stor9 == msg.sender:
                call stor9 with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor15.field_0) = 0
                else:
                    emit FundTransfer(stor9, amountRaised, 0);
        else:
            etherBalanceOf[address(msg.sender)] = 0
            if etherBalanceOf[address(msg.sender)] <= 0:
                if uint8(stor15.field_0):
                    if stor9 == msg.sender:
                        call stor9 with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor15.field_0) = 0
                        else:
                            emit FundTransfer(stor9, amountRaised, 0);
            else:
                call msg.sender with:
                   value etherBalanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, etherBalanceOf[address(msg.sender)], 0);
                if uint8(stor15.field_0):
                    if stor9 == msg.sender:
                        call stor9 with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor15.field_0) = 0
                        else:
                            emit FundTransfer(stor9, amountRaised, 0);
}



}
