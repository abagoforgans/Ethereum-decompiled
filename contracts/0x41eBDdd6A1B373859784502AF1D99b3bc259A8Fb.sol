contract main {


// =======================  Init code  ======================


address stor1;
mapping of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint8 stor9;
uint8 stor9; offset 16
uint256 stor9; offset 8

function _fallback() payable {
    stor1 = msg.sender
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'TEST' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'TST' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    uint8(stor9.field_0) = 1
    Mask(248, 0, stor9.field_8) = 1
    uint8(stor9.field_16) = 0
    require not msg.value
    stor7 = code.data[6218 len 32] * 10^stor6
    stor2[address(msg.sender)] = stor7
    emit Transfer(stor7, 0, stor1);
    return code.data[821 len 5397]
}



// =====================  Runtime code  =====================


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 tokensPerOneEther;
uint8 stor9;
uint8 stor9; offset 8
uint8 state; offset 16
uint256 stor9; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_55124ff6(?) {
    return bool(uint8(stor9.field_0))
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_6540e1aa(?) {
    return bool(uint8(stor9.field_8))
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

function setPrices(uint256 arg1) {
    require msg.sender == stor1
    tokensPerOneEther = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function sub_d34a8c6d(?) {
    require msg.sender == stor1
    require state <= 1
    require not state
    uint8(stor9.field_0) = uint8(arg1)
    state = 1
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
    Mask(248, 0, stor9.field_8) = 0
    state = 0
}

function burn(uint256 arg1) {
    require not uint8(stor9.field_8)
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not uint8(stor9.field_8)
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowed[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor9.field_8)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor9.field_8)
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
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
    if uint8(stor9.field_0):
        require msg.sender
        require balanceOf[stor1] >= tokensPerOneEther * msg.value
        require balanceOf[address(msg.sender)] + (tokensPerOneEther * msg.value) >= balanceOf[address(msg.sender)]
        balanceOf[stor1] += -1 * tokensPerOneEther * msg.value
        balanceOf[address(msg.sender)] += tokensPerOneEther * msg.value
        emit Transfer((tokensPerOneEther * msg.value), stor1, msg.sender);
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
