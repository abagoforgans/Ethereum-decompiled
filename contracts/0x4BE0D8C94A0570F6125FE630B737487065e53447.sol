contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
address stor1;
mapping of uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    require not msg.value
    stor0 = 10^15
    stor2[address(msg.sender)] = 10^15
    stor7 = 0
    stor5 = 5 * 10^13
    stor8 = 125 * 10^9 * 3600
    address(stor1.field_0) = msg.sender
    stor6 = 0
    return code.data[137 len 3141]
}



// =====================  Runtime code  =====================


const name = 'RAA Coin'

const decimals = 6

const symbol = 'RAA'


uint256 totalSupply;
uint8 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 tokensSold;
uint256 priceOfToken;
uint256 sub_15606c1b;
uint256 stor7;
uint256 stor8;

function sub_15606c1b(?) {
    return sub_15606c1b
}

function totalSupply() {
    return totalSupply
}

function priceOfToken() {
    return priceOfToken
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    require not uint8(stor1.field_160)
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require not uint8(stor1.field_160)
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function unpause() {
    require owner == msg.sender
    require uint8(stor1.field_160)
    uint8(stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    uint8(stor1.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFundToAccount(address arg1) {
    require owner == msg.sender
    require uint8(stor1.field_160)
    require sub_15606c1b > 0
    call arg1 with:
       value sub_15606c1b wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_15606c1b = 0
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require arg1
    require arg2 > 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferLimitedFundToAccount(address arg1, uint256 arg2) {
    require owner == msg.sender
    require uint8(stor1.field_160)
    require sub_15606c1b > 0
    require arg2 < sub_15606c1b
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_15606c1b -= arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require arg1
    require arg2
    require arg3 > 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    require not uint8(stor1.field_160)
    if allowance[address(arg1)][address(arg2)] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor1.field_160)
    require msg.sender
    require msg.value > 0
    require block.timestamp < 1512086399
    require priceOfToken
    tokensSold += 10^6 * msg.value / priceOfToken
    require (10^6 * msg.value / priceOfToken) + tokensSold <= stor8
    stor7 += 10^18 * msg.value
    sub_15606c1b += msg.value
    allowance[address(stor1.field_0)][address(msg.sender)] += 10^6 * msg.value / priceOfToken
    require not uint8(stor1.field_160)
    require owner
    require msg.sender
    require 10^6 * msg.value / priceOfToken > 0
    require balanceOf[address(stor1.field_0)] >= 10^6 * msg.value / priceOfToken
    require not uint8(stor1.field_160)
    require allowance[address(stor1.field_0)][address(msg.sender)] >= 10^6 * msg.value / priceOfToken
    balanceOf[address(msg.sender)] += 10^6 * msg.value / priceOfToken
    balanceOf[address(stor1.field_0)] -= 10^6 * msg.value / priceOfToken
    allowance[address(stor1.field_0)][address(msg.sender)] -= 10^6 * msg.value / priceOfToken
    emit Transfer((10^6 * msg.value / priceOfToken), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
