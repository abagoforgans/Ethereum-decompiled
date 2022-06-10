contract main {




// =====================  Runtime code  =====================


const name = 'World Happy Hotel Chain'

const decimals = 18

const symbol = 'GHHT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

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

function kill() {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    owner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[msg.sender]:
        return 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    if arg2 + balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    if arg3 + balanceOf[address(arg2)] <= balanceOf[address(arg2)]:
        return 0
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
