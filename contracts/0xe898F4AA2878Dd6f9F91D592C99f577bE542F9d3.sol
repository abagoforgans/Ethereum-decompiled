contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    if buyPrice <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New coins temporarily unavailable'
    require buyPrice
    if balanceOf[this.address] < msg.value / buyPrice:
        revert with 0, 'Not enough coins available'
    require msg.value / buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    require (msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (msg.value / buyPrice) + balanceOf[msg.sender]
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return 1
}

function sell(uint256 arg1) {
    require 0 < sellPrice
    if arg1:
        require arg1
        require sellPrice * arg1 / arg1 == sellPrice
    require sellPrice * arg1 <= eth.balance(this.address)
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg1 + balanceOf[this.address]
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value sellPrice * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
