contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
bool stor10; offset 256
uint8 stor10;
uint32 stor10; offset 8
mapping of uint256 stor11;
mapping of uint256 stor12;

function _fallback() payable {
    stor1 = 2240000
    stor2 = 300000
    stor3 = 600000
    stor4 = 0
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    uint8(stor10.field_0) = 1
    stor10.field_8 % 16777216 = 0
    stor10.field_256 % 1 = 0
    stor11[address(this.address)] += stor1
    stor12[address(this.address)][stor0] = stor1
    stor12[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f8c] = stor1
    stor8 = 24340770791075100
    stor6 = 24340770791075100
    stor7 = 40567951318458400
    stor9 = 0
    if not uint8(stor10.field_0):
        stor8 = stor7
        if stor8 != stor8:
            emit priceUpdated(stor8, stor8, Array(len=20, data='Token price updated!'));
    else:
        if stor11[address(this.address)] <= stor1 - stor3:
            uint8(stor10.field_0) = 0
            emit preIcoEnded(stor3, Array(len=29, data='Token amount for preICO sold!'));
        if not uint8(stor10.field_0):
            stor8 = stor7
        else:
            stor8 = stor6
        if stor8 != stor8:
            emit priceUpdated(stor8, stor8, Array(len=20, data='Token price updated!'));
    return code.data[636 len 8890]
}



// =====================  Runtime code  =====================


const name = 'BFree'

const decimals = 0

const symbol = 'BFR'


address owner;
uint256 _totalSupply;
uint256 icoMin;
uint256 preIcoLimit;
uint256 countHolders;
uint256 amountOfInvestments;
uint256 stor6;
uint256 stor7;
uint256 currentTokenPrice;
uint256 sellPrice;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
uint256 stor10; offset 24
uint256 stor10; offset 16
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor13;

function countHolders() {
    return countHolders
}

function totalSupply() {
    return _totalSupply
}

function preIcoLimit() {
    return preIcoLimit
}

function amountOfInvestments() {
    return amountOfInvestments
}

function minimalGoalReached() {
    return bool(uint8(stor10.field_8))
}

function _totalSupply() {
    return _totalSupply
}

function icoMin() {
    return icoMin
}

function sellPrice() {
    return sellPrice
}

