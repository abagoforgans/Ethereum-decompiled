contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor7;
address stor7;
address stor7; offset 8
mapping of uint256 stor8;

function _fallback() payable {
    stor2 = 35
    stor3 = 500000000 * 10^18
    stor4 = 25 * 10^16
    uint8(stor7.field_0) = 0
    require not msg.value
    stor0 = msg.sender
    address(stor7.field_8) = msg.sender
    stor5 = 300000000 * 10^18
    stor8[address(stor7.field_0)] = 300000000 * 10^18
    return code.data[355 len 6240]
}



// =====================  Runtime code  =====================


const name = 'CCoin'

const decimals = 18

const symbol = 'C$'

const _initialSupply = 300000000 * 10^18


address stor0;
uint256 sellPrice;
uint256 buyPrice;
uint256 sub_f55d3de4;
uint256 minPurchaseAmount;
uint256 _totalSupply;
uint256 sub_20c85259;
uint8 stor7;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_20c85259(?) {
    return sub_20c85259
}

function _maxSupply() {
    return sub_f55d3de4
}

function sub_3185efea(?) {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function sellPrice() {
    return sellPrice
}

function sub_69f98f32(?) {
    return minPurchaseAmount
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

function minPurchaseAmount() {
    require msg.sender == stor0
    return minPurchaseAmount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f55d3de4(?) {
    require msg.sender == stor0
    return sub_f55d3de4
}

function kill() {
    require msg.sender == stor0
    selfdestruct(owner)
}

function sub_9c390b68(?) {
    require msg.sender == stor0
    sub_f55d3de4 = 10^18 * arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    buyPrice = arg1
    sellPrice = arg2
}

function sub_ec8d37e1(?) {
    require msg.sender == stor0
    if not stor7:
        stor7 = 1
    else:
        stor7 = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = 10^18 * arg2
    emit Approval((10^18 * arg2), msg.sender, arg1);
    return 1
}

function sub_e9d3fb78(?) {
    require msg.sender == stor0
    if not arg1:
        minPurchaseAmount = 0
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        minPurchaseAmount = 10^18 * arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2
    require arg2
    require 10^18 * arg2 / arg2 == 10^18
    require balanceOf[address(msg.sender)] >= 10^18 * arg2
    require 10^18 * arg2 > 0
    require 10^18 * arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg2
    require balanceOf[address(arg1)] + (10^18 * arg2) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    if not arg1:
        require eth.balance(this.address) >= 0
        emit Transfer(0, msg.sender, this.address);
        call msg.sender with:
             gas 2300 wei
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require eth.balance(this.address) >= 10^18 * arg1 * sellPrice
        emit Transfer((10^18 * arg1), msg.sender, this.address);
        call msg.sender with:
           value 10^18 * arg1 * sellPrice wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burn(uint256 arg1) {
    require msg.sender == stor0
    if not arg1:
        require balanceOf[address(msg.sender)] >= 0
        require 0 <= balanceOf[address(msg.sender)]
        require 0 <= _totalSupply
        emit Burn(0, msg.sender);
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require balanceOf[address(msg.sender)] >= 10^18 * arg1
        require 10^18 * arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
        require 10^18 * arg1 <= _totalSupply
        _totalSupply += -1 * 10^18 * arg1
        emit Burn((10^18 * arg1), msg.sender);
    return 1
}

function createCoins() payable {
    require msg.value > 0
    if not msg.value:
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require _totalSupply >= _totalSupply
    else:
        require msg.value
        require msg.value * buyPrice / msg.value == buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * buyPrice
        require _totalSupply + (msg.value * buyPrice) >= _totalSupply
        _totalSupply += msg.value * buyPrice
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= minPurchaseAmount
    require not stor7
    require msg.value > 0
    if not msg.value:
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require _totalSupply >= _totalSupply
    else:
        require msg.value
        require msg.value * buyPrice / msg.value == buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * buyPrice
        require _totalSupply + (msg.value * buyPrice) >= _totalSupply
        _totalSupply += msg.value * buyPrice
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3:
        require arg3
        require 10^18 * arg3 / arg3 == 10^18
        require allowance[address(arg1)][address(msg.sender)] >= 10^18 * arg3
        require balanceOf[address(arg1)] >= 10^18 * arg3
        require 10^18 * arg3 > 0
        require 10^18 * arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += -1 * 10^18 * arg3
        require balanceOf[address(arg2)] + (10^18 * arg3) >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += 10^18 * arg3
        require 10^18 * arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] += -1 * 10^18 * arg3
        emit Transfer((10^18 * arg3), arg1, arg2);
        return 1
    else:
        require allowance[address(arg1)][address(msg.sender)] >= 0
        require balanceOf[address(arg1)] >= 0
        revert
}



}
