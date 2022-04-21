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
uint256 stor9;
uint8 stor10; offset 160
address stor10;

function _fallback() payable {
    uint8(stor8.field_160) = 0
    uint8(stor10.field_160) = 0
    require not msg.value
    require code.data[5123 len 32] >= block.timestamp
    require code.data[5155 len 32] >= code.data[5123 len 32]
    require code.data[5187 len 32] > 0
    require code.data[5295 len 20]
    require code.data[5103 len 20]
    stor0 = code.data[5103 len 20]
    stor2 = code.data[5123 len 32]
    stor3 = code.data[5155 len 32]
    stor5 = code.data[5187 len 32]
    stor4 = code.data[5295 len 20]
    require code.data[5251 len 32] > 0
    stor7 = code.data[5251 len 32]
    address(stor8.field_0) = msg.sender
    require code.data[5219 len 32] > 0
    create contract with 0 wei
                    code: code.data[3464 len 1627], stor4
    require create.new_address
    address(stor10.field_0) = address(create.new_address)
    stor9 = code.data[5219 len 32]
    require code.data[5219 len 32] <= code.data[5251 len 32]
    return code.data[488 len 2976]
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
uint256 goal;
uint8 stor10; offset 160
address vaultAddress;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor10)
}

function tokenAddr() {
    return tokenAddr
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor8)
}

function owner() {
    return owner
}

function testTokenA() {
    return testTokenAAddress
}

function vault() {
    return vaultAddress
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function goalReached() {
    return weiRaised >= goal
}

function unpause() {
    require owner == msg.sender
    require stor10
    stor10 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor10
    stor10 = 1
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

function claimRefund() {
    require stor8
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor8
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor8 = 1
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
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
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
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
