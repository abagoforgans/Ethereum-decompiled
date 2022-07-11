contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint256 decimals;
uint256 totalSupply;
uint256 stor4; offset 1
uint256 stor4;
address stor5;
uint256 sub_7e3e932e;
address stor8;
address stor9;
mapping of uint256 balanceOf;
uint256 stor12;
uint256 stor13;

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
    return balanceOf[address(arg1)]
}

function sub_7e3e932e(?) {
    return sub_7e3e932e
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function getOwner() {
    return stor9, balanceOf[stor9]
}

function sub_c9186ddc(?) {
    return stor5, stor12, uint256(stor4.field_0)
}

function sub_5ccc62ad(?) {
    require msg.sender == stor9
    sub_7e3e932e += 24 * 3600 * arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor9
    require arg1
    stor9 = arg1
}

function increaseTotal(uint256 arg1) {
    require msg.sender == stor9
    totalSupply += arg1
    balanceOf[address(this.address)] += arg1
}

function sub_c97231df(?) {
    require msg.sender == stor9
    require balanceOf[address(this.address)] >= arg1
    totalSupply -= arg1
    balanceOf[address(this.address)] -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if uint256(stor4.field_0):
        stor12++
        if balanceOf[address(this.address)] > 1000 * uint256(stor4.field_0):
            require 1000 * uint256(stor4.field_0) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += -1000 * uint256(stor4.field_0)
            require balanceOf[address(block.coinbase)] + (1000 * uint256(stor4.field_0)) >= balanceOf[address(block.coinbase)]
            require balanceOf[address(block.coinbase)] + (1000 * uint256(stor4.field_0)) >= 1000 * uint256(stor4.field_0)
            balanceOf[address(block.coinbase)] += 1000 * uint256(stor4.field_0)
            stor5 = block.coinbase
            emit Reward(uint256(stor4.field_0), block.coinbase);
        if stor12 == stor13:
            uint256(stor4.field_0) = uint255(stor4.field_1)
}

function give(address arg1, uint256 arg2) {
    require msg.sender == stor9
    require balanceOf[stor8] >= arg2
    require sub_7e3e932e >= block.timestamp
    require arg2 <= balanceOf[stor8]
    balanceOf[stor8] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, stor8, arg1);
    if uint256(stor4.field_0):
        stor12++
        if balanceOf[address(this.address)] > 1000 * uint256(stor4.field_0):
            require 1000 * uint256(stor4.field_0) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += -1000 * uint256(stor4.field_0)
            require balanceOf[address(block.coinbase)] + (1000 * uint256(stor4.field_0)) >= balanceOf[address(block.coinbase)]
            require balanceOf[address(block.coinbase)] + (1000 * uint256(stor4.field_0)) >= 1000 * uint256(stor4.field_0)
            balanceOf[address(block.coinbase)] += 1000 * uint256(stor4.field_0)
            stor5 = block.coinbase
            emit Reward(uint256(stor4.field_0), block.coinbase);
        if stor12 == stor13:
            uint256(stor4.field_0) = uint255(stor4.field_1)
}

function purchase(uint256 arg1) {
    require msg.sender == stor9
    require balanceOf[address(this.address)] >= arg1
    require sub_7e3e932e >= block.timestamp
    require arg1 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg1
    require balanceOf[stor8] + arg1 >= balanceOf[stor8]
    require balanceOf[stor8] + arg1 >= arg1
    balanceOf[stor8] += arg1
    emit Transfer(arg1, msg.sender, stor8);
    if uint256(stor4.field_0):
        stor12++
        if balanceOf[address(this.address)] > 1000 * uint256(stor4.field_0):
            require 1000 * uint256(stor4.field_0) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += -1000 * uint256(stor4.field_0)
            require balanceOf[address(block.coinbase)] + (1000 * uint256(stor4.field_0)) >= balanceOf[address(block.coinbase)]
            require balanceOf[address(block.coinbase)] + (1000 * uint256(stor4.field_0)) >= 1000 * uint256(stor4.field_0)
            balanceOf[address(block.coinbase)] += 1000 * uint256(stor4.field_0)
            stor5 = block.coinbase
            emit Reward(uint256(stor4.field_0), block.coinbase);
        if stor12 == stor13:
            uint256(stor4.field_0) = uint255(stor4.field_1)
}



}
