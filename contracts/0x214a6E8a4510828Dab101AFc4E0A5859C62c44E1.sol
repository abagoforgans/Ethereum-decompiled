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
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    require not msg.value
    require code.data[8721 len 32] >= block.timestamp
    require code.data[8753 len 32] >= code.data[8721 len 32]
    require code.data[8785 len 32] > 0
    require code.data[8893 len 20]
    stor0 = 0
    stor1 = code.data[8721 len 32]
    stor2 = code.data[8753 len 32]
    stor4 = code.data[8785 len 32]
    stor3 = code.data[8893 len 20]
    address(stor6.field_0) = msg.sender
    require code.data[8625 len 32] > 0
    stor7 = code.data[8625 len 32]
    stor8 = code.data[8657 len 32]
    stor9 = code.data[8689 len 32]
    stor10 = code.data[8817 len 32]
    stor11 = code.data[8849 len 32]
    return code.data[596 len 8029]
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
uint256 minContribution;
uint256 maxContribution;
uint256 ownerRate;
uint256 bonusRate;
address authorizerAddress;
address lockupAddress;

function lockup() {
    return lockupAddress
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

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function bonusRate() {
    return bonusRate
}

function ownerRate() {
    return ownerRate
}

function startTime() {
    return startTime
}

function maxContribution() {
    return maxContribution
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function minContribution() {
    return minContribution
}

function authorizer() {
    return authorizerAddress
}

function token() {
    return tokenAddress
}

function hasStarted() {
    return (block.timestamp > startTime)
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    endTime = arg1
}

function setMaxContribution(uint256 arg1) {
    require msg.sender == owner
    maxContribution = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function setToken(address arg1) {
    require msg.sender == owner
    require block.timestamp <= startTime
    tokenAddress = arg1
}

function setLockup(address arg1) {
    require msg.sender == owner
    require block.timestamp <= startTime
    lockupAddress = arg1
}

function setAuthorizer(address arg1) {
    require msg.sender == owner
    require block.timestamp <= startTime
    authorizerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function allocateTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require rate
    require weiRaised + (arg2 / rate) >= weiRaised
    weiRaised += arg2 / rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokenPurchase(arg2 / rate, arg2, msg.sender, arg1);
}

function unlockTokens() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require ext_code.size(lockupAddress)
    call lockupAddress.0xf95e6306 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(lockupAddress)
    call lockupAddress.0x3a2960e1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 96] = 0
        require ext_code.size(lockupAddress)
        call lockupAddress.0x6198e339 with:
             gas gas_remaining - 710 wei
            args idx
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[mem[64] + 4] = address(ext_call.return_data[32])
            mem[mem[64] + 36] = ext_call.return_data[64]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[32]), ext_call.return_data[64]
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}

function finalize() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require not uint8(stor6.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == owner
    require ext_code.size(lockupAddress)
    call lockupAddress.0xf95e6306 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(lockupAddress)
        call lockupAddress.0x3a2960e1 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 96] = 0
            require ext_code.size(lockupAddress)
            call lockupAddress.0x6198e339 with:
                 gas gas_remaining - 710 wei
                args idx
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            require ext_call.success
            if ext_call.return_data[0]:
                mem[mem[64] + 4] = address(ext_call.return_data[32])
                mem[mem[64] + 36] = ext_call.return_data[64]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[32]), ext_call.return_data[64]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
            s = ext_call.return_data[64]
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function lockupTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    if not ownerRate:
        require rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, 0 / rate
    else:
        require ownerRate
        require ownerRate * arg2 / ownerRate == arg2
        require rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, ownerRate * arg2 / rate
    require ext_call.success
    if not bonusRate:
        require ext_code.size(lockupAddress)
        call lockupAddress.0x6dc0a997 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(this.address), 0
        require ext_call.success
        require 0 <= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
    else:
        require bonusRate
        require bonusRate * arg2 / bonusRate == arg2
        require ext_code.size(lockupAddress)
        call lockupAddress.0x6dc0a997 with:
             gas gas_remaining - 710 wei
            args address(arg1), bonusRate * arg2 / 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(this.address), bonusRate * arg2 / 100
        require ext_call.success
        require bonusRate * arg2 / 100 <= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2 - (bonusRate * arg2 / 100)
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require ext_code.size(authorizerAddress)
    call authorizerAddress.0xfe9fbb80 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require rate
    require msg.value + (ext_call.return_data[0] / rate) >= msg.value
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require ext_call.return_data[0]
    require msg.value >= minContribution
    require msg.value + (ext_call.return_data[0] / rate) <= maxContribution
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
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, 0
    else:
        require msg.value
        require msg.value * ownerRate / msg.value == ownerRate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, msg.value * ownerRate
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require ext_code.size(authorizerAddress)
    call authorizerAddress.0xfe9fbb80 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require rate
    require msg.value + (ext_call.return_data[0] / rate) >= msg.value
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    require ext_call.return_data[0]
    require msg.value >= minContribution
    require msg.value + (ext_call.return_data[0] / rate) <= maxContribution
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
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, 0
    else:
        require msg.value
        require msg.value * ownerRate / msg.value == ownerRate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, msg.value * ownerRate
    require ext_call.success
}



}
