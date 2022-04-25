contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor11; offset 16
uint256 stor11; offset 8
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor10 = 0
    uint8(stor11.field_0) = 0
    Mask(248, 0, stor11.field_8) = 0
    Mask(240, 0, stor11.field_16) = 0
    stor12 = 10^18
    stor13 = 30000000 * 10^18
    stor14 = 25000 * 10^18
    require not msg.value
    require code.data[13827 len 20]
    require code.data[13859 len 20]
    require code.data[13891 len 20]
    require code.data[13923 len 20]
    require code.data[13955 len 20]
    require code.data[13987 len 20]
    require code.data[14007 len 32] >= block.number
    require code.data[14007 len 32] < code.data[14039 len 32]
    require code.data[14071 len 32] > 0
    require code.data[13827 len 20] != code.data[13859 len 20]
    require code.data[13859 len 20] != code.data[13891 len 20]
    require code.data[13859 len 20] != code.data[13923 len 20]
    stor0 = code.data[13827 len 20]
    stor1 = code.data[13859 len 20]
    stor2 = code.data[13891 len 20]
    stor3 = code.data[13923 len 20]
    stor4 = code.data[13955 len 20]
    stor5 = code.data[13987 len 20]
    stor6 = code.data[14007 len 32]
    stor7 = code.data[14039 len 32]
    stor9 = code.data[14071 len 32]
    return code.data[1195 len 12620]
}



// =====================  Runtime code  =====================


const decimals = 18


address rootAddress;
address adminAddress;
address sub_07f4c7efAddress;
address sub_f0dd7adbAddress;
address sub_8bdc0db7Address;
address sub_f82ea762Address;
uint256 initialBlock;
uint256 finalBlock;
mapping of uint8 stor8;
uint256 exchangeRate;
uint256 sub_9a37677f;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
address tokenAddress; offset 24
uint256 stor11; offset 16
uint256 stor11; offset 8
uint256 sub_36e8d620;
uint256 tokenSaleHardCap;
uint256 sub_4cc8e9af;

function sub_07f4c7ef(?) {
    require msg.sender == adminAddress
    return sub_07f4c7efAddress
}

function activated() {
    return bool(uint8(stor11.field_16))
}

function finalBlock() {
    return finalBlock
}

function tokenSaleHardCap() {
    return tokenSaleHardCap
}

function initialBlock() {
    return initialBlock
}

function whitelistMap(address arg1) {
    return bool(stor8[arg1])
}

function sub_36e8d620(?) {
    return sub_36e8d620
}

function isWhitelisted(address arg1) {
    return bool(stor8[address(arg1)])
}

function exchangeRate() {
    return exchangeRate
}

function saleStopped() {
    return bool(uint8(stor11.field_0))
}

function sub_4cc8e9af(?) {
    return sub_4cc8e9af
}

function getRoot() {
    require msg.sender == adminAddress
    return rootAddress
}

function getAdmin() {
    require msg.sender == adminAddress
    return adminAddress
}

function sub_8bdc0db7(?) {
    require msg.sender == adminAddress
    return sub_8bdc0db7Address
}

function sub_9a37677f(?) {
    require msg.sender == adminAddress
    return sub_9a37677f
}

function saleFinalized() {
    return bool(uint8(stor11.field_8))
}

function sub_f0dd7adb(?) {
    require msg.sender == adminAddress
    return sub_f0dd7adbAddress
}

function sub_f82ea762(?) {
    require msg.sender == adminAddress
    return sub_f82ea762Address
}

function token() {
    return tokenAddress
}

function sub_1103bf10(?) {
    require msg.sender == adminAddress
    sub_4cc8e9af = arg1
}

function sub_304566ce(?) {
    require msg.sender == adminAddress
    sub_36e8d620 = arg1
}

function sub_0e85d95c(?) {
    require msg.sender == adminAddress
    tokenSaleHardCap = arg1
}

function deactivateSale() {
    require msg.sender == adminAddress
    Mask(240, 0, stor11.field_16) = 0
}

function sub_aa7ada16(?) {
    require arg1
    require msg.sender == adminAddress
    sub_f82ea762Address = arg1
}

function sub_bb99a7c8(?) {
    require arg1
    require msg.sender == adminAddress
    sub_8bdc0db7Address = arg1
}

function sub_241e7aae(?) {
    require msg.sender == adminAddress
    require arg1 > initialBlock
    finalBlock = arg1
}

function sub_b0c33382(?) {
    require msg.sender == adminAddress
    require arg1 < finalBlock
    initialBlock = arg1
}

