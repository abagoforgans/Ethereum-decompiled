contract main {




// =====================  Runtime code  =====================


const name = 'HoryouToken'

const decimals = 18

const symbol = 'HYT'

const sub_f4fa02b8(?) = 0x2d1537029d869875b5041c28de07ed1afed6ab11

const INITIAL_SUPPLY = (5000000 * 10^18 * 3600)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
address minterAddress;
uint256 sub_4fcc1def;
uint256 MIN_FEE;
uint256 MAX_FEE;

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_4fcc1def(?) {
    return sub_4fcc1def
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function MIN_FEE() {
    return MIN_FEE
}

function owner() {
    return owner
}

function MAX_FEE() {
    return MAX_FEE
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeMinter(address arg1) {
    require msg.sender == owner
    minterAddress = arg1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    MIN_FEE = arg1
    MAX_FEE = arg2
    sub_4fcc1def = arg3
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_9f380332(?) {
    require msg.sender == minterAddress
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_233300ca(?) {
    require not uint8(stor3.field_160)
    require arg3 >= MIN_FEE
    require arg3 <= MAX_FEE
    require arg3
    require 10^18 / arg3
    require 10^14 * arg2 / 10^18 / arg3 > 0
    require arg2 + (10^14 * arg2 / 10^18 / arg3) >= arg2
    require arg2 + (10^14 * arg2 / 10^18 / arg3) <= balanceOf[address(msg.sender)]
    require 10^14 * arg2 / 10^18 / arg3 <= balanceOf[address(msg.sender)]
    require 10^14 * arg2 / 10^18 / arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= 10^14 * arg2 / 10^18 / arg3
    require balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11] + (10^14 * arg2 / 10^18 / arg3) >= balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11]
    balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11] += 10^14 * arg2 / 10^18 / arg3
    emit Transfer((10^14 * arg2 / 10^18 / arg3), msg.sender, 0x2d1537029d869875b5041c28de07ed1afed6ab11);
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require sub_4fcc1def
    require 10^18 / sub_4fcc1def
    require 10^14 * arg2 / 10^18 / sub_4fcc1def > 0
    require arg2 + (10^14 * arg2 / 10^18 / sub_4fcc1def) >= arg2
    require arg2 + (10^14 * arg2 / 10^18 / sub_4fcc1def) <= balanceOf[address(msg.sender)]
    require 10^14 * arg2 / 10^18 / sub_4fcc1def <= balanceOf[address(msg.sender)]
    require 10^14 * arg2 / 10^18 / sub_4fcc1def <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= 10^14 * arg2 / 10^18 / sub_4fcc1def
    require balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11] + (10^14 * arg2 / 10^18 / sub_4fcc1def) >= balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11]
    balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11] += 10^14 * arg2 / 10^18 / sub_4fcc1def
    emit Transfer((10^14 * arg2 / 10^18 / sub_4fcc1def), msg.sender, 0x2d1537029d869875b5041c28de07ed1afed6ab11);
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require sub_4fcc1def
    require 10^18 / sub_4fcc1def
    require 10^14 * arg3 / 10^18 / sub_4fcc1def > 0
    require arg3 + (10^14 * arg3 / 10^18 / sub_4fcc1def) >= arg3
    require arg3 + (10^14 * arg3 / 10^18 / sub_4fcc1def) <= balanceOf[address(msg.sender)]
    require 10^14 * arg3 / 10^18 / sub_4fcc1def <= balanceOf[address(arg1)]
    require 10^14 * arg3 / 10^18 / sub_4fcc1def <= allowance[address(arg1)][address(msg.sender)]
    require 10^14 * arg3 / 10^18 / sub_4fcc1def <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= 10^14 * arg3 / 10^18 / sub_4fcc1def
    require balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11] + (10^14 * arg3 / 10^18 / sub_4fcc1def) >= balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11]
    balanceOf[0x2d1537029d869875b5041c28de07ed1afed6ab11] += 10^14 * arg3 / 10^18 / sub_4fcc1def
    require 10^14 * arg3 / 10^18 / sub_4fcc1def <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= 10^14 * arg3 / 10^18 / sub_4fcc1def
    emit Transfer((10^14 * arg3 / 10^18 / sub_4fcc1def), arg1, 0x2d1537029d869875b5041c28de07ed1afed6ab11);
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
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
