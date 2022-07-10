contract main {




// =====================  Runtime code  =====================


const name = 'CNcoin TOKEN'

const decimals = 18

const symbol = 'CNcoin'

const INITIAL_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint256 allowanceBurn;
mapping of uint8 stor5;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowanceBurn(address arg1, address arg2) {
    return allowanceBurn[address(arg1)][address(arg2)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveBurn(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowanceBurn[address(msg.sender)][address(arg1)] = arg2
    emit ApprovalBurn(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseBurnApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowanceBurn[address(msg.sender)][address(arg1)] + arg2 >= allowanceBurn[address(msg.sender)][address(arg1)]
    allowanceBurn[address(msg.sender)][address(arg1)] += arg2
    emit ApprovalBurn(allowanceBurn[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function burn(uint256 arg1) {
    require not uint8(stor3.field_160)
    if stor5[address(msg.sender)]:
        revert with 0, 'Sender account freezed'
    require not uint8(stor3.field_160)
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseBurnApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 >= allowanceBurn[address(msg.sender)][address(arg1)]:
        allowanceBurn[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowanceBurn[address(msg.sender)][address(arg1)]
        allowanceBurn[address(msg.sender)][address(arg1)] -= arg2
    emit ApprovalBurn(allowanceBurn[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if stor5[address(msg.sender)]:
        revert with 0, 'Sender account freezed'
    if stor5[address(arg1)]:
        revert with 0, 'Receiver account freezed'
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if stor5[address(msg.sender)]:
        revert with 0, 'Spender account freezed'
    if stor5[address(arg1)]:
        revert with 0, 'Sender account freezed'
    require not uint8(stor3.field_160)
    require arg2 <= allowanceBurn[address(arg1)][address(msg.sender)]
    require arg2 <= allowanceBurn[address(arg1)][address(msg.sender)]
    allowanceBurn[address(arg1)][address(msg.sender)] -= arg2
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    if stor5[address(msg.sender)]:
        revert with 0, 'Spender account freezed'
    if stor5[address(arg1)]:
        revert with 0, 'Sender account freezed'
    if stor5[address(arg2)]:
        revert with 0, 'Receiver account freezed'
    require not uint8(stor3.field_160)
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
