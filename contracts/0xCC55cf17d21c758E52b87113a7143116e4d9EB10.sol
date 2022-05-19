contract main {




// =====================  Runtime code  =====================


const name = 'Vending Machine Chain'

const decimals = 18

const symbol = 'VMC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function totalSupply() {
    return totalSupply
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

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
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
    return 1
}

function releaseTeamVested() {
    require msg.sender == owner
    require stor7 != stor8
    require stor9
    require stor5 <= block.timestamp
    require stor6
    if not stor7 / stor9:
        if 0 <= stor7:
            require stor8 <= 0
            require -stor8 > 0
            require 0 >= stor8
            stor8 = 0
            require balanceOf[stor4] - stor8 >= balanceOf[stor4]
            balanceOf[stor4] -= stor8
            emit Transfer(-stor8, 0, stor4);
        else:
            require stor8 <= stor7
            require stor7 - stor8 > 0
            require stor7 >= stor8
            stor8 = stor7
            require balanceOf[stor4] + stor7 - stor8 >= balanceOf[stor4]
            balanceOf[stor4] = balanceOf[stor4] + stor7 - stor8
            emit Transfer((stor7 - stor8), 0, stor4);
    else:
        require stor7 / stor9
        require stor7 / stor9 * block.timestamp - stor5 / stor6 / stor7 / stor9 == block.timestamp - stor5 / stor6
        if stor7 / stor9 * block.timestamp - stor5 / stor6 <= stor7:
            require stor8 <= stor7 / stor9 * block.timestamp - stor5 / stor6
            require (stor7 / stor9 * block.timestamp - stor5 / stor6) - stor8 > 0
            require stor7 / stor9 * block.timestamp - stor5 / stor6 >= stor8
            stor8 = stor7 / stor9 * block.timestamp - stor5 / stor6
            require balanceOf[stor4] + (stor7 / stor9 * block.timestamp - stor5 / stor6) - stor8 >= balanceOf[stor4]
            balanceOf[stor4] = balanceOf[stor4] + (stor7 / stor9 * block.timestamp - stor5 / stor6) - stor8
            emit Transfer(((stor7 / stor9 * block.timestamp - stor5 / stor6) - stor8), 0, stor4);
        else:
            require stor8 <= stor7
            require stor7 - stor8 > 0
            require stor7 >= stor8
            stor8 = stor7
            require balanceOf[stor4] + stor7 - stor8 >= balanceOf[stor4]
            balanceOf[stor4] = balanceOf[stor4] + stor7 - stor8
            emit Transfer((stor7 - stor8), 0, stor4);
}



}
