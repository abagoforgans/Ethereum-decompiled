contract main {


// =======================  Init code  ======================


address stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;

function _fallback() payable {
    stor5 = msg.sender
    bool(stor6.length) = 0
    stor6.length.field_1 = 6
    stor6.length.field_8 = 'SrCoin' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'SRC' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor8.field_0) = 3
    Mask(248, 0, stor8.field_8) = 1
    Mask(240, 0, stor8.field_16) = 1
    stor9 = 1
    stor10 = 0x8294159de662f0bd810feab94237cf3a7bb2a3d
    stor11 = 0xaed27d4eccd7c0a0bd548383dec89031b7bbcf3e
    stor12 = 0x41ba7eed9be2450961ebfd7c9fb715cae077f1dc
    stor13 = 0xb9cdb4cdc8f9a931063ca30bcde8b210d3ba80a3
    stor14 = 0x5abf2ca9e7f5f1895c6fbecf5668f164797edc5d
    if not msg.value:
        return code.data[945 len 6864]
    revert
}



// =====================  Runtime code  =====================


address sub_cfc7ba05Address;
address sub_f39a42c6Address;
address coinAddress;
mapping of uint256 balances;
uint256 total_Supply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 price;
address sub_a5609597Address;
address sub_e0b376d8Address;
address sub_6cf9cec7Address;
address address4;
address sub_66db33a7Address;

function name() {
    return name[0 len name.length]
}

function address5() {
    return sub_66db33a7Address
}

function coin() {
    return coinAddress
}

function totalSupply() {
    return total_Supply
}

function address3() {
    return sub_6cf9cec7Address
}

function total_Supply() {
    return total_Supply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function sub_331e7280(?) {
    return bool(uint8(stor8.field_16))
}

function address1() {
    return sub_a5609597Address
}

function sub_4faea5d0(?) {
    return address4
}

function sub_66db33a7(?) {
    return sub_66db33a7Address
}

function sub_6cf9cec7(?) {
    return sub_6cf9cec7Address
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function sub_8d7300d8(?) {
    return bool(uint8(stor8.field_8))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function address2() {
    return sub_e0b376d8Address
}

function price() {
    return price
}

function address4() {
    return address4
}

function sub_a5609597(?) {
    return sub_a5609597Address
}

function sub_cfc7ba05(?) {
    return sub_cfc7ba05Address
}

function sub_e0b376d8(?) {
    return sub_e0b376d8Address
}

function sub_ece89d93(?) {
    return bool(uint8(stor8.field_16))
}

function sub_f39a42c6(?) {
    return sub_f39a42c6Address
}

function _fallback() payable {
    revert
}

function sub_950cb06c(?) {
    require msg.sender == owner
    address4 = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function sub_4378577d(?) {
    require msg.sender == owner
    sub_6cf9cec7Address = arg1
}

function sub_a58a613c(?) {
    require msg.sender == owner
    sub_66db33a7Address = arg1
}

function setAddress2(address arg1) {
    require msg.sender == owner
    sub_e0b376d8Address = arg1
}

function setAddress1(address arg1) {
    require msg.sender == owner
    sub_a5609597Address = arg1
}

function sub_466e192b(?) {
    require msg.sender == sub_cfc7ba05Address
    sub_cfc7ba05Address = 0
}

function sub_3e2e3f2d(?) {
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function sub_c520129f(?) {
    require msg.sender == owner
    Mask(240, 0, stor8.field_16) = Mask(240, 0, arg1)
}

function sub_91bbfb7d(?) {
    require msg.sender == owner
    sub_cfc7ba05Address = arg1
    coinAddress = arg2
    sub_f39a42c6Address = arg3
}

function sub_71536f53(?) {
    require msg.sender == coinAddress
    require uint8(stor8.field_8)
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
}

function sub_9885d26e(?) {
    require msg.sender == coinAddress
    require uint8(stor8.field_8)
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require total_Supply + arg2 >= total_Supply
    total_Supply += arg2
}

function sub_d1aa94a3(?) {
    require msg.sender == sub_cfc7ba05Address
    if arg2:
        require arg2
        require arg2 * price / arg2 == price
    balances[address(arg1)] += arg2 * price / 10^15
    require total_Supply + (arg2 * price / 10^15 / 100) >= total_Supply
    total_Supply += arg2 * price / 10^15 / 100
}



}
