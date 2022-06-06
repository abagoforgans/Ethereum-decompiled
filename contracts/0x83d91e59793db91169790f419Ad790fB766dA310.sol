contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupplyWithZeroAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return totalSupplyWithZeroAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalSupplyWithZeroAddress() {
    return totalSupplyWithZeroAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function myBalance() {
    return balanceOf[address(msg.sender)]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function deactivate() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (totalSupplyWithZeroAddress - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function totalSupplyWithoutDecimals() {
    require 10^decimals
    return (totalSupplyWithZeroAddress / 10^decimals)
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

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[stor0]
    balanceOf[stor0] -= arg1
    require arg1 <= totalSupplyWithZeroAddress
    totalSupplyWithZeroAddress -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseSupply(uint256 arg1) {
    require msg.sender == owner
    require totalSupplyWithZeroAddress + arg1 >= totalSupplyWithZeroAddress
    totalSupplyWithZeroAddress += arg1
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    emit Transfer(arg1, 0, owner);
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
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function reconfig(string arg1, string arg2) {
    require msg.sender == owner
    symbol.length = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}



}
