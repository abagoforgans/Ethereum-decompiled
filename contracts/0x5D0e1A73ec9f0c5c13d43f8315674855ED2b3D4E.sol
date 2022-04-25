contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = '8SM' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '8SM' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    stor4 = 25 * 10^15
    require not uint8(stor0.field_0)
    address(stor0.field_8) = msg.sender
    uint8(stor0.field_0) = 1
    emit OwnerEvents(msg.sender, 1);
    return code.data[780 len 4958]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 168
uint128 stor0; offset 168
address stor0;
address owner; offset 8
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
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
    require bool(uint8(stor0.field_168)) == 1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function OwnerDefined() {
    return bool(uint8(stor0.field_0))
}

function allowance(address arg1, address arg2) {
    require bool(uint8(stor0.field_168)) == 1
    return allowance[address(arg1)][address(arg2)]
}

function tokenState() {
    return bool(uint8(stor0.field_168))
}

function _fallback() payable {
    revert
}

function init() {
    require not uint8(stor0.field_168)
    Mask(88, 0, stor0.field_168) = 1
    balanceOf[address(this.address)] = totalSupply
    allowance[address(this.address)][address(stor0.field_0)] = totalSupply
    return 1
}

function changeOwner() {
    require owner == msg.sender
    require bool(uint8(stor0.field_168)) == 1
    allowance[address(this.address)][address(stor0.field_0)] = 0
    owner = msg.sender
    allowance[address(this.address)][address(msg.sender)] = balanceOf[address(this.address)]
    return 1
}

function approve(address arg1, uint256 arg2) {
    require bool(uint8(stor0.field_168)) == 1
    require arg1
    require msg.sender == owner
    if arg2:
        require arg2
        require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
    allowance[address(msg.sender)][address(arg1)] = 100 * 10^6 * arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require bool(uint8(stor0.field_168)) == 1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
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
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
