contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint8 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;
address stor9; offset 8

function _fallback() payable {
    stor0 = 0
    stor6 = 0
    bool(stor7.length) = 0
    stor7.length.field_1 = 6
    stor7.length.field_8 = 'RRcoin' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 2
    stor8.length.field_8 = 'RR' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor9.field_0) = 18
    require not msg.value
    stor1 = msg.sender
    address(stor9.field_8) = code.data[6100 len 20]
    return code.data[588 len 5500]
}



// =====================  Runtime code  =====================


address owner;
address stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor6;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address crowdsaleMinterAddress; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isStarted() {
    return bool(stor6)
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

function getTotalSupply() {
    return totalSupply
}

function crowdsaleMinter() {
    return crowdsaleMinterAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function emergencyStop() {
    require msg.sender == owner
    stor6 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function start() {
    require msg.sender == crowdsaleMinterAddress
    require not stor6
    stor6 = 1
}

function acceptOwnership() {
    require msg.sender == stor2
    emit OwnershipTransferred(owner, stor2);
    owner = stor2
}

function approve(address arg1, uint256 arg2) {
    require stor6
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approve_fixed(address arg1, uint256 arg2, uint256 arg3) {
    require stor6
    if allowance[address(msg.sender)][address(arg1)] != arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleMinterAddress
    require not stor6
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor6
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor6
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
