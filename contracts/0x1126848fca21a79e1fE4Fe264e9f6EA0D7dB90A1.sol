contract main {


// =======================  Init code  ======================


array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'BOT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'BOT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 0
    stor6 = 500 * 10^stor4
    require not msg.value
    stor5 = 0
    stor7 = 2
    stor8 = msg.sender
    stor9 = msg.sender
    return code.data[521 len 2767]
}



// =====================  Runtime code  =====================


const dust = 10^15


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint256 maximumSupply;
uint256 exchangeRate;
address stor8;
address stor9;

function maximumSupply() {
    return maximumSupply
}

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

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getExchangeRate() {
    return exchangeRate
}

function setExchangeRate(uint256 arg1) {
    require msg.sender == stor9
    exchangeRate = arg1
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.sender
    require msg.value > 10^15
    call stor8 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        require totalSupply <= maximumSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require totalSupply >= totalSupply
        emit 0x296c8d0f: 0, msg.value, msg.sender
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require totalSupply + (msg.value * exchangeRate) <= maximumSupply
        require balanceOf[address(msg.sender)] + (msg.value * exchangeRate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * exchangeRate
        require totalSupply + (msg.value * exchangeRate) >= totalSupply
        totalSupply += msg.value * exchangeRate
        emit 0x296c8d0f: msg.value * exchangeRate, msg.value, msg.sender
}

function buyFor(address arg1) payable {
    require arg1
    require msg.value > 10^15
    call stor8 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        require totalSupply <= maximumSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require totalSupply >= totalSupply
        emit 0x296c8d0f: 0, msg.value, arg1
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require totalSupply + (msg.value * exchangeRate) <= maximumSupply
        require balanceOf[address(msg.sender)] + (msg.value * exchangeRate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * exchangeRate
        require totalSupply + (msg.value * exchangeRate) >= totalSupply
        totalSupply += msg.value * exchangeRate
        emit 0x296c8d0f: msg.value * exchangeRate, msg.value, arg1
    return 1
}



}
