contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;
address stor4;
uint256 stor5;
uint16 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor7 = 0
    stor8 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor4 = code.data[4913 len 20]
    uint8(stor3.field_160) = 18
    stor0 = 5000 * 10^18
    stor1[code.data[4945 len 20]] = 5000 * 10^18
    stor6 = 0
    stor5 = 100 * 10^6
    return code.data[217 len 4684]
}



// =====================  Runtime code  =====================


const name = ''

const wholeTokensPerEth = 5000

const wholeTokensReserved = 5000

const symbol = ''


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 decimals; offset 160
address owner;
address stor4;
uint256 maxCrowdsaleSupplyInWholeTokens;
uint8 stor6;
uint8 stor6; offset 8
uint256 openTimer;
uint256 closeTimer;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function maxCrowdsaleSupplyInWholeTokens() {
    return maxCrowdsaleSupplyInWholeTokens
}

function closeTimer() {
    return closeTimer
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function openTimer() {
    return openTimer
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function openTimerElapsed() {
    if 0 == openTimer:
        return openTimer != 0
    return (block.timestamp > openTimer)
}

function closeTimerElapsed() {
    if 0 == closeTimer:
        return closeTimer != 0
    return (block.timestamp > closeTimer)
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function checkOpenTimer() {
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
}

function checkCloseTimer() {
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
}

function reclaimContract(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function clearCrowdsaleOpenTimer() {
    require owner == msg.sender
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    require not uint8(stor6.field_0)
    openTimer = 0
}

function clearCrowdsaleCloseTimer() {
    require owner == msg.sender
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
    require not uint8(stor6.field_8)
    closeTimer = 0
}

function setMaxSupply(uint256 arg1) {
    require owner == msg.sender
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    require not uint8(stor6.field_0)
    maxCrowdsaleSupplyInWholeTokens = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function setCrowdsaleOpenTimerFor(uint256 arg1) {
    require owner == msg.sender
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    require not uint8(stor6.field_0)
    openTimer = (60 * arg1) + block.timestamp
}

function setCrowdsaleCloseTimerFor(uint256 arg1) {
    require owner == msg.sender
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
    require not uint8(stor6.field_8)
    closeTimer = (60 * arg1) + block.timestamp
}

function openCrowdsale() {
    require owner == msg.sender
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    require not uint8(stor6.field_0)
    uint8(stor6.field_0) = 1
    openTimer = 0
    emit 0xeff82aa3: block.timestamp
}

function isCrowdsaleActive() {
    if not uint8(stor6.field_0):
        if 0 == openTimer:
            return openTimer != 0
        if block.timestamp <= openTimer:
            return (block.timestamp > openTimer)
    if uint8(stor6.field_8):
        return not bool(uint8(stor6.field_8))
    if 0 == closeTimer:
        return True
    return block.timestamp <= closeTimer
}

function setDecimals(uint8 arg1) {
    require owner == msg.sender
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
    require uint8(stor6.field_8)
    decimals = arg1
    emit DecimalChange(uint8 rg1):
                       0,
                       arg1,
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function closeCrowdsale() {
    require owner == msg.sender
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
    require not uint8(stor6.field_8)
    require uint8(stor6.field_0)
    uint8(stor6.field_8) = 1
    closeTimer = 0
    emit 0xe099424d: block.timestamp
}

function _fallback() payable {
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
    require not uint8(stor6.field_8)
    require uint8(stor6.field_0)
    if openTimer != 0:
        if block.timestamp > openTimer:
            uint8(stor6.field_0) = 1
            openTimer = 0
            emit 0xeff82aa3: block.timestamp
    if closeTimer != 0:
        if block.timestamp > closeTimer:
            uint8(stor6.field_8) = 1
            closeTimer = 0
            emit 0xe099424d: block.timestamp
    require not uint8(stor6.field_8)
    require uint8(stor6.field_0)
    require msg.value
    require msg.value
    require 5000 * msg.value / msg.value == 5000
    require (5000 * msg.value) + totalSupply >= totalSupply
    require (5000 * msg.value) + totalSupply <= (10^18 * maxCrowdsaleSupplyInWholeTokens) + 5000 * 10^18
    totalSupply += 5000 * msg.value
    require (5000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 5000 * msg.value
    emit TokenPurchase(block.timestamp, msg.value, msg.sender);
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
