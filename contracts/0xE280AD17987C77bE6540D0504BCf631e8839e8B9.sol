contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint8 stor8; offset 160
address stor8;

function _fallback() payable {
    uint8(stor8.field_160) = 0
    require not msg.value
    require code.data[2508 len 32] >= block.timestamp
    require code.data[2540 len 32] >= code.data[2508 len 32]
    require code.data[2572 len 32] > 0
    require code.data[2648 len 20]
    require code.data[2488 len 20]
    stor0 = code.data[2488 len 20]
    stor2 = code.data[2508 len 32]
    stor3 = code.data[2540 len 32]
    stor5 = code.data[2572 len 32]
    stor4 = code.data[2648 len 20]
    require code.data[2604 len 32] > 0
    stor7 = code.data[2604 len 32]
    address(stor8.field_0) = msg.sender
    return code.data[323 len 2153]
}



// =====================  Runtime code  =====================


address tokenAddr;
address testTokenAAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor8; offset 160
address owner;

function rate() {
    return rate
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

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor8)
}

function tokenAddr() {
    return tokenAddr
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function testTokenA() {
    return testTokenAAddress
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function unpause() {
    require owner == msg.sender
    require stor8
    stor8 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor8
    stor8 = 1
    emit Pause()
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    testTokenAAddress = tokenAddr
    require ext_code.size(tokenAddr)
    call tokenAddr.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    testTokenAAddress = tokenAddr
    require ext_code.size(tokenAddr)
    call tokenAddr.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
