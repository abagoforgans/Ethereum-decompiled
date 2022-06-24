contract main {




// =====================  Runtime code  =====================


const name = 'WBOUE'

const decimals = 18

const totalDecimals = 18

const tokenName = 'WBOUE'

const tokenSymbol = 'UE'

const totalTokens = 10^10

const symbol = 'UE'


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
address owner;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require ext_code.size(arg1) <= 0
    require ext_code.size(arg2) <= 0
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
    require arg1
    require ext_code.size(arg1) <= 0
    require arg1 != msg.sender
    require arg2
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _transfer(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg1) <= 0
    require ext_code.size(arg2) <= 0
    require arg3 > 0
    require arg3 <= balances[address(arg1)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(msg.sender) <= 0
    require ext_code.size(arg1) <= 0
    require arg2 > 0
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 0 < arg3
    require arg1
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balances[address(arg1)]
    require ext_code.size(arg1) <= 0
    require ext_code.size(arg2) <= 0
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[arg1]
    balances[address(arg1)] = balances[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
