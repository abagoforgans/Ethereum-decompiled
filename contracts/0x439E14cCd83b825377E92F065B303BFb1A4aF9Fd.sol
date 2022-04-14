contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor1 = code.data[1528 len 20]
    stor0 = code.data[1548 len 32]
    stor2 = code.data[1592 len 20]
    stor3 = stor2
    stor4 = block.timestamp
    stor5 = block.timestamp + (60 * stor0)
    return code.data[339 len 1177]
}



// =====================  Runtime code  =====================


address walletAddress;
address stor3;
uint256 startTime;
uint256 endTime;
uint256 weiRaised;

function endTime() {
    return endTime
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

function hasEnded() {
    return (block.timestamp > endTime)
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 10^15
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value / 10^15, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value / 10^15
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value / 10^15, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
