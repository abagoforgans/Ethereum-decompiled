contract main {




// =====================  Runtime code  =====================


mapping of uint256 _balances;
mapping of uint256 _allowed;
uint256 _totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function _balances(address arg1) {
    return _balances[arg1]
}

function balanceOf(address arg1) {
    return _balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _allowed(address arg1, address arg2) {
    return _allowed[arg1][arg2]
}

function allowance(address arg1, address arg2) {
    return _allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    _allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= _allowed[address(msg.sender)][address(arg1)]
    _allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(_allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= _balances[address(msg.sender)]
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    require arg1 <= _balances[address(msg.sender)]
    _balances[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require _allowed[address(msg.sender)][address(arg1)] + arg2 >= _allowed[address(msg.sender)][address(arg1)]
    _allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(_allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= _balances[address(msg.sender)]
    require arg1
    require arg2 <= _balances[address(msg.sender)]
    _balances[address(msg.sender)] -= arg2
    require _balances[address(arg1)] + arg2 >= _balances[address(arg1)]
    _balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= _allowed[address(arg1)][address(msg.sender)]
    require arg2 <= _allowed[address(arg1)][address(msg.sender)]
    _allowed[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= _balances[address(arg1)]
    require arg2 <= _totalSupply
    _totalSupply -= arg2
    require arg2 <= _balances[address(arg1)]
    _balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= _allowed[address(arg1)][address(msg.sender)]
    require arg3 <= _allowed[address(arg1)][address(msg.sender)]
    _allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= _balances[address(arg1)]
    require arg2
    require arg3 <= _balances[address(arg1)]
    _balances[address(arg1)] -= arg3
    require _balances[address(arg2)] + arg3 >= _balances[address(arg2)]
    _balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
