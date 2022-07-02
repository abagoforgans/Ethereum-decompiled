contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'TheItCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'TIC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 42 * 10^12
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 6
    stor8 = 50 * 10^6
    stor9 = block.timestamp
    stor10 = block.timestamp
    require not msg.value
    stor9 = block.timestamp
    return code.data[405 len 2882]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint256 max_supply;
uint256 unspent_supply;
uint256 spendable_supply;
uint256 circulating_supply;
uint256 decimals;
uint256 stor8; offset 1
uint256 reward;
uint256 timeOfLastHalving;
uint256 timeOfLastIncrease;

function name() {
    return name[0 len name.length]
}

function unspent_supply() {
    return unspent_supply
}

function reward() {
    return reward
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function max_supply() {
    return max_supply
}

function symbol() {
    return symbol[0 len symbol.length]
}

function timeOfLastHalving() {
    return timeOfLastHalving
}

function spendable_supply() {
    return spendable_supply
}

function timeOfLastIncrease() {
    return timeOfLastIncrease
}

function circulating_supply() {
    return circulating_supply
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if block.timestamp - timeOfLastHalving >= 35000 * 3600:
        reward = stor8
        timeOfLastHalving = block.timestamp
    if block.timestamp - timeOfLastIncrease >= 150:
        spendable_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        unspent_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        timeOfLastIncrease = block.timestamp
    circulating_supply = spendable_supply - unspent_supply
    emit Transfer(arg2, msg.sender, arg1);
}

function withdraw(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    unspent_supply += arg1
    call msg.sender with:
       value 100 * 10^6 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if block.timestamp - timeOfLastHalving >= 35000 * 3600:
        reward = stor8
        timeOfLastHalving = block.timestamp
    if block.timestamp - timeOfLastIncrease >= 150:
        spendable_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        unspent_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        timeOfLastIncrease = block.timestamp
    circulating_supply = spendable_supply - unspent_supply
    return 1
}

function mint() payable {
    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    if block.timestamp - timeOfLastHalving >= 35000 * 3600:
        reward = stor8
        timeOfLastHalving = block.timestamp
    if block.timestamp - timeOfLastIncrease >= 150:
        spendable_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        unspent_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        timeOfLastIncrease = block.timestamp
    circulating_supply = spendable_supply - unspent_supply
    require unspent_supply - (msg.value / 100 * 10^6) <= unspent_supply
    unspent_supply -= msg.value / 100 * 10^6
    balanceOf[address(msg.sender)] += msg.value / 100 * 10^6
    if block.timestamp - timeOfLastHalving >= 35000 * 3600:
        reward = stor8
        timeOfLastHalving = block.timestamp
    if block.timestamp - timeOfLastIncrease >= 150:
        spendable_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        unspent_supply += block.timestamp - timeOfLastIncrease / 150 * reward
        timeOfLastIncrease = block.timestamp
    circulating_supply = spendable_supply - unspent_supply
    emit Mint((msg.value / 100 * 10^6), msg.sender);
}



}
