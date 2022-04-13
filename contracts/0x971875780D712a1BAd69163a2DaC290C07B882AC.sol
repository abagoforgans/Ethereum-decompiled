contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor0 = 10^14
    stor1 = 10^10
    stor2 = 10^17
    stor3 = 25 * 10^9 * 3600
    stor4 = 85 * 10^12
    require not msg.value
    stor5 = msg.sender
    stor6[address(msg.sender)] = stor0
    return code.data[138 len 2682]
}



// =====================  Runtime code  =====================


const name = 'DatCoin'

const decimals = 5

const symbol = 'DTC'


uint256 _totalSupply;
uint256 _originalBuyPrice;
uint256 _minimumBuyAmount;
uint256 _thresholdOne;
uint256 _thresholdTwo;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function _minimumBuyAmount() {
    return _minimumBuyAmount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _originalBuyPrice() {
    return _originalBuyPrice
}

function owner() {
    return owner
}

function _thresholdTwo() {
    return _thresholdTwo
}

function _thresholdOne() {
    return _thresholdOne
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function buy() payable {
    require msg.value >= _minimumBuyAmount
    require balanceOf[stor5] > _thresholdTwo
    require _originalBuyPrice
    if balanceOf[stor5] > (msg.value / _originalBuyPrice) + _thresholdOne:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(msg.sender)] += msg.value / _originalBuyPrice
        balanceOf[stor5] -= msg.value / _originalBuyPrice
        emit Transfer((msg.value / _originalBuyPrice), owner, msg.sender);
        return (msg.value / _originalBuyPrice)
    if balanceOf[stor5] <= _thresholdOne:
        if balanceOf[stor5] >= 10 * msg.value / _originalBuyPrice / 13:
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            balanceOf[address(msg.sender)] += 10 * msg.value / _originalBuyPrice / 13
            balanceOf[stor5] -= 10 * msg.value / _originalBuyPrice / 13
            emit Transfer((10 * msg.value / _originalBuyPrice / 13), owner, msg.sender);
            return (10 * msg.value / _originalBuyPrice / 13)
        call msg.sender with:
           value (10 * msg.value / _originalBuyPrice / 13 * 13 * _originalBuyPrice / 10) - (balanceOf[stor5] * 13 * _originalBuyPrice / 10) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call owner with:
           value msg.value - (10 * msg.value / _originalBuyPrice / 13 * 13 * _originalBuyPrice / 10) + (balanceOf[stor5] * 13 * _originalBuyPrice / 10) wei
             gas 2300 * is_zero(value) wei
    else:
        if balanceOf[stor5] >= balanceOf[stor5] - _thresholdOne + ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13):
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            balanceOf[address(msg.sender)] = balanceOf[stor5] - _thresholdOne + ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13) + balanceOf[address(msg.sender)]
            balanceOf[stor5] = balanceOf[stor5] - balanceOf[stor5] + _thresholdOne - ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13)
            emit Transfer((balanceOf[stor5] - _thresholdOne + ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13)), owner, msg.sender);
            return (balanceOf[stor5] - _thresholdOne + ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13))
        call msg.sender with:
           value (balanceOf[stor5] * 13 * _originalBuyPrice / 10) - (_thresholdOne * 13 * _originalBuyPrice / 10) + ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13 * 13 * _originalBuyPrice / 10) - (balanceOf[stor5] * 13 * _originalBuyPrice / 10) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call owner with:
           value msg.value - (balanceOf[stor5] * 13 * _originalBuyPrice / 10) + (_thresholdOne * 13 * _originalBuyPrice / 10) - ((10 * msg.value / _originalBuyPrice) - (10 * balanceOf[stor5]) + (10 * _thresholdOne) / 13 * 13 * _originalBuyPrice / 10) + (balanceOf[stor5] * 13 * _originalBuyPrice / 10) wei
             gas 2300 * is_zero(value) wei
    balanceOf[address(msg.sender)] += balanceOf[stor5]
    balanceOf[stor5] -= balanceOf[stor5]
    emit Transfer(balanceOf[stor5], owner, msg.sender);
    return balanceOf[stor5]
}



}