function icoIsClosed() {
    return bool(uint8(stor10.field_16))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function currentTokenPrice() {
    return currentTokenPrice
}

function owner() {
    return owner
}

function checkFrozenAccounts(address arg1) {
    return bool(stor13[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenBalanceOf(address arg1) {
    return balanceOf[arg1]
}

function preIcoIsRunning() {
    return bool(uint8(stor10.field_0))
}

function calculateTheEndPrice(uint256 arg1) {
    if arg1 <= 0:
        return 0
    return (arg1 * currentTokenPrice)
}

function setSellPrice(uint256 arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 >= 0
    sellPrice = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor13[address(msg.sender)]
    require arg1
    require arg2 >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function allowIcoExit(bool arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 != bool(uint8(stor10.field_24))
    Mask(232, 0, stor10.field_24) = Mask(232, 0, arg1)
}

function deposit() payable {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require msg.value > 0
    require eth.balance(msg.sender) >= msg.value
    emit deposited(address(msg.sender), msg.value, Array(len=13, data='wei deposited'));
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1
    owner = arg1
    emit ownerChanged(msg.sender, owner, arg1);
    allowance[address(this.address)][stor0] = 0
    allowance[address(this.address)][address(arg1)] = balanceOf[address(this.address)]
}

function withdraw(uint256 arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require eth.balance(this.address) >= arg1
    require uint8(stor10.field_8)
    emit withdrawed(address(msg.sender), arg1, Array(len=14, data='wei withdrawed'));
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function stopThisIco(bool arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 != bool(uint8(stor10.field_16))
    Mask(240, 0, stor10.field_16) = Mask(240, 0, arg1)
    if not arg1:
        emit icoStatusUpdated(address(msg.sender), Array(len=25, data='Coin offering is running!'));
    else:
        emit icoStatusUpdated(address(msg.sender), Array(len=26, data='Coin offering was stopped!'));
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require owner != arg1
    require arg1 != 0x318b0f768f5c6c567227aa50b51b5b3078902f
    stor13[address(arg1)] = uint8(arg2)
    if not arg2:
        emit FrozenFunds(address(msg.sender), address(arg1), Array(len=25, data='Account set free for use!'));
    else:
        emit FrozenFunds(address(msg.sender), address(arg1), Array(len=19, data='Account set frozen!'));
}

function collect() {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require eth.balance(this.address) > 0
    require uint8(stor10.field_8)
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require eth.balance(this.address) >= eth.balance(this.address)
    require uint8(stor10.field_8)
    emit withdrawed(address(msg.sender), eth.balance(this.address), Array(len=14, data='wei withdrawed'));
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function destroyToken(uint256 arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 > 0
    require balanceOf[address(this.address)] >= arg1
    require _totalSupply >= arg1
    require balanceOf[address(this.address)] - arg1 >= 0
    require _totalSupply - arg1 >= 0
    balanceOf[address(this.address)] -= arg1
    _totalSupply -= arg1
    allowance[address(this.address)][stor0] = balanceOf[address(this.address)]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[address(this.address)]
    emit tokenDestroyed(address(msg.sender), arg1, Array(len=30, data='An amount of tokens destroyed!'));
}

function mintToken(uint256 arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 > 0
    require balanceOf[address(this.address)] <= icoMin
    require _totalSupply + arg1 > _totalSupply
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    _totalSupply += arg1
    balanceOf[address(this.address)] += arg1
    allowance[address(this.address)][stor0] = arg1 + balanceOf[address(this.address)]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = arg1 + balanceOf[address(this.address)]
    emit tokenCreated(address(msg.sender), arg1, Array(len=26, data='Additional tokens created!'));
}

function setICOPrice(uint256 arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 > 0
    require arg1 != stor7
    stor7 = arg1
    if not uint8(stor10.field_0):
        currentTokenPrice = stor7
        if currentTokenPrice != currentTokenPrice:
            emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
    else:
        if balanceOf[address(this.address)] <= _totalSupply - preIcoLimit:
            uint8(stor10.field_0) = 0
            emit preIcoEnded(preIcoLimit, Array(len=29, data='Token amount for preICO sold!'));
        if not uint8(stor10.field_0):
            currentTokenPrice = stor7
        else:
            currentTokenPrice = stor6
        if currentTokenPrice != currentTokenPrice:
            emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
}

function setPreICOPrice(uint256 arg1) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 > 0
    require arg1 != stor6
    stor6 = arg1
    if not uint8(stor10.field_0):
        currentTokenPrice = stor7
        if currentTokenPrice != currentTokenPrice:
            emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
    else:
        if balanceOf[address(this.address)] <= _totalSupply - preIcoLimit:
            uint8(stor10.field_0) = 0
            emit preIcoEnded(preIcoLimit, Array(len=29, data='Token amount for preICO sold!'));
        if not uint8(stor10.field_0):
            currentTokenPrice = stor7
        else:
            currentTokenPrice = stor6
        if currentTokenPrice != currentTokenPrice:
            emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
}

function setPrices(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        require 0x318b0f768f5c6c567227aa50b51b5b3078902f == msg.sender
    require arg1 > 0
    require arg2 > 0
    stor6 = arg1
    stor7 = arg2
    if not uint8(stor10.field_0):
        currentTokenPrice = stor7
        if currentTokenPrice != currentTokenPrice:
            emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
    else:
        if balanceOf[address(this.address)] <= _totalSupply - preIcoLimit:
            uint8(stor10.field_0) = 0
            emit preIcoEnded(preIcoLimit, Array(len=29, data='Token amount for preICO sold!'));
        if not uint8(stor10.field_0):
            currentTokenPrice = stor7
        else:
            currentTokenPrice = stor6
        if currentTokenPrice != currentTokenPrice:
            emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender
    require arg1
    require not stor13[address(msg.sender)]
    require not stor13[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 < balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 > 0
    require msg.sender
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor13[address(msg.sender)]
    require not stor13[address(arg1)]
    if not balanceOf[address(arg1)]:
        countHolders++
    balanceOf[address(msg.sender)] -= arg2
    if not balanceOf[address(msg.sender)] - arg2:
        countHolders--
    balanceOf[address(arg1)] += arg2
    allowance[address(this.address)][stor0] = balanceOf[this.address]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require not stor13[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require sellPrice > 0
    require msg.sender
    require this.address
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor13[address(msg.sender)]
    require not stor13[address(this.address)]
    if not balanceOf[address(this.address)]:
        countHolders++
    balanceOf[address(msg.sender)] -= arg1
    if not balanceOf[address(msg.sender)] - arg1:
        countHolders--
    balanceOf[address(this.address)] += arg1
    allowance[address(this.address)][stor0] = balanceOf[this.address]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
    emit Transfer(arg1, msg.sender, this.address);
    require eth.balance(this.address) >= arg1 * sellPrice
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getAllMyTokensForAllEtherOnContract() {
    require uint8(stor10.field_24)
    require not stor13[address(msg.sender)]
    require balanceOf[address(msg.sender)] > 0
    require currentTokenPrice > 1
    require eth.balance(this.address) <= balanceOf[address(msg.sender)] * currentTokenPrice / 2
    require msg.sender
    require this.address
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] > balanceOf[address(this.address)]
    require not stor13[address(msg.sender)]
    require not stor13[address(this.address)]
    if not balanceOf[address(this.address)]:
        countHolders++
    balanceOf[address(msg.sender)] = 0
    countHolders--
    balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
    allowance[address(this.address)][stor0] = balanceOf[this.address]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function exitThisIcoForHalfOfTokenPrice() {
    require uint8(stor10.field_24)
    require not stor13[address(msg.sender)]
    require balanceOf[address(msg.sender)] > 0
    require currentTokenPrice > 1
    require eth.balance(this.address) >= balanceOf[address(msg.sender)] * currentTokenPrice / 2
    require msg.sender
    require this.address
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] > balanceOf[address(this.address)]
    require not stor13[address(msg.sender)]
    require not stor13[address(this.address)]
    if not balanceOf[address(this.address)]:
        countHolders++
    balanceOf[address(msg.sender)] = 0
    countHolders--
    balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
    allowance[address(this.address)][stor0] = balanceOf[this.address]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
    call msg.sender with:
       value balanceOf[address(msg.sender)] * currentTokenPrice / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender
    require arg1
    require arg2
    require not stor13[address(msg.sender)]
    require not stor13[address(arg1)]
    require not stor13[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] - arg3 < balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 > 0
    emit orderToTransfer(address(msg.sender), address(arg1), address(arg2), arg3, Array(len=45, data='Order to transfer tokens from al', 'lowed account'));
    require arg1
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor13[address(arg1)]
    require not stor13[address(arg2)]
    if not balanceOf[address(arg2)]:
        countHolders++
    balanceOf[address(arg1)] -= arg3
    if not balanceOf[address(arg1)] - arg3:
        countHolders--
    balanceOf[address(arg2)] += arg3
    allowance[address(this.address)][stor0] = balanceOf[this.address]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function buy() payable {
    require not stor13[address(msg.sender)]
    require msg.value > 0
    require not uint8(stor10.field_16)
    require not stor13[address(msg.sender)]
    require msg.value > 0
    require currentTokenPrice > 0
    require currentTokenPrice
    require balanceOf[address(this.address)] >= msg.value / currentTokenPrice
    amountOfInvestments += msg.value / currentTokenPrice * currentTokenPrice
    if not uint8(stor10.field_0):
        currentTokenPrice = stor7
    else:
        if balanceOf[address(this.address)] <= _totalSupply - preIcoLimit:
            uint8(stor10.field_0) = 0
            emit preIcoEnded(preIcoLimit, Array(len=29, data='Token amount for preICO sold!'));
        if not uint8(stor10.field_0):
            currentTokenPrice = stor7
        else:
            currentTokenPrice = stor6
    if currentTokenPrice != currentTokenPrice:
        emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
    require this.address
    require msg.sender
    require msg.value / currentTokenPrice > 0
    require balanceOf[address(this.address)] >= msg.value / currentTokenPrice
    require balanceOf[address(msg.sender)] + (msg.value / currentTokenPrice) > balanceOf[address(msg.sender)]
    require not stor13[address(this.address)]
    require not stor13[address(msg.sender)]
    if not balanceOf[address(msg.sender)]:
        countHolders++
    balanceOf[address(this.address)] -= msg.value / currentTokenPrice
    if not balanceOf[address(this.address)] - (msg.value / currentTokenPrice):
        countHolders--
    balanceOf[address(msg.sender)] += msg.value / currentTokenPrice
    allowance[address(this.address)][stor0] = balanceOf[this.address]
    allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
    emit Transfer((msg.value / currentTokenPrice), this.address, msg.sender);
    if not uint8(stor10.field_8):
        if balanceOf[address(this.address)] <= _totalSupply - icoMin:
            uint8(stor10.field_8) = 1
            emit minGoalReached(icoMin, Array(len=31, data='Minimal goal of ICO is reached!'));
    if msg.value - (msg.value / currentTokenPrice * currentTokenPrice) > 0:
        call msg.sender with:
           value msg.value - (msg.value / currentTokenPrice * currentTokenPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require not stor13[address(msg.sender)]
    if msg.value > 0:
        if not stor13[address(msg.sender)]:
            require not uint8(stor10.field_16)
            require not stor13[address(msg.sender)]
            require msg.value > 0
            require currentTokenPrice > 0
            require currentTokenPrice
            require balanceOf[address(this.address)] >= msg.value / currentTokenPrice
            amountOfInvestments += msg.value / currentTokenPrice * currentTokenPrice
            if not uint8(stor10.field_0):
                currentTokenPrice = stor7
            else:
                if balanceOf[address(this.address)] <= _totalSupply - preIcoLimit:
                    uint8(stor10.field_0) = 0
                    emit preIcoEnded(preIcoLimit, Array(len=29, data='Token amount for preICO sold!'));
                if not uint8(stor10.field_0):
                    currentTokenPrice = stor7
                else:
                    currentTokenPrice = stor6
            if currentTokenPrice != currentTokenPrice:
                emit priceUpdated(currentTokenPrice, currentTokenPrice, Array(len=20, data='Token price updated!'));
            require this.address
            require msg.sender
            require msg.value / currentTokenPrice > 0
            require balanceOf[address(this.address)] >= msg.value / currentTokenPrice
            require balanceOf[address(msg.sender)] + (msg.value / currentTokenPrice) > balanceOf[address(msg.sender)]
            require not stor13[address(this.address)]
            require not stor13[address(msg.sender)]
            if not balanceOf[address(msg.sender)]:
                countHolders++
            balanceOf[address(this.address)] -= msg.value / currentTokenPrice
            if not balanceOf[address(this.address)] - (msg.value / currentTokenPrice):
                countHolders--
            balanceOf[address(msg.sender)] += msg.value / currentTokenPrice
            allowance[address(this.address)][stor0] = balanceOf[this.address]
            allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
            emit Transfer((msg.value / currentTokenPrice), this.address, msg.sender);
            if not uint8(stor10.field_8):
                if balanceOf[address(this.address)] <= _totalSupply - icoMin:
                    uint8(stor10.field_8) = 1
                    emit minGoalReached(icoMin, Array(len=31, data='Minimal goal of ICO is reached!'));
            if msg.value - (msg.value / currentTokenPrice * currentTokenPrice) > 0:
                call msg.sender with:
                   value msg.value - (msg.value / currentTokenPrice * currentTokenPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function sellMaximumPossibleAmountOfTokens() {
    require not stor13[address(msg.sender)]
    require balanceOf[address(msg.sender)] > 0
    require eth.balance(this.address) > sellPrice
    if sellPrice * balanceOf[address(msg.sender)] <= eth.balance(this.address):
        require not stor13[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] > 0
        require sellPrice > 0
        require msg.sender
        require this.address
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] > balanceOf[address(this.address)]
        require not stor13[address(msg.sender)]
        require not stor13[address(this.address)]
        if not balanceOf[address(this.address)]:
            countHolders++
        balanceOf[address(msg.sender)] = 0
        countHolders--
        balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
        allowance[address(this.address)][stor0] = balanceOf[this.address]
        allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
        require eth.balance(this.address) >= balanceOf[address(msg.sender)] * sellPrice
        call msg.sender with:
           value balanceOf[address(msg.sender)] * sellPrice wei
             gas 2300 * is_zero(value) wei
    else:
        require sellPrice
        require not stor13[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= eth.balance(this.address) / sellPrice
        require eth.balance(this.address) / sellPrice > 0
        require sellPrice > 0
        require msg.sender
        require this.address
        require eth.balance(this.address) / sellPrice > 0
        require balanceOf[address(msg.sender)] >= eth.balance(this.address) / sellPrice
        require balanceOf[address(this.address)] + (eth.balance(this.address) / sellPrice) > balanceOf[address(this.address)]
        require not stor13[address(msg.sender)]
        require not stor13[address(this.address)]
        if not balanceOf[address(this.address)]:
            countHolders++
        balanceOf[address(msg.sender)] -= eth.balance(this.address) / sellPrice
        if not balanceOf[address(msg.sender)] - (eth.balance(this.address) / sellPrice):
            countHolders--
        balanceOf[address(this.address)] += eth.balance(this.address) / sellPrice
        allowance[address(this.address)][stor0] = balanceOf[this.address]
        allowance[address(this.address)][0x318b0f768f5c6c567227aa50b51b5b3078902f] = balanceOf[this.address]
        emit Transfer((eth.balance(this.address) / sellPrice), msg.sender, this.address);
        require eth.balance(this.address) >= eth.balance(this.address) / sellPrice * sellPrice
        call msg.sender with:
           value eth.balance(this.address) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
