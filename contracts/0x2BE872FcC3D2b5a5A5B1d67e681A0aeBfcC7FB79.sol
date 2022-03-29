contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 168
uint128 stor1; offset 160
uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    stor8 = 1
    Mask(96, 0, stor1.field_160) = 0
    Mask(88, 0, stor1.field_168) = 0
    return code.data[157 len 5524]
}



// =====================  Runtime code  =====================


address devAddress;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 160
address curatorAddress;
address creditbitAddress;
uint256 creditsExchanged;
uint256 realVotedSupply;
uint256 realSupplyWeight;
uint256 realDevReward;
uint256 realDevRewardWeight;
uint256 stor8;
mapping of struct stor9;
mapping of uint256 stor10;

function realDevRewardWeight() {
    return realDevRewardWeight
}

function realSupplyWeight() {
    return realSupplyWeight
}

function realVotedSupply() {
    return realVotedSupply
}

function getCreditbitAddress() {
    return creditbitAddress
}

function dev() {
    return devAddress
}

function realDevReward() {
    return realDevReward
}

function creditsExchanged() {
    return creditsExchanged
}

function curator() {
    return curatorAddress
}

function _fallback() {
    revert 
}

function getCurrentSupplyVote() {
    return (realVotedSupply / 100 * 10^6)
}

function getCurrentCreditsExchanged() {
    return (creditsExchanged / 100 * 10^6)
}

function getCurrentDaoStakeSupply() {
    return (realVotedSupply - (realVotedSupply * realDevReward / 100) / 100 * 10^6)
}

function endMigration() {
    if devAddress != msg.sender:
        return 1
    Mask(96, 0, stor1.field_160) = 1
    return 0
}

function setCreditbit(address arg1) {
    if devAddress != msg.sender:
        return 1
    creditbitAddress = arg1
    return 0
}

function setCreditMCCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function getCurrentDevReward() {
    return ((realVotedSupply * realDevReward) - (creditsExchanged * realDevReward) / 100 / 100 * 10^6)
}

function claimDaoStakeSupply(address arg1) {
    if devAddress != msg.sender:
        return 1
    if uint8(stor1.field_168):
        return 1
    if not uint8(stor1.field_160):
        return 1
    require ext_code.size(creditbitAddress)
    call creditbitAddress.mintMigrationTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), realVotedSupply - creditsExchanged
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    creditsExchanged = realVotedSupply
    return 0
}

function claimDevReward(address arg1) {
    if devAddress != msg.sender:
        return 1
    if uint8(stor1.field_168):
        return 1
    if not uint8(stor1.field_160):
        return 1
    require ext_code.size(creditbitAddress)
    call creditbitAddress.mintMigrationTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), (realVotedSupply * realDevReward) - (creditsExchanged * realDevReward) / 100
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    creditsExchanged += (realVotedSupply * realDevReward) - (creditsExchanged * realDevReward) / 100
    return 0
}

function getMigrationAccount(address arg1) {
    mem[512] = stor9[stor10[address(arg1)]].field_0
    idx = 512
    s = 0
    while stor9[stor10[address(arg1)]].length + 480 > idx:
        mem[idx + 32] = stor9[stor10[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9[stor10[address(arg1)]].length) + 544] = stor9[stor10[address(arg1)]].field_256
    mem[ceil32(stor9[stor10[address(arg1)]].length) + 576] = stor9[stor10[address(arg1)]].field_512
    mem[ceil32(stor9[stor10[address(arg1)]].length) + 608] = stor9[stor10[address(arg1)]].field_768
    mem[ceil32(stor9[stor10[address(arg1)]].length) + 640] = stor9[stor10[address(arg1)]].field_1024
    mem[ceil32(stor9[stor10[address(arg1)]].length) + 512] = 160
    mem[ceil32(stor9[stor10[address(arg1)]].length) + 672] = stor9[stor10[address(arg1)]].length
    if stor9[stor10[address(arg1)]].length:
        mem[ceil32(stor9[stor10[address(arg1)]].length) + 704] = mem[512]
        mem[ceil32(stor9[stor10[address(arg1)]].length) + 736 len floor32(stor9[stor10[address(arg1)]].length - 1)] = mem[544 len floor32(stor9[stor10[address(arg1)]].length - 1)]
    return Array(len=stor9[stor10[address(arg1)]].length, data=mem[ceil32(stor9[stor10[address(arg1)]].length) + 704 len stor9[stor10[address(arg1)]].length]), 
           stor9[stor10[address(arg1)]].field_256,
           stor9[stor10[address(arg1)]].field_512,
           stor9[stor10[address(arg1)]].field_768,
           stor9[stor10[address(arg1)]].field_1024
}

function addNewAccount(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if uint8(stor1.field_160):
        return 1
    if curatorAddress != msg.sender:
        return 1
    if stor10[address(arg2)]:
        require ext_code.size(creditbitAddress)
        call creditbitAddress.mintMigrationTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), arg3
        require ext_call.success
        if ext_call.return_data[0]:
            return 1
        if not creditbitAddress:
            return 1
        stor9[stor10[address(arg2)]].field_512 += arg3
    else:
        stor8++
        require ext_code.size(creditbitAddress)
        call creditbitAddress.mintMigrationTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), arg3
        require ext_call.success
        if ext_call.return_data[0]:
            return 1
        if not creditbitAddress:
            return 1
        stor9[stor8][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor9[stor8].field_256 = arg2
        stor9[stor8].field_512 = arg3
        stor9[stor8].field_768 = arg4
        stor9[stor8].field_1024 = arg5
        stor10[address(arg2)] = stor8
    creditsExchanged += arg3
    require realSupplyWeight + arg3
    require realDevRewardWeight + arg3
    realVotedSupply = (realVotedSupply * realSupplyWeight) + (arg4 * arg3) / realSupplyWeight + arg3
    realSupplyWeight += arg3
    realDevReward = (realDevReward * realDevRewardWeight) + (arg5 * arg3) / realDevRewardWeight + arg3
    realDevRewardWeight += arg3
    return 0
}



}
