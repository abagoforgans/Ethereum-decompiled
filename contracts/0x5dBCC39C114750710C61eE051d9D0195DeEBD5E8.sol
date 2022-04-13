contract main {


// =======================  Init code  ======================


array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint128 stor7; offset 160
address stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 7
    stor3.length.field_8 = 'Presale' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'PRE' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = '0.3' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    address(stor7.field_0) = 0xf9d82fc1f70310e030b74d52d6a56b46078a77cc
    return code.data[589 len 4534]
}



// =====================  Runtime code  =====================


const sub_11aee8af(?) = eth.balance(this.address)

const sub_969745e8(?) = 2500


uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint8 stor7; offset 160
uint128 stor7; offset 160
address adminAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function isEnabled() {
    return bool(uint8(stor7.field_160))
}

function getAdmin() {
    emit Admin(adminAddress);
    return adminAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d333b3b3(?) {
    emit 0xb51169e2: bool(uint8(stor7.field_160))
    return bool(uint8(stor7.field_160))
}

function admin() {
    return adminAddress
}

function approve(address arg1, uint256 arg2) {
    revert
}

function transfer(address arg1, uint256 arg2) {
    revert
}

function allowance(address arg1, address arg2) {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert
}

function togglePresale() {
    require msg.sender == adminAddress
    Mask(96, 0, stor7.field_160) = Mask(96, 0, not bool(uint8(stor7.field_160)))
}

function adminWithdraw() {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function donate() payable {
    emit 0xc6d328f1: msg.sender, msg.value
    require msg.value > 0
    require uint8(stor7.field_160)
    if msg.value:
        require msg.value
        require 2500 * msg.value / msg.value == 2500
    emit 0x7a3962e0: msg.sender, 2500 * msg.value, balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (2500 * msg.value) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (2500 * msg.value) >= 2500 * msg.value
    balanceOf[address(msg.sender)] += 2500 * msg.value
    emit 0x8f69057b: address(this.address), msg.sender, 2500 * msg.value
}

function _fallback() payable {
    emit 0xc6d328f1: msg.sender, msg.value
    require msg.value > 0
    require uint8(stor7.field_160)
    if msg.value:
        require msg.value
        require 2500 * msg.value / msg.value == 2500
    emit 0x7a3962e0: msg.sender, 2500 * msg.value, balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (2500 * msg.value) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (2500 * msg.value) >= 2500 * msg.value
    balanceOf[address(msg.sender)] += 2500 * msg.value
    emit 0x8f69057b: address(this.address), msg.sender, 2500 * msg.value
}



}
