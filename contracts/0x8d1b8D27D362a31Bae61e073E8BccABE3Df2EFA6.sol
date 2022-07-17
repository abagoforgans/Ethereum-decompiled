contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 tokensPerOneEther;
uint256 minEther;
uint256 maxEther;
uint8 state;

function minEther() {
    return minEther
}

function name() {
    return name[0 len name.length]
}

function maxEther() {
    return maxEther
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_6540e1aa(?) {
    return bool(uint8(stor4.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function state() {
    require state <= 1
    return state
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function tokensPerOneEther() {
    return tokensPerOneEther
}

function sub_f9c66883(?) {
    return bool(uint8(stor4.field_0))
}

function setPrices(uint256 arg1) {
    require msg.sender == stor1
    tokensPerOneEther = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function stopBuyingTokens() {
    require msg.sender == stor1
    require state <= 1
    require state == 1
    state = 0
    Mask(248, 0, stor4.field_8) = 0
}

function burn(uint256 arg1) {
    require not uint8(stor4.field_8)
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    require not uint8(stor4.field_8)
    balanceOf[address(arg1)] -= arg2
    allowed[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_adfdd53f(?) {
    require msg.sender == stor1
    require state <= 1
    require not state
    require tokensPerOneEther > 0
    require arg1 > 0
    require arg2 > arg1
    if not uint8(stor4.field_0):
        Mask(248, 0, stor4.field_8) = 1
        uint8(stor4.field_0) = 1
    minEther = arg1 * 10^decimals
    maxEther = arg2 * 10^decimals
    state = 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_8)
    require arg1 != this.address
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_8)
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg2 != this.address
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require state <= 1
    require state == 1
    require tokensPerOneEther > 0
    require msg.value >= minEther
    require msg.value <= maxEther
    require this.address != msg.sender
    require msg.sender
    require balanceOf[stor1] >= tokensPerOneEther * msg.value
    require balanceOf[address(msg.sender)] + (tokensPerOneEther * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[stor1] += -1 * tokensPerOneEther * msg.value
    balanceOf[address(msg.sender)] += tokensPerOneEther * msg.value
    emit Transfer((tokensPerOneEther * msg.value), stor1, msg.sender);
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
