contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint16 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor3 = 8
    stor8 = 10^17
    stor9 = 1000 * 10^18
    stor10 = 5000
    stor11 = 1
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 2 * 10^17
    stor5[address(this.address)] = 3 * 10^16
    emit code.data[4342 len 32]: 3 * 10^16, 0, this.address
    stor5[address(msg.sender)] = 17 * 10^16
    emit code.data[4342 len 32]: 17 * 10^16, 0, msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'EgtyChain' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'EGTY' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[590 len 3752]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 lockInfo;
uint256 minEth;
uint256 maxEth;
uint256 buyPrice;
uint256 sellPrice;
uint8 buyTradeConfir;
uint8 sellTradeConfir; offset 8
uint256 saleQuantity;
uint256 ethQuantity;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function buyTradeConfir() {
    return bool(buyTradeConfir)
}

function decimals() {
    return decimals
}

function sellTradeConfir() {
    return bool(sellTradeConfir)
}

function sellPrice() {
    return sellPrice
}

function maxEth() {
    return maxEth
}

function lockInfo(address arg1) {
    return lockInfo[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function ethQuantity() {
    return ethQuantity
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
    return allowance[arg1][arg2]
}

function saleQuantity() {
    return saleQuantity
}

function minEth() {
    return minEth
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function stopBuy() {
    require owner == msg.sender
    buyTradeConfir = 0
    emit StopBuy()
    return 1
}

function starBuy() {
    require owner == msg.sender
    buyTradeConfir = 1
    emit StarBuy()
    return 1
}

function stopSell() {
    require owner == msg.sender
    sellTradeConfir = 0
    emit StopSell()
    return 1
}

function starSell() {
    require owner == msg.sender
    sellTradeConfir = 1
    emit StarSell()
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2
    require arg2 + lockInfo[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3
    require arg3 + lockInfo[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    if sellTradeConfir:
        require eth.balance(this.address) >= arg1 * sellPrice / 10000
        require msg.sender
        require this.address
        require balanceOf[address(msg.sender)] >= arg1
        require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
        require allowance[address(msg.sender)][address(msg.sender)] >= arg1
        require arg1
        require arg1 + lockInfo[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(this.address)] += arg1
        balanceOf[msg.sender] -= arg1
        allowance[address(msg.sender)][address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, this.address);
        call msg.sender with:
           value arg1 * sellPrice / 10000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buy() payable {
    require msg.value >= minEth
    require msg.value <= maxEth
    require buyTradeConfir
    require 3 * 10^16 >= saleQuantity
    require saleQuantity <= 3 * 10^16
    if msg.value * buyPrice / 10^10 <= -saleQuantity + 3 * 10^16:
        require (msg.value * buyPrice / 10^10) + saleQuantity >= saleQuantity
        require (msg.value * buyPrice / 10^10) + saleQuantity >= msg.value * buyPrice / 10^10
        saleQuantity += msg.value * buyPrice / 10^10
        require msg.value + ethQuantity >= ethQuantity
        require msg.value + ethQuantity >= msg.value
        ethQuantity += msg.value
        balanceOf[address(this.address)] -= msg.value * buyPrice / 10^10
        balanceOf[msg.sender] += msg.value * buyPrice / 10^10
        emit Transfer((msg.value * buyPrice / 10^10), this.address, msg.sender);
        require msg.sender
        require msg.value * buyPrice / 10^10 > 0
        require (msg.value * buyPrice / 10^10) + lockInfo[address(msg.sender)] <= balanceOf[address(msg.sender)]
        lockInfo[address(msg.sender)] += msg.value * buyPrice / 10^10
        emit Buy(msg.value, msg.value * buyPrice / 10^10, msg.sender);
    else:
        require 3 * 10^16 >= saleQuantity
        require 3 * 10^16 >= -saleQuantity + 3 * 10^16
        saleQuantity = 3 * 10^16
        require msg.value + ethQuantity >= ethQuantity
        require msg.value + ethQuantity >= msg.value
        ethQuantity += msg.value
        balanceOf[address(this.address)] = balanceOf[address(this.address)] + saleQuantity - 3 * 10^16
        balanceOf[msg.sender] = -saleQuantity + balanceOf[msg.sender] + 3 * 10^16
        emit Transfer((-saleQuantity + 3 * 10^16), this.address, msg.sender);
        require msg.sender
        require -saleQuantity + 3 * 10^16 > 0
        require -saleQuantity + lockInfo[address(msg.sender)] + 3 * 10^16 <= balanceOf[address(msg.sender)]
        lockInfo[address(msg.sender)] = -saleQuantity + lockInfo[address(msg.sender)] + 3 * 10^16
        emit Buy(msg.value, -saleQuantity + 3 * 10^16, msg.sender);
}

function _fallback() payable {
    require msg.value >= minEth
    require msg.value <= maxEth
    require buyTradeConfir
    require 3 * 10^16 >= saleQuantity
    require saleQuantity <= 3 * 10^16
    if msg.value * buyPrice / 10^10 <= -saleQuantity + 3 * 10^16:
        require (msg.value * buyPrice / 10^10) + saleQuantity >= saleQuantity
        require (msg.value * buyPrice / 10^10) + saleQuantity >= msg.value * buyPrice / 10^10
        saleQuantity += msg.value * buyPrice / 10^10
        require msg.value + ethQuantity >= ethQuantity
        require msg.value + ethQuantity >= msg.value
        ethQuantity += msg.value
        balanceOf[address(this.address)] -= msg.value * buyPrice / 10^10
        balanceOf[msg.sender] += msg.value * buyPrice / 10^10
        emit Transfer((msg.value * buyPrice / 10^10), this.address, msg.sender);
        require msg.sender
        require msg.value * buyPrice / 10^10 > 0
        require (msg.value * buyPrice / 10^10) + lockInfo[address(msg.sender)] <= balanceOf[address(msg.sender)]
        lockInfo[address(msg.sender)] += msg.value * buyPrice / 10^10
        emit Buy(msg.value, msg.value * buyPrice / 10^10, msg.sender);
    else:
        require 3 * 10^16 >= saleQuantity
        require 3 * 10^16 >= -saleQuantity + 3 * 10^16
        saleQuantity = 3 * 10^16
        require msg.value + ethQuantity >= ethQuantity
        require msg.value + ethQuantity >= msg.value
        ethQuantity += msg.value
        balanceOf[address(this.address)] = balanceOf[address(this.address)] + saleQuantity - 3 * 10^16
        balanceOf[msg.sender] = -saleQuantity + balanceOf[msg.sender] + 3 * 10^16
        emit Transfer((-saleQuantity + 3 * 10^16), this.address, msg.sender);
        require msg.sender
        require -saleQuantity + 3 * 10^16 > 0
        require -saleQuantity + lockInfo[address(msg.sender)] + 3 * 10^16 <= balanceOf[address(msg.sender)]
        lockInfo[address(msg.sender)] = -saleQuantity + lockInfo[address(msg.sender)] + 3 * 10^16
        emit Buy(msg.value, -saleQuantity + 3 * 10^16, msg.sender);
}



}
