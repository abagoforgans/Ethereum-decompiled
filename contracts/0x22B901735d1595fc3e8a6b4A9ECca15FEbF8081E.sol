contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
uint256 sub_28b33ca3;
uint256 TOKEN_MAX;
uint256 sub_4a31aa21;
uint256 sub_654d7d15;
address managerAddress;
uint256 sub_f4b99678;
uint256 sub_cb5e8ec1;
uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_28b33ca3(?) {
    return sub_28b33ca3
}

function decimals() {
    return decimals
}

function manager() {
    return managerAddress
}

function sub_4a31aa21(?) {
    return sub_4a31aa21
}

function sub_654d7d15(?) {
    return sub_654d7d15
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function TOKEN_MAX() {
    return TOKEN_MAX
}

function sub_cb5e8ec1(?) {
    return sub_cb5e8ec1
}

function crowdsaleFinished() {
    return bool(stor12)
}

function sub_f4b99678(?) {
    return sub_f4b99678
}

function sub_2a05ddcc(?) {
    require msg.sender == managerAddress
    sub_654d7d15 = arg1
}

function setPriceToken(uint256 arg1) {
    require msg.sender == managerAddress
    sub_28b33ca3 = arg1
}

function sub_076f97af(?) {
    require msg.sender == managerAddress
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
}

function refund(bool arg1) {
    require arg1
    require balances[address(msg.sender)] > 0
    require sub_cb5e8ec1 + balances[address(msg.sender)] >= sub_cb5e8ec1
    sub_cb5e8ec1 += balances[address(msg.sender)]
    if sub_cb5e8ec1 >= sub_f4b99678:
        stor12 = 1
}

function destroy(address arg1, uint256 arg2) {
    require msg.sender == managerAddress
    require balances[address(arg1)] >= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    require balances[address(arg1)] >= arg2
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == managerAddress
    require arg1
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= sub_654d7d15
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function refundPayment(address arg1) {
    require stor12
    if balances[address(arg1)]:
        require balances[address(arg1)]
        require balances[address(arg1)] * eth.balance(this.address) / balances[address(arg1)] == eth.balance(this.address)
    require totalSupply
    call arg1 with:
       value balances[address(arg1)] * eth.balance(this.address) / totalSupply wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require totalSupply < sub_4a31aa21
    require not stor12
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require sub_28b33ca3
    require totalSupply + (10^18 * msg.value / sub_28b33ca3) >= totalSupply
    totalSupply += 10^18 * msg.value / sub_28b33ca3
    require balances[address(msg.sender)] + (10^18 * msg.value / sub_28b33ca3) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += 10^18 * msg.value / sub_28b33ca3
    emit Transfer((10^18 * msg.value / sub_28b33ca3), 0, msg.sender);
}



}
