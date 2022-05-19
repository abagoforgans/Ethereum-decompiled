contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address xcertKycAddress;
uint256 startTimePresale;
uint256 startTimeSaleWithBonus;
uint256 startTimeSaleNoBonus;
uint256 bonusPresale;
uint256 bonusSale;
uint256 endTime;
uint256 minimumPresaleWeiDeposit;
uint256 preSaleZxcCap;
uint256 crowdSaleZxcSupply;
uint256 zxcSold;
address walletAddress;
uint256 rate;

function preSaleZxcCap() {
    return preSaleZxcCap
}

function bonusPresale() {
    return bonusPresale
}

function bonusSale() {
    return bonusSale
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function wallet() {
    return walletAddress
}

function startTimePresale() {
    return startTimePresale
}

function xcertKyc() {
    return xcertKycAddress
}

function crowdSaleZxcSupply() {
    return crowdSaleZxcSupply
}

function zxcSold() {
    return zxcSold
}

function startTimeSaleNoBonus() {
    return startTimeSaleNoBonus
}

function minimumPresaleWeiDeposit() {
    return minimumPresaleWeiDeposit
}

function startTimeSaleWithBonus() {
    return startTimeSaleWithBonus
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if zxcSold >= crowdSaleZxcSupply:
        return zxcSold >= crowdSaleZxcSupply
    return block.timestamp >= endTime
}

function buyTokens() payable {
    require ext_code.size(xcertKycAddress)
    call xcertKycAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(xcertKycAddress)
    call xcertKycAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(xcertKycAddress)
    call xcertKycAddress.tokenDataValue(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < startTimePresale:
        if block.timestamp < startTimeSaleWithBonus:
            if block.timestamp < startTimeSaleNoBonus:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
            if block.timestamp >= endTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
            require ext_call.return_data[0] > 0
            if not msg.value:
                require zxcSold >= zxcSold
                require zxcSold <= crowdSaleZxcSupply
                require zxcSold >= zxcSold
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require zxcSold + (msg.value * rate) >= zxcSold
                require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                require zxcSold + (msg.value * rate) >= zxcSold
                zxcSold += msg.value * rate
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        else:
            if block.timestamp >= startTimeSaleNoBonus:
                if block.timestamp < startTimeSaleNoBonus:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                if block.timestamp >= endTime:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                require ext_call.return_data[0] > 0
                if not msg.value:
                    require zxcSold >= zxcSold
                    require zxcSold <= crowdSaleZxcSupply
                    require zxcSold >= zxcSold
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                    require zxcSold + (msg.value * rate) >= zxcSold
                    zxcSold += msg.value * rate
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                require ext_call.return_data[0] > 0
                if not msg.value:
                    require zxcSold >= zxcSold
                    require zxcSold <= crowdSaleZxcSupply
                    require zxcSold >= zxcSold
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    if bonusSale <= 0:
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) >= zxcSold
                        zxcSold += msg.value * rate
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    else:
                        if not msg.value * rate:
                            require msg.value * rate >= msg.value * rate
                            require zxcSold + (msg.value * rate) >= zxcSold
                            require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                            require zxcSold + (msg.value * rate) >= zxcSold
                            zxcSold += msg.value * rate
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        else:
                            require msg.value * rate
                            require msg.value * rate * bonusSale / msg.value * rate == bonusSale
                            require (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= msg.value * rate
                            require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                            require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) <= crowdSaleZxcSupply
                            require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                            zxcSold = zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), msg.sender, (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * bonusSale / 100), msg.sender, msg.sender);
    else:
        if block.timestamp >= startTimeSaleWithBonus:
            if block.timestamp < startTimeSaleWithBonus:
                if block.timestamp < startTimeSaleNoBonus:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                if block.timestamp >= endTime:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                require ext_call.return_data[0] > 0
                if not msg.value:
                    require zxcSold >= zxcSold
                    require zxcSold <= crowdSaleZxcSupply
                    require zxcSold >= zxcSold
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                    require zxcSold + (msg.value * rate) >= zxcSold
                    zxcSold += msg.value * rate
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                if block.timestamp >= startTimeSaleNoBonus:
                    if block.timestamp < startTimeSaleNoBonus:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                    if block.timestamp >= endTime:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                    require ext_call.return_data[0] > 0
                    if not msg.value:
                        require zxcSold >= zxcSold
                        require zxcSold <= crowdSaleZxcSupply
                        require zxcSold >= zxcSold
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) >= zxcSold
                        zxcSold += msg.value * rate
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                else:
                    require ext_call.return_data[0] > 0
                    if not msg.value:
                        require zxcSold >= zxcSold
                        require zxcSold <= crowdSaleZxcSupply
                        require zxcSold >= zxcSold
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        if bonusSale <= 0:
                            require zxcSold + (msg.value * rate) >= zxcSold
                            require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                            require zxcSold + (msg.value * rate) >= zxcSold
                            zxcSold += msg.value * rate
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        else:
                            if not msg.value * rate:
                                require msg.value * rate >= msg.value * rate
                                require zxcSold + (msg.value * rate) >= zxcSold
                                require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                                require zxcSold + (msg.value * rate) >= zxcSold
                                zxcSold += msg.value * rate
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            else:
                                require msg.value * rate
                                require msg.value * rate * bonusSale / msg.value * rate == bonusSale
                                require (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= msg.value * rate
                                require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                                require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) <= crowdSaleZxcSupply
                                require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                                zxcSold = zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), msg.sender, (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * bonusSale / 100), msg.sender, msg.sender);
        else:
            require ext_call.return_data[0] > 1
            require msg.value >= minimumPresaleWeiDeposit
            if not msg.value:
                require zxcSold >= zxcSold
                require zxcSold <= preSaleZxcCap
                require zxcSold >= zxcSold
                require zxcSold <= crowdSaleZxcSupply
                require zxcSold >= zxcSold
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                if bonusPresale <= 0:
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= preSaleZxcCap
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                    require zxcSold + (msg.value * rate) >= zxcSold
                    zxcSold += msg.value * rate
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                else:
                    if not msg.value * rate:
                        require msg.value * rate >= msg.value * rate
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= preSaleZxcCap
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) >= zxcSold
                        zxcSold += msg.value * rate
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    else:
                        require msg.value * rate
                        require msg.value * rate * bonusPresale / msg.value * rate == bonusPresale
                        require (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= msg.value * rate
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= zxcSold
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) <= preSaleZxcCap
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= zxcSold
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= zxcSold
                        zxcSold = zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100)
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, (msg.value * rate) + (msg.value * rate * bonusPresale / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * bonusPresale / 100), msg.sender, msg.sender);
}

