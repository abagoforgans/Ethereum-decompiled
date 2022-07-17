contract main {




// =====================  Runtime code  =====================


address stor0;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _totalSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint256 freezeOf;

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

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(stor0, newOwner);
    stor0 = newOwner
}

function approve(address arg1, uint256 arg2) {
    require msg.sender == stor0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == stor0
    require arg1 <= balances[msg.sender]
    require arg1 > 0
    require arg1 <= balances[msg.sender]
    balances[msg.sender] -= arg1
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg1
    require arg2 <= balances[msg.sender]
    balances[msg.sender] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function freeze(uint256 arg1) {
    require msg.sender == stor0
    require arg1 <= balances[msg.sender]
    require arg1 > 0
    require arg1 <= balances[msg.sender]
    balances[msg.sender] -= arg1
    require arg1 + freezeOf[msg.sender] >= freezeOf[msg.sender]
    freezeOf[msg.sender] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) {
    require msg.sender == stor0
    require arg1 <= freezeOf[msg.sender]
    require arg1 > 0
    require arg1 <= freezeOf[msg.sender]
    freezeOf[msg.sender] -= arg1
    require arg1 + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require arg2
    require arg1
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
