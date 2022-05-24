contract main {




// =====================  Runtime code  =====================


const name = 'NFTY Token'

const totalSupply = 100 * 10^6

const decimals = 3

const symbol = 'NFTY'


mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    require arg1
    require balanceOf[msg.sender] >= arg2
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg2
    require allowance[address(arg1)][msg.sender] >= arg3
    if allowance[address(arg1)][msg.sender] != -1:
        allowance[address(arg1)][msg.sender] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
