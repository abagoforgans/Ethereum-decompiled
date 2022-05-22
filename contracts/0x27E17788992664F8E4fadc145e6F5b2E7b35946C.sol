contract main {




// =====================  Runtime code  =====================


address owner;
uint256 startTime;
uint256 endTime;
mapping of uint256 owner;
array of address stor4;
uint256 majorOwnerShares;
uint256 minorOwnerShares;
uint256 coinPercentage;
uint256 rate;
uint256 weiRaised;
uint8 stor11;
uint8 stor11; offset 8
address tokenAddress; offset 16

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function isCrowdsaleStopped() {
    return bool(uint8(stor11.field_0))
}

function coinPercentage() {
    return coinPercentage
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function minorOwnerShares() {
    return minorOwnerShares
}

function isCrowdsalePaused() {
    return bool(uint8(stor11.field_8))
}

function ownerAddresses(address arg1) {
    return owner[arg1]
}

function majorOwnerShares() {
    return majorOwnerShares
}

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(owner)
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function setPriceRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
    return 0
}

function stopCrowdsale() {
    require msg.sender == owner
    uint8(stor11.field_0) = 1
    return 0
}

function pauseCrowdsale() {
    require msg.sender == owner
    uint8(stor11.field_8) = 1
    return 0
}

function resumeCrowdsale() {
    require msg.sender == owner
    uint8(stor11.field_8) = 0
    return 0
}

function changePartnerCoinPercentage(uint256 arg1) {
    require msg.sender == owner
    coinPercentage = arg1
}

function setEndDate(uint256 arg1) {
    require msg.sender == owner
    endTime = block.timestamp + (24 * 3600 * arg1)
    return 0
}

function startCrowdsale() {
    require msg.sender == owner
    uint8(stor11.field_0) = 0
    startTime = block.timestamp
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removePartner(address arg1) {
    require msg.sender == owner
    require arg1
    require owner[address(arg1)] > 0
    require 90 >= owner[stor0]
    owner[address(arg1)] = 0
    require owner[address(arg1)] + owner[stor0] >= owner[stor0]
    owner[stor0] += owner[address(arg1)]
}

function addPartner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require 20 <= owner[stor0]
    require not owner[address(arg1)]
    stor4.length++
    stor4[stor4.length] = arg1
    owner[address(arg1)] = arg2
    require arg2 <= owner[stor0]
    owner[stor0] -= arg2
}

function showMyTokenBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tokensRemainingForSale(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function buy(address arg1) payable {
    require bool(uint8(stor11.field_0)) != 1
    require bool(uint8(stor11.field_8)) != 1
    require msg.value <= 1000 * 10^18
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if rate * msg.value:
        require rate * msg.value
        require coinPercentage * rate * msg.value / rate * msg.value == coinPercentage
    require coinPercentage * rate * msg.value == (100 * coinPercentage * rate * msg.value / 100) + (coinPercentage * rate * msg.value % 100)
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    s = 0
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[32] = 3
        if msg.value:
            require msg.value
            require owner[stor4[idx]] * msg.value / msg.value == owner[stor4[idx]]
        require owner[stor4[idx]] * msg.value == (100 * owner[stor4[idx]] * msg.value / 100) + (owner[stor4[idx]] * msg.value % 100)
        require idx < stor4.length
        call stor4[idx] with:
           value owner[stor4[idx]] * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx] != owner:
            require idx < stor4.length
            mem[0] = stor4[idx]
            mem[32] = 3
            if owner[stor4[idx]] > 0:
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = stor4[idx]
                mem[132] = coinPercentage * rate * msg.value / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor4[idx], coinPercentage * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        s = owner[stor4[idx]] * msg.value / 100
        s = owner[stor4[idx]]
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require bool(uint8(stor11.field_0)) != 1
    require bool(uint8(stor11.field_8)) != 1
    require msg.value <= 1000 * 10^18
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if rate * msg.value:
        require rate * msg.value
        require coinPercentage * rate * msg.value / rate * msg.value == coinPercentage
    require coinPercentage * rate * msg.value == (100 * coinPercentage * rate * msg.value / 100) + (coinPercentage * rate * msg.value % 100)
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    s = 0
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[32] = 3
        if msg.value:
            require msg.value
            require owner[stor4[idx]] * msg.value / msg.value == owner[stor4[idx]]
        require owner[stor4[idx]] * msg.value == (100 * owner[stor4[idx]] * msg.value / 100) + (owner[stor4[idx]] * msg.value % 100)
        require idx < stor4.length
        call stor4[idx] with:
           value owner[stor4[idx]] * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx] != owner:
            require idx < stor4.length
            mem[0] = stor4[idx]
            mem[32] = 3
            if owner[stor4[idx]] > 0:
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = stor4[idx]
                mem[132] = coinPercentage * rate * msg.value / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor4[idx], coinPercentage * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        s = owner[stor4[idx]] * msg.value / 100
        s = owner[stor4[idx]]
        idx = idx + 1
        continue 
}



}
