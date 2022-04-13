contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor5;
bool stor6; offset 256
uint8 stor6;
address stor6; offset 8

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    uint8(stor6.field_0) = 1
    address(stor6.field_8) = msg.sender
    stor6.field_256 % 1 = 0
    require not msg.value
    return code.data[82 len 3823]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 bonusRate;
uint256 totalContribution;
uint8 stor6;
address stor6; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length].field_0
}

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function bonusRate() {
    return bonusRate
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function purchasingAllowed() {
    return bool(uint8(stor6.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function giveBlockReward() {
    balanceOf[address(block.coinbase)] += 70000
}

function sub_d4895f8d(?) {
    require address(stor6.field_8) == msg.sender
    bonusRate = arg1
}

function getStats() {
    return totalContribution, totalSupply, bonusRate, bool(uint8(stor6.field_0))
}

function enablePurchasing() {
    require address(stor6.field_8) == msg.sender
    uint8(stor6.field_0) = 1
}

function disablePurchasing() {
    require address(stor6.field_8) == msg.sender
    uint8(stor6.field_0) = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 >= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_236c349e(?) {
    balanceOf[address(msg.sender)] = 10000000 * 10^18
    totalSupply = 10000000 * 10^18
    bool(name.length) = 0
    name.length.field_1 = 8
    name.length.field_8 = 'CoinCoin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_8 = 'COIN' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
}

function _fallback() payable {
    require uint8(stor6.field_0)
    if msg.value:
        call address(stor6.field_8) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalSupply = (10^6 * msg.value * bonusRate / 100) + (10^6 * msg.value) + totalSupply
        balanceOf[address(msg.sender)] = (10^6 * msg.value * bonusRate / 100) + (10^6 * msg.value) + balanceOf[address(msg.sender)]
        totalContribution += msg.value
        emit Transfer(((10^6 * msg.value * bonusRate / 100) + (10^6 * msg.value)), this.address, msg.sender);
}



}
