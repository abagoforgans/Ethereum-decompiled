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
array of uint256 stor12;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    mem[96 len -2513] = code.data[3169 len -2513]
    mem[64] = -2417
    stor10 = msg.sender
    stor11 = mem[172 len 20]
    stor12[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7 = 10^18 * mem[192]
    stor8 = 10^18 * mem[224]
    stor4 = block.timestamp + (60 * mem[96])
    stor3 = 0
    stor9 = mem[268 len 20]
    stor6 = 10^18 * mem[288]
    mem[0] = 12
    idx = -2225
    s = 0
    while stor12.length - 2225 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(address rg1, address rg2, string rg3, uint256 rg4, uint256 rg5):
                              mem[mem[64] len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32) + -mem[64] - 2225],
    return code.data[656 len 2513]
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
    require creatorAddress == msg.sender
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
        currentBalance = totalRaised - stor1[idx].field_0
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
    require msg.value >= priceInWei
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
    currentBalance = msg.value + totalRaised
    require priceInWei
    require ext_code.size(tokenRewardAddress)
    if not fundingMaximumTargetInWei:
        call tokenRewardAddress.mintToken(address rg1, uint256 rg2) with:
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
