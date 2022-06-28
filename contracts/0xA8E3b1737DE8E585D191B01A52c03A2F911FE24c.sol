contract main {




// =====================  Runtime code  =====================


const RATE = 10000


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
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

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
    require balances[address(msg.sender)] + (10000 * msg.value) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += 10000 * msg.value
    require totalSupply + (10000 * msg.value) >= totalSupply
    totalSupply += 10000 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createTokens() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
    require balances[address(msg.sender)] + (10000 * msg.value) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += 10000 * msg.value
    require totalSupply + (10000 * msg.value) >= totalSupply
    totalSupply += 10000 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
