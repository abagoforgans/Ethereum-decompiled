contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor6; offset 8
address stor7;
mapping of uint256 stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 16
    stor0.length.field_8 = 'ProjectChainCoin' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'PRCC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = 15 * 10^6
    stor5 = 25 * 10^13
    uint8(stor6.field_0) = 0
    stor7 = 0
    require not msg.value
    stor3 = 100 * 10^6 * 10^stor2
    stor9[address(msg.sender)] = stor3
    address(stor6.field_8) = msg.sender
    return code.data[676 len 5478]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sellScale;
uint256 minBalanceForAccounts;
uint8 lockAll;
address stor6;
address owner; offset 8
uint256 stor6; offset 8
address stor7;
mapping of uint8 stor8;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sellScale() {
    return sellScale
}

function minBalanceForAccounts() {
    return minBalanceForAccounts
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function lockAll() {
    return bool(lockAll)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozens(address arg1) {
    return bool(stor8[arg1])
}

function _fallback() payable {
  stop
}

function freezeAll(bool arg1) {
    require msg.sender == owner
    lockAll = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    stor7 = arg1
}

function setScale(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellScale = arg1
    minBalanceForAccounts = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function acceptOwnership() {
    require msg.sender == stor7
    require stor7
    Mask(248, 0, stor6.field_8) = stor7
    stor7 = 0
    emit OwnerUpdate(address(stor6.field_0), stor7);
}

function transfer(address arg1, uint256 arg2) {
    require not lockAll
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if balanceOf[address(arg1)] >= totalSupply / 10:
        if arg1 != this.address:
            stor8[address(arg1)] = 1
            emit FrozenFunds(address(arg1), 1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function contTransfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not lockAll
    require arg1
    require balanceOf[address(this.address)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor8[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    if balanceOf[address(arg1)] >= totalSupply / 10:
        if arg1 != this.address:
            stor8[address(arg1)] = 1
            emit FrozenFunds(address(arg1), 1);
    require balanceOf[address(this.address)] + balanceOf[address(arg1)] == balanceOf[address(this.address)] + balanceOf[address(arg1)]
}

function sell(uint256 arg1) {
    require sellScale
    require eth.balance(this.address) >= arg1 / sellScale
    require not lockAll
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require not stor8[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    if balanceOf[address(this.address)] >= totalSupply / 10:
        if this.address != this.address:
            stor8[address(this.address)] = 1
            emit FrozenFunds(address(this.address), 1);
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] == balanceOf[address(msg.sender)] + balanceOf[address(this.address)]
    require sellScale
    call msg.sender with:
       value arg1 / sellScale wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function contBuy(address arg1, uint256 arg2) {
    require msg.sender == owner
    require sellScale
    require eth.balance(this.address) >= arg2 / sellScale
    require eth.balance(arg1) < minBalanceForAccounts
    require not lockAll
    require this.address
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    require not stor8[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, arg1, this.address);
    if balanceOf[address(this.address)] >= totalSupply / 10:
        if this.address != this.address:
            stor8[address(this.address)] = 1
            emit FrozenFunds(address(this.address), 1);
    require balanceOf[address(arg1)] + balanceOf[address(this.address)] == balanceOf[address(arg1)] + balanceOf[address(this.address)]
    require sellScale
    call arg1 with:
       value arg2 / sellScale wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferWithEther(address arg1, uint256 arg2) {
    if eth.balance(arg1) >= minBalanceForAccounts:
        require not lockAll
        require arg1
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require not stor8[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if balanceOf[address(arg1)] >= totalSupply / 10:
            if arg1 != this.address:
                stor8[address(arg1)] = 1
                emit FrozenFunds(address(arg1), 1);
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    require (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale) < arg2
    require sellScale
    require eth.balance(this.address) > (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale) / sellScale
    require not lockAll
    require arg1
    require balanceOf[address(msg.sender)] >= arg2 - (minBalanceForAccounts * sellScale) + (eth.balance(arg1) * sellScale)
    require balanceOf[address(arg1)] + arg2 - (minBalanceForAccounts * sellScale) + (eth.balance(arg1) * sellScale) >= balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale)
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (minBalanceForAccounts * sellScale) + (eth.balance(arg1) * sellScale)
    emit Transfer((arg2 - (minBalanceForAccounts * sellScale) + (eth.balance(arg1) * sellScale)), msg.sender, arg1);
    if balanceOf[address(arg1)] >= totalSupply / 10:
        if arg1 != this.address:
            stor8[address(arg1)] = 1
            emit FrozenFunds(address(arg1), 1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    require not lockAll
    require this.address
    require balanceOf[address(msg.sender)] >= (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale)
    require balanceOf[address(this.address)] + (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale) >= balanceOf[address(this.address)]
    require not stor8[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (minBalanceForAccounts * sellScale) + (eth.balance(arg1) * sellScale)
    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale)
    emit Transfer(((minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale)), msg.sender, this.address);
    if balanceOf[address(this.address)] >= totalSupply / 10:
        if this.address != this.address:
            stor8[address(this.address)] = 1
            emit FrozenFunds(address(this.address), 1);
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] == balanceOf[address(msg.sender)] + balanceOf[address(this.address)]
    require sellScale
    call arg1 with:
       value (minBalanceForAccounts * sellScale) - (eth.balance(arg1) * sellScale) / sellScale wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
