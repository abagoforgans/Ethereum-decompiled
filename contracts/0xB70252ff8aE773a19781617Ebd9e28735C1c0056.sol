contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 6164]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length].field_0
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
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
    return (_totalSupply - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function FOToken() {
    bool(symbol.length) = 0
    symbol.length.field_1 = 3
    symbol.length.field_8 = 'KCB' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(name.length) = 0
    name.length.field_1 = 21
    name.length.field_8 = 'Keenly Change Bitcoin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    _totalSupply = 1000000000 * 10^18
    balanceOf[0x743fd6d924ae32ccddb377f11d43129cdd0d0d00] = _totalSupply
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  _totalSupply,
    emit 0x0: _totalSupply
    emit 0x743fd6d9: _totalSupply
}



}
