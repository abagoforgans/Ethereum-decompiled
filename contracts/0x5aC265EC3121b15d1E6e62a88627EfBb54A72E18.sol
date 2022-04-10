contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address treasurerAddress;
uint256 purchasableTokens;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 RATE;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function purchasableTokens() {
    return purchasableTokens
}

function treasurer() {
    return treasurerAddress
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    RATE = arg1
}

function transferTreasurership(address arg1) {
    require owner == msg.sender
    if arg1:
        treasurerAddress = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
    balanceOf[arg1] = balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] = 0
}

function approve(address arg1, uint256 arg2) {
    require not arg2
    require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function setPurchasable(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require balanceOf[address(stor0.field_0)] >= arg1
    if arg1:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
    purchasableTokens = 10^18 * arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require treasurerAddress
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    require purchasableTokens >= RATE * msg.value
    require RATE * msg.value <= purchasableTokens
    purchasableTokens += -1 * RATE * msg.value
    require RATE * msg.value <= balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] += -1 * RATE * msg.value
    require (RATE * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (RATE * msg.value) + balanceOf[arg1]
    emit Transfer((RATE * msg.value), owner, arg1);
    call treasurerAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require treasurerAddress
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    require purchasableTokens >= RATE * msg.value
    require RATE * msg.value <= purchasableTokens
    purchasableTokens += -1 * RATE * msg.value
    require RATE * msg.value <= balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] += -1 * RATE * msg.value
    require (RATE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (RATE * msg.value) + balanceOf[msg.sender]
    emit Transfer((RATE * msg.value), owner, msg.sender);
    call treasurerAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



// =====================  Runtime code  =====================




}
