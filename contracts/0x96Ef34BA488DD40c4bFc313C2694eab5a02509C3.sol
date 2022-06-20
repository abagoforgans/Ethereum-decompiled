contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 sellPrice;
uint256 buyPrice;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrices(uint256 arg1, uint256 arg2) {
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice * 10^decimals
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * 10^decimals) > balanceOf[address(msg.sender)]
    require msg.value / buyPrice * 10^decimals <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * msg.value / buyPrice * 10^decimals
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * 10^decimals) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / buyPrice * 10^decimals
    emit Transfer((msg.value / buyPrice * 10^decimals), this.address, msg.sender);
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
}

function _fallback() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice * 10^decimals
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * 10^decimals) > balanceOf[address(msg.sender)]
    require msg.value / buyPrice * 10^decimals <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * msg.value / buyPrice * 10^decimals
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * 10^decimals) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / buyPrice * 10^decimals
    emit Transfer((msg.value / buyPrice * 10^decimals), this.address, msg.sender);
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
}

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1 * 10^decimals
    require balanceOf[address(this.address)] + (arg1 * 10^decimals) > balanceOf[address(this.address)]
    require arg1 * 10^decimals <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    require balanceOf[address(this.address)] + (arg1 * 10^decimals) >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg1 * 10^decimals
    emit Transfer((arg1 * 10^decimals), msg.sender, this.address);
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] == balanceOf[address(msg.sender)] + balanceOf[address(this.address)]
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
