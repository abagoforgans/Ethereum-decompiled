contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor13;
address stor14;
address stor15;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    stor10 = 75 * 10^15 * 24 * 3600
    require not msg.value
    stor15 = code.data[7605 len 20]
    stor14 = code.data[7605 len 20]
    stor1[code.data[7509 len 20]] = 1
    stor0[address(code.data[7529 len 32])] = 1
    require ext_code.size(stor15)
    call stor15.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 3500 * 10^ext_call.return_data[31 len 1]
    stor6 = 10^18 / 3500 * 10^ext_call.return_data[31 len 1] * stor10 / 10^18
    stor13 = code.data[7573 len 20]
    return code.data[719 len 6778]
}



// =====================  Runtime code  =====================


const sub_7965b636(?) = 10^18


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 sub_09170575;
mapping of uint256 sub_38e5daf5;
uint256 lastUpdate;
uint256 tokenPrice;
uint256 tokenPriceUSD;
uint256 sub_e0cb3e60;
uint256 sub_4ae791c4;
uint256 sub_dd86994b;
uint256 eTHPrice;
address minterAddress;
address burnerAddress;
address etherVaultAddress;
address sub_9fdb31f1Address;
address sub_013e2addAddress;

function sub_013e2add(?) {
    return sub_013e2addAddress
}

function sub_09170575(?) {
    return sub_09170575[arg1]
}

function minterAddress() {
    return minterAddress
}

function ETHPrice() {
    return eTHPrice
}

function sub_38e5daf5(?) {
    return sub_38e5daf5[arg1]
}

function tokenPriceUSD() {
    return tokenPriceUSD
}

function sub_4ae791c4(?) {
    return sub_4ae791c4
}

function tokenPrice() {
    return tokenPrice
}

function sub_9fdb31f1(?) {
    return sub_9fdb31f1Address
}

function oracles(address arg1) {
    return bool(stor0[arg1])
}

function etherVault() {
    return etherVaultAddress
}

function lastUpdate() {
    return lastUpdate
}

function sub_dd86994b(?) {
    return sub_dd86994b
}

function sub_e0cb3e60(?) {
    return sub_e0cb3e60
}

function burnerAddress() {
    return burnerAddress
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function changeMinter(address arg1) {
    require stor1[address(msg.sender)]
    minterAddress = arg1
}

function changeBurner(address arg1) {
    require stor1[address(msg.sender)]
    burnerAddress = arg1
}

function sub_1975f059(?) {
    require stor1[address(msg.sender)]
    require sha3(arg1) == arg2
    stor0[address(arg1)] = 1
}

function sub_1c29b2a7(?) {
    require stor1[address(msg.sender)]
    require sha3(arg1) == arg2
    stor1[address(arg1)] = 1
}

function sub_1d580b75(?) {
    require stor1[address(msg.sender)]
    require sha3(arg1) == arg2
    stor0[address(arg1)] = 0
}

function sub_b49c6e82(?) {
    require stor1[address(msg.sender)]
    require sha3(arg1) == arg2
    stor1[address(arg1)] = 0
}

function sub_92eb8b72(?) {
    require msg.sender == burnerAddress
    if sub_38e5daf5[address(arg1)] >= arg2:
        sub_38e5daf5[address(arg1)] -= arg2
    else:
        sub_38e5daf5[address(arg1)] = 0
    if sub_dd86994b >= arg2:
        sub_dd86994b -= arg2
    else:
        sub_dd86994b = 0
}

function sub_a0a2d0b9(?) {
    require msg.sender == burnerAddress
    if sub_09170575[address(arg1)] >= arg2:
        sub_09170575[address(arg1)] -= arg2
    else:
        sub_09170575[address(arg1)] = 0
    if sub_4ae791c4 >= arg2:
        sub_4ae791c4 -= arg2
    else:
        sub_4ae791c4 = 0
}

function sub_204dac07(?) {
    if minterAddress != msg.sender:
        require stor1[address(msg.sender)]
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.manualEmissionEnabled() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
    sub_38e5daf5[address(arg1)] += arg2
    sub_dd86994b += arg2
}

function sub_2fde999c(?) {
    if minterAddress != msg.sender:
        require stor1[address(msg.sender)]
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.manualEmissionEnabled() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
    sub_09170575[address(arg1)] += arg2
    sub_4ae791c4 += arg2
    sub_38e5daf5[address(arg1)] += arg2 * eTHPrice / 10^18
    sub_dd86994b += arg2 * eTHPrice / 10^18
}

function sub_a438bdb7(?) {
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require 3500 * 10^uint8(ext_call.return_data[0])
        tokenPriceUSD = 10^18 / 3500 * 10^uint8(ext_call.return_data[0]) * eTHPrice / 10^18
    else:
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        tokenPriceUSD = sub_e0cb3e60 + (eth.balance(etherVaultAddress) * eTHPrice / 10^18) / ext_call.return_data[0]
    require eTHPrice
    tokenPrice = 10^18 * tokenPriceUSD / eTHPrice
}

function changeEtherVault(address arg1) {
    require stor1[address(msg.sender)]
    etherVaultAddress = arg1
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require 3500 * 10^uint8(ext_call.return_data[0])
        tokenPriceUSD = 10^18 / 3500 * 10^uint8(ext_call.return_data[0]) * eTHPrice / 10^18
    else:
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        tokenPriceUSD = sub_e0cb3e60 + (eth.balance(etherVaultAddress) * eTHPrice / 10^18) / ext_call.return_data[0]
    require eTHPrice
    tokenPrice = 10^18 * tokenPriceUSD / eTHPrice
}

function sub_a5c10923(?) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    sub_e0cb3e60 = arg1
    eTHPrice = arg2
    lastUpdate = block.timestamp
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require 3500 * 10^uint8(ext_call.return_data[0])
        tokenPriceUSD = 10^18 / 3500 * 10^uint8(ext_call.return_data[0]) * eTHPrice / 10^18
    else:
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        tokenPriceUSD = sub_e0cb3e60 + (eth.balance(etherVaultAddress) * eTHPrice / 10^18) / ext_call.return_data[0]
    require eTHPrice
    tokenPrice = 10^18 * tokenPriceUSD / eTHPrice
}



}
