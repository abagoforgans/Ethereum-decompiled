contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
address tokenWalletAddress;
mapping of uint256 referrers;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function referrers(address arg1) {
    return referrers[arg1]
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function tokenWallet() {
    return tokenWalletAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    require block.timestamp > closingTime
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args tokenWalletAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[128] = 0
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[128] = msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    if calldata.size == 20:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        idx = 20
        s = 1
        t = 0
        while idx > 0:
            require idx - 1 < calldata.size
            idx = idx - 1
            s = 256 * s
            t = t + (mem[idx + 127 len 1] * s)
            continue 
        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != tokenAddress
        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
        if not msg.value:
            require referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)] >= referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)]
        else:
            require msg.value
            require 10 * msg.value / msg.value == 10
            require referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)] + (10 * msg.value / 100) >= referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)]
            referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)] += 10 * msg.value / 100
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[128] = 0
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[128] = msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    if calldata.size == 20:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        idx = 20
        s = 1
        t = 0
        while idx > 0:
            require idx - 1 < calldata.size
            idx = idx - 1
            s = 256 * s
            t = t + (mem[idx + 127 len 1] * s)
            continue 
        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != tokenAddress
        require address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t) != msg.sender
        if not msg.value:
            require referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)] >= referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)]
        else:
            require msg.value
            require 10 * msg.value / msg.value == 10
            require referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)] + (10 * msg.value / 100) >= referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)]
            referrers[address(0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec10000000000000000000000000000000000000000 * t)] += 10 * msg.value / 100
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
