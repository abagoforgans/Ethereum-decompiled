contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = 10000000000 * 10^18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address owner;
address privateSaleWalletAddress;
address crowdsaleAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function crowdsaleAddress() {
    return crowdsaleAddress
}

function paused() {
    return bool(uint8(stor6.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor6.field_168))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function privateSaleWallet() {
    return privateSaleWalletAddress
}

function _fallback() payable {
    revert
}

function enableTransfer() {
    require msg.sender == owner
    Mask(88, 0, stor6.field_168) = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPrivateSaleAddress(address arg1) {
    require msg.sender == owner
    require not privateSaleWalletAddress
    privateSaleWalletAddress = arg1
}

function setCrowdsaleAddress(address arg1) {
    require msg.sender == owner
    require not crowdsaleAddress
    require arg1
    crowdsaleAddress = arg1
    balanceOf[stor8] = 10000000000 * 10^18
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    if not uint8(stor6.field_168):
        if owner != msg.sender:
            if crowdsaleAddress != msg.sender:
                require msg.sender == privateSaleWalletAddress
    require not uint8(stor6.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    if not uint8(stor6.field_168):
        if owner != msg.sender:
            if crowdsaleAddress != msg.sender:
                require msg.sender == privateSaleWalletAddress
    require not uint8(stor6.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
