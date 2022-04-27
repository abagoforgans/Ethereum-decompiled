contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    mem[128] = 'ERC20 TokenFederalReserve'
    bool(stor1.length) = 0
    stor1.length.field_1 = 25
    stor1.length.field_8 = 'ERC20 TokenFederalReserve' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 10^13
    stor9 = 10^13
    stor10 = 2 * 10^12
    stor11 = 5
    require not msg.value
    mem[160 len -3492] = code.data[3966 len -3492]
    stor0 = msg.sender
    stor6[address(msg.sender)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    return code.data[474 len 3492]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 minPrice;
uint256 buyPrice;
uint256 sellPrice;
uint8 spread;
mapping of uint8 stor12;

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

function standard() {
    return standard[0 len standard.length]
}

function spread() {
    return spread
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function minPrice() {
    return minPrice
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require owner == msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor12[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function deposit() payable {
    require msg.value + eth.balance(this.address) >= eth.balance(this.address)
    emit LogDeposit(msg.sender, msg.value);
    require totalSupply
    buyPrice = eth.balance(this.address) / totalSupply
    sellPrice = (eth.balance(this.address) / totalSupply) - (eth.balance(this.address) / totalSupply * spread / 100)
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor12[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require owner == msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function sell(uint256 arg1) {
    require not stor12[address(msg.sender)]
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require balanceOf[address(msg.sender)] >= arg1 * 10^decimals
    if sellPrice < minPrice:
        sellPrice = minPrice - (spread * minPrice / 100)
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    balanceOf[this.address] += arg1 * 10^decimals
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((arg1 * 10^decimals), msg.sender, this.address);
    require totalSupply
    buyPrice = eth.balance(this.address) / totalSupply
    sellPrice = (eth.balance(this.address) / totalSupply) - (eth.balance(this.address) / totalSupply * spread / 100)
}

function buy() payable {
    require not stor12[address(msg.sender)]
    if buyPrice < minPrice:
        buyPrice = minPrice
    require eth.balance(msg.sender) >= msg.value
    require msg.value + eth.balance(msg.sender) >= eth.balance(msg.sender)
    require buyPrice
    require msg.value / buyPrice * 10^decimals > 0
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * 10^decimals) >= balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] >= msg.value / buyPrice * 10^decimals
    balanceOf[address(this.address)] += -1 * msg.value / buyPrice * 10^decimals
    balanceOf[msg.sender] += msg.value / buyPrice * 10^decimals
    emit Transfer((msg.value / buyPrice * 10^decimals), this.address, msg.sender);
    require totalSupply
    buyPrice = eth.balance(this.address) / totalSupply
    sellPrice = (eth.balance(this.address) / totalSupply) - (eth.balance(this.address) / totalSupply * spread / 100)
}

function _fallback() payable {
    require not stor12[address(msg.sender)]
    if buyPrice < minPrice:
        buyPrice = minPrice
    require eth.balance(msg.sender) >= msg.value
    require msg.value + eth.balance(msg.sender) >= eth.balance(msg.sender)
    require buyPrice
    require msg.value / buyPrice * 10^decimals > 0
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice * 10^decimals) >= balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] >= msg.value / buyPrice * 10^decimals
    balanceOf[address(this.address)] += -1 * msg.value / buyPrice * 10^decimals
    balanceOf[msg.sender] += msg.value / buyPrice * 10^decimals
    emit Transfer((msg.value / buyPrice * 10^decimals), this.address, msg.sender);
    require totalSupply
    buyPrice = eth.balance(this.address) / totalSupply
    sellPrice = (eth.balance(this.address) / totalSupply) - (eth.balance(this.address) / totalSupply * spread / 100)
}



}
