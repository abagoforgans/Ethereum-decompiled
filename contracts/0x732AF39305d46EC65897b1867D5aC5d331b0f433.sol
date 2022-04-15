contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'Token 0.2' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 7
    stor6.length.field_8 = 'Coinoor' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'CNR' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 8
    require not msg.value
    stor0 = msg.sender
    stor3[address(msg.sender)] = 0
    stor1 = 0
    stor2 = 1
    return code.data[499 len 2811]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
uint8 stor2;
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
    return bool(stor2)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unlock() {
    require owner == msg.sender
    stor2 = 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not stor2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issue(address arg1, uint256 arg2) {
    require owner == msg.sender
    require calldata.size >= 68
    require arg2 > 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not stor2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not stor2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
