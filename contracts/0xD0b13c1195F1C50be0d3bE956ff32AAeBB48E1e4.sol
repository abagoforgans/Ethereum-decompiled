contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;

function _fallback() payable {
    bool(stor6.length) = 0
    stor6.length.field_1 = 9
    stor6.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 15
    stor7.length.field_8 = 'First Cash Coin' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = 'FCC' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 8
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor4[address(msg.sender)] = 2 * 10^16
    stor2 = 2 * 10^16
    stor3 = 0
    return code.data[520 len 3055]
}



// =====================  Runtime code  =====================


address owner;
address icoAddress;
uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

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

function ico() {
    return icoAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(stor3)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function lock() {
    require owner == msg.sender
    stor3 = 1
    return 1
}

function unlock() {
    require owner == msg.sender
    stor3 = 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function transferIcoship(address arg1) {
    require owner == msg.sender
    icoAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issue(address arg1, uint256 arg2) {
    require icoAddress == msg.sender
    require arg2 >= 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
