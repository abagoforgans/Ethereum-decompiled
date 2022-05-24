contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 _airdropAmount;
uint256 _airdropTotal;
uint256 _airdropSupply;
uint256 _totalRemaining;
uint8 stor13;
mapping of uint8 stor14;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _airdropAmount() {
    return _airdropAmount
}

function _totalRemaining() {
    return _totalRemaining
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _airdropSupply() {
    return _airdropSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function distributionFinished() {
    return bool(stor13)
}

function _airdropTotal() {
    return _airdropTotal
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function blacklist(address arg1) {
    return bool(stor14[arg1])
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getTokens() payable {
    require not stor13
    require not stor14[msg.sender]
    if _airdropAmount > _totalRemaining:
        _airdropAmount = _totalRemaining
    require not stor13
    require _airdropAmount + _airdropTotal >= _airdropTotal
    _airdropTotal += _airdropAmount
    require _airdropAmount <= _totalRemaining
    _totalRemaining -= _airdropAmount
    require _airdropAmount + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += _airdropAmount
    emit Distr(_airdropAmount, msg.sender);
    emit Transfer(_airdropAmount, 0, msg.sender);
    if _airdropTotal >= _airdropSupply:
        stor13 = 1
    if _airdropAmount > 0:
        stor14[msg.sender] = 1
    if _airdropTotal >= _airdropSupply:
        stor13 = 1
    if _airdropAmount / 100000:
        require _airdropAmount / 100000
        require 99999 * _airdropAmount / 100000 / _airdropAmount / 100000 == 99999
    _airdropAmount = 99999 * _airdropAmount / 100000
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not stor13
    require not stor14[msg.sender]
    if _airdropAmount > _totalRemaining:
        _airdropAmount = _totalRemaining
    require not stor13
    require _airdropAmount + _airdropTotal >= _airdropTotal
    _airdropTotal += _airdropAmount
    require _airdropAmount <= _totalRemaining
    _totalRemaining -= _airdropAmount
    require _airdropAmount + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += _airdropAmount
    emit Distr(_airdropAmount, msg.sender);
    emit Transfer(_airdropAmount, 0, msg.sender);
    if _airdropTotal >= _airdropSupply:
        stor13 = 1
    if _airdropAmount > 0:
        stor14[msg.sender] = 1
    if _airdropTotal >= _airdropSupply:
        stor13 = 1
    if _airdropAmount / 100000:
        require _airdropAmount / 100000
        require 99999 * _airdropAmount / 100000 / _airdropAmount / 100000 == 99999
    _airdropAmount = 99999 * _airdropAmount / 100000
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
