contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
address stor3; offset 8
mapping of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor10;
uint256 stor12;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'BitandPay' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'BNP' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 250 * 10^6
    uint8(stor3.field_0) = 0
    stor6 = 420360 * 24 * 3600
    stor7 = 1518739199
    stor8 = 1428571428571400
    stor10 = 0
    stor12 = 1000000 * 10^18
    require not msg.value
    address(stor3.field_8) = msg.sender
    stor4[address(this.address)] = 250 * 10^6
    emit Transfer(250 * 10^6, 0, this.address);
    return code.data[694 len 9410]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
address stor3;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startTime;
uint256 endTime;
uint256 price;
uint256 weiRaised;
uint8 stor10;
uint256 stor11;
uint256 cap;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function paused() {
    return bool(stor10)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function changeCap(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    cap = arg1
}

function unpause() {
    require msg.sender == owner
    require stor10
    stor10 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor10
    stor10 = 1
    emit Pause()
}

function changePrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
    emit Price(price);
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToOwner(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToAdress(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require not stor10
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor10
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor10
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor10
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor11 = ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, stor11
    require ext_call.success
    stor11 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor10
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require not stor10
    require arg1
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require price
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require msg.value / price <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= msg.value / price
    require balanceOf[address(arg1)] + (msg.value / price) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value / price
    emit Transfer((msg.value / price), this.address, arg1);
}

function _fallback() payable {
    require not stor10
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require price
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require msg.value / price <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= msg.value / price
    require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / price
    emit Transfer((msg.value / price), this.address, msg.sender);
}



}
