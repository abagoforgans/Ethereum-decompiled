contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = 10000000 * 10^18

const MAX_SUPPLY = 250000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint8 stor5;
address owner; offset 8
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 stor8;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 rate;
address stor13;
uint256 weiRaised;

function name() {
    return name[0 len name.length]
}

function isAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function onWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function weiRaised() {
    return weiRaised
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor4[address(arg1)])
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function administrators(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor4[address(msg.sender)]
    require stor5
    stor5 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor4[address(msg.sender)]
    require not stor5
    stor5 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor5
    require arg1 > 0
    rate = arg1
    emit SetRate(rate);
}

function setWallet(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor5
    require arg1
    stor13 = arg1
    emit SetWallet(stor13);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addToWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor6[address(msg.sender)]
    emit AddToWhiteList(arg1);
    stor7[address(arg1)] = 1
}

function addAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor6[address(msg.sender)]
    emit AddAdministrator(arg1);
    stor6[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeFromWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor6[address(msg.sender)]
    emit RemoveFromWhiteList(arg1);
    stor7[address(arg1)] = 0
}

function removeAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor6[address(msg.sender)]
    emit RemoveAdministrator(arg1);
    stor6[address(arg1)] = 0
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor4[address(msg.sender)]
    require arg1
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor5
    stor8++
    require arg1
    require msg.value > 0
    require stor7[address(arg1)]
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= 250000000000 * 10^18
        require arg1
        require totalSupply >= totalSupply
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, 0, arg1);
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call stor13 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require totalSupply + (msg.value * rate) >= totalSupply
        require totalSupply + (msg.value * rate) <= 250000000000 * 10^18
        require arg1
        require totalSupply + (msg.value * rate) >= totalSupply
        totalSupply += msg.value * rate
        require balanceOf[address(arg1)] + (msg.value * rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value * rate
        emit Transfer((msg.value * rate), 0, arg1);
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call stor13 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    require stor8 == stor8
}

function _fallback() payable {
    require not stor5
    stor8++
    require msg.sender
    require msg.value > 0
    require stor7[address(msg.sender)]
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= 250000000000 * 10^18
        require msg.sender
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, 0, msg.sender);
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call stor13 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require totalSupply + (msg.value * rate) >= totalSupply
        require totalSupply + (msg.value * rate) <= 250000000000 * 10^18
        require msg.sender
        require totalSupply + (msg.value * rate) >= totalSupply
        totalSupply += msg.value * rate
        require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * rate
        emit Transfer((msg.value * rate), 0, msg.sender);
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        call stor13 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    require stor8 == stor8
}



}
