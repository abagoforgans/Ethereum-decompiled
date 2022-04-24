contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;

function _fallback() {
    require code.data[14818 len 32] >= block.timestamp
    require code.data[14850 len 32] >= code.data[14818 len 32]
    require code.data[14882 len 32] > 0
    require code.data[14958 len 20]
    create contract with 0 wei
                    code: code.data[8705 len 6113]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xa6fd40bf56c0d1776a7b3d9165a069da31ae3035, 1000000 * 10^18
    require ext_call.success
    stor0 = address(create.new_address)
    stor1 = code.data[14818 len 32]
    stor2 = code.data[14850 len 32]
    stor4 = code.data[14882 len 32]
    stor3 = address(code.data[14946 len 32])
    require code.data[14914 len 32] > 0
    stor6 = code.data[14914 len 32]
    return code.data[704 len 8001]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;

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

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
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
