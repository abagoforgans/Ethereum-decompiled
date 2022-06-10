contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8
address stor5;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'VISix' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'VI6' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 6
    uint8(stor4.field_0) = 0
    stor5 = 0
    require not msg.value
    stor3 = 10^9 * 10^stor2
    stor7[address(msg.sender)] = stor3
    address(stor4.field_8) = msg.sender
    return code.data[643 len 3748]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor4;
address stor4;
address owner; offset 8
uint256 stor4; offset 8
address stor5;
mapping of uint8 stor6;
mapping of uint256 balanceOf;

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
    return balanceOf[arg1]
}

function lockAll() {
    return bool(uint8(stor4.field_0))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozens(address arg1) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function freezeAll(bool arg1) {
    require msg.sender == owner
    uint8(stor4.field_0) = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    stor5 = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function acceptOwnership() {
    require msg.sender == stor5
    require stor5
    Mask(248, 0, stor4.field_8) = stor5
    stor5 = 0
    emit OwnerUpdate(address(stor4.field_0), stor5);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_0)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor6[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}



}