function setExchangeRate(uint256 arg1) {
    require msg.sender == sub_f0dd7adbAddress
    require arg1 > 0
    exchangeRate = arg1
}

function restartSale() {
    require uint8(stor11.field_16)
    require uint8(stor11.field_0)
    require msg.sender == adminAddress
    uint8(stor11.field_0) = 0
}

function emergencyStopSale() {
    require uint8(stor11.field_16)
    require not uint8(stor11.field_0)
    require msg.sender == adminAddress
    uint8(stor11.field_0) = 1
}

function sub_5fafc80c(?) {
    require arg1
    require msg.sender == adminAddress
    require arg1 != rootAddress
    require arg1 != adminAddress
    sub_07f4c7efAddress = arg1
}

function sub_f8842658(?) {
    require arg1
    require msg.sender == adminAddress
    require arg1 != rootAddress
    require arg1 != adminAddress
    sub_f0dd7adbAddress = arg1
}

function changeRoot(address arg1) {
    require arg1
    require msg.sender == rootAddress
    require arg1 != adminAddress
    require arg1 != sub_07f4c7efAddress
    require arg1 != sub_f0dd7adbAddress
    rootAddress = arg1
}

function changeAdmin(address arg1) {
    require arg1
    require msg.sender == rootAddress
    require arg1 != rootAddress
    require arg1 != sub_07f4c7efAddress
    require arg1 != sub_f0dd7adbAddress
    adminAddress = arg1
}

function allowPrecirculation(address arg1) {
    require msg.sender == adminAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8ef16d02 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function disallowPrecirculation(address arg1) {
    require msg.sender == adminAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcc481912 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function isPrecirculationAllowed(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x99d84045 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function changeUnlockTime(uint256 arg1) {
    require tokenAddress
    require msg.sender == adminAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x48f1cfdb with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function activateSale() {
    require msg.sender == adminAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    Mask(240, 0, stor11.field_16) = 1
}

function sub_5030da65(?) {
    require arg1
    require msg.sender == adminAddress
    tokenAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
}

function finalizeSale() {
    require block.number >= finalBlock
    require msg.sender == rootAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    Mask(248, 0, stor11.field_8) = 1
    uint8(stor11.field_0) = 1
}

function sub_5cdb660b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == sub_07f4c7efAddress
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _10 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit RemoveFromWhitelist(mem[(32 * arg1.length) + 128]);
        s = _10
        idx = idx + 1
        continue 
}

function sub_28d0c5f2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == sub_07f4c7efAddress
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _11 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if stor8[mem[(32 * idx) + 140 len 20]]:
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit Whitelist(mem[(32 * arg1.length) + 128]);
        s = _11
        idx = idx + 1
        continue 
}

function allocatePresaleTokens(address arg1, uint256 arg2) {
    require block.number < initialBlock
    require arg1
    require msg.sender == adminAddress
    if not arg2:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args sub_8bdc0db7Address, 0
    else:
        require arg2
        require 60 * arg2 / arg2 == 60
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args sub_8bdc0db7Address, 60 * arg2 / 40
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function _fallback() payable {
    require uint8(stor11.field_16)
    require block.number >= initialBlock
    require block.number < finalBlock
    require not uint8(stor11.field_0)
    require msg.sender
    require msg.value >= sub_36e8d620
    require sub_9a37677f <= sub_4cc8e9af
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            require 0 <= tokenSaleHardCap
        else:
            require ext_call.return_data[0]
            require 40 * ext_call.return_data[0] / ext_call.return_data[0] == 40
            require 40 * ext_call.return_data[0] / 100 <= tokenSaleHardCap
        require stor8[address(msg.sender)]
        call sub_f82ea762Address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args sub_8bdc0db7Address, 0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            require 0 <= tokenSaleHardCap
        else:
            require ext_call.return_data[0]
            require 40 * ext_call.return_data[0] / ext_call.return_data[0] == 40
            require 40 * ext_call.return_data[0] / 100 <= tokenSaleHardCap
        require stor8[address(msg.sender)]
        call sub_f82ea762Address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if not msg.value * exchangeRate:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args sub_8bdc0db7Address, 0
        else:
            require msg.value * exchangeRate
            require 60 * msg.value * exchangeRate / msg.value * exchangeRate == 60
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args sub_8bdc0db7Address, 60 * msg.value * exchangeRate / 40
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * exchangeRate
    require ext_call.success
    require ext_call.return_data[0]
    require sub_9a37677f + msg.value >= sub_9a37677f
    sub_9a37677f += msg.value
}



}
