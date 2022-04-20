contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint8 stor0; offset 168
address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    uint8(stor0.field_168) = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[3344 len 32] > 0
    require code.data[3388 len 20]
    if code.data[3344 len 32]:
        require code.data[3344 len 32]
        require 10^18 * code.data[3344 len 32] / code.data[3344 len 32] == 10^18
    stor2 = 10^18 * code.data[3344 len 32]
    stor1 = code.data[3388 len 20]
    return code.data[280 len 3064]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
address walletAddress;
uint256 weiMaxCap;
uint256 weiRaised;
mapping of uint256 depositsOf;
mapping of uint256 balances;
array of address investors;
uint256 investorCount;
mapping of uint256 allowed;

function everyoneDisabled() {
    return bool(uint8(stor0.field_168))
}

function balances(address arg1) {
    return balances[arg1]
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowed(address arg1) {
    return allowed[arg1]
}

function investorCount() {
    return investorCount
}

function depositsOf(address arg1) {
    return depositsOf[address(arg1)]
}

function weiMaxCap() {
    return weiMaxCap
}

function deposits(address arg1) {
    return depositsOf[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function allow(address arg1, uint256 arg2) {
    require owner == msg.sender
    allowed[address(arg1)] = arg2
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function updateWallet(address arg1) {
    require owner == msg.sender
    require uint8(stor0.field_160)
    require arg1
    walletAddress = arg1
}

function allowEveryone() {
    require owner == msg.sender
    require uint8(stor0.field_168)
    uint8(stor0.field_168) = 0
    emit AllowEveryone()
}

function allowWhiteList() {
    require owner == msg.sender
    require not uint8(stor0.field_168)
    uint8(stor0.field_168) = 1
    emit AllowWhiteList()
}

function updateMaxCap(uint256 arg1) {
    require owner == msg.sender
    require uint8(stor0.field_160)
    require arg1
    require arg1
    require 10^18 * arg1 / arg1 == 10^18
    weiMaxCap = 10^18 * arg1
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.value > 10^16
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= weiMaxCap
    require allowed[address(arg1)] > 0
    require msg.value + weiRaised >= weiRaised
    if msg.value:
        require msg.value
        require allowed[address(arg1)] * msg.value / msg.value == allowed[address(arg1)]
    weiRaised += msg.value
    require msg.value + depositsOf[address(arg1)] >= depositsOf[address(arg1)]
    depositsOf[address(arg1)] += msg.value
    require (allowed[address(arg1)] * msg.value) + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += allowed[address(arg1)] * msg.value
    if depositsOf[address(arg1)] <= 0:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = arg1
        investorCount++
    emit TokenPurchase(msg.value, allowed[address(arg1)] * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.value > 10^16
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= weiMaxCap
    require allowed[address(msg.sender)] > 0
    require msg.value + weiRaised >= weiRaised
    if msg.value:
        require msg.value
        require allowed[address(msg.sender)] * msg.value / msg.value == allowed[address(msg.sender)]
    weiRaised += msg.value
    require msg.value + depositsOf[address(msg.sender)] >= depositsOf[address(msg.sender)]
    depositsOf[address(msg.sender)] += msg.value
    require (allowed[address(msg.sender)] * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += allowed[address(msg.sender)] * msg.value
    if depositsOf[address(msg.sender)] <= 0:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
        investorCount++
    emit TokenPurchase(msg.value, allowed[address(msg.sender)] * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
