contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
uint32 stor0; offset 192
address stor0;
address stor1;
uint256 stor4;
uint8 stor5; offset 160
address stor5;
uint256 stor6;
address stor7;
address stor8;

function _fallback() payable {
    uint8(stor5.field_160) = 0
    require not msg.value
    require code.data[17025 len 4] >= block.timestamp
    require code.data[17057 len 4] >= code.data[17025 len 4]
    require 10^18 * code.data[17093 len 32] > 0
    create contract with 0 wei
                    code: code.data[13312 len 3685]
    require create.new_address
    address(stor0.field_0) = address(create.new_address)
    uint32(stor0.field_160) = code.data[17025 len 4]
    uint32(stor0.field_192) = code.data[17057 len 4]
    stor4 = 10^18 * code.data[17093 len 32]
    stor1 = 0x80826b5b717add3e840343364ec9d971fba3955c
    address(stor5.field_0) = msg.sender
    require code.data[17061 len 32] > 0
    create contract with 0 wei
                    code: code.data[10118 len 1654], stor1
    require create.new_address
    stor7 = address(create.new_address)
    stor6 = code.data[17061 len 32]
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xe4f0ff4641f3c99de342b06c06414d94a585effb, 11000000 * 10^18
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x76d4136d6ee53db4cc087f2e2990283d5317a5e9, 2000000 * 10^18
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x195610851a43e9685643a8f3b49f0f8a019204f1, 3038800 * 10^18
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).addExcluded(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xe4f0ff4641f3c99de342b06c06414d94a585effb
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).addExcluded(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x76d4136d6ee53db4cc087f2e2990283d5317a5e9
    require ext_call.success
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).addExcluded(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x195610851a43e9685643a8f3b49f0f8a019204f1
    require ext_call.success
    create contract with 0 wei
                    code: code.data[11772 len 1540]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args address(stor5.field_0)
    require ext_call.success
    stor8 = address(create.new_address)
    return code.data[1838 len 8280]
}



// =====================  Runtime code  =====================


uint32 startTime; offset 160
uint32 endTime; offset 192
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 soldTokens;
uint256 hardCap;
uint8 stor5; offset 160
address owner;
uint256 goal;
address vaultAddress;
address rateProviderAddress;

function endTime() {
    return endTime
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

function soldTokens() {
    return soldTokens
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor5)
}

function owner() {
    return owner
}

function rateProvider() {
    return rateProviderAddress
}

function hardCap() {
    return hardCap
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

function hasStarted() {
    return block.timestamp >= startTime
}

function setRateProvider(address arg1) {
    require owner == msg.sender
    require arg1
    rateProviderAddress = arg1
}

function setEndTime(uint32 arg1) {
    require owner == msg.sender
    require not stor5
    require arg1 > startTime
    endTime = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function closeVault() {
    require owner == msg.sender
    require weiRaised >= goal
    require ext_code.size(vaultAddress)
    call vaultAddress.close() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function claimRefund() {
    require stor5
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    require ext_code.size(rateProviderAddress)
    call rateProviderAddress.getRate(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, soldTokens, 5 * 10^16
    require ext_call.success
    require ext_call.return_data[0] <= hardCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] > hardCap - ext_call.return_data[0])
}

function hasEnded(uint256 arg1) {
    require ext_code.size(rateProviderAddress)
    call rateProviderAddress.getRate(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, soldTokens, arg1
    require ext_call.success
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    require ext_call.return_data[0] <= hardCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] > hardCap - ext_call.return_data[0])
}

function finalize() {
    require owner == msg.sender
    require not stor5
    if block.timestamp <= endTime:
        require ext_code.size(rateProviderAddress)
        call rateProviderAddress.getRate(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, soldTokens, 5 * 10^16
        require ext_call.success
        require ext_call.return_data[0] <= hardCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] > hardCap - ext_call.return_data[0]
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if weiRaised >= goal:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xece84fd5 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args owner
        require ext_call.success
    emit Finalized()
    stor5 = 1
}

function _fallback() payable {
    require msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(rateProviderAddress)
    call rateProviderAddress.getRate(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, soldTokens, msg.value
    require ext_call.success
    require ext_code.size(rateProviderAddress)
    call rateProviderAddress.getRateScale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value >= 5 * 10^16
    require ext_call.return_data[0] <= hardCap
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value
    require ext_call.return_data[0] <= hardCap - ext_call.return_data[0]
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0] + (ext_call.return_data[0] * msg.value / ext_call.return_data[0]) >= ext_call.return_data[0] * msg.value / ext_call.return_data[0]
    if ext_call.return_data[0] + (ext_call.return_data[0] * msg.value / ext_call.return_data[0]) <= hardCap:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (ext_call.return_data[0] * msg.value / ext_call.return_data[0]) + soldTokens >= soldTokens
        soldTokens += ext_call.return_data[0] * msg.value / ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0] * msg.value / ext_call.return_data[0]
        require ext_call.success
        emit TokenPurchase(msg.value, ext_call.return_data[0] * msg.value / ext_call.return_data[0], msg.sender, msg.sender);
        if weiRaised >= goal:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address rg1) with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
    else:
        require ext_call.return_data[0] <= hardCap
        if hardCap - ext_call.return_data[0]:
            require hardCap - ext_call.return_data[0]
            require (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / hardCap - ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0]
        if (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            require (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
            require ext_call.return_data[0] * (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0]
        require ((hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + weiRaised >= weiRaised
        weiRaised += (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        require (ext_call.return_data[0] * (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / ext_call.return_data[0]) + soldTokens >= soldTokens
        soldTokens += ext_call.return_data[0] * (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0] * (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / ext_call.return_data[0]
        require ext_call.success
        emit TokenPurchase((hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0], ext_call.return_data[0] * (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / ext_call.return_data[0], msg.sender, msg.sender);
        if msg.value - ((hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
            call msg.sender with:
               value msg.value - ((hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if weiRaised >= goal:
            call walletAddress with:
               value (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address rg1) with:
               value (hardCap * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] wei
                 gas gas_remaining - 9710 wei
                args msg.sender
    require ext_call.success
}



}
