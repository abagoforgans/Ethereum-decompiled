contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address stor4;
address stor5;
mapping of uint256 sub_59ad5ac5;
mapping of uint256 sub_9db22f71;
mapping of uint256 sub_572d6520;
address stor9;
address stor10;
uint256 tokensSold;
uint256 bonusTokensSold;
uint256 tokenCap;
uint256 bonusCap;
uint256 bonusRate;
uint256 openingTime;
uint256 closingTime;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function sub_572d6520(?) {
    return sub_572d6520[arg1]
}

function sub_59ad5ac5(?) {
    return sub_59ad5ac5[arg1]
}

function bonusRate() {
    return bonusRate
}

function sub_9db22f71(?) {
    return sub_9db22f71[arg1]
}

function openingTime() {
    return openingTime
}

function tokenCap() {
    return tokenCap
}

function bonusCap() {
    return bonusCap
}

function bonusTokensSold() {
    return bonusTokensSold
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function setAdmin(address arg1) {
    require stor4
    require msg.sender == stor4
    require arg1
    stor5 = arg1
}

function capReached() {
    require tokensSold + bonusTokensSold >= tokensSold
    return tokensSold + bonusTokensSold >= tokenCap
}

function sub_d7d57b52(?) {
    require stor4
    require stor5
    if stor4 != msg.sender:
        require msg.sender == stor5
    require sub_9db22f71[arg1] + sub_572d6520[arg1] >= sub_9db22f71[arg1]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), sub_9db22f71[arg1] + sub_572d6520[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverTokens() {
    require stor4
    require stor5
    if stor4 != msg.sender:
        require msg.sender == stor5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require openingTime <= block.timestamp
    require block.timestamp <= closingTime
    require tokensSold + bonusTokensSold >= tokensSold
    require tokensSold + bonusTokensSold < tokenCap
    require arg1
    require msg.value
    require ext_code.size(stor9)
    call stor9.addressInWhitelist(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    require ext_code.size(stor9)
    call stor9.0x45377d59 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require sub_9db22f71[ext_call.return_data[0]] >= sub_9db22f71[ext_call.return_data[0]]
        require tokensSold >= tokensSold
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require sub_9db22f71[ext_call.return_data[0]] + (msg.value * rate) >= sub_9db22f71[ext_call.return_data[0]]
        sub_9db22f71[ext_call.return_data[0]] += msg.value * rate
        require tokensSold + (msg.value * rate) >= tokensSold
        tokensSold += msg.value * rate
    require ext_code.size(stor10)
    call stor10.0xbdbc01e4 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if not msg.value:
            require sub_572d6520[ext_call.return_data[0]] >= sub_572d6520[ext_call.return_data[0]]
            require bonusTokensSold >= bonusTokensSold
            require sub_572d6520[ext_call.return_data[32]] >= sub_572d6520[ext_call.return_data[32]]
            if sub_572d6520[ext_call.return_data[32]] >= bonusCap:
                require bonusTokensSold >= bonusTokensSold
            else:
                if sub_572d6520[ext_call.return_data[32]] < bonusCap:
                    require sub_572d6520[ext_call.return_data[32]] >= sub_572d6520[ext_call.return_data[32]]
                    require bonusTokensSold >= bonusTokensSold
                else:
                    require sub_572d6520[ext_call.return_data[32]] <= bonusCap
                    require bonusCap >= sub_572d6520[ext_call.return_data[32]]
                    sub_572d6520[ext_call.return_data[32]] = bonusCap
                    require bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]] >= bonusTokensSold
                    bonusTokensSold = bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]]
        else:
            require msg.value
            require msg.value * bonusRate / msg.value == bonusRate
            require sub_572d6520[ext_call.return_data[0]] + (msg.value * bonusRate) >= sub_572d6520[ext_call.return_data[0]]
            sub_572d6520[ext_call.return_data[0]] += msg.value * bonusRate
            require bonusTokensSold + (msg.value * bonusRate) >= bonusTokensSold
            bonusTokensSold += msg.value * bonusRate
            if sub_572d6520[ext_call.return_data[32]] >= bonusCap:
                require sub_572d6520[ext_call.return_data[32]] >= sub_572d6520[ext_call.return_data[32]]
                require bonusTokensSold >= bonusTokensSold
            else:
                require sub_572d6520[ext_call.return_data[32]] + (msg.value * bonusRate) >= sub_572d6520[ext_call.return_data[32]]
                if sub_572d6520[ext_call.return_data[32]] + (msg.value * bonusRate) < bonusCap:
                    require sub_572d6520[ext_call.return_data[32]] + (msg.value * bonusRate) >= sub_572d6520[ext_call.return_data[32]]
                    sub_572d6520[ext_call.return_data[32]] += msg.value * bonusRate
                    require bonusTokensSold + (msg.value * bonusRate) >= bonusTokensSold
                    bonusTokensSold += msg.value * bonusRate
                else:
                    require sub_572d6520[ext_call.return_data[32]] <= bonusCap
                    require bonusCap >= sub_572d6520[ext_call.return_data[32]]
                    sub_572d6520[ext_call.return_data[32]] = bonusCap
                    require bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]] >= bonusTokensSold
                    bonusTokensSold = bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]]
    require ext_code.size(stor9)
    call stor9.0x45377d59 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_59ad5ac5[ext_call.return_data[0]] + msg.value >= sub_59ad5ac5[ext_call.return_data[0]]
    sub_59ad5ac5[ext_call.return_data[0]] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require openingTime <= block.timestamp
    require block.timestamp <= closingTime
    require tokensSold + bonusTokensSold >= tokensSold
    require tokensSold + bonusTokensSold < tokenCap
    require msg.sender
    require msg.value
    require ext_code.size(stor9)
    call stor9.addressInWhitelist(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    require ext_code.size(stor9)
    call stor9.0x45377d59 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require sub_9db22f71[ext_call.return_data[0]] >= sub_9db22f71[ext_call.return_data[0]]
        require tokensSold >= tokensSold
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require sub_9db22f71[ext_call.return_data[0]] + (msg.value * rate) >= sub_9db22f71[ext_call.return_data[0]]
        sub_9db22f71[ext_call.return_data[0]] += msg.value * rate
        require tokensSold + (msg.value * rate) >= tokensSold
        tokensSold += msg.value * rate
    require ext_code.size(stor10)
    call stor10.0xbdbc01e4 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if not msg.value:
            require sub_572d6520[ext_call.return_data[0]] >= sub_572d6520[ext_call.return_data[0]]
            require bonusTokensSold >= bonusTokensSold
            require sub_572d6520[ext_call.return_data[32]] >= sub_572d6520[ext_call.return_data[32]]
            if sub_572d6520[ext_call.return_data[32]] >= bonusCap:
                require bonusTokensSold >= bonusTokensSold
            else:
                if sub_572d6520[ext_call.return_data[32]] < bonusCap:
                    require sub_572d6520[ext_call.return_data[32]] >= sub_572d6520[ext_call.return_data[32]]
                    require bonusTokensSold >= bonusTokensSold
                else:
                    require sub_572d6520[ext_call.return_data[32]] <= bonusCap
                    require bonusCap >= sub_572d6520[ext_call.return_data[32]]
                    sub_572d6520[ext_call.return_data[32]] = bonusCap
                    require bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]] >= bonusTokensSold
                    bonusTokensSold = bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]]
        else:
            require msg.value
            require msg.value * bonusRate / msg.value == bonusRate
            require sub_572d6520[ext_call.return_data[0]] + (msg.value * bonusRate) >= sub_572d6520[ext_call.return_data[0]]
            sub_572d6520[ext_call.return_data[0]] += msg.value * bonusRate
            require bonusTokensSold + (msg.value * bonusRate) >= bonusTokensSold
            bonusTokensSold += msg.value * bonusRate
            if sub_572d6520[ext_call.return_data[32]] >= bonusCap:
                require sub_572d6520[ext_call.return_data[32]] >= sub_572d6520[ext_call.return_data[32]]
                require bonusTokensSold >= bonusTokensSold
            else:
                require sub_572d6520[ext_call.return_data[32]] + (msg.value * bonusRate) >= sub_572d6520[ext_call.return_data[32]]
                if sub_572d6520[ext_call.return_data[32]] + (msg.value * bonusRate) < bonusCap:
                    require sub_572d6520[ext_call.return_data[32]] + (msg.value * bonusRate) >= sub_572d6520[ext_call.return_data[32]]
                    sub_572d6520[ext_call.return_data[32]] += msg.value * bonusRate
                    require bonusTokensSold + (msg.value * bonusRate) >= bonusTokensSold
                    bonusTokensSold += msg.value * bonusRate
                else:
                    require sub_572d6520[ext_call.return_data[32]] <= bonusCap
                    require bonusCap >= sub_572d6520[ext_call.return_data[32]]
                    sub_572d6520[ext_call.return_data[32]] = bonusCap
                    require bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]] >= bonusTokensSold
                    bonusTokensSold = bonusTokensSold + bonusCap - sub_572d6520[ext_call.return_data[32]]
    require ext_code.size(stor9)
    call stor9.0x45377d59 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_59ad5ac5[ext_call.return_data[0]] + msg.value >= sub_59ad5ac5[ext_call.return_data[0]]
    sub_59ad5ac5[ext_call.return_data[0]] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
