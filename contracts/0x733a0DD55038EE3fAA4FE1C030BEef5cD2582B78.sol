contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;
bool stor6; offset 256
uint8 stor6;
uint16 stor6; offset 8
mapping of uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    bool(stor4.length) = 0
    stor4.length.field_1 = 26
    stor4.length.field_8 = 'Trish Kelly Portfolio Coin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'TKP' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor2 = 60000000 * 10^18
    require stor8[address(msg.sender)] + 60000000 * 10^18 >= stor8[address(msg.sender)]
    stor8[address(msg.sender)] += 60000000 * 10^18
    uint8(stor6.field_0) = 1
    uint16(stor6.field_8) = 0
    stor6.field_256 % 1 = 0
    return code.data[527 len 4077]
}



// =====================  Runtime code  =====================


address owner;
array of address tKPUsers;
uint256 totalSupply;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
mapping of uint256 allowance;
mapping of uint256 balances;
mapping of uint256 icoBalances;
mapping of uint256 tKPUserArrayIdentifier;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function tokenTransfersFrozen() {
    return bool(uint8(stor6.field_0))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function TKPUserArrayIdentifier(address arg1) {
    return tKPUserArrayIdentifier[arg1]
}

function icoBalances(address arg1) {
    return icoBalances[arg1]
}

function contractLaunched() {
    return bool(uint8(stor6.field_16))
}

function TKPUserRegistered(address arg1) {
    return bool(stor11[arg1])
}

function tokenMintingEnabled() {
    return bool(uint8(stor6.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function TKPUsers(uint256 arg1) {
    require arg1 < tKPUsers.length
    return tKPUsers[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 1
}

function thawTokenTransfers() {
    require owner == msg.sender
    uint8(stor6.field_0) = 0
    emit ThawTokenTransfers(1, msg.sender);
    return 1
}

function enableTokenMinting() {
    require owner == msg.sender
    uint8(stor6.field_8) = 1
    emit TokenMintingEnabled(msg.sender, 1);
    return 1
}

function disableTokenMinting() {
    require owner == msg.sender
    uint8(stor6.field_8) = 0
    emit TokenMintingDisabled(msg.sender, 1);
    return 1
}

function freezeTokenTransfers() {
    require owner == msg.sender
    uint8(stor6.field_0) = 1
    emit FreezeTokenTransfers(1, msg.sender);
    return 1
}

function launchContract() {
    require owner == msg.sender
    require not uint8(stor6.field_16)
    uint8(stor6.field_0) = 0
    uint8(stor6.field_8) = 1
    uint8(stor6.field_16) = 1
    stor6.field_256 % 1 = 0
    emit LaunchContract(1, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    require balances[address(msg.sender)] >= arg2
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    return 1
}

function tokenBurner(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= totalSupply
    require totalSupply - arg1 > 0
    require balances[address(msg.sender)] > arg1
    require arg1 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg1 > 0
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function tokenFactory(uint256 arg1) {
    require owner == msg.sender
    require uint8(stor6.field_8)
    require arg1 > 0
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply > 0
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply > totalSupply
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require arg2 > 0
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg2 >= 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transactionReplay(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    require arg2 > 0
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] - arg2 >= 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > 0
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not uint8(stor6.field_0)
    require arg3 > 0
    require arg2
    require arg3 <= balances[address(arg1)]
    require balances[address(arg1)] - arg3 >= 0
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] > 0
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] > balances[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
