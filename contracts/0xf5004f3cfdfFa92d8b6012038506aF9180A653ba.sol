contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'CHERRYCOIN' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'CHC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 10^15
    require not msg.value
    return code.data[363 len 3161]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;

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

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function FrozenFunds(address arg1) {
    return bool(stor9[arg1])
}

function _fallback() payable {
    revert
}

function setPrices(uint256 arg1, uint256 arg2) {
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor8[address(this.address)]
    require not stor8[address(msg.sender)]
    require not stor9[address(this.address)]
    require not stor9[address(msg.sender)]
    balanceOf[this.address] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[this.address] + balanceOf[address(msg.sender)]
}

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor8[address(msg.sender)]
    require not stor8[address(this.address)]
    require not stor9[address(msg.sender)]
    require not stor9[address(this.address)]
    balanceOf[msg.sender] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require balanceOf[address(this.address)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(this.address)]
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
