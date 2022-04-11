contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint128 stor6; offset 160
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 1.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'DONE' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'DONE' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 16
    stor5 = 350000 * 10^18
    stor7 = block.timestamp + 3600
    stor8 = block.timestamp + (2 * 3600)
    stor9 = block.timestamp + (3 * 3600)
    require not msg.value
    stor0 = msg.sender
    stor10[address(msg.sender)] = 350000 * 10^18
    stor6 = 0
    return code.data[686 len 5253]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor6; offset 160
uint128 stor6; offset 160
address priviledgedAddress;
uint256 crowdfundDeadline;
uint256 nextFreeze;
uint256 nextThaw;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function tokensFrozen() {
    return bool(uint8(stor6.field_160))
}

function decimals() {
    return decimals
}

function nextThaw() {
    return nextThaw
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function crowdfundDeadline() {
    return crowdfundDeadline
}

function nextFreeze() {
    return nextFreeze
}

function owner() {
    return owner
}

function priviledgedAddress() {
    return priviledgedAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function ownerTransferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function ownerSetPriviledgedAddress(address arg1) {
    require msg.sender == owner
    priviledgedAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function priviledgedAddressBurnUnsoldCoins() {
    require msg.sender == priviledgedAddress
    require balanceOf[address(stor6.field_0)] <= totalSupply
    totalSupply -= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] = 0
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor6.field_160):
        if priviledgedAddress != msg.sender:
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function updateTokenStatus() {
    if block.timestamp < crowdfundDeadline:
        Mask(96, 0, stor6.field_160) = 1
        emit LogTokensFrozen(bool(uint8(stor6.field_160)));
    if block.timestamp >= nextFreeze:
        Mask(96, 0, stor6.field_160) = 1
        emit LogTokensFrozen(bool(uint8(stor6.field_160)));
    if block.timestamp >= nextThaw:
        Mask(96, 0, stor6.field_160) = 0
        nextFreeze = block.timestamp + (2 * 3600)
        nextThaw = block.timestamp + (3 * 3600)
        emit LogTokensFrozen(bool(uint8(stor6.field_160)));
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor6.field_160):
        if priviledgedAddress != msg.sender:
            return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
