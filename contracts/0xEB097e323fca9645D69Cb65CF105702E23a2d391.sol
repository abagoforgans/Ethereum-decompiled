contract main {




// =====================  Runtime code  =====================


const name = 'MAX'

const decimals = 18

const symbol = 'MAX'

const INITIAL_SUPPLY = 2000000000 * 10^18


mapping of uint256 _balances;
mapping of uint256 _allowed;
uint256 _totalSupply;

function totalSupply() {
    return _totalSupply
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
    _allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= _balances[address(msg.sender)]
    require arg1
    require arg2 <= _balances[address(msg.sender)]
    _balances[address(msg.sender)] -= arg2
    require arg2 + _balances[arg1] >= _balances[arg1]
    _balances[address(arg1)] = arg2 + _balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= _allowed[address(arg1)][msg.sender]
    require arg3 <= _allowed[address(arg1)][msg.sender]
    _allowed[address(arg1)][msg.sender] -= arg3
    require arg3 <= _balances[address(arg1)]
    require arg2
    require arg3 <= _balances[address(arg1)]
    _balances[address(arg1)] -= arg3
    require arg3 + _balances[arg2] >= _balances[arg2]
    _balances[address(arg2)] = arg3 + _balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