function _fallback() payable {
    require ext_code.size(xcertKycAddress)
    call xcertKycAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(xcertKycAddress)
    call xcertKycAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(xcertKycAddress)
    call xcertKycAddress.tokenDataValue(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < startTimePresale:
        if block.timestamp < startTimeSaleWithBonus:
            if block.timestamp < startTimeSaleNoBonus:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
            if block.timestamp >= endTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
            require ext_call.return_data[0] > 0
            if not msg.value:
                require zxcSold >= zxcSold
                require zxcSold <= crowdSaleZxcSupply
                require zxcSold >= zxcSold
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require zxcSold + (msg.value * rate) >= zxcSold
                require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                require zxcSold + (msg.value * rate) >= zxcSold
                zxcSold += msg.value * rate
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        else:
            if block.timestamp >= startTimeSaleNoBonus:
                if block.timestamp < startTimeSaleNoBonus:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                if block.timestamp >= endTime:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                require ext_call.return_data[0] > 0
                if not msg.value:
                    require zxcSold >= zxcSold
                    require zxcSold <= crowdSaleZxcSupply
                    require zxcSold >= zxcSold
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                    require zxcSold + (msg.value * rate) >= zxcSold
                    zxcSold += msg.value * rate
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                require ext_call.return_data[0] > 0
                if not msg.value:
                    require zxcSold >= zxcSold
                    require zxcSold <= crowdSaleZxcSupply
                    require zxcSold >= zxcSold
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    if bonusSale <= 0:
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) >= zxcSold
                        zxcSold += msg.value * rate
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    else:
                        if not msg.value * rate:
                            require msg.value * rate >= msg.value * rate
                            require zxcSold + (msg.value * rate) >= zxcSold
                            require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                            require zxcSold + (msg.value * rate) >= zxcSold
                            zxcSold += msg.value * rate
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        else:
                            require msg.value * rate
                            require msg.value * rate * bonusSale / msg.value * rate == bonusSale
                            require (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= msg.value * rate
                            require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                            require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) <= crowdSaleZxcSupply
                            require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                            zxcSold = zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), msg.sender, (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * bonusSale / 100), msg.sender, msg.sender);
    else:
        if block.timestamp >= startTimeSaleWithBonus:
            if block.timestamp < startTimeSaleWithBonus:
                if block.timestamp < startTimeSaleNoBonus:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                if block.timestamp >= endTime:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                require ext_call.return_data[0] > 0
                if not msg.value:
                    require zxcSold >= zxcSold
                    require zxcSold <= crowdSaleZxcSupply
                    require zxcSold >= zxcSold
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                    require zxcSold + (msg.value * rate) >= zxcSold
                    zxcSold += msg.value * rate
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            else:
                if block.timestamp >= startTimeSaleNoBonus:
                    if block.timestamp < startTimeSaleNoBonus:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                    if block.timestamp >= endTime:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase outside of token sale time windows'
                    require ext_call.return_data[0] > 0
                    if not msg.value:
                        require zxcSold >= zxcSold
                        require zxcSold <= crowdSaleZxcSupply
                        require zxcSold >= zxcSold
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) >= zxcSold
                        zxcSold += msg.value * rate
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                else:
                    require ext_call.return_data[0] > 0
                    if not msg.value:
                        require zxcSold >= zxcSold
                        require zxcSold <= crowdSaleZxcSupply
                        require zxcSold >= zxcSold
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        if bonusSale <= 0:
                            require zxcSold + (msg.value * rate) >= zxcSold
                            require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                            require zxcSold + (msg.value * rate) >= zxcSold
                            zxcSold += msg.value * rate
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x8da5cb5b with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        else:
                            if not msg.value * rate:
                                require msg.value * rate >= msg.value * rate
                                require zxcSold + (msg.value * rate) >= zxcSold
                                require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                                require zxcSold + (msg.value * rate) >= zxcSold
                                zxcSold += msg.value * rate
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            else:
                                require msg.value * rate
                                require msg.value * rate * bonusSale / msg.value * rate == bonusSale
                                require (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= msg.value * rate
                                require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                                require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) <= crowdSaleZxcSupply
                                require zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100) >= zxcSold
                                zxcSold = zxcSold + (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x8da5cb5b with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), msg.sender, (msg.value * rate) + (msg.value * rate * bonusSale / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * bonusSale / 100), msg.sender, msg.sender);
        else:
            require ext_call.return_data[0] > 1
            require msg.value >= minimumPresaleWeiDeposit
            if not msg.value:
                require zxcSold >= zxcSold
                require zxcSold <= preSaleZxcCap
                require zxcSold >= zxcSold
                require zxcSold <= crowdSaleZxcSupply
                require zxcSold >= zxcSold
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                if bonusPresale <= 0:
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= preSaleZxcCap
                    require zxcSold + (msg.value * rate) >= zxcSold
                    require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                    require zxcSold + (msg.value * rate) >= zxcSold
                    zxcSold += msg.value * rate
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                else:
                    if not msg.value * rate:
                        require msg.value * rate >= msg.value * rate
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= preSaleZxcCap
                        require zxcSold + (msg.value * rate) >= zxcSold
                        require zxcSold + (msg.value * rate) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) >= zxcSold
                        zxcSold += msg.value * rate
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    else:
                        require msg.value * rate
                        require msg.value * rate * bonusPresale / msg.value * rate == bonusPresale
                        require (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= msg.value * rate
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= zxcSold
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) <= preSaleZxcCap
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= zxcSold
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) <= crowdSaleZxcSupply
                        require zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100) >= zxcSold
                        zxcSold = zxcSold + (msg.value * rate) + (msg.value * rate * bonusPresale / 100)
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x8da5cb5b with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), msg.sender, (msg.value * rate) + (msg.value * rate * bonusPresale / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (msg.value * rate) + (msg.value * rate * bonusPresale / 100), msg.sender, msg.sender);
}



}
