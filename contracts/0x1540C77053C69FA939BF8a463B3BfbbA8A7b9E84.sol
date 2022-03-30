contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

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
    stor6 = 4268
    return code.data[422 len 3238]
}



// =====================  Runtime code  =====================


const currentEthBlock = block.number


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
uint256 stor10;
mapping of uint256 balanceOf;
mapping of uint8 stor13;

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
    return bool(stor13[arg1])
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

function currentBlock() {
    return (block.number - initialBlockCount)
}

function maxTotalSupply() {
    return (initialSupplyPerAddress * totalGenesisAddresses)
}

function totalSupply() {
    stor9 = block.number - initialBlockCount
    stor7 = rewardPerBlockPerAddress * stor9
    return (stor7 * totalGenesisAddresses)
}

function setGenesisAddress(address arg1) {
    if 0x75e633ce4cff22af023ce69a58705d93971c12c5 != msg.sender:
        return 0
    balanceOf[address(arg1)] = initialSupplyPerAddress
    stor13[address(arg1)] = 1
    return balanceOf[address(arg1)]
}

function availableBalanceOf(address arg1) {
    if not stor13[address(arg1)]:
        return balanceOf[address(arg1)]
    stor9 = block.number - initialBlockCount
    if stor9 >= 100 * 10^6:
        return balanceOf[address(arg1)]
    stor7 = rewardPerBlockPerAddress * stor9
    stor10 = initialSupplyPerAddress - stor7
    stor8 = balanceOf[address(arg1)] - stor10
    return stor8
}

function transfer(address arg1, uint256 arg2) {
    require not stor13[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if stor13[address(msg.sender)]:
        stor9 = block.number - initialBlockCount
        if stor9 < 100 * 10^6:
            stor7 = rewardPerBlockPerAddress * stor9
            stor10 = initialSupplyPerAddress - stor7
            stor8 = balanceOf[address(msg.sender)] - stor10
            require arg2 <= stor8
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
