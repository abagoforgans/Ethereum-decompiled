contract main {




// =====================  Runtime code  =====================


address owner;
uint256 minimumParticipationAmount;
uint256 maximalParticipationAmount;
uint256 stor3;
uint256 weiRaised;
uint8 stor5;
uint256 cap;
address tokenAddress;
address walletAddress;

function maximalParticipationAmount() {
    return maximalParticipationAmount
}

function minimumParticipationAmount() {
    return minimumParticipationAmount
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

function isFinalized() {
    return bool(stor5)
}

function owner() {
    return owner
}

function hasEnded() {
    return bool(stor5)
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function finalize() {
    require msg.sender == owner
    require not stor5
    emit Finalized()
    stor5 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function buyTokens(address arg1) payable {
    if not msg.value:
        require arg1
        require weiRaised + msg.value >= weiRaised
        require msg.value
        require msg.value >= minimumParticipationAmount
        require not stor5
        require weiRaised + msg.value <= cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, 0, arg1);
        emit Transfer(0, 0, arg1);
    else:
        require msg.value
        require msg.value * stor3 / msg.value == stor3
        require arg1
        require weiRaised + msg.value >= weiRaised
        require msg.value
        require msg.value >= minimumParticipationAmount
        require not stor5
        require weiRaised + msg.value <= cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), msg.value * stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * stor3, 0, arg1);
        emit Transfer((msg.value * stor3), 0, arg1);
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not msg.value:
        require msg.sender
        require weiRaised + msg.value >= weiRaised
        require msg.value
        require msg.value >= minimumParticipationAmount
        require not stor5
        require weiRaised + msg.value <= cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, 0, msg.sender);
        emit Transfer(0, 0, msg.sender);
    else:
        require msg.value
        require msg.value * stor3 / msg.value == stor3
        require msg.sender
        require weiRaised + msg.value >= weiRaised
        require msg.value
        require msg.value >= minimumParticipationAmount
        require not stor5
        require weiRaised + msg.value <= cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, msg.value * stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, msg.value * stor3, 0, msg.sender);
        emit Transfer((msg.value * stor3), 0, msg.sender);
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
