contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
address newOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 isLocked;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function isLocked() {
    return bool(isLocked)
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner can do that!'
    newOwner = arg1
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract is not accepting ETH.'
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'You are not new Owner!'
    owner = newOwner
    newOwner = 0
    emit OwnershipTransferred(owner, newOwner);
}

function unlock() {
    if owner != msg.sender:
        revert with 0, 'Only Owner can do that!'
    if bool(isLocked) != 1:
        revert with 0, 'It is unlocked already!'
    isLocked = 0
    return 1
}

function withdraw(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner can do that!'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough balance!'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burn(uint256 arg1) {
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'Insuffient balance!'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Sub overflow!'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'Sub overflow!'
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Only Owner can do that!'
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
        args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if isLocked:
        if owner != msg.sender:
            revert with 0, 'Contract is locked!'
    if not arg1:
        revert with 0, 'Can`t send to 0x0, use burn()'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Not enough balance!'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Sub overflow!'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'Add overflow!'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Not enough allowance!'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Insuffient balance!'
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Sub overflow!'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Insuffient balance!'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Sub overflow!'
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'Sub overflow!'
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, arg1, 0);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Not enough allowance!'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Not enough balance!'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Sub overflow!'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if isLocked:
        if arg1 != owner:
            revert with 0, 'Contract is locked!'
    if not arg2:
        revert with 0, 'Can`t send to 0x0, use burn()'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Not enough balance!'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Sub overflow!'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'Add overflow!'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(arg2)], arg1, arg2);
    return 1
}



}
