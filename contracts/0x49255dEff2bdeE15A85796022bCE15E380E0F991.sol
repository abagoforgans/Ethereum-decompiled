contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;

function _fallback() {
    require code.data[2005 len 32] > 0
    require code.data[2049 len 20]
    stor0 = code.data[1953 len 20]
    stor1 = block.timestamp + (24 * 3600 * code.data[1973 len 32])
    stor3 = code.data[2005 len 32]
    stor2 = code.data[2049 len 20]
    return code.data[314 len 1627]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 deadLine;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function deadLine() {
    return deadLine
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > deadLine)
}

function _fallback() payable {
    require msg.sender
    require block.timestamp <= deadLine
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value * rate <= ext_call.return_data[0]
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
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
    require block.timestamp <= deadLine
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value * rate <= ext_call.return_data[0]
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
