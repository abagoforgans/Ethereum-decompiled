contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint128 stor6; offset 160
address stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    require not msg.value
    require code.data[5199 len 32] >= block.timestamp
    require code.data[5231 len 32] >= code.data[5199 len 32]
    require code.data[5263 len 32] > 0
    require code.data[5307 len 20]
    stor0 = code.data[5339 len 20]
    stor1 = code.data[5199 len 32]
    stor2 = code.data[5231 len 32]
    stor4 = code.data[5263 len 32]
    stor3 = code.data[5307 len 20]
    address(stor6.field_0) = msg.sender
    stor7 = 150000 * 10^18
    return code.data[519 len 4680]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
uint256 cap;

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

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return ext_call.return_data[0] >= cap
}

function offChainMint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokenPurchase(0, arg2, msg.sender, arg1);
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp <= endTime:
        if weiRaised < cap:
            require ext_call.return_data[0] >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 2 * ext_call.return_data[0] / ext_call.return_data[0] == 2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xe746bb9d6db2ebbf02c12e2f64d0dfa155377895, 2 * ext_call.return_data[0] / 10
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value >= 10^17
    if block.timestamp >= startTime + (24 * 3600):
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * rate / 10^18) >= ext_call.return_data[0]
        require weiRaised + msg.value >= weiRaised
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require weiRaised + msg.value <= cap
        require ext_call.return_data[0] + (msg.value * rate / 10^18) <= cap
    else:
        if rate:
            require rate
            require 12 * 10^6 * rate / rate == 12 * 10^6
        if msg.value:
            require msg.value
            require msg.value * 12 * 10^6 * rate / 10000 / msg.value == 12 * 10^6 * rate / 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18) >= ext_call.return_data[0]
        require weiRaised + msg.value >= weiRaised
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require weiRaised + msg.value <= cap
        require ext_call.return_data[0] + (msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18) <= cap
    if block.timestamp >= startTime + (24 * 3600):
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate / 10^18, msg.sender, arg1);
    else:
        if rate:
            require rate
            require 12 * 10^6 * rate / rate == 12 * 10^6
        if msg.value:
            require msg.value
            require msg.value * 12 * 10^6 * rate / 10000 / msg.value == 12 * 10^6 * rate / 10000
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require msg.value >= 10^17
    if block.timestamp >= startTime + (24 * 3600):
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * rate / 10^18) >= ext_call.return_data[0]
        require weiRaised + msg.value >= weiRaised
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require weiRaised + msg.value <= cap
        require ext_call.return_data[0] + (msg.value * rate / 10^18) <= cap
    else:
        if rate:
            require rate
            require 12 * 10^6 * rate / rate == 12 * 10^6
        if msg.value:
            require msg.value
            require msg.value * 12 * 10^6 * rate / 10000 / msg.value == 12 * 10^6 * rate / 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18) >= ext_call.return_data[0]
        require weiRaised + msg.value >= weiRaised
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require weiRaised + msg.value <= cap
        require ext_call.return_data[0] + (msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18) <= cap
    if block.timestamp >= startTime + (24 * 3600):
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate / 10^18, msg.sender, msg.sender);
    else:
        if rate:
            require rate
            require 12 * 10^6 * rate / rate == 12 * 10^6
        if msg.value:
            require msg.value
            require msg.value * 12 * 10^6 * rate / 10000 / msg.value == 12 * 10^6 * rate / 10000
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * 12 * 10^6 * rate / 10000 / 1000 * 10^18, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
