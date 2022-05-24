contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
uint256 _airdropAmount;
uint256 _airdropTotal;
uint256 _airdropSupply;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _airdropAmount() {
    return _airdropAmount
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

function _airdropTotal() {
    return _airdropTotal
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

function totalSupply() {
    require stor6[0] <= stor5
    return (stor5 - stor6[0])
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

function balanceOf(address arg1) {
    if _airdropTotal >= _airdropSupply:
        return stor6[address(arg1)]
    if stor11[address(arg1)]:
        return stor6[address(arg1)]
    return (stor6[address(arg1)] + _airdropAmount)
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

function transfer(address arg1, uint256 arg2) {
    if _airdropTotal <= _airdropSupply:
        if not stor11[address(msg.sender)]:
            stor11[address(msg.sender)] = 1
            stor6[address(msg.sender)] = _airdropAmount
            require _airdropAmount + _airdropTotal >= _airdropTotal
            _airdropTotal += _airdropAmount
    require arg2 <= stor6[msg.sender]
    require arg1
    require arg2 <= stor6[msg.sender]
    stor6[msg.sender] -= arg2
    require arg2 + stor6[arg1] >= stor6[arg1]
    stor6[address(arg1)] = arg2 + stor6[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if _airdropTotal <= _airdropSupply:
        if not stor11[address(arg1)]:
            stor11[address(arg1)] = 1
            stor6[address(arg1)] = _airdropAmount
            require _airdropAmount + _airdropTotal >= _airdropTotal
            _airdropTotal += _airdropAmount
    require arg3 <= stor6[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= stor6[address(arg1)]
    stor6[address(arg1)] -= arg3
    require arg3 + stor6[arg2] >= stor6[arg2]
    stor6[address(arg2)] = arg3 + stor6[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
