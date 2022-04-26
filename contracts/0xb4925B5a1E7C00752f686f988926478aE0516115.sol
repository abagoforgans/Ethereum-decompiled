contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
address stor7;
uint8 stor10;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    require code.data[4638 len 32] >= code.data[4606 len 32]
    require code.data[4670 len 32] > 0
    stor0 = 0
    stor1 = code.data[4606 len 32]
    stor2 = code.data[4638 len 32]
    stor4 = code.data[4670 len 32]
    stor3 = code.data[4746 len 20]
    require code.data[4702 len 32] > 0
    stor6 = code.data[4702 len 32]
    stor7 = msg.sender
    stor0 = code.data[4778 len 20]
    return code.data[516 len 4090]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
address owner;
address newOwner;
uint256 amountPerDay;
uint8 stor10;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor10)
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function amountPerDay() {
    return amountPerDay
}

function token() {
    return tokenAddress
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function changeEndTime(uint256 arg1) {
    require msg.sender == owner
    require arg1 > startTime
    endTime = arg1
    return endTime
}

function mintTokens(uint256 arg1) {
    require msg.sender == owner
    require not stor10
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not stor10
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor10 = 1
}

function claimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.passOff() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return 1
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
