contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint8 stor9;
uint256 stor10;

function _fallback() payable {
    stor2 = 1501460000
    stor3 = 418094 * 3600
    stor4 = 10^17
    stor5 = 1000 * 10^18
    stor7 = 15000
    stor9 = 0
    stor10 = 5000 * 10^18
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[5438 len 3000]
    require create.new_address
    stor1 = address(create.new_address)
    stor6 = code.data[8450 len 20]
    return code.data[282 len 5156]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startDate;
uint256 endDate;
uint256 minimumParticipationAmount;
uint256 maximalParticipationAmount;
address stor6;
uint256 stor7;
uint256 weiRaised;
uint8 stor9;
uint256 cap;

function maximalParticipationAmount() {
    return maximalParticipationAmount
}

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
    return bool(stor9)
}

function owner() {
    return owner
}

function endDate() {
    return endDate
}

function hasEnded() {
    return bool(stor9)
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function finalize() {
    require owner == msg.sender
    require not stor9
    emit Finalized()
    stor9 = 1
}

function enableTransfers(bool arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf41e60c5 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function transferTokensManual(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 + weiRaised >= weiRaised
    require arg2 + weiRaised <= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFromContract(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokenPurchase(0, arg2, stor6, arg1);
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    if startDate > block.timestamp:
        require startDate <= block.timestamp
    else:
        require endDate >= block.timestamp
    require msg.value != 0
    require msg.value >= minimumParticipationAmount
    require not stor9
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require stor7 * msg.value / msg.value == stor7
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFromContract(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, stor7 * msg.value
    require ext_call.success
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    emit TokenPurchase(msg.value, stor7 * msg.value, msg.sender, msg.sender);
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    if startDate > block.timestamp:
        require startDate <= block.timestamp
    else:
        require endDate >= block.timestamp
    require msg.value != 0
    require msg.value >= minimumParticipationAmount
    require not stor9
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require stor7 * msg.value / msg.value == stor7
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFromContract(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), stor7 * msg.value
    require ext_call.success
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    emit TokenPurchase(msg.value, stor7 * msg.value, msg.sender, arg1);
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
