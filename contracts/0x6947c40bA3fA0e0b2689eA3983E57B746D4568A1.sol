contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor9;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function frozenAccount(address arg1) {
    return bool(stor3[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function stop() {
    require msg.sender == owner
    uint8(stor10.field_0) = 1
}

function start() {
    require msg.sender == owner
    uint8(stor10.field_0) = 0
}

function set_prices(uint256 arg1) {
    require msg.sender == owner
    stor9 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function set_sell(bool arg1) {
    require msg.sender == owner
    Mask(248, 0, stor10.field_8) = Mask(248, 0, arg1)
}

function set_Name(string arg1) {
    require msg.sender == owner
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function set_symbol(string arg1) {
    require msg.sender == owner
    symbol[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function withdrawal_Lem(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(this.address)] >= arg1
    balanceOf[address(this.address)] -= arg1
    balanceOf[address(msg.sender)] += arg1
}

function withdrawal_Eth(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require stor9
    require uint8(stor10.field_8)
    require stor9
    require balanceOf[address(this.address)] > 100 * msg.value / stor9
    balanceOf[address(msg.sender)] += 100 * msg.value / stor9
    balanceOf[address(this.address)] += -100 * msg.value / stor9
    emit Transfer((100 * msg.value / stor9), this.address, msg.sender);
}

function buy() payable {
    require stor9
    require uint8(stor10.field_8)
    require stor9
    require balanceOf[address(this.address)] > 100 * msg.value / stor9
    balanceOf[address(msg.sender)] += 100 * msg.value / stor9
    balanceOf[address(this.address)] += -100 * msg.value / stor9
    emit Transfer((100 * msg.value / stor9), this.address, msg.sender);
    return (100 * msg.value / stor9)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3[address(msg.sender)]
    require not uint8(stor10.field_0)
    require arg1
    require arg2 >= 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function TokenERC20(uint256 arg1, string arg2, string arg3) {
    totalSupply = 10^11
    balanceOf[address(msg.sender)] = totalSupply
    bool(name.length) = 0
    name.length.field_1 = 11
    name.length.field_8 = 'Leimen coin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 3
    symbol.length.field_8 = 'Lem' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor3[address(arg1)]
    require not uint8(stor10.field_0)
    require arg2
    require arg3 >= 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}



}
