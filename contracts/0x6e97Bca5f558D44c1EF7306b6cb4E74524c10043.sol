contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    require not msg.value
    require code.data[3199 len 32] >= block.number
    require code.data[3231 len 32] >= code.data[3199 len 32]
    require code.data[3391 len 32] > 0
    require code.data[3275 len 20]
    stor0 = 0
    stor1 = code.data[3199 len 32]
    stor2 = code.data[3231 len 32]
    stor4 = code.data[3391 len 32]
    stor3 = code.data[3275 len 20]
    address(stor6.field_0) = msg.sender
    require code.data[3275 len 20]
    require code.data[3307 len 20]
    stor7 = 500000000 * 10^18
    stor8 = code.data[3275 len 20]
    stor9 = code.data[3307 len 20]
    stor10 = code.data[3327 len 32]
    require 10^18 * code.data[3359 len 32] > 0
    stor11 = 10^18 * code.data[3359 len 32]
    if stor11:
        require stor11
        require stor4 * stor11 / stor11 == stor4
    require stor4 * stor11 <= stor7
    if stor7:
        require stor7
        require stor10 * stor7 / stor7 == stor10
    require stor10 * stor7 / 100 <= stor7 - (stor4 * stor11)
    stor0 = code.data[3435 len 20]
    return code.data[768 len 2431]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
address owner;
uint256 stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 cap;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(stor6)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
}

function finalize() {
    require owner == msg.sender
    require not stor6
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] < stor7:
        if stor7:
            require stor7
            require stor10 * stor7 / stor7 == stor10
        require stor10 * stor7 / 100 <= stor7
        require ext_call.return_data[0] <= stor7 - (stor10 * stor7 / 100)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args stor9, stor10 * stor7 / 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args stor8, stor7 - (stor10 * stor7 / 100) - ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor6 = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised < cap
    require msg.value + weiRaised >= weiRaised
    if msg.value + weiRaised <= cap:
        if msg.value:
            require msg.value
            require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), rate * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require msg.value + weiRaised >= weiRaised
        require cap <= msg.value + weiRaised
        call arg1 with:
           value msg.value + weiRaised - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + weiRaised - cap <= msg.value
        if -weiRaised + cap:
            require -weiRaised + cap
            require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
        require cap >= weiRaised
        weiRaised = cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (-1 * weiRaised * rate) + (cap * rate)
        require ext_call.success
        emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, arg1);
        call walletAddress with:
           value -weiRaised + cap wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised < cap
    require msg.value + weiRaised >= weiRaised
    if msg.value + weiRaised <= cap:
        if msg.value:
            require msg.value
            require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, rate * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require msg.value + weiRaised >= weiRaised
        require cap <= msg.value + weiRaised
        call msg.sender with:
           value msg.value + weiRaised - cap wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + weiRaised - cap <= msg.value
        if -weiRaised + cap:
            require -weiRaised + cap
            require (-1 * weiRaised * rate) + (cap * rate) / -weiRaised + cap == rate
        require cap >= weiRaised
        weiRaised = cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (-1 * weiRaised * rate) + (cap * rate)
        require ext_call.success
        emit TokenPurchase(-weiRaised + cap, (-1 * weiRaised * rate) + (cap * rate), msg.sender, msg.sender);
        call walletAddress with:
           value -weiRaised + cap wei
             gas 2300 * is_zero(value) wei
}



}
