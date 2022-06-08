contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_99137c31Address;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
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
    return symbol[0 len symbol.length]
}

function sub_99137c31(?) {
    return sub_99137c31Address
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
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner!'
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'Sender is not the new owner!'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function safeAdd(uint256 arg1, uint256 arg2) {
    if arg1 + arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This addition will cause overflow!'
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Negative divisor or division by zero!'
    require arg2
    return (arg1 / arg2)
}

function safeSub(uint256 arg1, uint256 arg2) {
    if arg2 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This substraction will cause unsigned integer underflow!'
    return (arg1 - arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        if arg1 * arg2 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This multiplication will cause overflow!'
    return (arg1 * arg2)
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner!'
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This substraction will cause unsigned integer underflow!'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This addition will cause overflow!'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This substraction will cause unsigned integer underflow!'
    balanceOf[address(arg1)] -= arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This substraction will cause unsigned integer underflow!'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This addition will cause overflow!'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
