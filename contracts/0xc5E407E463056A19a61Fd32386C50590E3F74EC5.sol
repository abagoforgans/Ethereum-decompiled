contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor9;
uint256 stor10;
address stor11;
uint16 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor13 = 0
    stor14 = 6000
    stor15 = 5200
    stor16 = 4400
    stor17 = 4000
    require not msg.value
    stor0 = msg.sender
    stor5 = 0x55bea1a0335a8ea56572b8e66f17196290ca6467
    stor6 = 50000 * 10^18
    stor9 = 1510741800
    stor10 = 100 * 10^6 * stor17
    stor11 = 0xb15ef419ba0dd1f5748c7c60e17fe88e6e794950
    stor4 = 0
    return code.data[192 len 4360]
}



// =====================  Runtime code  =====================


#
#  - distributeARTTokenBatch(uint256 arg1)
#
const ART_DECIMALSFACTOR = 100 * 10^6

const FOURTH_TIER_SALE_START_TIME = (419650 * 3600)

const ART_CONTRACT_ADDRESS = 0xb15ef419ba0dd1f5748c7c60e17fe88e6e794950

const END_TIME = 1510741800

const THIRD_TIER_SALE_START_TIME = 1510738200

const SECOND_TIER_SALE_START_TIME = (420369 * 3600)

const START_TIME = 1513326600

const FUNDING_ETH_HARD_CAP = 50000 * 10^18

const ART_DECIMALS = 8

const ART_FOUNDATION_ADDRESS = 0x55bea1a0335a8ea56572b8e66f17196290ca6467


address owner;
mapping of struct contributorList;
mapping of address stor2;
uint256 stor3;
uint256 stor4;
address beneficiaryAddress;
uint256 fundingLimit;
uint256 amountRaised;
uint256 remainAmount;
uint256 deadline;
uint256 exchangeTokenRate;
address tokenRewardAddress;
uint256 tokenBalance;
uint8 crowdsaleClosed;
uint8 isARTDistributed; offset 8
uint256 START_RATE;
uint256 SECOND_TIER_RATE;
uint256 THIRD_TIER_RATE;
uint256 FOURTH_RATE;

function exchangeTokenRate() {
    return exchangeTokenRate
}

function remainAmount() {
    return remainAmount
}

function deadline() {
    return deadline
}

