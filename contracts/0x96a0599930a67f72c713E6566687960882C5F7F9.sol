contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint16 stor6; offset 160
address stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    uint16(stor6.field_160) = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    require code.data[4097 len 32] >= block.timestamp
    require code.data[4129 len 32] >= code.data[4097 len 32]
    require code.data[4161 len 32] > 0
    require code.data[4205 len 20]
    stor1 = code.data[4097 len 32]
    stor2 = code.data[4129 len 32]
    stor4 = code.data[4161 len 32]
    stor3 = code.data[4205 len 20]
    stor0 = code.data[4237 len 20]
    address(stor6.field_0) = msg.sender
    stor7 = code.data[4257 len 32]
    return code.data[309 len 3788]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
uint8 stor6; offset 168
address owner;
uint256 baseTokensSold;
uint8 stor8;

function initialized() {
    return bool(stor8)
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor6.field_160))
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor6.field_168))
}

function owner() {
    return owner
}

function baseTokensSold() {
    return baseTokensSold
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function initializeToken() {
    require owner == msg.sender
    require not stor8
    stor8 = 1
}

function setBaseTokensSold(uint256 arg1) {
    require owner == msg.sender
    baseTokensSold = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor6.field_160)
    uint8(stor6.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not uint8(stor6.field_160)
    uint8(stor6.field_160) = 1
    emit Pause()
    return 1
}

function presaleMint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor8
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor6.field_168)
    require block.timestamp > endTime
    uint8(stor6.field_168) = 1
    require not uint8(stor6.field_160)
    require ext_code.size(tokenAddress)
    if baseTokensSold <= 33333333 * 10^18:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, -baseTokensSold + 33333333 * 10^18
        require ext_call.success
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args walletAddress
    require ext_call.success
    emit Finalized()
}

function getSaleRate(uint256 arg1) {
    idx = 0
    s = 0
    while idx <= arg1 / 10^18 / 10^6:
        require idx + 1
        require (10^18 / idx + 1) + s >= s
        idx = idx + 1
        s = (10^18 / idx + 1) + s
        continue 
    if not rate:
        if (10^18 / (arg1 / 10^18 / 10^6) + 2) + (arg1 / 10^18 / 10^6 * 10^18 / (arg1 / 10^18 / 10^6) + 2):
            return (10^18 * rate / (10^18 / (arg1 / 10^18 / 10^6) + 2) + (arg1 / 10^18 / 10^6 * 10^18 / (arg1 / 10^18 / 10^6) + 2))
    else:
        if rate:
            if 10^18 * rate / rate == 10^18:
                if (10^18 / (arg1 / 10^18 / 10^6) + 2) + (arg1 / 10^18 / 10^6 * 10^18 / (arg1 / 10^18 / 10^6) + 2):
                    return (10^18 * rate / (10^18 / (arg1 / 10^18 / 10^6) + 2) + (arg1 / 10^18 / 10^6 * 10^18 / (arg1 / 10^18 / 10^6) + 2))
    revert
}

function getCurrentSaleRate() {
    idx = 0
    s = 0
    while idx <= baseTokensSold / 10^18 / 10^6:
        require idx + 1
        require (10^18 / idx + 1) + s >= s
        idx = idx + 1
        s = (10^18 / idx + 1) + s
        continue 
    if not rate:
        if (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2):
            return (10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2))
    else:
        if rate:
            if 10^18 * rate / rate == 10^18:
                if (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2):
                    return (10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2))
    revert
}

function multiPresaleMint(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require not stor8
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _20 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _20
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _20
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require not uint8(stor6.field_160)
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require stor8
    idx = 0
    s = 0
    while idx <= baseTokensSold / 10^18 / 10^6:
        require idx + 1
        require (10^18 / idx + 1) + s >= s
        idx = idx + 1
        s = (10^18 / idx + 1) + s
        continue 
    if rate:
        require rate
        require 10^18 * rate / rate == 10^18
    require (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2)
    if msg.value:
        require msg.value
        require 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value / msg.value == 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2)
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value) + baseTokensSold >= baseTokensSold
    baseTokensSold += 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value
    require (10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value) + baseTokensSold <= 33333333 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require not uint8(stor6.field_160)
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require stor8
    idx = 0
    s = 0
    while idx <= baseTokensSold / 10^18 / 10^6:
        require idx + 1
        require (10^18 / idx + 1) + s >= s
        idx = idx + 1
        s = (10^18 / idx + 1) + s
        continue 
    if rate:
        require rate
        require 10^18 * rate / rate == 10^18
    require (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2)
    if msg.value:
        require msg.value
        require 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value / msg.value == 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2)
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value) + baseTokensSold >= baseTokensSold
    baseTokensSold += 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value
    require (10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value) + baseTokensSold <= 33333333 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, 10^18 * rate / (10^18 / (baseTokensSold / 10^18 / 10^6) + 2) + (baseTokensSold / 10^18 / 10^6 * 10^18 / (baseTokensSold / 10^18 / 10^6) + 2) * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
