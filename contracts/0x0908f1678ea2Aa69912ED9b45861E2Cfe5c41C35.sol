contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor4;
uint256 stor5;
address stor7;
address stor8;
address stor9;
array of uint256 stor10;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    mem[96 len -2435] = code.data[3036 len -2435]
    mem[64] = -2339
    stor8 = msg.sender
    stor9 = mem[172 len 20]
    stor10[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = block.timestamp + (60 * mem[96])
    stor4 = 0
    stor7 = mem[204 len 20]
    mem[0] = 10
    idx = -2179
    s = 0
    while stor10.length - 2179 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(address rg1, address rg2, string rg3, uint256 rg4):
                              mem[mem[64] len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + -mem[64] - 2179],
    return code.data[601 len 2435]
}



// =====================  Runtime code  =====================


uint8 state;
mapping of uint256 stor1;
array of address stor2;
uint256 totalRaised;
uint256 currentBalance;
uint256 deadline;
uint256 completedAt;
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

function tokenReward() {
    return tokenRewardAddress
}

function state() {
    require state <= 1
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
    require state <= 1
    require state == 1
    require completedAt + 3600 < block.timestamp
    selfdestruct(msg.sender)
}

function finished() {
    require state <= 1
    require state == 1
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    currentBalance = 0
    emit LogWinnerPaid(beneficiaryAddress);
}

function checkIfFundingCompleteOrExpired() {
    if block.timestamp > deadline:
        state = 1
        emit LogFundingSuccessful(totalRaised);
        require state <= 1
        require state == 1
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        currentBalance = 0
        emit LogWinnerPaid(beneficiaryAddress);
        completedAt = block.timestamp
}

function payOut() {
    require state <= 1
    require state == 1
    if creatorAddress != msg.sender:
        idx = 0
        s = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            require idx < stor2.length
            require totalRaised
            mem[0] = address(stor2[idx])
            mem[32] = 1
            stor1[address(stor2[idx])] = 0
            mem[132] = 2500 * 3600 * stor1[address(stor2[idx])] / totalRaised
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(stor2[idx]), 2500 * 3600 * stor1[address(stor2[idx])] / totalRaised
            require ext_call.success
            mem[96] = address(stor2[idx])
            mem[128] = 2500 * 3600 * stor1[address(stor2[idx])] / totalRaised
            emit LogContributorsPayout(address(stor2[idx]), 2500 * 3600 * stor1[address(stor2[idx])] / totalRaised);
            idx = idx + 1
            s = address(stor2[idx])
            continue 
    else:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        currentBalance = 0
        emit LogWinnerPaid(beneficiaryAddress);
}

function _fallback() payable {
    require msg.value > 0
    require state <= 1
    require not state
    if stor2.length:
        idx = 0
        s = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx]) != msg.sender:
                if idx != stor2.length - 1:
                    idx = idx + 1
                    s = s
                    continue 
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    s = stor2.length + sha3(2) + 1
                    while sha3(2) + stor2.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[0] = 2
                address(stor2[stor2.length]) = msg.sender
                idx = idx + 1
                s = idx + 1
                continue 
            stor1[address(msg.sender)] += msg.value
            totalRaised += msg.value
            currentBalance = msg.value + totalRaised
            emit LogContributorsContributed(msg.sender, stor1[address(msg.sender)], idx);
            emit LogFundingReceived(msg.sender, msg.value, totalRaised);
            if block.timestamp > deadline:
                state = 1
                emit LogFundingSuccessful(totalRaised);
                require state <= 1
                require state == 1
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                currentBalance = 0
                emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
        stor1[address(msg.sender)] += msg.value
        totalRaised += msg.value
        currentBalance = msg.value + totalRaised
        emit LogContributorsContributed(msg.sender, stor1[address(msg.sender)], s);
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length]) = msg.sender
        stor1[address(msg.sender)] += msg.value
        totalRaised += msg.value
        currentBalance = msg.value + totalRaised
        emit LogContributorsContributed(msg.sender, stor1[address(msg.sender)], 0);
    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
    if block.timestamp > deadline:
        state = 1
        emit LogFundingSuccessful(totalRaised);
        require state <= 1
        require state == 1
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        currentBalance = 0
        emit LogWinnerPaid(beneficiaryAddress);
        completedAt = block.timestamp
}

function contribute() payable {
    require state <= 1
    require not state
    if stor2.length:
        idx = 0
        s = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx]) != msg.sender:
                if idx != stor2.length - 1:
                    idx = idx + 1
                    s = s
                    continue 
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    s = stor2.length + sha3(2) + 1
                    while sha3(2) + stor2.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[0] = 2
                address(stor2[stor2.length]) = msg.sender
                idx = idx + 1
                s = idx + 1
                continue 
            stor1[address(msg.sender)] += msg.value
            totalRaised += msg.value
            currentBalance = msg.value + totalRaised
            emit LogContributorsContributed(msg.sender, stor1[address(msg.sender)], idx);
            emit LogFundingReceived(msg.sender, msg.value, totalRaised);
            if block.timestamp > deadline:
                state = 1
                emit LogFundingSuccessful(totalRaised);
                require state <= 1
                require state == 1
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                currentBalance = 0
                emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
            return (stor2.length - 1)
        stor1[address(msg.sender)] += msg.value
        totalRaised += msg.value
        currentBalance = msg.value + totalRaised
        emit LogContributorsContributed(msg.sender, stor1[address(msg.sender)], s);
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length]) = msg.sender
        stor1[address(msg.sender)] += msg.value
        totalRaised += msg.value
        currentBalance = msg.value + totalRaised
        emit LogContributorsContributed(msg.sender, stor1[address(msg.sender)], 0);
    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
    if block.timestamp > deadline:
        state = 1
        emit LogFundingSuccessful(totalRaised);
        require state <= 1
        require state == 1
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        currentBalance = 0
        emit LogWinnerPaid(beneficiaryAddress);
        completedAt = block.timestamp
    return (stor2.length - 1)
}



}
