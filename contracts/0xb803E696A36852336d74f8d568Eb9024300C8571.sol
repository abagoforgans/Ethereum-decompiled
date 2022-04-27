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
uint128 stor8; offset 160
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    Mask(96, 0, stor8.field_160) = 0
    require not msg.value
    require code.data[22217 len 32] >= block.timestamp
    require code.data[22281 len 32] >= code.data[22217 len 32]
    require code.data[22409 len 32] > 0
    require code.data[22485 len 20]
    create contract with 0 wei
                    code: code.data[15675 len 6542]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[22217 len 32]
    stor2 = code.data[22281 len 32]
    stor4 = code.data[22409 len 32]
    stor3 = code.data[22485 len 20]
    address(stor6.field_0) = msg.sender
    require code.data[22345 len 32] > 0
    create contract with 0 wei
                    code: code.data[12996 len 2679], stor3
    require create.new_address
    address(stor8.field_0) = address(create.new_address)
    stor7 = code.data[22345 len 32]
    stor10 = code.data[22249 len 32]
    stor9 = code.data[22313 len 32]
    stor11 = code.data[22441 len 32]
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor3, code.data[22377 len 32]
    require ext_call.success
    return code.data[1138 len 11858]
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
uint256 goal;
uint8 stor8; offset 160
uint128 stor8; offset 160
address vaultAddress;
uint256 tokenCap;
uint256 sub_6bb7b1d9;
uint256 presaleRate;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function presaleRate() {
    return presaleRate
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor8.field_160))
}

function sub_6bb7b1d9(?) {
    return sub_6bb7b1d9
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

function tokenCap() {
    return tokenCap
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

function unpause() {
    require msg.sender == owner
    require uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require uint8(stor6.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return ext_call.return_data[0] >= tokenCap
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp <= endTime:
        require ext_call.return_data[0] >= tokenCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= tokenCap
    require ext_code.size(tokenAddress)
    if tokenCap - ext_call.return_data[0] > 0:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, tokenCap - ext_call.return_data[0]
        require ext_call.success
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args walletAddress
    require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor8.field_160)
    require arg1
    if block.timestamp > sub_6bb7b1d9:
        if not msg.value:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] <= tokenCap
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] + (msg.value * rate) <= tokenCap
    else:
        if not msg.value:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] <= tokenCap
        else:
            require msg.value
            require msg.value * presaleRate / msg.value == presaleRate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (msg.value * presaleRate) >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] + (msg.value * presaleRate) <= tokenCap
    if block.timestamp > sub_6bb7b1d9:
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
    else:
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
            require msg.value * presaleRate / msg.value == presaleRate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * presaleRate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * presaleRate, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor8.field_160)
    require msg.sender
    if block.timestamp > sub_6bb7b1d9:
        if not msg.value:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] <= tokenCap
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] + (msg.value * rate) <= tokenCap
    else:
        if not msg.value:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] <= tokenCap
        else:
            require msg.value
            require msg.value * presaleRate / msg.value == presaleRate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (msg.value * presaleRate) >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] + (msg.value * presaleRate) <= tokenCap
    if block.timestamp > sub_6bb7b1d9:
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
    else:
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
            require msg.value * presaleRate / msg.value == presaleRate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * presaleRate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * presaleRate, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
