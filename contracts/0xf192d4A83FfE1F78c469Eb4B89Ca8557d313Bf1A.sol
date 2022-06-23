contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
array of address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor11;
address stor11; offset 16
uint256 stor11; offset 8

function _fallback() payable {
    stor5 = 100
    stor6 = 10
    stor7 = 5
    stor8 = 10
    stor9 = 650
    uint8(stor11.field_0) = 0
    Mask(248, 0, stor11.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    address(stor11.field_16) = 0x387890e71a8b7d79114e5843d6a712ea474ba91c
    stor1 = block.timestamp
    stor2 = stor1 + (2160 * 24 * 3600)
    require stor2 >= stor1
    require code.data[8094 len 20]
    stor3[code.data[8094 len 20]] = stor5
    stor4.length++
    if stor4.length > stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = code.data[8094 len 20]
    stor0 = code.data[8094 len 20]
    return code.data[699 len 7383]
}



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
uint256 stor11; offset 8

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
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    require ext_call.success
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
    Mask(248, 0, stor11.field_8) = 1
    return 0
}

function changePartnerCoinPercentage(uint256 arg1) {
    require msg.sender == owner
    coinPercentage = arg1
}

function resumeCrowdsale() {
    require msg.sender == owner
    Mask(248, 0, stor11.field_8) = 0
    return 0
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

function showMyTokenBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function tokensRemainingForSale(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function removePartner(address arg1) {
    require msg.sender == owner
    require arg1
    require owner[address(arg1)] > 0
    require owner[stor0] <= 90
    owner[address(arg1)] = 0
    require owner[stor0] + owner[address(arg1)] >= owner[stor0]
    owner[stor0] += owner[address(arg1)]
}

function addPartner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require owner[stor0] >= 20
    require not owner[address(arg1)]
    stor4.length++
    if stor4.length > stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = arg1
    owner[address(arg1)] = arg2
    require arg2 <= owner[stor0]
    owner[stor0] -= arg2
}

function buy(address arg1) payable {
    require bool(uint8(stor11.field_0)) != 1
    require bool(uint8(stor11.field_8)) != 1
    require msg.value <= 2 * 10^18
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    require ext_call.success
    if msg.value * rate:
        require msg.value * rate
        require msg.value * rate * coinPercentage / msg.value * rate == coinPercentage
    require msg.value * rate * coinPercentage == (100 * msg.value * rate * coinPercentage / 100) + (msg.value * rate * coinPercentage % 100)
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    s = 0
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[32] = 3
        if msg.value:
            require msg.value
            require msg.value * owner[address(stor4[idx])] / msg.value == owner[address(stor4[idx])]
        require msg.value * owner[address(stor4[idx])] == (100 * msg.value * owner[address(stor4[idx])] / 100) + (msg.value * owner[address(stor4[idx])] % 100)
        require idx < stor4.length
        call address(stor4[idx]) with:
           value msg.value * owner[address(stor4[idx])] / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < stor4.length
        mem[0] = 4
        if address(stor4[idx]) != owner:
            require idx < stor4.length
            mem[0] = address(stor4[idx])
            mem[32] = 3
            if owner[address(stor4[idx])] > 0:
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor4[idx])
                mem[132] = msg.value * rate * coinPercentage / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor4[idx]), msg.value * rate * coinPercentage / 100
                require ext_call.success
        s = msg.value * owner[address(stor4[idx])] / 100
        s = owner[address(stor4[idx])]
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require bool(uint8(stor11.field_0)) != 1
    require bool(uint8(stor11.field_8)) != 1
    require msg.value <= 2 * 10^18
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    require ext_call.success
    if msg.value * rate:
        require msg.value * rate
        require msg.value * rate * coinPercentage / msg.value * rate == coinPercentage
    require msg.value * rate * coinPercentage == (100 * msg.value * rate * coinPercentage / 100) + (msg.value * rate * coinPercentage % 100)
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    s = 0
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[32] = 3
        if msg.value:
            require msg.value
            require msg.value * owner[address(stor4[idx])] / msg.value == owner[address(stor4[idx])]
        require msg.value * owner[address(stor4[idx])] == (100 * msg.value * owner[address(stor4[idx])] / 100) + (msg.value * owner[address(stor4[idx])] % 100)
        require idx < stor4.length
        call address(stor4[idx]) with:
           value msg.value * owner[address(stor4[idx])] / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < stor4.length
        mem[0] = 4
        if address(stor4[idx]) != owner:
            require idx < stor4.length
            mem[0] = address(stor4[idx])
            mem[32] = 3
            if owner[address(stor4[idx])] > 0:
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor4[idx])
                mem[132] = msg.value * rate * coinPercentage / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor4[idx]), msg.value * rate * coinPercentage / 100
                require ext_call.success
        s = msg.value * owner[address(stor4[idx])] / 100
        s = owner[address(stor4[idx])]
        idx = idx + 1
        continue 
}



}
