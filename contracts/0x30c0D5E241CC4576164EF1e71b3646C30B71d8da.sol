contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9;
address stor9; offset 16
uint256 stor9; offset 8
address stor10;
mapping of uint256 stor11;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'T_Token_9' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'T_TPR_T9' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = 260 * 10^6 * 10^stor2
    stor5 = 30 * 10^6 * 10^stor2
    stor6 = 210 * 10^6 * 10^stor2
    stor3 = stor4 + stor5 + stor6
    stor11[address(msg.sender)] = stor6
    address(stor9.field_16) = 0x5bdcca32c588bf2e691517592e0ebe7f2fa3af80
    stor11[address(stor9.field_0)] = 0
    stor7 = 1800
    uint8(stor9.field_0) = 0
    stor10 = 0x64108822c128d11b6956754056ec4bcbe0b0cdaf
    stor11[stor10] = 0
    stor8 = 3600
    Mask(248, 0, stor9.field_8) = 0
    return code.data[966 len 4452]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint256 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint8 stor9; offset 8
address stor9;
uint256 stor9; offset 8
address stor10;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function releaseFounderCoins() {
    require block.timestamp >= stor8
    require not uint8(stor9.field_8)
    balanceOf[stor10] = stor5
    Mask(248, 0, stor9.field_8) = 1
}

function releaseTprFund() {
    require block.timestamp >= stor7
    require not uint8(stor9.field_0)
    balanceOf[address(stor9.field_0)] = stor4
    uint8(stor9.field_0) = 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] > arg2
    allowance[address(msg.sender)][address(arg1)] = 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
