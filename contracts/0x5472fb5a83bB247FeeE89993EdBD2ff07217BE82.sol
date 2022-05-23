contract main {




// =====================  Runtime code  =====================


const name = 'DJW Token'

const totalSupply = 12000000000 * 10^18

const freeSupply = 1000000000 * 10^18

const decimals = 18

const symbol = 'DJW'


address owner;
uint256 currentTotalSupply;
mapping of uint8 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;

function currentTotalSupply() {
    return currentTotalSupply
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

function balanceOf(address arg1) {
    if currentTotalSupply >= 1000000000 * 10^18:
        return stor3[address(arg1)]
    if stor2[address(arg1)]:
        return stor3[address(arg1)]
    require stor3[address(arg1)] + 50000 * 10^18 >= stor3[address(arg1)]
    return (stor3[address(arg1)] + 50000 * 10^18)
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
    if not stor2[address(msg.sender)]:
        if currentTotalSupply < 1000000000 * 10^18:
            require stor3[address(msg.sender)] + 50000 * 10^18 >= stor3[address(msg.sender)]
            stor3[address(msg.sender)] += 50000 * 10^18
            stor2[address(msg.sender)] = 1
            require currentTotalSupply + 50000 * 10^18 >= currentTotalSupply
            currentTotalSupply += 50000 * 10^18
    require arg2 <= stor3[address(msg.sender)]
    require arg2 <= stor3[address(msg.sender)]
    stor3[address(msg.sender)] -= arg2
    require stor3[address(arg1)] + arg2 >= stor3[address(arg1)]
    stor3[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not stor2[address(arg1)]:
        if currentTotalSupply < 1000000000 * 10^18:
            stor2[address(arg1)] = 1
            require stor3[address(arg1)] + 50000 * 10^18 >= stor3[address(arg1)]
            stor3[address(arg1)] += 50000 * 10^18
            require currentTotalSupply + 50000 * 10^18 >= currentTotalSupply
            currentTotalSupply += 50000 * 10^18
    require arg3 <= stor3[address(arg1)]
    require arg3 <= stor3[address(arg1)]
    stor3[address(arg1)] -= arg3
    require stor3[address(arg2)] + arg3 >= stor3[address(arg2)]
    stor3[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
