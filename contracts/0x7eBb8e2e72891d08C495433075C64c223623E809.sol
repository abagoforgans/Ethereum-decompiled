contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stopped;
uint256 sellPrice;
uint256 buyPrice;
address stor9;
address stor10;

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
    return balanceOf[arg1]
}

function stopped() {
    return bool(stopped)
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require stor9 == msg.sender
    stopped = 1
}

function start() {
    require stor9 == msg.sender
    stopped = 0
}

function giveBlockReward() {
    balanceOf[address(block.coinbase)] += 15000
}

function setPrices(uint256 arg1, uint256 arg2) {
    require stor9 == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[0] += arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mintToken(address arg1, uint256 arg2) {
    require stor9 == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function buy() payable {
    require buyPrice
    require balanceOf[stor9] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[stor9] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), stor9, msg.sender);
    return (msg.value / buyPrice)
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require not stopped
    require msg.sender != 0
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[stor9] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, msg.sender, stor9);
    return (arg1 * sellPrice)
}

function redeem(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)] >= (10^18 * arg2) - (2 * 10^18 * arg2 / 102):
        require msg.value >= 2 * 10^18 * arg2 / 102 * buyPrice / 10^18
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10^18 * arg2) - (2 * 10^18 * arg2 / 102)
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (10^18 * arg2) + (2 * 10^18 * arg2 / 102)
        emit Transfer(((10^18 * arg2) - (2 * 10^18 * arg2 / 102)), msg.sender, arg1);
        call stor10 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.value >= (10^18 * arg2 * buyPrice) - (balanceOf[address(msg.sender)] * buyPrice) / 10^18
        require balanceOf[stor9] >= (10^18 * arg2) - (2 * 10^18 * arg2 / 102) - balanceOf[address(msg.sender)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10^18 * arg2) - (2 * 10^18 * arg2 / 102)
        balanceOf[stor9] = balanceOf[stor9] - (10^18 * arg2) + (2 * 10^18 * arg2 / 102) + balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        call stor9 with:
           value msg.value - (2 * 10^18 * arg2 / 102 * buyPrice / 10^18) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor10 with:
           value 2 * 10^18 * arg2 / 102 * buyPrice / 10^18 wei
             gas 2300 * is_zero(value) wei
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
        emit Transfer(((10^18 * arg2) - (2 * 10^18 * arg2 / 102) - balanceOf[address(msg.sender)]), stor9, arg1);
    return (10^18 * arg2)
}



}
