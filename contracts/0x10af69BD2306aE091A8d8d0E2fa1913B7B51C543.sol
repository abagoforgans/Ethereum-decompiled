contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    require code.data[2522 len 32] >= block.timestamp
    require code.data[2522 len 32] > code.data[2490 len 32]
    require code.data[2598 len 20]
    stor1 = code.data[2490 len 32]
    stor2 = code.data[2522 len 32]
    stor3 = code.data[2554 len 32]
    stor6 = code.data[2630 len 20]
    address(stor7.field_0) = code.data[2598 len 20]
    Mask(96, 0, stor7.field_160) = Mask(96, 0, bool(code.data[2650 len 32]))
    stor8 = code.data[2682 len 32]
    stor9 = block.number
    return code.data[278 len 2212]
}



// =====================  Runtime code  =====================


address owner;
uint256 startFundingTime;
uint256 endFundingTime;
uint256 tokenCap;
uint256 totalTokenCount;
uint256 totalCollected;
address tokenContractAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address vaultAddress;
uint256 exchangeRate;
uint256 exchangeRateAt;

function exchangeRate() {
    return exchangeRate
}

function vaultAddress() {
    return vaultAddress
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    return bool(uint8(stor7.field_160))
}

function tokenContract() {
    return tokenContractAddress
}

function totalTokenCount() {
    return totalTokenCount
}

function owner() {
    return owner
}

function exchangeRateAt() {
    return exchangeRateAt
}

function transfersAllowed() {
    return bool(uint8(stor7.field_160))
}

function startFundingTime() {
    return startFundingTime
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    return bool(uint8(stor7.field_160))
}

function tokenCap() {
    return tokenCap
}

function totalCollected() {
    return totalCollected
}

function endFundingTime() {
    return endFundingTime
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setVault(address arg1) {
    require owner == msg.sender
    vaultAddress = arg1
}

function setTransfersAllowed(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function setExchangeRate(uint256 arg1) {
    require owner == msg.sender
    exchangeRate = arg1
    exchangeRateAt = block.number
}

function changeController(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function distributeTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _19 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _19
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _19
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require block.timestamp >= startFundingTime
    require block.timestamp <= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.controller() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    if not msg.value:
        require totalTokenCount <= tokenCap
        totalCollected += msg.value
        call vaultAddress with:
           value msg.value wei
             gas 28000 wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
    else:
        require exchangeRate * msg.value / msg.value == exchangeRate
        require totalTokenCount + (exchangeRate * msg.value / 100) <= tokenCap
        totalCollected += msg.value
        call vaultAddress with:
           value msg.value wei
             gas 28000 wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, exchangeRate * msg.value / 100
        require ext_call.success
        require ext_call.return_data[0]
        totalTokenCount += exchangeRate * msg.value / 100
}

function proxyPayment(address arg1) payable {
    require block.timestamp >= startFundingTime
    require block.timestamp <= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.controller() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    if not msg.value:
        require totalTokenCount <= tokenCap
        totalCollected += msg.value
        call vaultAddress with:
           value msg.value wei
             gas 28000 wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        require ext_call.return_data[0]
    else:
        require exchangeRate * msg.value / msg.value == exchangeRate
        require totalTokenCount + (exchangeRate * msg.value / 100) <= tokenCap
        totalCollected += msg.value
        call vaultAddress with:
           value msg.value wei
             gas 28000 wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), exchangeRate * msg.value / 100
        require ext_call.success
        require ext_call.return_data[0]
        totalTokenCount += exchangeRate * msg.value / 100
    return 1
}



}
