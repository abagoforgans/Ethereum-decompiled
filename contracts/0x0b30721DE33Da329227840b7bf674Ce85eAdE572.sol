contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint8 stor8;
uint256 cap;
address owner;
uint256 stor11;
uint256 _rate;
uint256 weiRaised;
address stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function isPauser(address arg1) {
    require arg1
    return bool(stor7[address(arg1)])
}

function paused() {
    return bool(stor8)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _rate() {
    return _rate
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ChangeRate(uint256 arg1) {
    require msg.sender == owner
    require not stor8
    _rate = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor7[address(msg.sender)]
    require stor8
    stor8 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor7[address(msg.sender)]
    require not stor8
    stor8 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    if not arg2:
        allowance[address(msg.sender)][address(arg1)] = 0
        emit Approval(0, msg.sender, arg1);
    else:
        require arg2
        require 10^15 * arg2 / arg2 == 10^15
        allowance[address(msg.sender)][address(arg1)] = 10^15 * arg2
        emit Approval((10^15 * arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    if not arg2:
        require 0 <= allowance[address(msg.sender)][address(arg1)]
    else:
        require arg2
        require 10^15 * arg2 / arg2 == 10^15
        require 10^15 * arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] += -1 * 10^15 * arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    if not arg2:
        require allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    else:
        require arg2
        require 10^15 * arg2 / arg2 == 10^15
        require allowance[address(msg.sender)][address(arg1)] + (10^15 * arg2) >= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] += 10^15 * arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not stor8
    if not arg1:
        require msg.sender
        require 0 <= balanceOf[address(msg.sender)]
        require 0 <= totalSupply
        require 0 <= balanceOf[address(msg.sender)]
        emit Transfer(0, msg.sender, 0);
    else:
        require arg1
        require 10^15 * arg1 / arg1 == 10^15
        require msg.sender
        require 10^15 * arg1 <= balanceOf[address(msg.sender)]
        require 10^15 * arg1 <= totalSupply
        totalSupply += -1 * 10^15 * arg1
        require 10^15 * arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^15 * arg1
        emit Transfer((10^15 * arg1), msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require not stor8
    if not arg2:
        require 0 <= balanceOf[address(msg.sender)]
        require arg1
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, msg.sender, arg1);
    else:
        require arg2
        require 10^15 * arg2 / arg2 == 10^15
        require 10^15 * arg2 <= balanceOf[address(msg.sender)]
        require arg1
        require 10^15 * arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^15 * arg2
        require balanceOf[address(arg1)] + (10^15 * arg2) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 10^15 * arg2
        emit Transfer((10^15 * arg2), msg.sender, arg1);
    return 1
}

function MinterFunction(address arg1, uint256 arg2) {
    if not arg2:
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require msg.sender
        require stor6[address(msg.sender)]
        require not stor8
        require arg1
        require totalSupply >= totalSupply
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, 0, arg1);
    else:
        require arg2
        require 10^15 * arg2 / arg2 == 10^15
        require totalSupply + (10^15 * arg2) >= totalSupply
        require totalSupply + (10^15 * arg2) <= cap
        require msg.sender
        require stor6[address(msg.sender)]
        require not stor8
        require arg1
        require totalSupply + (10^15 * arg2) >= totalSupply
        totalSupply += 10^15 * arg2
        require balanceOf[address(arg1)] + (10^15 * arg2) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 10^15 * arg2
        emit Transfer((10^15 * arg2), 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor8
    if not arg2:
        require 0 <= allowance[address(arg1)][address(msg.sender)]
        require 0 <= allowance[address(arg1)][address(msg.sender)]
        require arg1
        require 0 <= balanceOf[address(arg1)]
        require 0 <= totalSupply
        require 0 <= balanceOf[address(arg1)]
        emit Transfer(0, arg1, 0);
    else:
        require arg2
        require 10^15 * arg2 / arg2 == 10^15
        require 10^15 * arg2 <= allowance[address(arg1)][address(msg.sender)]
        require 10^15 * arg2 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] += -1 * 10^15 * arg2
        require arg1
        require 10^15 * arg2 <= balanceOf[address(arg1)]
        require 10^15 * arg2 <= totalSupply
        totalSupply += -1 * 10^15 * arg2
        require 10^15 * arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += -1 * 10^15 * arg2
        emit Transfer((10^15 * arg2), arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor8
    if not arg3:
        require 0 <= allowance[address(arg1)][address(msg.sender)]
        require 0 <= allowance[address(arg1)][address(msg.sender)]
        require 0 <= balanceOf[address(arg1)]
        require arg2
        require 0 <= balanceOf[address(arg1)]
        require balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        emit Transfer(0, arg1, arg2);
    else:
        require arg3
        require 10^15 * arg3 / arg3 == 10^15
        require 10^15 * arg3 <= allowance[address(arg1)][address(msg.sender)]
        require 10^15 * arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] += -1 * 10^15 * arg3
        require 10^15 * arg3 <= balanceOf[address(arg1)]
        require arg2
        require 10^15 * arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += -1 * 10^15 * arg3
        require balanceOf[address(arg2)] + (10^15 * arg3) >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += 10^15 * arg3
        emit Transfer((10^15 * arg3), arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    stor11++
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require arg1
        require msg.value
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require not stor8
        require arg1
        require totalSupply >= totalSupply
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Transfer(0, 0, arg1);
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * _rate / msg.value == _rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require arg1
        require msg.value
        require totalSupply + (msg.value * _rate) >= totalSupply
        require totalSupply + (msg.value * _rate) <= cap
        require not stor8
        require arg1
        require totalSupply + (msg.value * _rate) >= totalSupply
        totalSupply += msg.value * _rate
        require balanceOf[address(arg1)] + (msg.value * _rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value * _rate
        emit Transfer((msg.value * _rate), 0, arg1);
        emit TokensPurchased(msg.value, msg.value * _rate, msg.sender, arg1);
    call stor14 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor11 == stor11
}

function _fallback() payable {
    stor11++
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require msg.sender
        require msg.value
        require totalSupply >= totalSupply
        require totalSupply <= cap
        require not stor8
        require msg.sender
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, 0, msg.sender);
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * _rate / msg.value == _rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require msg.sender
        require msg.value
        require totalSupply + (msg.value * _rate) >= totalSupply
        require totalSupply + (msg.value * _rate) <= cap
        require not stor8
        require msg.sender
        require totalSupply + (msg.value * _rate) >= totalSupply
        totalSupply += msg.value * _rate
        require balanceOf[address(msg.sender)] + (msg.value * _rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * _rate
        emit Transfer((msg.value * _rate), 0, msg.sender);
        emit TokensPurchased(msg.value, msg.value * _rate, msg.sender, msg.sender);
    call stor14 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor11 == stor11
}



}
