contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
uint256 cap;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
uint256 sub_aeeed03f;
uint256 sub_8a6c5518;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function sub_032ca673(?) {
    return bool(uint8(stor8.field_8))
}

function mintingFinished() {
    return bool(uint8(stor6.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
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

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor8.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8a6c5518(?) {
    return sub_8a6c5518
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_aeeed03f(?) {
    return sub_aeeed03f
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_8ca3f2e9(?) {
    require msg.sender == owner
    require uint8(stor8.field_0)
    selfdestruct(arg1)
}

function sub_9cf3bf23(?) {
    require msg.sender == owner
    require uint8(stor8.field_0)
    selfdestruct(owner)
}

function sub_0f269b2e(?) {
    require msg.sender == owner
    require uint8(stor8.field_0)
    uint8(stor8.field_0) = 0
    emit 0xbeeaf898 
}

function sub_8150d2e9(?) {
    require msg.sender == owner
    require not uint8(stor8.field_0)
    uint8(stor8.field_0) = 1
    emit 0x4eb1ee17 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1bdb8095(?) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 1
    emit 0x971b6f76 
    return 1
}

function sub_614eb8e4(?) {
    require msg.sender == owner
    if not uint8(stor8.field_8):
        require this.address
    Mask(248, 0, stor8.field_8) = 1
    emit 0xa8fe8a3a 
}

function sub_ec047a75(?) {
    require msg.sender == owner
    if not uint8(stor8.field_8):
        require this.address
    Mask(248, 0, stor8.field_8) = 0
    emit 0x3b599b55 
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor8.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor8.field_0)
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor8.field_0)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor8.field_0)
    if not uint8(stor8.field_8):
        require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_a76682db(?) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit 0xea29a5d1: arg2, arg1
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor8.field_0)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value != 0
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require arg1
    require rate * msg.value <= balanceOf[address(this.address)]
    require rate * msg.value <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * rate * msg.value
    require (rate * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += rate * msg.value
    emit Transfer((rate * msg.value), this.address, arg1);
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not uint8(stor8.field_8):
        require this.address != this.address
    require msg.sender
    require msg.value != 0
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require msg.sender
    require rate * msg.value <= balanceOf[address(this.address)]
    require rate * msg.value <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * rate * msg.value
    require (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += rate * msg.value
    emit Transfer((rate * msg.value), this.address, msg.sender);
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
