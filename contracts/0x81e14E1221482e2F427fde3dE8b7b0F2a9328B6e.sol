contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor10;
mapping of uint256 stor11;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'test' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TST' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor3 = 32 * 10^11
    stor4 = 3516521
    stor5 = 32000
    stor6 = 4269
    stor10[0xccc8a6a72f0c83362d858b580cc4e81f107f30b0] = stor3
    stor11[0xccc8a6a72f0c83362d858b580cc4e81f107f30b0] = 1
    return code.data[557 len 2553]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupplyPerAddress;
uint256 initialBlockCount;
uint256 rewardPerBlockPerAddress;
uint256 totalGenesisAddresses;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 balanceOf;
mapping of uint256 genesis;

function name() {
    return name[0 len name.length]
}

function initialSupplyPerAddress() {
    return initialSupplyPerAddress
}

function totalGenesisAddresses() {
    return totalGenesisAddresses
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function genesisAddress(address arg1) {
    return genesis[arg1]
}

function rewardPerBlockPerAddress() {
    return rewardPerBlockPerAddress
}

function initialBlockCount() {
    return initialBlockCount
}

function _fallback() payable {
    revert
}

function sub_fa7b9ac2(?) {
    return (initialSupplyPerAddress * totalGenesisAddresses)
}

function maxTotalSupply() {
    return (initialSupplyPerAddress * totalGenesisAddresses)
}

function totalSupply() {
    stor9 = block.number - initialBlockCount
    stor7 = initialSupplyPerAddress - (rewardPerBlockPerAddress * stor9)
    return (stor7 * totalGenesisAddresses)
}

function availableBalanceOf(address arg1) {
    stor9 = block.number - initialBlockCount
    stor7 = initialSupplyPerAddress - (rewardPerBlockPerAddress * stor9)
    if stor7 < 0:
        stor7 = 0
    if balanceOf[address(arg1)] - stor7 <= 0:
        return 0
    return (balanceOf[address(arg1)] - stor7)
}

function transfer(address arg1, uint256 arg2) {
    require genesis[address(arg1)] != 1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if genesis[address(msg.sender)] == 1:
        stor9 = block.number - initialBlockCount
        stor7 = initialSupplyPerAddress - (rewardPerBlockPerAddress * stor9)
        if stor7 < 0:
            stor7 = 0
        stor8 = balanceOf[address(msg.sender)] - stor7
        require arg2 <= stor8
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
