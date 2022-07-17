contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
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

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
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
    require arg2 > 0
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg1
    require arg2 + allowed[msg.sender][address(arg1)] >= allowed[msg.sender][address(arg1)]
    allowed[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowed[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balances[msg.sender]
    require arg1 <= balances[stor0]
    balances[stor0] -= arg1
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    emit Burn(arg1, owner);
    emit Transfer(arg1, owner, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    require arg1
    if arg2 <= allowed[msg.sender][address(arg1)]:
        allowed[msg.sender][address(arg1)] -= arg2
    else:
        allowed[msg.sender][address(arg1)] = 0
    emit Approval(allowed[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require arg2 <= balances[msg.sender]
    require arg2 <= balances[msg.sender]
    balances[msg.sender] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg2 + _totalSupply >= _totalSupply
    _totalSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 > 0
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][msg.sender]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowed[address(arg1)][msg.sender]
    allowed[address(arg1)][msg.sender] -= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
