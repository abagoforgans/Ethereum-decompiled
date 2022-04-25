contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
address stor11;
array of struct stor12;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor10 = msg.sender
    stor11 = code.data[4690 len 20]
    bool(stor12.length) = 0
    stor12.length.field_1 = 31
    stor12.length.field_8 = 'http://www.cryptocoinfloor.com/'
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 1000 * 10^18
    stor8 = 20000 * 10^18
    stor4 = block.timestamp + (4320 * 24 * 3600)
    stor3 = 0
    stor9 = address(code.data[4646 len 32])
    stor6 = 10^15
    mem[416] = uint256(stor12.field_0)
    idx = 416
    s = 0
    while stor12.length + 416 > idx + 32:
        mem[idx + 32] = stor12[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(stor10, stor11, Array(len=stor12.length, data=mem[416 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]), stor8, stor4);
    return code.data[1011 len 3635]
}



// =====================  Runtime code  =====================


uint8 state;
array of struct stor1;
uint256 totalRaised;
uint256 currentBalance;
uint256 deadline;
uint256 completedAt;
uint256 priceInWei;
uint256 fundingMinimumTargetInWei;
uint256 fundingMaximumTargetInWei;
address tokenRewardAddress;
address creatorAddress;
address beneficiaryAddress;

function creator() {
    return creatorAddress
}

function deadline() {
    return deadline
}

function completedAt() {
    return completedAt
}

function beneficiary() {
    return beneficiaryAddress
}

function priceInWei() {
    return priceInWei
}

function tokenReward() {
    return tokenRewardAddress
}

function fundingMinimumTargetInWei() {
    return fundingMinimumTargetInWei
}

function fundingMaximumTargetInWei() {
    return fundingMaximumTargetInWei
}

function state() {
    require state <= 3
    return state
}

function totalRaised() {
    return totalRaised
}

function currentBalance() {
    return currentBalance
}

function removeContract() {
    require msg.sender == creatorAddress
    require state <= 3
    if state != 1:
        require state <= 3
        require state == 2
    require completedAt + 3600 < block.timestamp
    selfdestruct(msg.sender)
}

function _fallback() {
    revert
}

function payOut() {
    require state <= 3
    require state == 2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    state = 3
    currentBalance = 0
    emit LogWinnerPaid(beneficiaryAddress);
}

function getRefund() {
    require state <= 3
    require state == 1
    idx = 0
    while idx <= stor1.length:
        require idx < stor1.length
        mem[0] = 1
        if stor1[idx].field_256 != msg.sender:
            idx = idx + 1
            continue 
        require idx < stor1.length
        stor1[idx].field_0 = 0
        call stor1[idx].field_256 with:
           value stor1[idx].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require idx < stor1.length
            return 0
        totalRaised -= stor1[idx].field_0
        currentBalance = totalRaised
        return 1
    return 0
}

function checkIfFundingCompleteOrExpired() {
    if not fundingMaximumTargetInWei:
        if block.timestamp > deadline:
            if totalRaised < fundingMinimumTargetInWei:
                state = 1
            else:
                state = 2
                emit LogFundingSuccessful(totalRaised);
                require state <= 3
                require state == 2
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                state = 3
                currentBalance = 0
                emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
    else:
        if totalRaised > fundingMaximumTargetInWei:
            state = 2
            emit LogFundingSuccessful(totalRaised);
            require state <= 3
            require state == 2
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            state = 3
            currentBalance = 0
            emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
        else:
            if block.timestamp > deadline:
                if totalRaised < fundingMinimumTargetInWei:
                    state = 1
                else:
                    state = 2
                    emit LogFundingSuccessful(totalRaised);
                    require state <= 3
                    require state == 2
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    state = 3
                    currentBalance = 0
                    emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
}

function contribute() payable {
    require state <= 3
    require not state
    require msg.value > priceInWei
    require priceInWei
    require not msg.value % priceInWei
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = 2 * stor1.length + 1
        while 2 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor1[stor1.length].field_0 = msg.value
    stor1[stor1.length].field_256 = msg.sender
    totalRaised += msg.value
    currentBalance = totalRaised
    require priceInWei
    require ext_code.size(tokenRewardAddress)
    if not fundingMaximumTargetInWei:
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / priceInWei
    else:
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / priceInWei
    require ext_call.success
    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
    if not fundingMaximumTargetInWei:
        if block.timestamp > deadline:
            if totalRaised < fundingMinimumTargetInWei:
                state = 1
            else:
                state = 2
                emit LogFundingSuccessful(totalRaised);
                require state <= 3
                require state == 2
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                state = 3
                currentBalance = 0
                emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
    else:
        if totalRaised > fundingMaximumTargetInWei:
            state = 2
            emit LogFundingSuccessful(totalRaised);
            require state <= 3
            require state == 2
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            state = 3
            currentBalance = 0
            emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
        else:
            if block.timestamp > deadline:
                if totalRaised < fundingMinimumTargetInWei:
                    state = 1
                else:
                    state = 2
                    emit LogFundingSuccessful(totalRaised);
                    require state <= 3
                    require state == 2
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    state = 3
                    currentBalance = 0
                    emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
    return (stor1.length - 1)
}



}
