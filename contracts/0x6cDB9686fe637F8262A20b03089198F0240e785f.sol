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
uint16 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor0 = 1
    stor13 = 0
    stor14 = 0
    stor15 = 0
    require not msg.value
    mem[96 len -4606] = code.data[5289 len -4606]
    mem[64] = -4510
    stor10 = msg.sender
    stor11 = mem[172 len 20]
    stor12[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6 = 10^18 * mem[192]
    stor7 = 10^18 * mem[224]
    stor4 = block.timestamp
    stor8 = 60 * mem[96]
    stor3 = 0
    stor9 = mem[268 len 20]
    mem[0] = 12
    idx = -4318
    s = 0
    while stor12.length - 4318 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    emit LogFunderInitialized(address rg1, address rg2, string rg3, uint256 rg4, uint256 rg5):
                              mem[mem[64] len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32) + -mem[64] - 4318],
    return code.data[683 len 4606]
}



// =====================  Runtime code  =====================


#
#  - contribute()
#  - _fallback()
#
const tokensForSale = 331360000 * 10^18

const tokenPriceInWei = 10^15


uint8 state;
array of struct stor1;
uint256 totalRaised;
uint256 currentBalance;
uint256 deadline;
uint256 completedAt;
uint256 fundingMinimumTargetInWei;
uint256 fundingMaximumTargetInWei;
uint256 sub_3802d42c;
address tokenRewardAddress;
address creatorAddress;
address beneficiaryAddress;
bool stor13; offset 256
uint8 stor13;
uint8 stor13; offset 8
uint256 stor14;
uint256 stor15;

function creator() {
    return creatorAddress
}

function deadline() {
    return deadline
}

function sub_3802d42c(?) {
    return sub_3802d42c
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

function fundingMinimumTargetInWei() {
    return fundingMinimumTargetInWei
}

function fundingMaximumTargetInWei() {
    return fundingMaximumTargetInWei
}

function state() {
    require state <= 4
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
    require state <= 4
    if state != 2:
        require state <= 4
        require state == 3
    require completedAt + 3600 < block.timestamp
    selfdestruct(msg.sender)
}

function getStats() {
    return totalRaised, stor14, stor15, bool(uint8(stor13.field_0))
}

function pauseContract() {
    require state <= 4
    require not state
    require creatorAddress == msg.sender
    require uint8(stor13.field_8)
    state = 1
    uint8(stor13.field_0) = 0
    emit PauseContract()
}

function resumeContract() {
    require state <= 4
    require state == 1
    require creatorAddress == msg.sender
    require uint8(stor13.field_8)
    state = 0
    uint8(stor13.field_0) = 1
    emit StartContract()
}

function payOut() {
    require state <= 4
    require state == 3
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    state = 4
    currentBalance = 0
    emit LogWinnerPaid(beneficiaryAddress);
}

function extendContract() {
    require state <= 4
    require state == 4
    require creatorAddress == msg.sender
    require block.timestamp >= deadline
    state = 0
    uint8(stor13.field_0) = 1
    currentBalance = totalRaised
    deadline = block.timestamp + sub_3802d42c
    emit StartContract()
}

function startContract() {
    require state <= 4
    require state == 1
    require creatorAddress == msg.sender
    require not uint8(stor13.field_8)
    state = 0
    deadline = block.timestamp + sub_3802d42c
    uint8(stor13.field_0) = 1
    uint8(stor13.field_8) = 1
    stor13.field_256 % 1 = 0
    emit StartContract()
}

function sub_b4fedc11(?) {
    require creatorAddress == msg.sender
    require state <= 4
    if state:
        require state <= 4
        require state == 1
    require uint8(stor13.field_8)
    state = 3
    emit LogFundingSuccessful(totalRaised);
    require state <= 4
    require state == 3
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    state = 4
    currentBalance = 0
    emit LogWinnerPaid(beneficiaryAddress);
    completedAt = block.timestamp
    deadline = block.timestamp
    uint8(stor13.field_0) = 0
    emit 0x87d88931 
}

function refund() {
    require state <= 4
    require state == 2
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

function sub_13df9396(?) {
    require creatorAddress == msg.sender
    if not fundingMaximumTargetInWei:
        if block.timestamp > deadline:
            if totalRaised < fundingMinimumTargetInWei:
                state = 2
            else:
                state = 3
                emit LogFundingSuccessful(totalRaised);
                require state <= 4
                require state == 3
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                state = 4
                currentBalance = 0
                emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
            uint8(stor13.field_0) = 0
    else:
        if totalRaised > fundingMaximumTargetInWei:
            state = 3
            emit LogFundingSuccessful(totalRaised);
            require state <= 4
            require state == 3
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            state = 4
            currentBalance = 0
            emit LogWinnerPaid(beneficiaryAddress);
            completedAt = block.timestamp
            uint8(stor13.field_0) = 0
        else:
            if block.timestamp > deadline:
                if totalRaised < fundingMinimumTargetInWei:
                    state = 2
                else:
                    state = 3
                    emit LogFundingSuccessful(totalRaised);
                    require state <= 4
                    require state == 3
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    state = 4
                    currentBalance = 0
                    emit LogWinnerPaid(beneficiaryAddress);
                completedAt = block.timestamp
                uint8(stor13.field_0) = 0
}



}
