contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor7; offset 8
mapping of uint256 stor8;

function _fallback() payable {
    stor1 = 100
    stor2 = 26918
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    require not msg.value
    mem[96 len -5872] = code.data[6421 len -5872]
    mem[64] = -5776
    stor0 = msg.sender
    stor8[address(this.address)] = mem[96] * 10^mem[160]
    stor6 = mem[96] * 10^mem[160]
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5 = mem[160]
    return code.data[549 len 5872]
}



// =====================  Runtime code  =====================


address owner;
uint256 PRICE;
uint256 exchangeRate;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint8 sub_e58e9633;
uint8 release; offset 8
uint256 stor7; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function exchangeRate() {
    return exchangeRate
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function release() {
    return bool(release)
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function sub_e58e9633(?) {
    return bool(sub_e58e9633)
}

function sub_19bd2b99(?) {
    stor7 = Mask(248, 0, arg1)
}

function sub_83050032(?) {
    require msg.sender == owner
    sub_e58e9633 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    PRICE = arg1
}

function setExchangeRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    exchangeRate = arg1
}

function destroyToken(uint256 arg1) {
    require msg.sender == owner
    balanceOf[address(this.address)] += -1 * arg1 * 10^decimals
    totalSupply += -1 * arg1 * 10^decimals
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    balanceOf[address(this.address)] += arg1 * 10^decimals
    totalSupply += arg1 * 10^decimals
    emit Transfer((arg1 * 10^decimals), 0, this.address);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require not release
    if msg.value:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
    require msg.value * exchangeRate == (10^18 * msg.value * exchangeRate / 10^18) + (msg.value * exchangeRate % 10^18)
    require PRICE > 0
    require PRICE
    require 10^decimals == (PRICE * 10^decimals / PRICE) + (10^decimals % PRICE)
    if msg.value * exchangeRate / 10^18:
        require msg.value * exchangeRate / 10^18
        require msg.value * exchangeRate / 10^18 * 10^decimals / PRICE / msg.value * exchangeRate / 10^18 == 10^decimals / PRICE
    if sub_e58e9633:
        if balanceOf[address(this.address)] < balanceOf[address(this.address)] + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE):
            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)
            totalSupply = totalSupply + (totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)
            emit Transfer(((totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)), 0, this.address);
            emit Transfer(((totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)), this.address, this.address);
    require balanceOf[address(this.address)] > msg.value * exchangeRate / 10^18 * 10^decimals / PRICE
    balanceOf[address(msg.sender)] += msg.value * exchangeRate / 10^18 * 10^decimals / PRICE
    balanceOf[address(this.address)] += -1 * msg.value * exchangeRate / 10^18 * 10^decimals / PRICE
    emit Transfer((msg.value * exchangeRate / 10^18 * 10^decimals / PRICE), this.address, msg.sender);
}

function _fallback() payable {
    require not release
    if msg.value:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
    require msg.value * exchangeRate == (10^18 * msg.value * exchangeRate / 10^18) + (msg.value * exchangeRate % 10^18)
    require PRICE > 0
    require PRICE
    require 10^decimals == (PRICE * 10^decimals / PRICE) + (10^decimals % PRICE)
    if msg.value * exchangeRate / 10^18:
        require msg.value * exchangeRate / 10^18
        require msg.value * exchangeRate / 10^18 * 10^decimals / PRICE / msg.value * exchangeRate / 10^18 == 10^decimals / PRICE
    if sub_e58e9633:
        if balanceOf[address(this.address)] < balanceOf[address(this.address)] + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE):
            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)
            totalSupply = totalSupply + (totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)
            emit Transfer(((totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)), 0, this.address);
            emit Transfer(((totalSupply / 10) + (msg.value * exchangeRate / 10^18 * 10^decimals / PRICE)), this.address, this.address);
    require balanceOf[address(this.address)] > msg.value * exchangeRate / 10^18 * 10^decimals / PRICE
    balanceOf[address(msg.sender)] += msg.value * exchangeRate / 10^18 * 10^decimals / PRICE
    balanceOf[address(this.address)] += -1 * msg.value * exchangeRate / 10^18 * 10^decimals / PRICE
    emit Transfer((msg.value * exchangeRate / 10^18 * 10^decimals / PRICE), this.address, msg.sender);
}



}
