contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;

function _fallback() payable {
    stor0 = 1
    stor1 = 10^14
    stor2 = 430 * 10^6
    stor8 = 10
    stor9 = stor1 * stor8 / 100
    stor10 = 3 * 10^17
    stor11 = 25 * 10^18
    stor12 = 0
    stor13 = 1
    require not msg.value
    stor3 = msg.sender
    require msg.sender == stor3
    require stor2 > 0
    require stor2
    stor11 = 10000000000 * 10^18 / stor2
    stor4[stor3] = stor1
    emit Transfer(stor1, 0, stor3);
    return code.data[637 len 7148]
}



// =====================  Runtime code  =====================


const name = 'Gifto'

const decimals = 5

const symbol = 'GTO'


uint8 _selling;
uint256 _totalSupply;
uint256 _originalBuyPrice;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint256 deposit;
uint256 _icoPercent;
uint256 _icoSupply;
uint256 _minimumBuy;
uint256 _maximumBuy;
uint256 totalTokenSold;
uint8 tradable;

function totalSupply() {
    return _totalSupply
}

function _icoSupply() {
    return _icoSupply
}

function _totalSupply() {
    return _totalSupply
}

function _icoPercent() {
    return _icoPercent
}

function tradable() {
    return bool(tradable)
}

function _minimumBuy() {
    return _minimumBuy
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _originalBuyPrice() {
    return _originalBuyPrice
}

function _maximumBuy() {
    return _maximumBuy
}

function owner() {
    return owner
}

function isApprovedInvestor(address arg1) {
    return bool(stor6[address(arg1)])
}

function totalTokenSold() {
    return totalTokenSold
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getDeposit(address arg1) {
    return deposit[address(arg1)]
}

function _selling() {
    return bool(_selling)
}

function turnOnSale() {
    require msg.sender == owner
    _selling = 1
}

function turnOffSale() {
    require msg.sender == owner
    _selling = 0
}

function turnOnTradable() {
    require msg.sender == owner
    tradable = 1
}

function setMaximumBuy(uint256 arg1) {
    require msg.sender == owner
    _maximumBuy = arg1
}

function setIcoPercent(uint256 arg1) {
    require msg.sender == owner
    _icoPercent = arg1
    _icoSupply = _totalSupply * _icoPercent / 100
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function setBuyPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    _originalBuyPrice = arg1
    require _originalBuyPrice
    _maximumBuy = 10000000000 * 10^18 / _originalBuyPrice
}

function approve(address arg1, uint256 arg2) {
    if bool(tradable) != 1:
        require msg.sender == owner
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addInvestorList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeInvestorList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    if bool(tradable) != 1:
        require msg.sender == owner
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 < 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if bool(tradable) != 1:
        require msg.sender == owner
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyGifto() payable {
    require _selling
    require msg.value >= _minimumBuy
    require deposit[address(msg.sender)] + msg.value <= _maximumBuy
    require stor6[address(msg.sender)]
    require balanceOf[stor3] >= msg.value * _originalBuyPrice / 10^18
    balanceOf[stor3] -= msg.value * _originalBuyPrice / 10^18
    balanceOf[address(msg.sender)] += msg.value * _originalBuyPrice / 10^18
    deposit[address(msg.sender)] += msg.value
    totalTokenSold += msg.value * _originalBuyPrice / 10^18
    if totalTokenSold >= _icoSupply:
        _selling = 0
    emit Transfer((msg.value * _originalBuyPrice / 10^18), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require _selling
    require msg.value >= _minimumBuy
    require deposit[address(msg.sender)] + msg.value <= _maximumBuy
    require stor6[address(msg.sender)]
    require balanceOf[stor3] >= msg.value * _originalBuyPrice / 10^18
    balanceOf[stor3] -= msg.value * _originalBuyPrice / 10^18
    balanceOf[address(msg.sender)] += msg.value * _originalBuyPrice / 10^18
    deposit[address(msg.sender)] += msg.value
    totalTokenSold += msg.value * _originalBuyPrice / 10^18
    if totalTokenSold >= _icoSupply:
        _selling = 0
    emit Transfer((msg.value * _originalBuyPrice / 10^18), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
