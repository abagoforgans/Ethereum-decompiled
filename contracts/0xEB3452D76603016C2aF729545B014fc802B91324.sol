contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor6 = 25000000 * 10^18
    require not msg.value
    stor5 = msg.sender
    stor1[stor5] = stor6
    stor7 = stor6
    emit CreateNertia(stor6, stor5);
    return code.data[336 len 5684]
}



// =====================  Runtime code  =====================


const name = 'Kariros'

const decimals = 18

const version = '1.0'

const symbol = 'KRX'

const getDecimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
address owner;
uint256 initialSupply;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;

function totalSupply() {
    return totalSupply
}

function initialSupply() {
    return initialSupply
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function kairosOwner() {
    return owner
}

function buyPrice() {
    return buyPrice
}

function getOwner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    stor3[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function buy() payable {
    require buyPrice
    require balanceOf[stor5] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[stor5] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), owner, msg.sender);
    return (msg.value / buyPrice)
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    if stor3[address(msg.sender)]:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[stor5] += arg1
    balanceOf[address(msg.sender)] -= arg1
    if arg1:
        require arg1
        require arg1 * sellPrice / arg1 == sellPrice
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, owner);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor3[address(msg.sender)]:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
