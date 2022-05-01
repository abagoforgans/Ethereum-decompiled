contract main {


// =======================  Init code  ======================


uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
address stor6;
uint256 stor7;
uint256 stor8;
address stor9;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor14;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor14 = 2000000 * 10^18
    stor16 = 5 * 10^17
    require not msg.value
    require code.data[9605 len 32] >= code.data[9573 len 32]
    require code.data[9681 len 20]
    stor7 = code.data[9573 len 32]
    stor8 = code.data[9605 len 32]
    stor9 = code.data[9681 len 20]
    stor6 = code.data[9681 len 20]
    stor17 = code.data[9637 len 32]
    stor3 = 1
    uint8(stor12.field_0) = 0
    uint8(stor12.field_8) = 0
    stor2 = 2000000 * 10^18
    require stor6
    require stor4[stor6] + 2000000 * 10^18 >= stor4[stor6]
    stor4[stor6] += 2000000 * 10^18
    return code.data[897 len 8676]
}



// =====================  Runtime code  =====================


const name = 'MCFit Token'

const decimals = 18

const symbol = 'MCF'

const INITIAL_SUPPLY = 2000000 * 10^18


uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 startTime;
uint256 sub_6ba0c77c;
address walletAddress;
uint256 weiRaised;
uint256 tokenAllocated;
uint8 mintingFinished;
uint8 state; offset 8
mapping of uint256 deposited;
uint256 tokenCapReached;
uint256 countInvestor;
uint256 weiMinimum;
uint256 stor17;

function mintingFinished() {
    return bool(mintingFinished)
}

function totalSupply() {
    return totalSupply
}

function weiRaised() {
    return weiRaised
}

function getDeposited(address arg1) {
    return deposited[address(arg1)]
}

function wallet() {
    return walletAddress
}

function sub_6ba0c77c(?) {
    return sub_6ba0c77c
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function tokenAllocated() {
    return tokenAllocated
}

function owner() {
    return owner
}

function weiMinimum() {
    return weiMinimum
}

function transfersEnabled() {
    return bool(stor3)
}

function state() {
    require state <= 1
    return state
}

function deposited(address arg1) {
    return deposited[arg1]
}

function countInvestor() {
    return countInvestor
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenCapReached() {
    return tokenCapReached
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function sub_12fd3657(?) {
    require msg.sender == owner
    require state <= 1
    require not state
    require arg1 > 0
    weiMinimum = arg1
}

function changeRateUSD(uint256 arg1) {
    require msg.sender == owner
    require state <= 1
    require not state
    require arg1 > 0
    stor17 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require stor3
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require stor3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function validPurchaseTokens(uint256 arg1) {
    require block.timestamp >= startTime
    if block.timestamp >= sub_6ba0c77c:
        if arg1:
            require arg1
            require not 0 / arg1
        require tokenAllocated >= tokenAllocated
        if tokenAllocated >= tokenCapReached:
            emit 0x310c89a8: tokenAllocated, 0
    else:
        if arg1:
            require arg1
            require arg1 * stor17 / arg1 == stor17
        require tokenAllocated + (arg1 * stor17) >= tokenAllocated
        if tokenAllocated + (arg1 * stor17) < tokenCapReached:
            return (arg1 * stor17)
        emit 0x310c89a8: tokenAllocated, arg1 * stor17
    return 0
}

function buyTokens(address arg1) payable {
    require state <= 1
    require not state
    require arg1
    require msg.value >= weiMinimum
    require block.timestamp >= startTime
    if block.timestamp >= sub_6ba0c77c:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require tokenAllocated >= tokenAllocated
        require tokenAllocated >= tokenCapReached
        emit 0x310c89a8: tokenAllocated, 0
        revert
    if msg.value:
        require msg.value
        require msg.value * stor17 / msg.value == stor17
    require tokenAllocated + (msg.value * stor17) >= tokenAllocated
    if tokenAllocated + (msg.value * stor17) >= tokenCapReached:
        emit 0x310c89a8: tokenAllocated, msg.value * stor17
        revert
    require msg.value * stor17
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokenAllocated + (msg.value * stor17) >= tokenAllocated
    tokenAllocated += msg.value * stor17
    require not mintingFinished
    require balanceOf[address(arg1)] + (msg.value * stor17) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value * stor17
    require msg.value * stor17 <= balanceOf[stor9]
    balanceOf[stor9] += -1 * msg.value * stor17
    emit Mint((msg.value * stor17), arg1);
    emit Transfer((msg.value * stor17), walletAddress, arg1);
    emit TokenPurchase(msg.value, msg.value * stor17, arg1);
    if not deposited[address(arg1)]:
        require countInvestor + 1 >= countInvestor
        countInvestor++
    require state <= 1
    require not state
    require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
    deposited[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (msg.value * stor17)
}

function _fallback() payable {
    require state <= 1
    require not state
    require msg.sender
    require msg.value >= weiMinimum
    require block.timestamp >= startTime
    if block.timestamp >= sub_6ba0c77c:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require tokenAllocated >= tokenAllocated
        require tokenAllocated >= tokenCapReached
        emit 0x310c89a8: tokenAllocated, 0
        revert
    if msg.value:
        require msg.value
        require msg.value * stor17 / msg.value == stor17
    require tokenAllocated + (msg.value * stor17) >= tokenAllocated
    if tokenAllocated + (msg.value * stor17) >= tokenCapReached:
        emit 0x310c89a8: tokenAllocated, msg.value * stor17
        revert
    require msg.value * stor17
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokenAllocated + (msg.value * stor17) >= tokenAllocated
    tokenAllocated += msg.value * stor17
    require not mintingFinished
    require balanceOf[address(msg.sender)] + (msg.value * stor17) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * stor17
    require msg.value * stor17 <= balanceOf[stor9]
    balanceOf[stor9] += -1 * msg.value * stor17
    emit Mint((msg.value * stor17), msg.sender);
    emit Transfer((msg.value * stor17), walletAddress, msg.sender);
    emit TokenPurchase(msg.value, msg.value * stor17, msg.sender);
    if not deposited[address(msg.sender)]:
        require countInvestor + 1 >= countInvestor
        countInvestor++
    require state <= 1
    require not state
    require deposited[address(msg.sender)] + msg.value >= deposited[address(msg.sender)]
    deposited[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
