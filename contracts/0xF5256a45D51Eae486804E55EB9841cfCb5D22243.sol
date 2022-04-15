contract main {


// =======================  Init code  ======================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 16
uint256 stor9; offset 8
uint256 tokensAvailable;
uint256 distributedTokens;
uint256 solvency;
uint256 profit;
mapping of uint8 stor14;

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

function distributedTokens() {
    return distributedTokens
}

function tokensAvailable() {
    return tokensAvailable
}

function profit() {
    return profit
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function solvency() {
    return solvency
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

function frozenAccount(address arg1) {
    return bool(stor14[arg1])
}

function closeSell() {
    return bool(uint8(stor9.field_8))
}

function closeBuy() {
    return bool(uint8(stor9.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor14[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setStatus(bool arg1, bool arg2) {
    require owner == msg.sender
    uint8(stor9.field_0) = uint8(arg1)
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor9.field_16) = Mask(240, 16, arg1) >> 16
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    tokensAvailable = balanceOf[this.address]
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    emit LogWithdrawal(msg.sender, arg1);
    solvency = eth.balance(this.address) - arg1
    profit += arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deposit() payable {
    require msg.value + eth.balance(this.address) > eth.balance(this.address)
    solvency = eth.balance(this.address)
    if msg.value <= profit:
        profit -= msg.value
    else:
        profit = 0
    emit LogDeposit(msg.sender, msg.value);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor14[address(msg.sender)]
    require not stor14[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    tokensAvailable = balanceOf[this.address]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor14[address(arg1)]
    require not stor14[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    tokensAvailable = balanceOf[this.address]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require not uint8(stor9.field_8)
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor14[address(msg.sender)]
    require not stor14[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    tokensAvailable = balanceOf[this.address]
    emit Transfer(arg1, msg.sender, this.address);
    distributedTokens -= arg1
    solvency = eth.balance(this.address) - (arg1 * sellPrice)
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function completeMigration(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require msg.value >= arg2 * sellPrice
    require msg.value + eth.balance(this.address) > eth.balance(this.address)
    solvency = eth.balance(this.address)
    if msg.value <= profit:
        profit -= msg.value
    else:
        profit = 0
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor14[address(msg.sender)]
    require not stor14[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    tokensAvailable = balanceOf[this.address]
    emit Transfer(arg2, msg.sender, arg1);
    distributedTokens += arg2
    emit LogMigration(address(arg1), arg2);
}

function buy() payable {
    require not uint8(stor9.field_0)
    require buyPrice
    require msg.value - (msg.value / buyPrice * sellPrice) > 0
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor14[address(this.address)]
    require not stor14[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    tokensAvailable = balanceOf[this.address]
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    distributedTokens += msg.value / buyPrice
    solvency = eth.balance(this.address) - msg.value + (msg.value / buyPrice * sellPrice)
    profit = msg.value - (msg.value / buyPrice * sellPrice) + profit
    call owner with:
       value msg.value - (msg.value / buyPrice * sellPrice) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



// =====================  Runtime code  =====================




}
