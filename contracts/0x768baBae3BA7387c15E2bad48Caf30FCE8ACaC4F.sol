contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;

function _fallback() {
    require code.data[999 len 32] > 0
    require code.data[1043 len 20]
    require code.data[1075 len 20]
    stor4 = 168 * 24 * 3600 * code.data[1095 len 32]
    stor2 = code.data[999 len 32]
    stor1 = code.data[1043 len 20]
    stor0 = code.data[1075 len 20]
    return code.data[189 len 810]
}



// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 deadline;

function deadline() {
    return deadline
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
