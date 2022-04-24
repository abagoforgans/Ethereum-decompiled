contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint8 stor8;
uint256 stor9;

function _fallback() payable {
    stor1 = 0x37d56175a3468669033c8adb312a7201ac6d2dce
    stor2 = 420200 * 3600
    stor3 = 420944 * 3600
    stor4 = 10^17
    stor6 = 650
    stor8 = 0
    stor9 = 8547 * 10^14 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor5 = msg.sender
    return code.data[318 len 2738]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startDate;
uint256 endDate;
uint256 minimumParticipationAmount;
address stor5;
uint256 stor6;
uint256 weiRaised;
uint8 stor8;
uint256 cap;

function minimumParticipationAmount() {
    return minimumParticipationAmount
}

function startDate() {
    return startDate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function isFinalized() {
    return bool(stor8)
}

function owner() {
    return owner
}

function endDate() {
    return endDate
}

function hasEnded() {
    return bool(stor8)
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function finalize() {
    require msg.sender == owner
    require not stor8
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor5, ext_call.return_data[0]
    require ext_call.success
    stor8 = 1
    emit Finalized()
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    if startDate > block.timestamp:
        require startDate <= block.timestamp
    else:
        require endDate >= block.timestamp
    require msg.value
    require msg.value >= minimumParticipationAmount
    require not stor8
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * stor6 / msg.value == stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor6
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit TokenPurchase(msg.value, msg.value * stor6, msg.sender, msg.sender);
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    if startDate > block.timestamp:
        require startDate <= block.timestamp
    else:
        require endDate >= block.timestamp
    require msg.value
    require msg.value >= minimumParticipationAmount
    require not stor8
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * stor6 / msg.value == stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * stor6
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    emit TokenPurchase(msg.value, msg.value * stor6, msg.sender, arg1);
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
