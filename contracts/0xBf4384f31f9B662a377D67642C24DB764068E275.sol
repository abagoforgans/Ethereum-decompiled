contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;

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

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert with 0, '', mem[164]
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function safeSub(uint256 arg1, uint256 arg2) {
    if arg2 > arg1:
        revert with 0, 'safeSub Failed'
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    if arg2 + arg1 < arg1:
        revert with 0, 'safeAdd Failed'
    return (arg2 + arg1)
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender is not the owner'
    newOwner = arg1
}

function safeDiv(uint256 arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'safeDiv Failed'
    require arg2
    return (arg1 / arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        if arg2 * arg1 / arg1 != arg2:
            revert with 0, 'safeMul Failed'
    return (arg2 * arg1)
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'transferOwnership is not success'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        revert with 0, 'msg.sender is not the owner'
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
    return 1
}

function burn(uint256 arg1) {
    if arg1 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender should have enough tokens to burn'
    balanceOf[msg.sender] -= arg1
    _totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'msg.sender is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if stor8[msg.sender]:
        revert with 0, 'sender is frozen'
    if stor8[address(arg1)]:
        revert with 0, 'recipient is frozen'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'safeSub Failed'
    balanceOf[msg.sender] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'safeAdd Failed'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'safeSub Failed'
    balanceOf[address(arg1)] -= arg3
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'safeSub Failed'
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
        revert with 0, 'safeAdd Failed'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distributeToken(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'msg.sender is not the owner'
    require arg2
    if arg1.length * arg2 / arg2 != arg1.length:
        revert with 0, 'Overflow check'
    if arg1.length * arg2 > balanceOf[stor0]:
        revert with 0, 'Underflow check'
    balanceOf[stor0] += -1 * arg1.length * arg2
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        if balanceOf[mem[(32 * idx) + 140 len 20]] < arg2:
            revert with 0, 'Overflow check'
        require idx < arg1.length
        _36 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, owner, address(_36));
        idx = idx + 1
        continue 
}



}
