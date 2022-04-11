contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint16 stor4; offset 160
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 417768 * 24 * 3600
    stor1 = 417840 * 24 * 3600
    stor2 = 419208 * 24 * 3600
    uint16(stor4.field_160) = 0
    stor6 = 12000
    stor7 = 9000
    stor8 = 7500
    stor9 = 100 * 10^6
    require not msg.value
    address(stor4.field_0) = code.data[2061 len 20]
    stor5 = msg.sender
    return code.data[172 len 1877]
}



// =====================  Runtime code  =====================


const MIN_CAP = 1700 * 10^18


uint256 start_ico;
uint256 round1;
uint256 deadline;
uint256 stor3;
uint8 stor4; offset 168
address tokenRewardAddress;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;

function deadline() {
    return deadline
}

function start_ico() {
    return start_ico
}

function tokenReward() {
    return tokenRewardAddress
}

function round1() {
    return round1
}

function fundingGoalReached() {
    return bool(stor4)
}

function getPrice() {
    if block.timestamp <= start_ico:
        return stor6
    if block.timestamp > round1:
        return stor8
    return stor7
}

function WithdrawalAfterGoalReached() {
    require stor4
    require stor5 == msg.sender
    call stor5 with:
       value stor3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        stor4 = 0
    else:
        emit FundTransfer(stor5, stor3);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if not stor4:
            stor10[address(msg.sender)] = 0
            if stor10[address(msg.sender)] > 0:
                call msg.sender with:
                   value stor10[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, stor10[address(msg.sender)]);
}

function WithdrawalTokensAfterDeadLine() {
    require stor5 == msg.sender
    require block.timestamp > deadline
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.transferWithoutChangeBest(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp <= deadline
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp <= start_ico:
        require ext_call.return_data[0] >= msg.value * stor6 * stor9 / 10^18
        stor3 += msg.value
        stor10[address(msg.sender)] += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor6 * stor9 / 10^18
        require ext_call.success
        if not stor4:
            if stor3 >= 1700 * 10^18:
                stor4 = 1
        emit SendTokens((msg.value * stor6 * stor9 / 10^18));
    else:
        if block.timestamp > round1:
            require ext_call.return_data[0] >= msg.value * stor8 * stor9 / 10^18
            stor3 += msg.value
            stor10[address(msg.sender)] += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stor8 * stor9 / 10^18
            require ext_call.success
            if not stor4:
                if stor3 >= 1700 * 10^18:
                    stor4 = 1
            emit SendTokens((msg.value * stor8 * stor9 / 10^18));
        else:
            require ext_call.return_data[0] >= msg.value * stor7 * stor9 / 10^18
            stor3 += msg.value
            stor10[address(msg.sender)] += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stor7 * stor9 / 10^18
            require ext_call.success
            if not stor4:
                if stor3 >= 1700 * 10^18:
                    stor4 = 1
            emit SendTokens((msg.value * stor7 * stor9 / 10^18));
    emit FundTransfer(msg.sender, msg.value);
}



}
