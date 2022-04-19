contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor7;
uint128 stor8; offset 160
address stor8;
uint256 stor10;
address stor11;

function _fallback() payable {
    Mask(96, 0, stor8.field_160) = 0
    require not msg.value
    require code.data[7524 len 32] >= code.data[7492 len 32]
    require code.data[7556 len 32] > 0
    require code.data[7664 len 20]
    require code.data[7696 len 20]
    stor0 = code.data[7696 len 20]
    stor1 = code.data[7492 len 32]
    stor2 = code.data[7524 len 32]
    stor4 = code.data[7556 len 32]
    stor3 = code.data[7664 len 20]
    require code.data[7620 len 32] > 0
    stor7 = code.data[7620 len 32]
    address(stor8.field_0) = msg.sender
    require code.data[7588 len 32] > 0
    create contract with 0 wei
                    code: code.data[4835 len 2657], stor3
    require create.new_address
    stor11 = address(create.new_address)
    stor10 = code.data[7588 len 32]
    require code.data[7588 len 32] <= code.data[7620 len 32]
    return code.data[744 len 4091]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 tokensSold;
uint256 weiRaised;
uint256 cap;
uint8 stor8; offset 160
uint128 stor8; offset 160
address owner;
uint256 goal;
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

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor8.field_160))
}

function owner() {
    return owner
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require uint8(stor8.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    Mask(96, 0, stor8.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require msg.value > 10^17
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if weiRaised >= 3355 * 10^18:
        require msg.value * rate >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + (msg.value * rate) >= tokensSold
        tokensSold += msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    else:
        require (msg.value * rate) + (msg.value * rate / 5) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (msg.value * rate) + (msg.value * rate / 5)
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + (msg.value * rate) + (msg.value * rate / 5) >= tokensSold
        tokensSold = tokensSold + (msg.value * rate) + (msg.value * rate / 5)
        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate / 5), msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require msg.value > 10^17
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if weiRaised >= 3355 * 10^18:
        require msg.value * rate >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + (msg.value * rate) >= tokensSold
        tokensSold += msg.value * rate
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    else:
        require (msg.value * rate) + (msg.value * rate / 5) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * rate) + (msg.value * rate / 5)
        require ext_call.success
        require ext_call.return_data[0]
        require tokensSold + (msg.value * rate) + (msg.value * rate / 5) >= tokensSold
        tokensSold = tokensSold + (msg.value * rate) + (msg.value * rate / 5)
        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate / 5), msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
