contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor2 = 2
    stor3 = 0
    stor0 = msg.sender
    return code.data[119 len 4202]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address shrTokenAddress;
uint256 tokenPriceInCent;
uint256 ethUsdRateInCent;

function ethUsdRateInCent() {
    return ethUsdRateInCent
}

function owner() {
    return owner
}

function isIcoRunning() {
    return bool(uint8(stor1.field_160))
}

function tokenPriceInCent() {
    return tokenPriceInCent
}

function shrToken() {
    return shrTokenAddress
}

function stopICO() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 0
}

function setTokenPriceInCent(uint256 arg1) {
    require msg.sender == owner
    tokenPriceInCent = arg1
}

function setEthUsdRateInCent(uint256 arg1) {
    require msg.sender == owner
    ethUsdRateInCent = arg1
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

function startICO(uint256 arg1, address arg2) {
    require msg.sender == owner
    require arg1 > 0
    require arg2
    ethUsdRateInCent = arg1
    shrTokenAddress = arg2
    Mask(96, 0, stor1.field_160) = 1
}

function withdrawToOwner() {
    require msg.sender == owner
    require owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTo(address arg1) {
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function remainingTokensForSale() {
    require ext_code.size(shrTokenAddress)
    call shrTokenAddress.totalMainSaleTokenLimit() with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(shrTokenAddress)
    call shrTokenAddress.0xeb8eea15 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    return 0
}

function _fallback() payable {
    require uint8(stor1.field_160)
    require ethUsdRateInCent
    require ext_code.size(shrTokenAddress)
    call shrTokenAddress.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if msg.value:
        require msg.value
        require msg.value * ethUsdRateInCent / msg.value == ethUsdRateInCent
    if msg.value * ethUsdRateInCent:
        require msg.value * ethUsdRateInCent
        require 100 * msg.value * ethUsdRateInCent / msg.value * ethUsdRateInCent == 100
    require tokenPriceInCent
    require ext_code.size(shrTokenAddress)
    call shrTokenAddress.0xeb8eea15 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(shrTokenAddress)
    call shrTokenAddress.totalMainSaleTokenLimit() with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] + (100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18) >= ext_call.return_data[0]
    if ext_call.return_data[0] + (100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18) <= ext_call.return_data[0]:
        require ext_code.size(shrTokenAddress)
        call shrTokenAddress.0x6c197ff5 with:
             gas gas_remaining wei
            args msg.sender, 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18
    else:
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require 0 <= 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18
        if 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18:
            require 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18
            require (100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 * tokenPriceInCent) - (ext_call.return_data[0] * tokenPriceInCent) + (ext_call.return_data[0] * tokenPriceInCent) / 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 == tokenPriceInCent
        if (100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 * tokenPriceInCent) - (ext_call.return_data[0] * tokenPriceInCent) + (ext_call.return_data[0] * tokenPriceInCent):
            require (100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 * tokenPriceInCent) - (ext_call.return_data[0] * tokenPriceInCent) + (ext_call.return_data[0] * tokenPriceInCent)
            require (10^18 * 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 * tokenPriceInCent) - (10^18 * ext_call.return_data[0] * tokenPriceInCent) + (10^18 * ext_call.return_data[0] * tokenPriceInCent) / (100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 * tokenPriceInCent) - (ext_call.return_data[0] * tokenPriceInCent) + (ext_call.return_data[0] * tokenPriceInCent) == 10^18
        require ethUsdRateInCent
        call msg.sender with:
           value (10^18 * 100 * msg.value * ethUsdRateInCent / tokenPriceInCent / 10^18 * tokenPriceInCent) - (10^18 * ext_call.return_data[0] * tokenPriceInCent) + (10^18 * ext_call.return_data[0] * tokenPriceInCent) / 100 / ethUsdRateInCent wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        Mask(96, 0, stor1.field_160) = 0
        require ext_code.size(shrTokenAddress)
        call shrTokenAddress.0x6c197ff5 with:
             gas gas_remaining wei
            args msg.sender, 0
    require ext_call.success
}



}
