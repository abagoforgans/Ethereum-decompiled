contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    require code.data[2407 len 32] >= block.timestamp
    require code.data[2439 len 32] >= code.data[2407 len 32]
    stor2 = code.data[2407 len 32]
    stor3 = code.data[2439 len 32]
    stor5 = 10000
    stor4 = 0x942b56e5a6e92b39643dcb5f232ef583680f0b01
    stor1 = 0
    stor7 = 2000 * 10^18
    stor1 = code.data[2483 len 20]
    return code.data[352 len 2055]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;

function rate() {
    return rate
}

function endTime() {
    return endTime
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

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function drainRemainingToken() {
    require owner == msg.sender
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x942b56e5a6e92b39643dcb5f232ef583680f0b01, ext_call.return_data[0]
    require ext_call.success
}

function getBonus(uint256 arg1) {
    require arg1
    if startTime <= block.timestamp:
        if block.timestamp < startTime + (24 * 3600):
            return (arg1 / 5)
    if startTime + (24 * 3600) <= block.timestamp:
        if block.timestamp < startTime + (48 * 24 * 3600):
            if not arg1:
                return (3 * arg1 / 20)
            require arg1
            require 3 * arg1 / arg1 == 3
            return (3 * arg1 / 20)
    if startTime + (48 * 24 * 3600) <= block.timestamp:
        if block.timestamp < startTime + (72 * 24 * 3600):
            return (arg1 / 10)
    if startTime + (72 * 24 * 3600) > block.timestamp:
        return 0
    if block.timestamp >= startTime + (96 * 24 * 3600):
        return 0
    return (arg1 / 20)
}

function buyTokens() payable {
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require rate * msg.value
    if startTime > block.timestamp:
        if startTime + (24 * 3600) > block.timestamp:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            if startTime + (48 * 24 * 3600) > block.timestamp:
                if startTime + (72 * 24 * 3600) > block.timestamp:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, rate * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                else:
                    if block.timestamp >= startTime + (96 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
            else:
                if block.timestamp < startTime + (72 * 24 * 3600):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                else:
                    if startTime + (72 * 24 * 3600) > block.timestamp:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        if block.timestamp >= startTime + (96 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
        else:
            if block.timestamp < startTime + (48 * 24 * 3600):
                if rate * msg.value:
                    require rate * msg.value
                    require 3 * rate * msg.value / rate * msg.value == 3
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 20)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20), msg.sender);
            else:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                if startTime + (48 * 24 * 3600) > block.timestamp:
                    if startTime + (72 * 24 * 3600) > block.timestamp:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        if block.timestamp >= startTime + (96 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
                else:
                    if block.timestamp < startTime + (72 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                    else:
                        if startTime + (72 * 24 * 3600) > block.timestamp:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            if block.timestamp >= startTime + (96 * 24 * 3600):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
    else:
        if block.timestamp < startTime + (24 * 3600):
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (rate * msg.value / 5)
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 5), msg.sender);
        else:
            if startTime + (24 * 3600) > block.timestamp:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                if startTime + (48 * 24 * 3600) > block.timestamp:
                    if startTime + (72 * 24 * 3600) > block.timestamp:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        if block.timestamp >= startTime + (96 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
                else:
                    if block.timestamp < startTime + (72 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                    else:
                        if startTime + (72 * 24 * 3600) > block.timestamp:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            if block.timestamp >= startTime + (96 * 24 * 3600):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
            else:
                if block.timestamp < startTime + (48 * 24 * 3600):
                    if rate * msg.value:
                        require rate * msg.value
                        require 3 * rate * msg.value / rate * msg.value == 3
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 20)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20), msg.sender);
                else:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    if startTime + (48 * 24 * 3600) > block.timestamp:
                        if startTime + (72 * 24 * 3600) > block.timestamp:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            if block.timestamp >= startTime + (96 * 24 * 3600):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
                    else:
                        if block.timestamp < startTime + (72 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                        else:
                            if startTime + (72 * 24 * 3600) > block.timestamp:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                if block.timestamp >= startTime + (96 * 24 * 3600):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, rate * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                                else:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit CrowdSaleTokenSoldout()
}

function _fallback() payable {
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require rate * msg.value
    if startTime > block.timestamp:
        if startTime + (24 * 3600) > block.timestamp:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            if startTime + (48 * 24 * 3600) > block.timestamp:
                if startTime + (72 * 24 * 3600) > block.timestamp:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, rate * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                else:
                    if block.timestamp >= startTime + (96 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
            else:
                if block.timestamp < startTime + (72 * 24 * 3600):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                else:
                    if startTime + (72 * 24 * 3600) > block.timestamp:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        if block.timestamp >= startTime + (96 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
        else:
            if block.timestamp < startTime + (48 * 24 * 3600):
                if rate * msg.value:
                    require rate * msg.value
                    require 3 * rate * msg.value / rate * msg.value == 3
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 20)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20), msg.sender);
            else:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                if startTime + (48 * 24 * 3600) > block.timestamp:
                    if startTime + (72 * 24 * 3600) > block.timestamp:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        if block.timestamp >= startTime + (96 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
                else:
                    if block.timestamp < startTime + (72 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                    else:
                        if startTime + (72 * 24 * 3600) > block.timestamp:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            if block.timestamp >= startTime + (96 * 24 * 3600):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
    else:
        if block.timestamp < startTime + (24 * 3600):
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (rate * msg.value / 5)
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 5), msg.sender);
        else:
            if startTime + (24 * 3600) > block.timestamp:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                if startTime + (48 * 24 * 3600) > block.timestamp:
                    if startTime + (72 * 24 * 3600) > block.timestamp:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                    else:
                        if block.timestamp >= startTime + (96 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
                else:
                    if block.timestamp < startTime + (72 * 24 * 3600):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                    else:
                        if startTime + (72 * 24 * 3600) > block.timestamp:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            if block.timestamp >= startTime + (96 * 24 * 3600):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
            else:
                if block.timestamp < startTime + (48 * 24 * 3600):
                    if rate * msg.value:
                        require rate * msg.value
                        require 3 * rate * msg.value / rate * msg.value == 3
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 20)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20), msg.sender);
                else:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    if startTime + (48 * 24 * 3600) > block.timestamp:
                        if startTime + (72 * 24 * 3600) > block.timestamp:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                        else:
                            if block.timestamp >= startTime + (96 * 24 * 3600):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
                    else:
                        if block.timestamp < startTime + (72 * 24 * 3600):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (rate * msg.value / 10)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 10), msg.sender);
                        else:
                            if startTime + (72 * 24 * 3600) > block.timestamp:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                            else:
                                if block.timestamp >= startTime + (96 * 24 * 3600):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, rate * msg.value
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
                                else:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (rate * msg.value) + (rate * msg.value / 20)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20), msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit CrowdSaleTokenSoldout()
}



}
