contract main {




// =====================  Runtime code  =====================


const name = 'Amitabha'

const decimals = 18

const symbol = ''


address owner;
uint256 totalSupply;
uint256 currentTotalSupply;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

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

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    if currentTotalSupply >= totalSupply:
        return stor5[address(arg1)]
    if stor4[address(arg1)]:
        return stor5[address(arg1)]
    require stor3 + stor5[address(arg1)] >= stor5[address(arg1)]
    return (stor3 + stor5[address(arg1)])
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not stor4[msg.sender]:
        if currentTotalSupply < totalSupply:
            require stor3 + stor5[msg.sender] >= stor5[msg.sender]
            stor5[msg.sender] += stor3
            stor4[msg.sender] = 1
            require stor3 + currentTotalSupply >= currentTotalSupply
            currentTotalSupply += stor3
    require arg2 <= stor5[msg.sender]
    require arg2 <= stor5[msg.sender]
    stor5[msg.sender] -= arg2
    require arg2 + stor5[arg1] >= stor5[arg1]
    stor5[address(arg1)] = arg2 + stor5[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    if not stor4[address(arg1)]:
        if currentTotalSupply < totalSupply:
            stor4[address(arg1)] = 1
            require stor3 + stor5[address(arg1)] >= stor5[address(arg1)]
            stor5[address(arg1)] += stor3
            require stor3 + currentTotalSupply >= currentTotalSupply
            currentTotalSupply += stor3
    require arg3 <= stor5[address(arg1)]
    require arg3 <= stor5[address(arg1)]
    stor5[address(arg1)] -= arg3
    require arg3 + stor5[arg2] >= stor5[arg2]
    stor5[address(arg2)] = arg3 + stor5[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
