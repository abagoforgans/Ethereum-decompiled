contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor5; offset 160
address owner;
mapping of address referrals;
mapping of uint8 stor7;
uint8 stor8;
uint256 referralPercent;

function rate() {
    return rate
}

function referralPercent() {
    return referralPercent
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

function purchased(address arg1) {
    return bool(stor7[arg1])
}

function paused() {
    return bool(stor5)
}

function owner() {
    return owner
}

function referrals(address arg1) {
    return referrals[arg1]
}

function sub_a822b20e(?) {
    return bool(stor8)
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function sub_8932be4b(?) {
    require msg.sender == owner
    stor8 = 0
}

function sub_a91818ca(?) {
    require msg.sender == owner
    stor8 = 1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function unpause() {
    require msg.sender == owner
    require stor5
    stor5 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setReferralPercent(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    referralPercent = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7549dbc(?) payable {
    require not stor5
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 == bool(stor8):
        if arg2:
            if not stor7[address(arg1)]:
                referrals[address(arg1)] = arg2
        if referrals[address(arg1)]:
            if not msg.value:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args referrals[address(arg1)], 0
            else:
                require rate * msg.value / msg.value == rate
                if not rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args referrals[address(arg1)], 0
                else:
                    require referralPercent * rate * msg.value / rate * msg.value == referralPercent
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args referrals[address(arg1)], referralPercent * rate * msg.value / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if not stor7[address(arg1)]:
        stor7[address(arg1)] = 1
}



}
