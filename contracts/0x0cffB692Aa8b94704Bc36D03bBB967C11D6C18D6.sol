contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor2;
uint256 stor3;
uint64 stor4;
uint256 stor5;
address stor6;
address stor7;
address stor8;
uint64 stor9; offset 160
address stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15; offset 160
address stor15;

function _fallback() payable {
    mem[96] = 0xcec42e247097c276ad3d7cfd270adbd562da5c61
    mem[128] = 0x373c46c544662b8c5d55c24cf4f9a5020163ec2f
    mem[160] = 0x672cf829272339a6c8c11b14acc5f9d07bafac7c
    mem[192] = 0xce0e1981a19a57ae808a7575a6738e4527fb9118
    mem[224] = 0x93aa76cdb17eea80e4de983108ef575d8fc8f12b
    mem[256] = 0x20ae3329cd1e35feff7115b46218c9d056d430fd
    mem[288] = 0xe9fc1a57a5dc1caa3de22a940e9f09e640615f7e
    mem[320] = 0xd360433950de9f6fa0e93c29425845eed6bfa0d0
    mem[352] = 0xf0de97eaff5d6c998c80e07746c81a336e1bbd43
    mem[384] = 0xf4ce80097bf1e584822dbca84f91d5d7d9df0846
    stor0.length = 10
    s = 0
    idx = 96
    while 416 > idx:
        stor0[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 300
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    address(stor9.field_0) = 0
    uint64(stor9.field_160) = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    address(stor15.field_0) = 0
    uint8(stor15.field_160) = 0
    require not msg.value
    stor6 = msg.sender
    stor8 = code.data[11540 len 20]
    stor7 = code.data[11572 len 20]
    stor4 = uint64(block.timestamp)
    address(stor9.field_0) = code.data[11604 len 20]
    stor10 = code.data[11636 len 20]
    stor11 = code.data[11668 len 20]
    address(stor15.field_0) = code.data[11700 len 20]
    if stor0.length == 10:
        return code.data[2059 len 9469]
    revert
}



// =====================  Runtime code  =====================


const getBlockLength = 700000

const getTotalIcoTokens = 7000000 * 10^18

const MAX_ISSUED_FROM_OTHER_CURRENCIES = 3000000 * 10^18

const ICO_TOKEN_SOFT_CAP = 150000 * 10^18

const ICO_TOKEN_SUPPLY_LIMIT = 7000000 * 10^18

const BONUS_REWARD = 1000000 * 10^18

const MAX_SINGLE_ISSUED_FROM_OTHER_CURRENCIES = 30000 * 10^18

const FOUNDERS_REWARD = 2000000 * 10^18


array of address multisigs;
mapping of uint256 stor1;
uint256 totalCollectedWei;
uint256 usdPerEthCoinmarketcapRate;
uint64 lastUsdPerEthChangeDate;
uint256 issuedFromOtherCurrencies;
address creatorAddress;
address ethRateChangerAddress;
address tokenManagerAddress;
uint64 icoStartedTime; offset 160
address otherCurrenciesCheckerAddress;
address mntTokenAddress;
address unsoldContractAddress;
uint256 icoTokensSold;
uint256 icoTokensUnsold;
uint256 issuedExternallyTokens;
uint8 currentState; offset 160
address foundersRewardsAccount;

function creator() {
    return creatorAddress
}

function currentState() {
    require currentState <= 5
    return currentState
}

function tokenManager() {
    return tokenManagerAddress
}

function issuedFromOtherCurrencies() {
    return issuedFromOtherCurrencies
}

function unsoldContract() {
    return unsoldContractAddress
}

function getTokensIcoSold() {
    return icoTokensSold
}

function mntToken() {
    return mntTokenAddress
}

function icoTokensUnsold() {
    return icoTokensUnsold
}

function icoStartedTime() {
    return icoStartedTime
}

function icoTokensSold() {
    return icoTokensSold
}

function otherCurrenciesChecker() {
    return otherCurrenciesCheckerAddress
}

function getTotalCollectedWei() {
    return totalCollectedWei
}

function lastUsdPerEthChangeDate() {
    return lastUsdPerEthChangeDate
}

function ethRateChanger() {
    return ethRateChangerAddress
}

function issuedExternallyTokens() {
    return issuedExternallyTokens
}

function usdPerEthCoinmarketcapRate() {
    return usdPerEthCoinmarketcapRate
}

function multisigs(uint256 arg1) {
    require arg1 < multisigs.length
    return multisigs[arg1].field_0
}

function foundersRewardsAccount() {
    return foundersRewardsAccount
}

function setTokenManager(address arg1) {
    require msg.sender == tokenManagerAddress
    tokenManagerAddress = arg1
}

function pauseICO() {
    require msg.sender == creatorAddress
    require currentState <= 5
    require 1 == currentState
    currentState = 2
    emit LogStateSwitch(2);
}

function resumeICO() {
    require msg.sender == creatorAddress
    require currentState <= 5
    require 2 == currentState
    currentState = 1
    emit LogStateSwitch(1);
}

function getMntTokenBalance(address arg1) {
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function isIcoFinished() {
    if icoStartedTime <= 0:
        return (icoStartedTime > 0)
    if block.timestamp > uint64(icoStartedTime + (720 * 24 * 3600)):
        return (block.timestamp > uint64(icoStartedTime + (720 * 24 * 3600)))
    return icoTokensSold >= 7000000 * 10^18
}

function setUsdPerEthRate(uint256 arg1) {
    require msg.sender == ethRateChangerAddress
    require arg1 >= 100
    require arg1 <= 700
    require block.timestamp >= uint64(lastUsdPerEthChangeDate + 3600)
    usdPerEthCoinmarketcapRate = arg1
    lastUsdPerEthChangeDate = uint64(block.timestamp)
}

function startMigration() {
    require msg.sender == creatorAddress
    require currentState <= 5
    require 3 == currentState
    currentState = 5
    emit LogStateSwitch(5);
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.lockTransfer(bool rg1) with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
}

function startRefunding() {
    require msg.sender == creatorAddress
    require currentState <= 5
    require 1 == currentState
    require icoTokensSold < 150000 * 10^18
    currentState = 4
    emit LogStateSwitch(4);
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.lockTransfers() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function issueTokensExternal(address arg1, uint256 arg2) {
    require msg.sender == tokenManagerAddress
    require currentState <= 5
    if currentState != 3:
        require currentState <= 5
        require 1 == currentState
    require issuedExternallyTokens + arg2 <= 1000000 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    issuedExternallyTokens += arg2
}

function startICO() {
    require msg.sender == creatorAddress
    require currentState <= 5
    require 0 == currentState
    currentState = 1
    emit LogStateSwitch(1);
    icoStartedTime = uint64(block.timestamp)
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.lockTransfer(bool rg1) with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args foundersRewardsAccount, 2000000 * 10^18
    require ext_call.success
}

function getMyRefund() {
    require currentState <= 5
    require 4 == currentState
    require stor1[address(msg.sender)] > 0
    stor1[address(msg.sender)] = 0
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.burnTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value stor1[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function getMntTokensPerEth(uint256 arg1) {
    mem[96] = 0
    mem[128 len 288] = 0
    require arg1 / 10^18 / 700000 >= 0
    require arg1 / 10^18 / 700000 <= 9
    mem[64] = 736
    mem[416] = 20
    mem[448] = 15
    mem[480] = 10
    mem[512] = 8
    mem[544] = 6
    mem[576] = 4
    mem[608] = 2
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    require arg1 / 10^18 / 700000 < 10
    require uint8(mem[(32 * arg1 / 10^18 / 700000) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * arg1 / 10^18 / 700000) + 416] + 100)
    mem[736] = 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * arg1 / 10^18 / 700000) + 416] + 100)
    return memory
      from 736
       len 32
}

function getCurrentPrice() {
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 700000 >= 0
    require icoTokensSold / 10^18 / 700000 <= 9
    mem[64] = 736
    mem[416] = 20
    mem[448] = 15
    mem[480] = 10
    mem[512] = 8
    mem[544] = 6
    mem[576] = 4
    mem[608] = 2
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    require icoTokensSold / 10^18 / 700000 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    mem[736] = 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    return memory
      from 736
       len 32
}

function finishICO() {
    require currentState <= 5
    require 1 == currentState
    if creatorAddress != msg.sender:
        require icoStartedTime > 0
        if block.timestamp <= uint64(icoStartedTime + (720 * 24 * 3600)):
            require icoTokensSold >= 7000000 * 10^18
    currentState = 3
    emit LogStateSwitch(3);
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.lockTransfer(bool rg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require icoTokensSold <= 7000000 * 10^18
    icoTokensUnsold = -icoTokensSold + 7000000 * 10^18
    if icoTokensUnsold > 0:
        require ext_code.size(mntTokenAddress)
        call mntTokenAddress.issueTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args unsoldContractAddress, icoTokensUnsold
        require ext_call.success
        require ext_code.size(unsoldContractAddress)
        call unsoldContractAddress.finishIco() with:
             gas gas_remaining - 710 wei
        require ext_call.success
    s = 0
    idx = 0
    while idx < 9:
        require idx < multisigs.length
        mem[0] = 0
        if eth.balance(this.address) >= eth.balance(this.address) / 10:
            call multisigs[idx].field_0 with:
               value eth.balance(this.address) / 10 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        s = multisigs[idx].field_0
        idx = idx + 1
        continue 
    if eth.balance(this.address) != 0:
        require 9 < multisigs.length
        call address(multisigs.field_2304) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require currentState <= 5
    require 1 == currentState
    require msg.value
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 700000 >= 0
    require icoTokensSold / 10^18 / 700000 <= 9
    mem[64] = 736
    mem[416] = 20
    mem[448] = 15
    mem[480] = 10
    mem[512] = 8
    mem[544] = 6
    mem[576] = 4
    mem[608] = 2
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    require icoTokensSold / 10^18 / 700000 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require icoTokensSold + (msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18) <= 7000000 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
    require ext_call.success
    icoTokensSold += msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
    emit LogBuy((msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18), msg.sender);
    require stor1[address(msg.sender)] + msg.value >= stor1[address(msg.sender)]
    require stor1[address(msg.sender)] + msg.value >= msg.value
    stor1[address(msg.sender)] += msg.value
    require totalCollectedWei + msg.value >= totalCollectedWei
    require totalCollectedWei + msg.value >= msg.value
    totalCollectedWei += msg.value
}

function buyTokens(address arg1) payable {
    require currentState <= 5
    require 1 == currentState
    require msg.value
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 700000 >= 0
    require icoTokensSold / 10^18 / 700000 <= 9
    mem[64] = 736
    mem[416] = 20
    mem[448] = 15
    mem[480] = 10
    mem[512] = 8
    mem[544] = 6
    mem[576] = 4
    mem[608] = 2
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    require icoTokensSold / 10^18 / 700000 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require icoTokensSold + (msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18) <= 7000000 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
    require ext_call.success
    icoTokensSold += msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
    emit LogBuy((msg.value * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18), arg1);
    require stor1[address(msg.sender)] + msg.value >= stor1[address(msg.sender)]
    require stor1[address(msg.sender)] + msg.value >= msg.value
    stor1[address(msg.sender)] += msg.value
    require totalCollectedWei + msg.value >= totalCollectedWei
    require totalCollectedWei + msg.value >= msg.value
    totalCollectedWei += msg.value
}

function issueTokensFromOtherCurrency(address arg1, uint256 arg2) {
    require currentState <= 5
    require 1 == currentState
    require msg.sender == otherCurrenciesCheckerAddress
    require arg2
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 700000 >= 0
    require icoTokensSold / 10^18 / 700000 <= 9
    mem[64] = 736
    mem[416] = 20
    mem[448] = 15
    mem[480] = 10
    mem[512] = 8
    mem[544] = 6
    mem[576] = 4
    mem[608] = 2
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    require icoTokensSold / 10^18 / 700000 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100)
    require arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18 <= 30000 * 10^18
    require issuedFromOtherCurrencies + (arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18) <= 3000000 * 10^18
    require icoTokensSold + (arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18) <= 7000000 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
    require ext_call.success
    icoTokensSold += arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
    emit LogBuy((arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18), arg1);
    issuedFromOtherCurrencies += arg2 * 1000000000000000000000 * 10^18 * usdPerEthCoinmarketcapRate / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 700000) + 416] + 100) / 10^18
}



}
