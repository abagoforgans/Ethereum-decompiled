contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint256 initialRate;
uint256 finalRate;
mapping of uint256 balanceOf;
address owner;
address stor11;
uint256 stor12;
uint256 tokenSold;

function finalRate() {
    return finalRate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function tokenSold() {
    return tokenSold
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function initialRate() {
    return initialRate
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function rate() {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1) {
    require block.timestamp > closingTime
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function recoverToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getCurrentRate() {
    if block.timestamp < openingTime:
        return 0
    if block.timestamp > closingTime:
        return 0
    require openingTime <= block.timestamp
    require openingTime <= closingTime
    require finalRate <= initialRate
    if not block.timestamp - openingTime:
        require closingTime - openingTime > 0
        require closingTime - openingTime
        require 0 / closingTime - openingTime <= initialRate
        return (initialRate - (0 / closingTime - openingTime))
    require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
    require closingTime - openingTime > 0
    require closingTime - openingTime
    require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
    return (initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime))
}

function buyTokens(address arg1) payable {
    stor0++
    if block.timestamp < openingTime:
        require ext_code.size(stor11)
        call stor11.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] - tokenSold
            require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold != 10^13
            revert
    else:
        if block.timestamp <= closingTime:
            require openingTime <= block.timestamp
            require openingTime <= closingTime
            require finalRate <= initialRate
            if block.timestamp - openingTime:
                require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                require ext_code.size(stor11)
                call stor11.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ext_call.return_data[0] - tokenSold:
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold == 10^13
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        if msg.value < (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                    else:
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                        require 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        if msg.value < 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
            else:
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require 0 / closingTime - openingTime <= initialRate
                require ext_code.size(stor11)
                call stor11.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ext_call.return_data[0] - tokenSold:
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold == 10^13
                        require initialRate - (0 / closingTime - openingTime) > 0
                        require initialRate - (0 / closingTime - openingTime)
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime) > 0
                        if msg.value < (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                    else:
                        require initialRate - (0 / closingTime - openingTime) > 0
                        require initialRate - (0 / closingTime - openingTime)
                        require 0 / initialRate - (0 / closingTime - openingTime) > 0
                        if msg.value < 0 / initialRate - (0 / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require arg1
                            require 0 / initialRate - (0 / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == 0 / initialRate - (0 / closingTime - openingTime)
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == 0 / initialRate - (0 / closingTime - openingTime)
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
        else:
            require ext_code.size(stor11)
            call stor11.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] - tokenSold
                require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold != 10^13
                revert
}

function _fallback() payable {
    stor0++
    if block.timestamp < openingTime:
        require ext_code.size(stor11)
        call stor11.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] - tokenSold
            require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold != 10^13
            revert
    else:
        if block.timestamp <= closingTime:
            require openingTime <= block.timestamp
            require openingTime <= closingTime
            require finalRate <= initialRate
            if block.timestamp - openingTime:
                require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                require ext_code.size(stor11)
                call stor11.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ext_call.return_data[0] - tokenSold:
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold == 10^13
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        if msg.value < (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                    else:
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        require initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                        require 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) > 0
                        if msg.value < 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), (initialRate * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require (0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += 0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased(0 / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime), 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
            else:
                require closingTime - openingTime > 0
                require closingTime - openingTime
                require 0 / closingTime - openingTime <= initialRate
                require ext_code.size(stor11)
                call stor11.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if ext_call.return_data[0] - tokenSold:
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold == 10^13
                        require initialRate - (0 / closingTime - openingTime) > 0
                        require initialRate - (0 / closingTime - openingTime)
                        require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime) > 0
                        if msg.value < (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), (initialRate * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require ((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased((10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                    else:
                        require initialRate - (0 / closingTime - openingTime) > 0
                        require initialRate - (0 / closingTime - openingTime)
                        require 0 / initialRate - (0 / closingTime - openingTime) > 0
                        if msg.value < 0 / initialRate - (0 / closingTime - openingTime):
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require msg.value
                            if block.timestamp < openingTime:
                                require msg.value + stor12 >= stor12
                                stor12 += msg.value
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / initialRate - (0 / closingTime - openingTime) == msg.value
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            require ((initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13
                                            emit TokensPurchased(msg.value, (initialRate * msg.value) - (0 / closingTime - openingTime * msg.value) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require msg.value + stor12 >= stor12
                                            stor12 += msg.value
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require msg.value + stor12 >= stor12
                                    stor12 += msg.value
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
                        else:
                            require block.timestamp >= openingTime
                            require block.timestamp <= closingTime
                            require msg.sender
                            require 0 / initialRate - (0 / closingTime - openingTime)
                            if block.timestamp < openingTime:
                                require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                require tokenSold >= tokenSold
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require stor0 + 1 == stor0
                            else:
                                if block.timestamp <= closingTime:
                                    require openingTime <= block.timestamp
                                    require openingTime <= closingTime
                                    require finalRate <= initialRate
                                    if block.timestamp - openingTime:
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / block.timestamp - openingTime == initialRate - finalRate
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require (block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime <= initialRate
                                        if initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / initialRate - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime) == 0 / initialRate - (0 / closingTime - openingTime)
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - ((block.timestamp * initialRate) - (openingTime * initialRate) - (block.timestamp * finalRate) + (openingTime * finalRate) / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                    else:
                                        require closingTime - openingTime > 0
                                        require closingTime - openingTime
                                        require 0 / closingTime - openingTime <= initialRate
                                        if initialRate - (0 / closingTime - openingTime):
                                            require (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / initialRate - (0 / closingTime - openingTime) == 0 / initialRate - (0 / closingTime - openingTime)
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + tokenSold >= tokenSold
                                            tokenSold += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            require ((initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), (initialRate * 0 / initialRate - (0 / closingTime - openingTime)) - (0 / closingTime - openingTime * 0 / initialRate - (0 / closingTime - openingTime)) / 10^13, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                        else:
                                            require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                            stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                            require tokenSold >= tokenSold
                                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 + 1 == stor0
                                else:
                                    require (0 / initialRate - (0 / closingTime - openingTime)) + stor12 >= stor12
                                    stor12 += 0 / initialRate - (0 / closingTime - openingTime)
                                    require tokenSold >= tokenSold
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit TokensPurchased(0 / initialRate - (0 / closingTime - openingTime), 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require stor0 + 1 == stor0
        else:
            require ext_code.size(stor11)
            call stor11.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] - tokenSold
                require (10^13 * ext_call.return_data[0]) - (10^13 * tokenSold) / ext_call.return_data[0] - tokenSold != 10^13
                revert
}



}
