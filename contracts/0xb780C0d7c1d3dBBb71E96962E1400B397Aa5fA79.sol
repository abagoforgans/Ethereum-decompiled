contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
address vaultAddress;
uint8 stor10; offset 160
uint128 stor10; offset 160
address walletAddress;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function isFrozenAccount(address arg1) {
    return bool(stor4[address(arg1)])
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isBurnable() {
    return bool(uint8(stor10.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function vault() {
    return vaultAddress
}

function totalSupply() {
    return (stor3 - balanceOf[0])
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

function unfreezeAccount(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    emit FreezeAccount(0, arg1);
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

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    emit WalletChanged(walletAddress, arg1);
    walletAddress = arg1
}

function freezeAccount(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    stor4[address(arg1)] = 1
    emit FreezeAccount(1, arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBurnable(bool arg1) {
    require msg.sender == owner
    require arg1 != bool(uint8(stor10.field_160))
    emit BurnableChanged(bool(uint8(stor10.field_160)), arg1);
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function burnToken(uint256 arg1) {
    require uint8(stor10.field_160)
    require arg1 * 10^decimals > 0
    require arg1 * 10^decimals <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    require arg1 * 10^decimals <= stor3
    stor3 += -1 * arg1 * 10^decimals
    emit Burn((arg1 * 10^decimals), msg.sender);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require not stor4[address(msg.sender)]
    require not stor4[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
