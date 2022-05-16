contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
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
    uint8(stor6.field_0) = uint8(arg1)
}

function sub_a891169b(?) {
    require stor5[address(msg.sender)]
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
}

function setAdmin(address arg1, bool arg2) {
    require stor5[address(msg.sender)]
    stor5[address(arg1)] = uint8(arg2)
}

function sub_b558d10a(?) {
    require stor5[address(msg.sender)]
    require arg1 >= 0
    totalSupply += arg1 * 10^decimals
    balanceOf[address(this.address)] += arg1 * 10^decimals
}

function getETH(uint256 arg1) {
    require stor5[address(msg.sender)]
    require uint8(stor6.field_0)
    require 10^14 * arg1 <= eth.balance(this.address)
    call stor8 with:
       value 10^14 * arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit SendEth((10^14 * arg1), stor8);
}

function _fallback() payable {
    require uint8(stor6.field_0)
    require price >= 0
    require msg.value / 10000 * price <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * msg.value / 10000 * price
    balanceOf[address(msg.sender)] += msg.value / 10000 * price
    emit Transfer((msg.value / 10000 * price), this.address, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor6.field_0)
    if arg1 != msg.sender:
        require arg1
        if not stor5[address(msg.sender)]:
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            if arg1 != this.address:
                emit Transfer(arg2, msg.sender, arg1);
            if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]:
        else:
            require balanceOf[address(this.address)] >= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(this.address)] -= arg2
            balanceOf[address(arg1)] += arg2
            if arg1 != this.address:
                emit Transfer(arg2, this.address, arg1);
            if balanceOf[address(this.address)] + balanceOf[address(arg1)] == balanceOf[address(this.address)] + balanceOf[address(arg1)]:
    else:
        if not uint8(stor6.field_8):
            require arg1
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            if arg1 != this.address:
                emit Transfer(arg2, msg.sender, arg1);
            if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]:
        else:
            require this.address
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(this.address)] += arg2
            if this.address != this.address:
                emit Transfer(arg2, msg.sender, this.address);
            if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] == balanceOf[address(msg.sender)] + balanceOf[address(this.address)]:
    revert
}



}
