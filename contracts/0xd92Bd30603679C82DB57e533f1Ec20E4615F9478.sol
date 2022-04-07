contract main {


// =======================  Init code  ======================


array of uint256 stor4;
address stor5;
uint8 stor6; offset 152
address stor6;
uint8 stor7; offset 152
address stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0xcd4fc8e4da5b25885c7d80b6c846afb6b170b49b
    Mask(152, 0, stor6.field_0) = 0x5cd1194c1f088d9bd8bf9e70e5e44d2194c029
    uint8(stor6.field_152) = 0
    Mask(152, 0, stor7.field_0) = 0xd0aca6d3d07b3546fc76e60a90ccdccc7c0e0c
    uint8(stor7.field_152) = 0
    stor8 = 0x5ca7f20427e4d202777ea8006dc8f614a289be2f
    stor9 = 0x7d49c6a86fde3de9c47544c58b7b0f035197415b
    require not msg.value
    stor10 = msg.sender
    stor12 = code.data[6076 len 32]
    stor11 = code.data[6108 len 32]
    return code.data[833 len 5243]
}



// =====================  Runtime code  =====================


const name = 'SMEToken'

const getBalance = eth.balance(this.address)

const decimals = 18

const tokenExchangeRate = 1000

const symbol = 'SMET'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct funder;
array of uint256 version;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address creatorAddress;
uint256 sellPrice;
uint256 totalSupply;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function sellPrice() {
    return sellPrice
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getFunder(uint256 arg1) {
    require arg1 < funder.length
    return funder[arg1].field_0, funder[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function burn(uint256 arg1) {
    require msg.sender == creatorAddress
    totalSupply -= arg1
}

function issue(uint256 arg1) {
    require msg.sender == creatorAddress
    totalSupply += arg1
}

function setPrices(uint256 arg1) {
    require msg.sender == creatorAddress
    sellPrice = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value >= 10^18
    funder.length++
    if not funder.length <= funder.length + 1:
        idx = 2 * funder.length + 1
        while 2 * funder.length > idx:
            funder[idx].field_0 = 0
            funder[idx].field_256 = 0
            idx = idx + 2
            continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / 10^18
    require sellPrice
    require totalSupply >= msg.value / sellPrice
    require balanceOf[address(msg.sender)] + (msg.value / sellPrice) >= balanceOf[address(msg.sender)]
    totalSupply -= msg.value / sellPrice
    balanceOf[address(msg.sender)] += msg.value / sellPrice
    call stor5 with:
       value 50 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value 24 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 6 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor9 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value >= 10^18
    funder.length++
    if not funder.length <= funder.length + 1:
        idx = 2 * funder.length + 1
        while 2 * funder.length > idx:
            funder[idx].field_0 = 0
            funder[idx].field_256 = 0
            idx = idx + 2
            continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / 10^18
    require sellPrice
    require totalSupply >= msg.value / sellPrice
    require balanceOf[address(msg.sender)] + (msg.value / sellPrice) >= balanceOf[address(msg.sender)]
    totalSupply -= msg.value / sellPrice
    balanceOf[address(msg.sender)] += msg.value / sellPrice
    call stor5 with:
       value 50 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value 24 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 6 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor9 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
