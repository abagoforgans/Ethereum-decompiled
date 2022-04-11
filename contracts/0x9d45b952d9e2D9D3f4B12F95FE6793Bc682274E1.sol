contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 10^16
    stor5 = 10^16
    require not msg.value
    stor0 = msg.sender
    stor1[address(msg.sender)] = code.data[5047 len 32]
    stor3 = code.data[5047 len 32]
    return code.data[225 len 4822]
}



// =====================  Runtime code  =====================


const name = 'NedCoin'

const decimals = 18

const symbol = 'NED'


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;

function _supply() {
    return totalSupply
}

function totalSupply() {
    return totalSupply
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addCoins(uint256 arg1) {
    require msg.sender == stor0
    totalSupply += arg1
    balanceOf[stor0] += arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    require eth.balance(this.address) >= arg1
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function buy(uint256 arg1) payable {
    require buyPrice
    require balanceOf[stor0] < msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[stor0] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), stor0, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] < arg2
    require balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] < arg1
    require eth.balance(this.address) >= arg1 * sellPrice
    balanceOf[stor0] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, stor0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] < arg3
    require allowance[address(arg1)][address(msg.sender)] < arg3
    require balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
