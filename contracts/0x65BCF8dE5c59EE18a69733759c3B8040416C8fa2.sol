contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    require code.data[3149 len 32] >= block.timestamp
    require code.data[3181 len 32] >= code.data[3149 len 32]
    require code.data[3309 len 32] > 0
    require code.data[3353 len 20]
    address(stor0) = 0
    stor1 = code.data[3149 len 32]
    stor2 = code.data[3181 len 32]
    stor4 = code.data[3309 len 32]
    stor3 = code.data[3353 len 20]
    require code.data[3213 len 32] > 0
    stor6 = code.data[3213 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[3385 len 20]
    require code.data[3449 len 20]
    require code.data[3481 len 20]
    require code.data[3245 len 32] <= code.data[3277 len 32]
    require code.data[3405 len 32] >= 0
    require code.data[3405 len 32] <= 100
    stor12 = code.data[3449 len 20]
    require ext_code.size(code.data[3449 len 20])
    call code.data[3449 len 20].0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
    stor13 = code.data[3481 len 20]
    stor8 = code.data[3385 len 20]
    stor9 = code.data[3245 len 32]
    stor10 = code.data[3277 len 32]
    stor11 = code.data[3405 len 32]
    return code.data[693 len 2456]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 paused; offset 160
address owner;
address partnerAddress;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;

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

function paused() {
    return bool(paused)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function partner() {
    return partnerAddress
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not paused
    paused = 1
    emit Pause()
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    if block.timestamp <= endTime:
        require weiRaised >= cap
    if eth.balance(this.address) > 0:
        call partnerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Withdrawal(eth.balance(this.address), msg.sender);
}

function buyTokens(address arg1) payable {
    require not paused
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor13)
    call stor13.createVesting(address rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, endTime, stor9, stor10
    require ext_call.success
    require ext_code.size(stor13)
    call stor13.getVesting(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor12)
    call stor12.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    if msg.value:
        require msg.value
        require (100 * msg.value) - (stor11 * msg.value) / msg.value == -stor11 + 100
    call walletAddress with:
       value (100 * msg.value) - (stor11 * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not paused
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor13)
    call stor13.createVesting(address rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), endTime, stor9, stor10
    require ext_call.success
    require ext_code.size(stor13)
    call stor13.getVesting(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(stor12)
    call stor12.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    if msg.value:
        require msg.value
        require (100 * msg.value) - (stor11 * msg.value) / msg.value == -stor11 + 100
    call walletAddress with:
       value (100 * msg.value) - (stor11 * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
