contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'BestLink' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'BLC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 1000000000 * 10^18
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    stor6 = stor3
    address(stor7.field_0) = 0xceadfdccd0e8e370d985c49ed3117b2572243a4a
    stor4[address(stor7.field_0)] = stor3
    Mask(96, 0, stor7.field_160) = 0
    return code.data[625 len 3658]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 _totalSupply;
uint8 stor7; offset 160
uint128 stor7; offset 160
address _creatorAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _creator() {
    return _creatorAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require msg.sender == _creatorAddress
    selfdestruct(_creatorAddress)
}

function _fallback() payable {
    revert
}

function freezeAll() {
    require msg.sender == _creatorAddress
    Mask(96, 0, stor7.field_160) = Mask(96, 0, not bool(uint8(stor7.field_160)))
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor7.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor7.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor7.field_160)
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
