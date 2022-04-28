contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint16 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15; offset 160
address stor15;
uint8 stor17;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 17
    stor4.length.field_8 = 'Career Trust Bank' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'CTB' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 5000000000 * 10^18
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 8000
    stor14 = 40000
    uint8(stor15.field_160) = 1
    stor17 = 1
    require not msg.value
    stor0 = msg.sender
    stor2[address(msg.sender)] = stor7
    stor8 = 20 * stor7 / 100
    address(stor15.field_0) = msg.sender
    uint8(stor15.field_160) = 0
    return code.data[567 len 7034]
}



// =====================  Runtime code  =====================


const PRE_SALE_PERCENT = 20

const TOKEN_DECIMALS = 18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 preSaleSupply;
uint256 soldSupply;
uint256 sellSupply;
uint256 buySupply;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 buyExchangeRate;
uint256 sellExchangeRate;
uint8 stor15; offset 160
uint128 stor15; offset 160
address ethFundDepositAddress;
mapping of uint8 stor16;
uint8 enableInternalLock;
mapping of uint8 stor18;

function name() {
    return name[0 len name.length]
}

function sellExchangeRate() {
    return sellExchangeRate
}

function totalSupply() {
    return totalSupply
}

function allowTransfers() {
    return bool(uint8(stor15.field_160))
}

function preSaleSupply() {
    return preSaleSupply
}

function sellSupply() {
    return sellSupply
}

function decimals() {
    return decimals
}

function stopBuy() {
    return bool(uint8(stor12.field_8))
}

function enableInternalLock() {
    return bool(enableInternalLock)
}

function stopSell() {
    return bool(uint8(stor12.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function internalLockAccount(address arg1) {
    return bool(stor18[arg1])
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function frozenAccount(address arg1) {
    return bool(stor16[arg1])
}

function buySupply() {
    return buySupply
}

function buyExchangeRate() {
    return buyExchangeRate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function soldSupply() {
    return soldSupply
}

function pay() payable {
  stop
}

function _fallback() payable {
    revert
}

function setEnableInternalLock(bool arg1) {
    require owner == msg.sender
    enableInternalLock = uint8(arg1)
}

function setEthFundDeposit(address arg1) {
    require owner == msg.sender
    require arg1
    ethFundDepositAddress = arg1
}

function setAllowTransfers(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor15.field_160) = Mask(96, 0, arg1)
}

function setExchangeRate(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellExchangeRate = arg1
    buyExchangeRate = arg2
}

function lockInternalAccount(address arg1, bool arg2) {
    require owner == msg.sender
    require arg1
    stor18[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor16[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function decreaseSoldSaleSupply(uint256 arg1) {
    require owner == msg.sender
    require soldSupply - arg1 > 0
    soldSupply -= arg1
    emit DecreaseSoldSaleSupply(arg1);
}

function decreasePreSaleSupply(uint256 arg1) {
    require owner == msg.sender
    require preSaleSupply - arg1 > 0
    preSaleSupply -= arg1
    emit DecreasePreSaleSupply(arg1);
}

function increaseSoldSaleSupply(uint256 arg1) {
    require owner == msg.sender
    require arg1 + soldSupply < totalSupply
    soldSupply += arg1
    emit IncreaseSoldSaleSupply(arg1);
}

function increasePreSaleSupply(uint256 arg1) {
    require owner == msg.sender
    require arg1 + preSaleSupply < totalSupply
    preSaleSupply += arg1
    emit IncreasePreSaleSupply(arg1);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function destroyToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Transfer(arg2, this.address, 0);
}

function setExchangeStatus(bool arg1, bool arg2) {
    require owner == msg.sender
    uint8(stor12.field_0) = uint8(arg1)
    Mask(248, 0, stor12.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor12.field_16) = Mask(240, 16, arg1) >> 16
}

function transferETH() {
    require owner == msg.sender
    require ethFundDepositAddress
    require eth.balance(this.address)
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFromAdmin(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function internalSellTokenFromAdmin(address arg1, uint256 arg2, bool arg3) {
    require owner == msg.sender
    require arg1
    require arg2 <= balanceOf[stor0]
    require arg2 <= balanceOf[stor0]
    balanceOf[stor0] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    soldSupply += arg2
    sellSupply += arg2
    emit Transfer(arg2, owner, arg1);
    stor18[address(arg1)] = uint8(arg3)
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require uint8(stor15.field_160)
        require not stor16[address(msg.sender)]
        require not stor16[address(arg1)]
        if enableInternalLock:
            require not stor18[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require uint8(stor15.field_160)
        require not stor16[address(arg1)]
        require not stor16[address(arg2)]
        if enableInternalLock:
            require not stor18[address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require sellExchangeRate
    require not uint8(stor12.field_0)
    require eth.balance(this.address) >= arg1 / sellExchangeRate
    require arg1 / sellExchangeRate >= 1
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[stor0] + arg1 > balanceOf[stor0]
    require not stor16[address(msg.sender)]
    if enableInternalLock:
        require not stor18[address(msg.sender)]
    require arg1 + balanceOf[stor0] >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    soldSupply -= arg1
    sellSupply += arg1
    emit Transfer(arg1, msg.sender, owner);
    call msg.sender with:
       value arg1 / sellExchangeRate wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() payable {
    if not msg.value:
        require not uint8(stor12.field_8)
        require 0 <= balanceOf[stor0]
        require 0 <= balanceOf[stor0]
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit Transfer(0, owner, msg.sender);
    else:
        require buyExchangeRate * msg.value / msg.value == buyExchangeRate
        require not uint8(stor12.field_8)
        require buyExchangeRate * msg.value <= balanceOf[stor0]
        require buyExchangeRate * msg.value <= balanceOf[stor0]
        balanceOf[stor0] += -1 * buyExchangeRate * msg.value
        require (buyExchangeRate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (buyExchangeRate * msg.value) + balanceOf[msg.sender]
        soldSupply += buyExchangeRate * msg.value
        buySupply += buyExchangeRate * msg.value
        emit Transfer((buyExchangeRate * msg.value), owner, msg.sender);
}



}
