contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
uint256 stor2; offset 8
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
address stor6;

function _fallback() payable {
    stor0 = 1000 * 10^18
    stor1 = 0
    uint8(stor2.field_0) = 18
    Mask(248, 0, stor2.field_8) = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 11
    stor3.length.field_8 = 'ERC20 Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'DavidCoin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'David' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = msg.sender
    require not msg.value
    return code.data[585 len 3831]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 circulatingSupply;
uint8 decimals;
uint8 stor2; offset 8
uint256 stor2; offset 8
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
address owner;
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

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function circulatingSupply() {
    return circulatingSupply
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

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initializeCoins() {
    if msg.sender == owner:
        if not uint8(stor2.field_8):
            balanceOf[address(msg.sender)] = totalSupply
            Mask(248, 0, stor2.field_8) = 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
