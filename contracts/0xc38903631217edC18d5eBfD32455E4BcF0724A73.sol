contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint128 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
address stor12;
array of uint256 stor13;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    mem[96 len -4916] = code.data[5959 len -4916]
    mem[64] = -4820
    stor11 = msg.sender
    stor12 = mem[172 len 20]
    stor13[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8 = mem[192]
    stor9 = mem[224]
    stor4 = block.timestamp + (60 * mem[96])
    stor3 = 0
    stor10 = mem[268 len 20]
    stor7 = mem[304 len 16]
    stor5 = block.timestamp
    mem[0] = 13
    idx = -4628
    s = 0
    while stor13.length - 4628 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(address rg1, address rg2, string rg3, uint256 rg4, uint256 rg5):
                              mem[mem[64] len stor13.length + (floor32(stor13.length - 1) + -stor13.length + 32 % 32) + -mem[64] - 4628],
    return code.data[1043 len 4916]
}



// =====================  Runtime code  =====================


uint8 state;
array of struct stor1;
uint256 totalRaised;
uint256 currentBalance;
uint256 deadline;
uint256 currentTime;
uint256 completedAt;
uint128 priceInWei;
uint256 fundingMinimumTargetInWei;
uint256 fundingMaximumTargetInWei;
address tokenRewardAddress;
address creatorAddress;
address beneficiaryAddress;
address adminAddress;

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

function currentTime() {
    return currentTime
}

function admin() {
    return adminAddress
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

function _fallback() payable {
    revert
}

function admined() {
    adminAddress = msg.sender
}

function burnAll(uint256 arg1) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return 1
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

function checkIfFundingCompleteOrExpired() {
    if fundingMaximumTargetInWei:
        if totalRaised == fundingMaximumTargetInWei:
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

function sub_0783314d(?) {
    if block.timestamp <= deadline:
        emit 0xe8ca64f4: Array(len=7, data='success')
        return 1
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
    emit 0xe8ca64f4: Array(len=6, data='failed')
    return 0
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
            emit 0x6d171103: Array(len=6, data='failed')
            return 0
        totalRaised -= stor1[idx].field_0
        currentBalance = totalRaised
        emit 0x6d171103: Array(len=7, data='success')
        return 1
    return 0
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
    currentBalance = totalRaised
    require priceInWei
    require ext_code.size(tokenRewardAddress)
    if not fundingMaximumTargetInWei:
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / priceInWei
    else:
        call tokenRewardAddress.0x364f4864 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / priceInWei
    require ext_call.success
    emit LogFundingReceived(msg.sender, msg.value, totalRaised);
    if fundingMaximumTargetInWei:
        if totalRaised == fundingMaximumTargetInWei:
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
