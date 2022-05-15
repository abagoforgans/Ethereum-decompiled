contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 12
    stor2.length.field_8 = 'Universe-ETH' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'UETH' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[390 len 3083]
}



// =====================  Runtime code  =====================


address owner;
address deployerAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint256 lockdate;
mapping of uint256 lockTokenBalance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function lockdate(address arg1) {
    return lockdate[arg1]
}

function decimals() {
    return decimals
}

function lockTokenBalance(address arg1) {
    return lockTokenBalance[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function deployer() {
    return deployerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    require arg2 + totalSupply >= totalSupply
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function lockTokenToDate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require arg3 >= lockdate[address(arg1)]
    require arg3 >= block.timestamp
    if balanceOf[address(arg1)] >= arg2:
        lockdate[address(arg1)] = arg3
        lockTokenBalance[address(arg1)] = arg2
        emit LockToken(address(arg1), arg2, arg3);
}

function lockTokenDays(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require block.timestamp + (24 * 3600 * arg3) >= lockdate[address(arg1)]
    require block.timestamp + (24 * 3600 * arg3) >= block.timestamp
    if balanceOf[address(arg1)] >= arg2:
        lockdate[address(arg1)] = block.timestamp + (24 * 3600 * arg3)
        lockTokenBalance[address(arg1)] = arg2
        emit LockToken(address(arg1), arg2, block.timestamp + (24 * 3600 * arg3));
}

function burn(uint256 arg1) {
    require owner == msg.sender
    if block.timestamp >= lockdate[address(msg.sender)]:
        lockdate[address(msg.sender)] = 0
        lockTokenBalance[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)] - lockTokenBalance[address(msg.sender)]
    require balanceOf[address(msg.sender)] - lockTokenBalance[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp >= lockdate[address(msg.sender)]:
        lockdate[address(msg.sender)] = 0
        lockTokenBalance[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)] - lockTokenBalance[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] - lockTokenBalance[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if block.timestamp >= lockdate[address(arg1)]:
        lockdate[address(arg1)] = 0
        lockTokenBalance[address(arg1)] = 0
    require balanceOf[address(arg1)] >= balanceOf[address(arg1)] - lockTokenBalance[address(arg1)]
    require arg2
    require balanceOf[address(arg1)] - lockTokenBalance[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
