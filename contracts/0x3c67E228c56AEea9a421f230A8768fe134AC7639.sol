contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 _balances;
mapping of uint256 _approvals;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _approvals(address arg1, address arg2) {
    return _approvals[arg1][arg2]
}

function _balances(address arg1) {
    return _balances[arg1]
}

function balanceOf(address arg1) {
    return _balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return _approvals[address(arg1)][address(arg2)]
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
    require arg2 <= _balances[address(msg.sender)]
    _approvals[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require _balances[address(msg.sender)] + arg1 >= _balances[address(msg.sender)]
    _balances[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Mint(arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= _balances[address(msg.sender)]
    require arg1 <= _balances[address(msg.sender)]
    _balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require _balances[address(msg.sender)] >= arg2
    require arg2 <= _balances[address(msg.sender)]
    _balances[address(msg.sender)] -= arg2
    require _balances[address(arg1)] + arg2 >= _balances[address(arg1)]
    _balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 > 0
    require _balances[address(arg1)] >= arg3
    require _approvals[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= _approvals[address(arg1)][address(msg.sender)]
    _approvals[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= _balances[address(arg1)]
    _balances[address(arg1)] -= arg3
    require _balances[address(arg2)] + arg3 >= _balances[address(arg2)]
    _balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
