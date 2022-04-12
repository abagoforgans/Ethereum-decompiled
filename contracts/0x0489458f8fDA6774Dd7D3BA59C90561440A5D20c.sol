contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor9;

function _fallback() {
    stor7 = 'TEST2'
    stor3 = 10^6
    stor2 = 10^6
    stor1 = 0x443b9375536521127dbfabff21f770e4e684475d
    stor4 = 20000
    stor5 = 1000
    stor6 = 'CONF'
    stor9[0x443b9375536521127dbfabff21f770e4e684475d] = 9999
    return code.data[197 len 3008]
}



// =====================  Runtime code  =====================


const __DEBUG_BAL = eth.balance(this.address)


address owner;
uint256 initialIssuance;
uint256 totalSupply;
uint128 stor4;
uint128 stor4; offset 128
uint256 currentEthPrice;
uint128 stor5;
uint128 stor5; offset 128
uint256 currentTokenPrice;
uint256 symbol;
uint256 name;
mapping of uint256 allowance;
mapping of uint256 balances;
mapping of uint256 productLimits;
mapping of uint256 productPrices;
mapping of uint256 checkProduct;

function name() {
    return name
}

function seeEthPrice() {
    return currentEthPrice
}

function totalSupply() {
    return totalSupply
}

function currentEthPrice() {
    return currentEthPrice
}

function balances(address arg1) {
    return balances[arg1]
}

function checkProduct(bytes32 arg1) {
    return checkProduct[address(msg.sender)][arg1]
}

function inventoryProduct(bytes32 arg1) {
    return productLimits[arg1]
}

function productPrices(bytes32 arg1) {
    return productPrices[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function currentTokenPrice() {
    return currentTokenPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function productLimits(bytes32 arg1) {
    return productLimits[arg1]
}

function initialIssuance() {
    return initialIssuance
}

function _fallback() {
    revert
}

function __getEthPrice(uint256 arg1) {
    currentEthPrice = arg1
}

function nullifyProduct(bytes32 arg1) {
    productLimits[arg1] = 0
}

function sub_16c774cd(?) {
    productPrices[arg1] = arg2
    productLimits[arg1] = arg3
}

function modifyProductLimit(bytes32 arg1, uint256 arg2) {
    productLimits[arg1] = arg2
}

function modifyProductPrice(bytes32 arg1, uint256 arg2) {
    productPrices[arg1] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function modifyProductPrice(bytes32 arg1, uint256 arg2, uint256 arg3) {
    productPrices[arg1] = arg2
    productLimits[arg1] = arg3
}

function setEthPrice(uint128 arg1) {
    require owner == msg.sender
    uint128(stor4.field_0) = arg1
    uint128(stor4.field_128) = 0
}

function setTokenPrice(uint128 arg1) {
    require owner == msg.sender
    uint128(stor5.field_0) = arg1
    uint128(stor5.field_128) = 0
}

function __redeem() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    require arg2 + balances[arg1] >= arg2
    balances[address(arg1)] = arg2 + balances[arg1]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] >= arg3
    balances[address(arg2)] += arg3
    return 1
}

function purchaseProduct(bytes32 arg1, uint256 arg2) {
    if productPrices[arg1]:
        require productPrices[arg1]
        require arg2 * productPrices[arg1] / productPrices[arg1] == arg2
    require arg2 * productPrices[arg1] <= balances[address(msg.sender)]
    balances[address(msg.sender)] += -1 * arg2 * productPrices[arg1]
    totalSupply += arg2 * productPrices[arg1]
    require arg2 <= productLimits[arg1]
    productLimits[arg1] -= arg2
    require arg2 + checkProduct[address(msg.sender)][arg1] >= checkProduct[address(msg.sender)][arg1]
    require arg2 + checkProduct[address(msg.sender)][arg1] >= arg2
    checkProduct[address(msg.sender)][arg1] += arg2
}

function purchaseToken() payable {
    require 10^18 * currentTokenPrice
    require currentEthPrice * msg.value / 10^18 * currentTokenPrice <= totalSupply
    totalSupply -= currentEthPrice * msg.value / 10^18 * currentTokenPrice
    require (currentEthPrice * msg.value / 10^18 * currentTokenPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require (currentEthPrice * msg.value / 10^18 * currentTokenPrice) + balances[address(msg.sender)] >= currentEthPrice * msg.value / 10^18 * currentTokenPrice
    balances[address(msg.sender)] += currentEthPrice * msg.value / 10^18 * currentTokenPrice
    return (currentEthPrice * msg.value / 10^18 * currentTokenPrice)
}



}
