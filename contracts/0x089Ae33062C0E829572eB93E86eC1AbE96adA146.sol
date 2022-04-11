contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor7;
mapping of uint256 stor9;

function _fallback() {
    stor3 = 10 * 10^6
    stor2 = stor3
    stor1 = msg.sender
    stor4 = 1
    stor5 = 1
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'CONF' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9[stor1] = 11 * 10^6
    return code.data[498 len 6208]
}



// =====================  Runtime code  =====================


const totalSupply = 0


address owner;
uint256 initialIssuance;
uint256 stor3;
uint128 stor4;
uint128 stor4; offset 128
uint256 currentEthPrice;
uint128 stor5;
uint128 stor5; offset 128
uint256 currentTokenPrice;
uint256 ticketPrice;
array of uint256 symbol;
mapping of uint256 allowance;
mapping of uint256 balances;
mapping of struct productListing;
array of struct productOwners;

function seeEthPrice() {
    return currentEthPrice
}

function ticketPrice() {
    return ticketPrice
}

function productListing(bytes32 arg1) {
    return productListing[arg1].field_0
}

function currentEthPrice() {
    return currentEthPrice
}

function balances(address arg1) {
    return balances[arg1]
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
    return symbol[0 len symbol.length]
}

function productOwners(address arg1, uint256 arg2) {
    require arg2 < productOwners[arg1].field_0
    return productOwners[arg1][arg2].field_0, productOwners[arg1][arg2].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function initialIssuance() {
    return initialIssuance
}

function _fallback() {
    revert
}

function __getEthPrice(uint256 arg1) {
    require msg.sender == owner
    currentEthPrice = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setEthPrice(uint128 arg1) {
    require msg.sender == owner
    uint128(stor4.field_0) = arg1
    uint128(stor4.field_128) = 0
}

function setTokenPrice(uint128 arg1) {
    require msg.sender == owner
    uint128(stor5.field_0) = arg1
    uint128(stor5.field_128) = 0
}

function createProduct(bytes32 arg1, uint128 arg2) {
    require msg.sender == owner
    productListing[arg1].field_0 = arg2
    productListing[arg1].field_128 = 0
}

function checkProduct(bytes32 arg1) {
    s = 0
    idx = 0
    while idx < productOwners[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 11)
        if productOwners[address(msg.sender)][idx].field_0 != arg1:
            s = productOwners[address(msg.sender)][idx].field_0
            idx = idx + 1
            continue 
        require idx < productOwners[address(msg.sender)].field_0
        return productOwners[address(msg.sender)][idx].field_256
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require arg1
    require arg2 > 0
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(msg.sender)] + arg2 >= balances[address(msg.sender)]
    require balances[address(msg.sender)] + arg2 >= arg2
    balances[address(arg1)] = balances[address(msg.sender)] + arg2
    return 1
}

function stringToUint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] < 48:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        if mem[idx + 128 len 1] > 57:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (10 * s) + mem[idx + 128 len 1] - 48
        continue 
    return s
}

function purchaseProduct(bytes32 arg1, uint256 arg2) {
    require productListing[arg1].field_0
    require balances[address(msg.sender)] >= productListing[arg1].field_0 * arg2
    require productListing[arg1].field_0 * arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] += -1 * productListing[arg1].field_0 * arg2
    productOwners[address(msg.sender)].field_0++
    if not productOwners[address(msg.sender)].field_0 <= productOwners[address(msg.sender)].field_0 + 1:
        idx = 2 * productOwners[address(msg.sender)].field_0 + 1
        while 2 * productOwners[address(msg.sender)].field_0 > idx:
            productOwners[address(msg.sender)][idx].field_0 = 0
            productOwners[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    productOwners[address(msg.sender)][productOwners[address(msg.sender)].field_0].field_0 = arg1
    productOwners[address(msg.sender)][productOwners[address(msg.sender)].field_0].field_256 = arg2
}

function buyToken() payable {
    require msg.value > currentTokenPrice
    require msg.value > 0
    require 100 * 10^18 * currentTokenPrice
    require msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16 <= stor3
    stor3 -= msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16
    if not balances[address(msg.sender)]:
        balances[address(msg.sender)] = msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16
    else:
        require balances[address(msg.sender)] + (msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16) >= balances[address(msg.sender)]
        require balances[address(msg.sender)] + (msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16) >= msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16
        balances[address(msg.sender)] += msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16
    return (msg.value * currentEthPrice / 100 * 10^18 * currentTokenPrice / 10^16)
}



}
