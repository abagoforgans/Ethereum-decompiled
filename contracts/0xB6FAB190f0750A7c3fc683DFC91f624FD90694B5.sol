contract main {


// =======================  Init code  ======================


array of address stor0;
address stor2;
address stor3;
uint64 stor4; offset 160
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10; offset 160
address stor10;

function _fallback() payable {
    mem[96] = 0x27ce565b1047c6258164062983bb8bc2917f11d2
    mem[128] = 0xfb3afc815894e91fe1ab6e6ef36f8565fbb904f6
    mem[160] = 0x7e2a7a10509177db2a7ea41e728743c4eb42f528
    mem[192] = 0x27ce565b1047c6258164062983bb8bc2917f11d2
    mem[224] = 0xfb3afc815894e91fe1ab6e6ef36f8565fbb904f6
    mem[256] = 0x7e2a7a10509177db2a7ea41e728743c4eb42f528
    mem[288] = 0x27ce565b1047c6258164062983bb8bc2917f11d2
    mem[320] = 0xfb3afc815894e91fe1ab6e6ef36f8565fbb904f6
    mem[352] = 0x7e2a7a10509177db2a7ea41e728743c4eb42f528
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
    stor3 = 0
    address(stor4.field_0) = 0
    uint64(stor4.field_160) = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    address(stor10.field_0) = 0
    uint8(stor10.field_160) = 0
    require not msg.value
    stor2 = msg.sender
    stor3 = code.data[10137 len 20]
    address(stor4.field_0) = code.data[10169 len 20]
    stor5 = code.data[10201 len 20]
    stor6 = code.data[10233 len 20]
    address(stor10.field_0) = code.data[10265 len 20]
    if stor0.length == 10:
        return code.data[1621 len 8504]
    revert
}



// =====================  Runtime code  =====================


const getBlockLength = 100

const getTotalIcoTokens = 150 * 10^18

const ICO_TOKEN_SOFT_CAP = 150000 * 10^18

const ICO_TOKEN_SUPPLY_LIMIT = 150 * 10^18

const BONUS_REWARD = 1000000 * 10^18

const FOUNDERS_REWARD = 2000000 * 10^18


array of address multisigs;
mapping of uint256 stor1;
address creatorAddress;
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

function issuedExternallyTokens() {
    return issuedExternallyTokens
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
    return icoTokensSold >= 150 * 10^18
}

function startMigration() {
    require msg.sender == creatorAddress
    require currentState <= 5
    require 3 == currentState
    currentState = 5
    emit LogStateSwitch(5);
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x20b44b29 with:
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
    call mntTokenAddress.0x82b74b89 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function issueTokensExternal(address arg1, uint256 arg2) {
    require currentState <= 5
    require 3 == currentState
    require msg.sender == tokenManagerAddress
    require issuedExternallyTokens + arg2 <= 1000000 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x475a9fa9 with:
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
    call mntTokenAddress.0x20b44b29 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args foundersRewardsAccount, 2000000 * 10^18
    require ext_call.success
}

function getMntTokensPerEth(uint256 arg1) {
    mem[96] = 0
    mem[128 len 288] = 0
    require arg1 / 10^18 / 100 >= 0
    require arg1 / 10^18 / 100 <= 9
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
    require arg1 / 10^18 / 100 < 10
    require uint8(mem[(32 * arg1 / 10^18 / 100) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * arg1 / 10^18 / 100) + 416] + 100)
    mem[736] = 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * arg1 / 10^18 / 100) + 416] + 100)
    return memory
      from 736
       len 32
}

function getMyRefund() {
    require currentState <= 5
    require 4 == currentState
    require stor1[address(msg.sender)] > 0
    call msg.sender with:
       value stor1[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
}

function getCurrentPrice() {
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 100 >= 0
    require icoTokensSold / 10^18 / 100 <= 9
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
    require icoTokensSold / 10^18 / 100 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    mem[736] = 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    return memory
      from 736
       len 32
}

function issueTokensFromOtherCurrency(address arg1, uint256 arg2) {
    require currentState <= 5
    require 1 == currentState
    require msg.sender == otherCurrenciesCheckerAddress
    require arg2
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 100 >= 0
    require icoTokensSold / 10^18 / 100 <= 9
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
    require icoTokensSold / 10^18 / 100 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require icoTokensSold + (arg2 * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18) <= 150 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18
    require ext_call.success
    icoTokensSold += arg2 * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18
    emit LogBuy((arg2 * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18), arg1);
}

function _fallback() payable {
    require currentState <= 5
    require 1 == currentState
    require msg.value
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 100 >= 0
    require icoTokensSold / 10^18 / 100 <= 9
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
    require icoTokensSold / 10^18 / 100 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require icoTokensSold + (msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18) <= 150 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18
    require ext_call.success
    icoTokensSold += msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18
    emit LogBuy((msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18), msg.sender);
    require stor1[address(msg.sender)] + msg.value >= stor1[address(msg.sender)]
    require stor1[address(msg.sender)] + msg.value >= msg.value
    stor1[address(msg.sender)] += msg.value
}

function buyTokens(address arg1) payable {
    require currentState <= 5
    require 1 == currentState
    require msg.value
    mem[96] = 0
    mem[128 len 288] = 0
    require icoTokensSold / 10^18 / 100 >= 0
    require icoTokensSold / 10^18 / 100 <= 9
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
    require icoTokensSold / 10^18 / 100 < 10
    require uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100)
    require icoTokensSold + (msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18) <= 150 * 10^18
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18
    require ext_call.success
    icoTokensSold += msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18
    emit LogBuy((msg.value * 300000000000000000000000 * 10^18 / 700000 * 10^18 / uint8(mem[(32 * icoTokensSold / 10^18 / 100) + 416] + 100) / 10^18), arg1);
    require stor1[address(msg.sender)] + msg.value >= stor1[address(msg.sender)]
    require stor1[address(msg.sender)] + msg.value >= msg.value
    stor1[address(msg.sender)] += msg.value
}

function finishICO() {
    require currentState <= 5
    require 1 == currentState
    if creatorAddress != msg.sender:
        require icoStartedTime > 0
        if block.timestamp <= uint64(icoStartedTime + (720 * 24 * 3600)):
            require icoTokensSold >= 150 * 10^18
    currentState = 3
    emit LogStateSwitch(3);
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x20b44b29 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require icoTokensSold <= 150 * 10^18
    icoTokensUnsold = -icoTokensSold + 150 * 10^18
    if icoTokensUnsold > 0:
        require ext_code.size(mntTokenAddress)
        call mntTokenAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args unsoldContractAddress, icoTokensUnsold
        require ext_call.success
        require ext_code.size(unsoldContractAddress)
        call unsoldContractAddress.0xec42f82f with:
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



}