function THIRD_TIER_RATE() {
    return THIRD_TIER_RATE
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function fundingLimit() {
    return fundingLimit
}

function owner() {
    return owner
}

function contributorList(address arg1) {
    return bool(contributorList[arg1].field_0), 
           bool(contributorList[arg1].field_8),
           contributorList[arg1].field_256,
           contributorList[arg1].field_512
}

function tokenBalance() {
    return tokenBalance
}

function FOURTH_RATE() {
    return FOURTH_RATE
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function isARTDistributed() {
    return bool(isARTDistributed)
}

function START_RATE() {
    return START_RATE
}

function SECOND_TIER_RATE() {
    return SECOND_TIER_RATE
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function closeCrowdSale() {
    require beneficiaryAddress == msg.sender
    crowdsaleClosed = 1
}

function checkIfAllARTDistributed() {
    isARTDistributed = 1
    idx = 0
    s = 0
    while idx < stor4:
        mem[0] = stor2[idx]
        mem[32] = 1
        if contributorList[stor2[idx]].field_8:
            idx = idx + 1
            s = stor2[idx]
            continue 
        isARTDistributed = 0
}

function checkTokenBalance() {
    if beneficiaryAddress == msg.sender:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        tokenBalance = ext_call.return_data[0]
}

function safeWithdrawalAmount(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit WithdrawFailed(beneficiaryAddress, arg1, 0);
        else:
            emit FundTransfer(beneficiaryAddress, arg1, 0);
            remainAmount -= arg1
}

function safeWithdrawalAll() {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit WithdrawFailed(beneficiaryAddress, amountRaised, 0);
        else:
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            remainAmount -= amountRaised
}

function withdrawART(uint256 arg1) {
    if 1 == bool(crowdsaleClosed):
        require beneficiaryAddress == msg.sender
        if isARTDistributed:
            if beneficiaryAddress == msg.sender:
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, arg1
                require ext_call.success
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                tokenBalance = ext_call.return_data[0]
    else:
        if block.timestamp >= deadline:
            require beneficiaryAddress == msg.sender
            if isARTDistributed:
                if beneficiaryAddress == msg.sender:
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args beneficiaryAddress, arg1
                    require ext_call.success
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    tokenBalance = ext_call.return_data[0]
}

function distributeARTToken() {
    if beneficiaryAddress == msg.sender:
        s = 0
        t = 0
        idx = 0
        t = 0
        while idx < stor4:
            mem[0] = stor2[idx]
            mem[32] = 1
            if contributorList[stor2[idx]].field_8:
                s = s
                t = contributorList[stor2[idx]].field_512
                idx = idx + 1
                t = stor2[idx]
                continue 
            mem[100] = stor2[idx]
            mem[132] = contributorList[stor2[idx]].field_512
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor2[idx], contributorList[stor2[idx]].field_512
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                mem[0] = stor2[idx]
                mem[32] = 1
                contributorList[stor2[idx]].field_8 = 1
            s = ext_call.return_data[0]
            t = contributorList[stor2[idx]].field_512
            idx = idx + 1
            t = stor2[idx]
            continue 
        isARTDistributed = 1
        idx = 0
        s = 0
        while idx < stor4:
            mem[0] = stor2[idx]
            mem[32] = 1
            if contributorList[stor2[idx]].field_8:
                idx = idx + 1
                s = stor2[idx]
                continue 
            isARTDistributed = 0
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            tokenBalance = ext_call.return_data[0]
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        tokenBalance = ext_call.return_data[0]
}

function _fallback() payable {
    require not crowdsaleClosed
    require block.timestamp >= 1513326600
    require block.timestamp < 1510741800
    amountRaised += msg.value
    remainAmount += msg.value
    if block.timestamp < 1510738200:
        if contributorList[address(msg.sender)].field_0:
            contributorList[address(msg.sender)].field_256 += msg.value
            contributorList[address(msg.sender)].field_512 += msg.value * exchangeTokenRate / 10^18
        else:
            contributorList[address(msg.sender)].field_256 = msg.value
            contributorList[address(msg.sender)].field_512 = msg.value * exchangeTokenRate / 10^18
            contributorList[address(msg.sender)].field_0 = 1
            contributorList[address(msg.sender)].field_8 = 0
            contributorList[address(msg.sender)].field_256 = 0
            stor2[stor3] = msg.sender
            stor3++
            stor4++
        emit FundTransfer(msg.sender, msg.value, 1);
        if amountRaised >= fundingLimit:
            crowdsaleClosed = 1
    else:
        if block.timestamp < 419650 * 3600:
            exchangeTokenRate = 100 * 10^6 * THIRD_TIER_RATE
            if contributorList[address(msg.sender)].field_0:
                contributorList[address(msg.sender)].field_256 += msg.value
                contributorList[address(msg.sender)].field_512 += msg.value * exchangeTokenRate / 10^18
            else:
                contributorList[address(msg.sender)].field_256 = msg.value
                contributorList[address(msg.sender)].field_512 = msg.value * exchangeTokenRate / 10^18
                contributorList[address(msg.sender)].field_0 = 1
                contributorList[address(msg.sender)].field_8 = 0
                contributorList[address(msg.sender)].field_256 = 0
                stor2[stor3] = msg.sender
                stor3++
                stor4++
            emit FundTransfer(msg.sender, msg.value, 1);
            if amountRaised >= fundingLimit:
                crowdsaleClosed = 1
        else:
            if block.timestamp < 1510741800:
                exchangeTokenRate = 100 * 10^6 * FOURTH_RATE
            if contributorList[address(msg.sender)].field_0:
                contributorList[address(msg.sender)].field_256 += msg.value
                contributorList[address(msg.sender)].field_512 += msg.value * exchangeTokenRate / 10^18
            else:
                contributorList[address(msg.sender)].field_256 = msg.value
                contributorList[address(msg.sender)].field_512 = msg.value * exchangeTokenRate / 10^18
                contributorList[address(msg.sender)].field_0 = 1
                contributorList[address(msg.sender)].field_8 = 0
                contributorList[address(msg.sender)].field_256 = 0
                stor2[stor3] = msg.sender
                stor3++
                stor4++
            emit FundTransfer(msg.sender, msg.value, 1);
            if amountRaised >= fundingLimit:
                crowdsaleClosed = 1
}



}
