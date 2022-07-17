contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
uint256 mintTotal;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function mintTotal() {
    return mintTotal
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 >= 0
    require mintTotal + arg2 >= arg2
    require mintTotal + arg2 <= totalSupply
    require mintTotal + arg2 >= arg2
    mintTotal += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(address(arg1), arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require balances[arg1] >= arg3
    balances[address(arg1)] = balances[arg1] - arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
