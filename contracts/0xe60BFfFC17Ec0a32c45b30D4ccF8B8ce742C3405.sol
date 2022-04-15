contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
address stor14; offset 8
address stor15;
address stor16;
address stor17;
uint256 stor18;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'BurstIQ Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'BiQ' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 1000000000 * 10^18
    uint8(stor14.field_0) = 0
    require not msg.value
    stor17 = code.data[5264 len 20]
    address(stor14.field_8) = code.data[5296 len 20]
    stor16 = code.data[5360 len 20]
    stor15 = code.data[5328 len 20]
    stor10 = 50000 * 10^18 * 3600
    stor7 = 20000000 * 10^18
    stor8 = 50000000 * 10^18
    stor12 = 600000000 * 10^18
    stor9 = 50000000 * 10^18
    stor13 = 100000000 * 10^18
    stor1[code.data[5296 len 20]] = 120000000 * 10^18
    stor1[stor17] = stor12
    stor11 = stor1[address(stor14.field_8)]
    stor18 = block.timestamp + (4320 * 24 * 3600)
    return code.data[693 len 4559]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 keyEmployeesAllocatedFund;
uint256 advisorsAllocation;
uint256 marketIncentivesAllocation;
uint256 vestingFounderAllocation;
uint256 totalAllocatedTokens;
uint256 tokensAllocatedToCrowdFund;
uint256 saftInvestorAllocation;
uint8 stor14;
address founderMultiSigAddress; offset 8
uint256 stor14;
address advisorAddress;
address vestingFounderAddress;
address crowdFundAddress;
uint256 preAllocatedTokensVestingTime;

function name() {
    return name[0 len name.length]
}

function totalAllocatedTokens() {
    return totalAllocatedTokens
}

function totalSupply() {
    return totalSupply
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function decimals() {
    return decimals
}

function marketIncentivesAllocation() {
    return marketIncentivesAllocation
}

function crowdFundAddress() {
    return crowdFundAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensAllocatedToCrowdFund() {
    return tokensAllocatedToCrowdFund
}

function keyEmployeesAllocatedFund() {
    return keyEmployeesAllocatedFund
}

function saftInvestorAllocation() {
    return saftInvestorAllocation
}

function symbol() {
    return symbol[0 len symbol.length]
}

function advisorAddress() {
    return advisorAddress
}

function isPublicTokenReleased() {
    return bool(uint8(stor14.field_0))
}

function preAllocatedTokensVestingTime() {
    return preAllocatedTokensVestingTime
}

function vestingFounderAllocation() {
    return vestingFounderAllocation
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function vestingFounderAddress() {
    return vestingFounderAddress
}

function advisorsAllocation() {
    return advisorsAllocation
}

function _fallback() {
    revert
}

function changeFounderMultiSigAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    founderMultiSigAddress = arg1
    emit ChangeFoundersWalletAddress(block.timestamp, arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function releaseToken() {
    require founderMultiSigAddress == msg.sender
    require not uint8(stor14.field_0)
    uint256(stor14.field_0) = not uint8(stor14.field_0) or Mask(248, 8, uint256(stor14.field_0))
    emit PublicTokenReleased(block.timestamp);
}

function changeTotalSupply(uint256 arg1) {
    require crowdFundAddress == msg.sender
    require arg1 + totalAllocatedTokens >= totalAllocatedTokens
    totalAllocatedTokens += arg1
    require arg1 <= tokensAllocatedToCrowdFund
    tokensAllocatedToCrowdFund -= arg1
}

function getVestedAdvisorTokens() {
    require advisorAddress == msg.sender
    if block.timestamp < preAllocatedTokensVestingTime:
        return 0
    if advisorsAllocation <= 0:
        return 0
    require advisorsAllocation + balanceOf[stor15] >= balanceOf[stor15]
    balanceOf[stor15] += advisorsAllocation
    require advisorsAllocation + totalAllocatedTokens >= totalAllocatedTokens
    totalAllocatedTokens += advisorsAllocation
    advisorsAllocation = 0
    emit TransferPreAllocatedFunds(block.timestamp, advisorAddress, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if crowdFundAddress != msg.sender:
        if not uint8(stor14.field_0):
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferMarketIncentivesFund(address arg1, uint256 arg2) {
    require founderMultiSigAddress == msg.sender
    require arg1
    if marketIncentivesAllocation < arg2:
        return 0
    require arg2 <= marketIncentivesAllocation
    marketIncentivesAllocation -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalAllocatedTokens >= totalAllocatedTokens
    totalAllocatedTokens += arg2
    emit TransferPreAllocatedFunds(block.timestamp, address(arg1), arg2);
    return 1
}

function getVestedFounderTokens() {
    require vestingFounderAddress == msg.sender
    if block.timestamp < preAllocatedTokensVestingTime:
        return 0
    if vestingFounderAllocation <= 0:
        return 0
    require vestingFounderAllocation + balanceOf[stor16] >= balanceOf[stor16]
    balanceOf[stor16] += vestingFounderAllocation
    require vestingFounderAllocation + totalAllocatedTokens >= totalAllocatedTokens
    totalAllocatedTokens += vestingFounderAllocation
    vestingFounderAllocation = 0
    emit TransferPreAllocatedFunds(block.timestamp, vestingFounderAddress, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdFundAddress != msg.sender:
        if not uint8(stor14.field_0):
            return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
