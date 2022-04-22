contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;
address stor5;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor5 = msg.sender
    stor0 = code.data[4918 len 32]
    stor1[address(msg.sender)] = code.data[4918 len 32]
    return code.data[159 len 4759]
}



// =====================  Runtime code  =====================


const name = 'TonToken'

const decimals = 5

const version = '1'

const symbol = 'TON'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address newOwner;
address moderatorAddress;
address newModeratorAddress;
mapping of uint8 stor7;

function totalSupply() {
    return totalSupply
}

function moderator() {
    return moderatorAddress
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function hasModerator() {
    return bool(moderatorAddress)
}

function newModerator() {
    return newModeratorAddress
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

function removeModeratorship() {
    require owner == msg.sender
    moderatorAddress = 0
}

function freeze(address arg1) {
    require moderatorAddress == msg.sender
    stor7[address(arg1)] = 1
}

function unfreeze(address arg1) {
    require moderatorAddress == msg.sender
    stor7[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function transferModeratorship(address arg1) {
    require moderatorAddress == msg.sender
    newModeratorAddress = arg1
}

function isFrozen(address arg1) {
    if not stor7[address(arg1)]:
        return bool(stor7[address(arg1)])
    return bool(moderatorAddress)
}

function unpause() {
    if moderatorAddress != msg.sender:
        require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    if moderatorAddress != msg.sender:
        require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
}

function approveOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approveModeratorship() {
    require newModeratorAddress == msg.sender
    moderatorAddress = newModeratorAddress
    newModeratorAddress = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function moderatorTransferFrom(address arg1, address arg2, uint256 arg3) {
    require moderatorAddress == msg.sender
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    if stor7[address(msg.sender)]:
        require not moderatorAddress
    if stor7[address(arg1)]:
        require not moderatorAddress
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    if stor7[address(msg.sender)]:
        require not moderatorAddress
    if stor7[address(arg1)]:
        require not moderatorAddress
    if stor7[address(arg2)]:
        require not moderatorAddress
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
