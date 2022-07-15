contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
uint8 stor6;
uint256 price;
address stor8;

function name() {
    return name[0 len name.length]
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

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function sub_b76e42ce(?) {
    require stor5[address(msg.sender)]
    selfdestruct(stor8)
}

function setOption(uint256 arg1) {
    require stor5[address(msg.sender)]
    price = arg1
}

function setOpen(bool arg1) {
    require stor5[address(msg.sender)]
    stor6 = uint8(arg1)
}

function changeBeneficiary(address arg1) {
    require stor5[address(msg.sender)]
    stor8 = arg1
}

function setAdmin(address arg1, bool arg2) {
    require stor5[address(msg.sender)]
    stor5[address(arg1)] = uint8(arg2)
}

function sub_b558d10a(?) {
    require stor5[address(msg.sender)]
    require arg1 >= 0
    totalSupply += arg1 * 10^decimals
    balanceOf[stor8] += arg1 * 10^decimals
}

function transfer(address arg1, uint256 arg2) {
    require stor6
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function _fallback() payable {
    require stor6
    require price >= 0
    require msg.value / 10000 * price <= balanceOf[stor8]
    balanceOf[stor8] += -1 * msg.value / 10000 * price
    balanceOf[address(msg.sender)] += msg.value / 10000 * price
    call stor8 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit SendEth(msg.value, stor8);
    emit Transfer((msg.value / 10000 * price), stor8, msg.sender);
}



}
