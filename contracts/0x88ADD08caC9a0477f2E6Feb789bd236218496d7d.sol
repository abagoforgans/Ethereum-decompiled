contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor3;
array of uint256 stor5;
uint256 stor6;
uint8 stor8;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = '1.0' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 10000000 * 10^18
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor3[address(msg.sender)] = stor6
    return code.data[351 len 3880]
}



// =====================  Runtime code  =====================


const name = 'O'

const decimals = 18

const symbol = 'O'


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint256 sub_c844b593;
mapping of uint8 stor7;
uint8 stor8;

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function sub_5cc64d5d(?) {
    return bool(stor8)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_c1682364(?) {
    require owner == msg.sender
    return bool(stor8)
}

function sub_c844b593(?) {
    require owner == msg.sender
    return sub_c844b593
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function sub_80ea39bd(?) {
    require owner == msg.sender
    stor8 = 0
    emit 0xde3de8ce: 0
}

function sub_e6fc22ae(?) {
    require owner == msg.sender
    stor8 = 1
    emit 0xde3de8ce: 1
}

function accountStatus(address arg1) {
    require owner == msg.sender
    if not stor7[address(arg1)]:
        return 0
    return 1
}

function freezeAccount(address arg1) {
    require owner == msg.sender
    stor7[address(arg1)] = 1
    emit Freeze(address(arg1), 1);
}

function unfreezeAccount(address arg1) {
    require owner == msg.sender
    stor7[address(arg1)] = 0
    emit Freeze(address(arg1), 0);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if 1 == bool(stor7[address(msg.sender)]):
        require owner == msg.sender
    else:
        if stor8:
            require owner == msg.sender
    require not stor7[address(arg1)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintToken(uint256 arg1) {
    require owner == msg.sender
    if arg1:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
    require (10^18 * arg1) + balanceOf[stor0] >= balanceOf[stor0]
    require (10^18 * arg1) + balanceOf[stor0] >= 10^18 * arg1
    balanceOf[address(msg.sender)] = (10^18 * arg1) + balanceOf[stor0]
    require (10^18 * arg1) + sub_c844b593 >= sub_c844b593
    require (10^18 * arg1) + sub_c844b593 >= 10^18 * arg1
    sub_c844b593 += 10^18 * arg1
    emit Mint(owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if 1 == bool(stor7[address(msg.sender)]):
        require owner == msg.sender
    else:
        if stor8:
            require owner == msg.sender
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
