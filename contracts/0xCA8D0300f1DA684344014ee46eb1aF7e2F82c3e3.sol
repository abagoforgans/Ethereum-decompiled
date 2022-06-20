contract main {




// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 10^16


uint8 stor0; offset 160
address owner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 bonusPercent;
uint256 weiRaised;
uint256 stage;
uint8 stor7;
mapping of uint256 balances;
mapping of uint256 parts;
uint256 tokensIssued;

function balances(address arg1) {
    return balances[arg1]
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

function paused() {
    return bool(stor0)
}

function parts(address arg1) {
    return parts[arg1]
}

function tokensIssued() {
    return tokensIssued
}

function owner() {
    return owner
}

function bonusPercent() {
    return bonusPercent
}

function stage() {
    return stage
}

function token() {
    return tokenAddress
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
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

function finalize() {
    require msg.sender == owner
    if stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't process. Crowdsale is finalized'
    stor7 = 1
}

function unpause(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require stor0
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
    stage = arg1
    bonusPercent = arg2
}

function addTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    if stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't process. Crowdsale is finalized'
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require arg2 + tokensIssued >= tokensIssued
    tokensIssued += arg2
    emit TokenAdded(arg2, arg1);
}

function withdrawTokens() {
    if not stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't process. Crowdsale is not finalized'
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    emit TokenDelivered(balances[address(msg.sender)], msg.sender);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, balances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require msg.value
    if msg.value < 10^16:
        revert with 0, 'Minimal invest 0.1 ETH'
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require balances[address(arg1)] >= balances[address(arg1)]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        if not rate * msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require balances[address(arg1)] >= balances[address(arg1)]
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require (100 * rate * msg.value) + (bonusPercent * rate * msg.value) / rate * msg.value == bonusPercent + 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ((100 * rate * msg.value) + (bonusPercent * rate * msg.value) / 100) + balances[address(arg1)] >= balances[address(arg1)]
            balances[address(arg1)] += (100 * rate * msg.value) + (bonusPercent * rate * msg.value) / 100
            emit TokenPurchase(msg.value, (100 * rate * msg.value) + (bonusPercent * rate * msg.value) / 100, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require msg.value
    if msg.value < 10^16:
        revert with 0, 'Minimal invest 0.1 ETH'
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        if not rate * msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require balances[address(msg.sender)] >= balances[address(msg.sender)]
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require (100 * rate * msg.value) + (bonusPercent * rate * msg.value) / rate * msg.value == bonusPercent + 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ((100 * rate * msg.value) + (bonusPercent * rate * msg.value) / 100) + balances[address(msg.sender)] >= balances[address(msg.sender)]
            balances[address(msg.sender)] += (100 * rate * msg.value) + (bonusPercent * rate * msg.value) / 100
            emit TokenPurchase(msg.value, (100 * rate * msg.value) + (bonusPercent * rate * msg.value) / 100, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
