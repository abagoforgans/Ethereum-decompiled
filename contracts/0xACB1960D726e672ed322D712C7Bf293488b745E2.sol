contract main {




// =====================  Runtime code  =====================


address _owner;
array of uint256 _symbol;
array of uint256 _name;
uint256 _decimals;
uint256 _totalSupply;
mapping of uint256 _balances;

function totalSupply() {
    return _totalSupply
}

function _decimals() {
    return _decimals
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

function _symbol() {
    return _symbol[0 len _symbol.length]
}

function _owner() {
    return _owner
}

function _name() {
    return _name[0 len _name.length]
}

function _fallback() payable {
    revert
}

function burnTokens(uint256 arg1) {
    require msg.sender == _owner
    require arg1 <= _balances[stor0]
    _balances[stor0] -= arg1
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    emit BurnTokens(arg1);
    return 1
}

function emitTokens(uint256 arg1) {
    require msg.sender == _owner
    require arg1 + _balances[stor0] >= _balances[stor0]
    _balances[stor0] += arg1
    require arg1 + _totalSupply >= _totalSupply
    _totalSupply += arg1
    emit EmitTokens(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= _balances[msg.sender]
    _balances[msg.sender] -= arg2
    require arg2 + _balances[arg1] >= _balances[arg1]
    _balances[address(arg1)] = arg2 + _balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function revertTransfer(address arg1, uint256 arg2) {
    require msg.sender == _owner
    require arg2 <= _balances[address(arg1)]
    _balances[address(arg1)] -= arg2
    require arg2 + _balances[stor0] >= _balances[stor0]
    _balances[stor0] += arg2
    emit RevertTransfer(address(arg1), arg2);
    return 1
}



}
