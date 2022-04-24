contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    require code.data[8616 len 32] >= block.timestamp
    require code.data[8648 len 32] >= code.data[8616 len 32]
    require code.data[8680 len 32] > 0
    require code.data[8820 len 20]
    stor1 = code.data[8616 len 32]
    stor2 = code.data[8648 len 32]
    stor4 = code.data[8680 len 32]
    stor3 = code.data[8820 len 20]
    require code.data[8776 len 32] > 0
    stor6 = code.data[8776 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[8744 len 32] > 0
    create contract with 0 wei
                    code: code.data[5905 len 2679], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[8744 len 32]
    require code.data[8744 len 32] <= code.data[8776 len 32]
    stor0 = code.data[8596 len 20]
    stor10 = code.data[8712 len 32]
    return code.data[908 len 4997]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 minimumBuy;

function minimumBuy() {
    return minimumBuy
}

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

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
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

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
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
    require uint8(stor7.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function close(bool arg1) {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if not arg1:
        if goal >= weiRaised:
            goal = weiRaised
    else:
        require weiRaised + 1 >= weiRaised
        if goal < weiRaised + 1:
            goal = weiRaised + 1
    require 1 <= block.timestamp
    if endTime >= block.timestamp - 1:
        endTime = block.timestamp - 1
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require msg.value >= minimumBuy
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
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
    require msg.value >= minimumBuy
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
