contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor7; offset 160
address stor7;
uint256 stor8;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    require code.data[9898 len 32] > 0
    require block.timestamp >= block.timestamp
    require code.data[9802 len 32] >= block.timestamp
    require code.data[9834 len 32] > 0
    require code.data[9942 len 20]
    create contract with 0 wei
                    code: code.data[6087 len 3715], this.address
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = block.timestamp
    stor2 = code.data[9802 len 32]
    stor4 = code.data[9834 len 32]
    stor5 = code.data[9898 len 32]
    stor3 = code.data[9942 len 20]
    address(stor7.field_0) = msg.sender
    require code.data[9898 len 32] > code.data[9866 len 32]
    stor8 = code.data[9866 len 32]
    return code.data[398 len 5689]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 cap;
uint256 weiRaised;
uint8 stor7; offset 160
address owner;
uint256 min;

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
    return bool(stor7)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function min() {
    return min
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require stor7
    stor7 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor7
    stor7 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function _fallback() payable {
    require not stor7
    require msg.value >= min
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
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require not stor7
    require msg.value >= min
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
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
