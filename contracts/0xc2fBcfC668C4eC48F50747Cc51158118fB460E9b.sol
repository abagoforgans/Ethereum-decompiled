contract main {




// =====================  Runtime code  =====================


const name = 'Sie Chain'

const decimals = 8

const symbol = 'sie'


address owner;
uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor2)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
    revert
}

function freeze(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function unfreeze(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function unpause() {
    require msg.sender == owner
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor2
    stor2 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor2
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require not stor6[address(arg2)]
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
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
