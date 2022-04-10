contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 27
    stor3.length.field_8 = 'Just Another Ethereum Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'JAT' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 3
    stor6 = 32 * 10^6
    require not msg.value
    stor2 = stor6
    stor0[address(msg.sender)] = stor6
    stor9 = block.timestamp + (672 * 24 * 3600)
    stor8 = msg.sender
    stor7 = 10000
    return code.data[532 len 3784]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 price;
address owner;
uint256 endTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    require msg.value * price == (10^18 * msg.value * price / 10^18) + (msg.value * price % 10^18)
    require totalSupply + (msg.value * price / 10^18) >= totalSupply
    totalSupply += msg.value * price / 10^18
    require balanceOf[address(arg1)] + (msg.value * price / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value * price / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < endTime
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    require msg.value * price == (10^18 * msg.value * price / 10^18) + (msg.value * price % 10^18)
    require totalSupply + (msg.value * price / 10^18) >= totalSupply
    totalSupply += msg.value * price / 10^18
    require balanceOf[address(msg.sender)] + (msg.value * price / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * price / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
