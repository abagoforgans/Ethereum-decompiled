contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
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

function owner() {
    return owner
}

function updateRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferBackTo(uint256 arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function _fallback() payable {
    require msg.sender
    require msg.value >= 10^16
    require msg.value <= 10^18
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
    require msg.sender == owner
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value >= 10^16
    require msg.value <= 10^18
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(msg.value, msg.value * rate, arg1);
    require msg.sender == owner
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
