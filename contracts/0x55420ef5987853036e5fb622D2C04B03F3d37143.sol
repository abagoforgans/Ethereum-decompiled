contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address managerAddress;
address walletAddress;
uint256 weiRaised;
uint256 tokenSold;

function weiRaised() {
    return weiRaised
}

function manager() {
    return managerAddress
}

function tokenSold() {
    return tokenSold
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function price() {
    if tokenSold < 6000000 * 10^18:
        return 57
    if tokenSold < 15000000 * 10^18:
        return 72
    if tokenSold >= 25500000:
        return 100
    return 86
}

function allocate(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokenSold + arg2 >= tokenSold
    tokenSold += arg2
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require ext_code.size(managerAddress)
    call managerAddress.ethusd() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    if tokenSold < 6000000 * 10^18:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), msg.value * ext_call.return_data[0] / 57
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokenSold + (msg.value * ext_call.return_data[0] / 57) >= tokenSold
        tokenSold += msg.value * ext_call.return_data[0] / 57
        emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 57, msg.sender, arg1);
    else:
        if tokenSold < 15000000 * 10^18:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), msg.value * ext_call.return_data[0] / 72
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require tokenSold + (msg.value * ext_call.return_data[0] / 72) >= tokenSold
            tokenSold += msg.value * ext_call.return_data[0] / 72
            emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 72, msg.sender, arg1);
        else:
            if tokenSold >= 25500000:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require tokenSold + (msg.value * ext_call.return_data[0] / 100) >= tokenSold
                tokenSold += msg.value * ext_call.return_data[0] / 100
                emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 100, msg.sender, arg1);
            else:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * ext_call.return_data[0] / 86
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require tokenSold + (msg.value * ext_call.return_data[0] / 86) >= tokenSold
                tokenSold += msg.value * ext_call.return_data[0] / 86
                emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 86, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require ext_code.size(managerAddress)
    call managerAddress.ethusd() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    if tokenSold < 6000000 * 10^18:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * ext_call.return_data[0] / 57
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokenSold + (msg.value * ext_call.return_data[0] / 57) >= tokenSold
        tokenSold += msg.value * ext_call.return_data[0] / 57
        emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 57, msg.sender, msg.sender);
    else:
        if tokenSold < 15000000 * 10^18:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * ext_call.return_data[0] / 72
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require tokenSold + (msg.value * ext_call.return_data[0] / 72) >= tokenSold
            tokenSold += msg.value * ext_call.return_data[0] / 72
            emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 72, msg.sender, msg.sender);
        else:
            if tokenSold >= 25500000:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require tokenSold + (msg.value * ext_call.return_data[0] / 100) >= tokenSold
                tokenSold += msg.value * ext_call.return_data[0] / 100
                emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 100, msg.sender, msg.sender);
            else:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * ext_call.return_data[0] / 86
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require tokenSold + (msg.value * ext_call.return_data[0] / 86) >= tokenSold
                tokenSold += msg.value * ext_call.return_data[0] / 86
                emit TokenPurchase(msg.value, msg.value * ext_call.return_data[0] / 86, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
