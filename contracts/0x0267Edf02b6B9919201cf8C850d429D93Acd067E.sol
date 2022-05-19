contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address projectWalletAddress;
address founderWalletAddress;
uint256 weiRaised;
uint8 halted;
uint8 isFinalized; offset 8
uint256 minimumFundingGoal;
uint256 price;
address assetsAddress;
address stor11;
mapping of uint256 investedETH;

function minimumFundingGoal() {
    return minimumFundingGoal
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function assets() {
    return assetsAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function price() {
    return price
}

function founderWallet() {
    return founderWalletAddress
}

function halted() {
    return bool(halted)
}

function projectWallet() {
    return projectWalletAddress
}

function investedETH(address arg1) {
    return investedETH[arg1]
}

function token() {
    return tokenAddress
}

function halt() {
    require msg.sender == owner
    halted = 1
}

function minFundingGoalReached() {
    return weiRaised >= minimumFundingGoal
}

function unhalt() {
    require msg.sender == owner
    require halted
    halted = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function bonusPercent() {
    if block.timestamp < startTime + (72 * 24 * 3600):
        return 5
    if block.timestamp < startTime + (288 * 24 * 3600):
        return 3
    else:
        return 0
}

function validPurchase() {
    if block.timestamp < startTime:
        return 0
    if weiRaised < minimumFundingGoal:
        return 1
    if block.timestamp > endTime:
        return block.timestamp <= endTime
    return weiRaised >= minimumFundingGoal
}

function withdrowErc20(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit WithdrowErc20Token(arg3, arg1, arg2);
}

function sub_382cf8c1(?) payable {
    require not halted
    require arg1
    require msg.value >= 0
    require block.timestamp >= startTime
    if weiRaised >= minimumFundingGoal:
        require block.timestamp <= endTime
        require weiRaised >= minimumFundingGoal
    require ext_code.size(stor11)
    call stor11.0x63a9c3d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require investedETH[address(arg1)] + msg.value >= investedETH[address(arg1)]
    investedETH[address(arg1)] += msg.value
    if block.timestamp < startTime + (72 * 24 * 3600):
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args projectWalletAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args founderWalletAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(msg.value, 0, 0, msg.sender, arg1);
            require ext_code.size(assetsAddress)
            call assetsAddress.0x47e7ef24 with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require msg.value
            require msg.value * price / msg.value == price
            if not msg.value * price:
                require 0 <= msg.value * price
                if not msg.value * price:
                    require 0 <= msg.value * price
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args projectWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args founderWalletAddress, msg.value * price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                else:
                    require msg.value * price
                    require 666 * msg.value * price / msg.value * price == 666
                    require 0 <= msg.value * price
                    require 666 * msg.value * price / 1000 <= msg.value * price
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args projectWalletAddress, 666 * msg.value * price / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args founderWalletAddress, (msg.value * price) - (666 * msg.value * price / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokenPurchase(msg.value, msg.value * price, 666 * msg.value * price / 1000, msg.sender, arg1);
            else:
                require msg.value * price
                require 7 * msg.value * price / msg.value * price == 7
                if not 7 * msg.value * price / 10:
                    require 7 * msg.value * price / 10 >= 7 * msg.value * price / 10
                    require 7 * msg.value * price / 10 <= msg.value * price
                    if not (msg.value * price) - (7 * msg.value * price / 10):
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require 0 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                    else:
                        require (msg.value * price) - (7 * msg.value * price / 10)
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / (msg.value * price) - (7 * msg.value * price / 10) == 666
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000, msg.sender, arg1);
                else:
                    require 7 * msg.value * price / 10
                    require 5 * 7 * msg.value * price / 10 / 7 * msg.value * price / 10 == 5
                    require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) >= 7 * msg.value * price / 10
                    require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                    if not (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100):
                        require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                        require 0 <= (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                    else:
                        require (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100) == 666
                        require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000, msg.sender, arg1);
            require ext_code.size(assetsAddress)
            call assetsAddress.0x47e7ef24 with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.sender, msg.value * price
    else:
        if block.timestamp < startTime + (288 * 24 * 3600):
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args projectWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args founderWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 0, 0, msg.sender, arg1);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require msg.value
                require msg.value * price / msg.value == price
                if not msg.value * price:
                    require 0 <= msg.value * price
                    if not msg.value * price:
                        require 0 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, msg.value * price
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                    else:
                        require msg.value * price
                        require 666 * msg.value * price / msg.value * price == 666
                        require 0 <= msg.value * price
                        require 666 * msg.value * price / 1000 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 666 * msg.value * price / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (666 * msg.value * price / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 666 * msg.value * price / 1000, msg.sender, arg1);
                else:
                    require msg.value * price
                    require 7 * msg.value * price / msg.value * price == 7
                    if not 7 * msg.value * price / 10:
                        require 7 * msg.value * price / 10 >= 7 * msg.value * price / 10
                        require 7 * msg.value * price / 10 <= msg.value * price
                        if not (msg.value * price) - (7 * msg.value * price / 10):
                            require 7 * msg.value * price / 10 <= msg.value * price
                            require 0 <= (msg.value * price) - (7 * msg.value * price / 10)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 7 * msg.value * price / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                        else:
                            require (msg.value * price) - (7 * msg.value * price / 10)
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / (msg.value * price) - (7 * msg.value * price / 10) == 666
                            require 7 * msg.value * price / 10 <= msg.value * price
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 7 * msg.value * price / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000, msg.sender, arg1);
                    else:
                        require 7 * msg.value * price / 10
                        require 3 * 7 * msg.value * price / 10 / 7 * msg.value * price / 10 == 3
                        require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) >= 7 * msg.value * price / 10
                        require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                        if not (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100):
                            require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                            require 0 <= (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                        else:
                            require (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100) == 666
                            require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000, msg.sender, arg1);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, msg.value * price
        else:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args projectWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args founderWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 0, 0, msg.sender, arg1);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require msg.value
                require msg.value * price / msg.value == price
                if not msg.value * price:
                    require 0 <= msg.value * price
                    if not msg.value * price:
                        require 0 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, msg.value * price
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                    else:
                        require msg.value * price
                        require 666 * msg.value * price / msg.value * price == 666
                        require 0 <= msg.value * price
                        require 666 * msg.value * price / 1000 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 666 * msg.value * price / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (666 * msg.value * price / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 666 * msg.value * price / 1000, msg.sender, arg1);
                else:
                    require msg.value * price
                    require 7 * msg.value * price / msg.value * price == 7
                    if 7 * msg.value * price / 10:
                        require 7 * msg.value * price / 10
                        require not 0 / 7 * msg.value * price / 10
                    require 7 * msg.value * price / 10 >= 7 * msg.value * price / 10
                    require 7 * msg.value * price / 10 <= msg.value * price
                    if not (msg.value * price) - (7 * msg.value * price / 10):
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require 0 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, arg1);
                    else:
                        require (msg.value * price) - (7 * msg.value * price / 10)
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / (msg.value * price) - (7 * msg.value * price / 10) == 666
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000, msg.sender, arg1);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not halted
    require msg.sender
    require msg.value >= 0
    require block.timestamp >= startTime
    if weiRaised >= minimumFundingGoal:
        require block.timestamp <= endTime
        require weiRaised >= minimumFundingGoal
    require ext_code.size(stor11)
    call stor11.0x63a9c3d7 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require investedETH[address(msg.sender)] + msg.value >= investedETH[address(msg.sender)]
    investedETH[address(msg.sender)] += msg.value
    if block.timestamp < startTime + (72 * 24 * 3600):
        if not msg.value:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args projectWalletAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args founderWalletAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(msg.value, 0, 0, msg.sender, msg.sender);
            require ext_code.size(assetsAddress)
            call assetsAddress.0x47e7ef24 with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require msg.value
            require msg.value * price / msg.value == price
            if not msg.value * price:
                require 0 <= msg.value * price
                if not msg.value * price:
                    require 0 <= msg.value * price
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args projectWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args founderWalletAddress, msg.value * price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                else:
                    require msg.value * price
                    require 666 * msg.value * price / msg.value * price == 666
                    require 0 <= msg.value * price
                    require 666 * msg.value * price / 1000 <= msg.value * price
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args projectWalletAddress, 666 * msg.value * price / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args founderWalletAddress, (msg.value * price) - (666 * msg.value * price / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokenPurchase(msg.value, msg.value * price, 666 * msg.value * price / 1000, msg.sender, msg.sender);
            else:
                require msg.value * price
                require 7 * msg.value * price / msg.value * price == 7
                if not 7 * msg.value * price / 10:
                    require 7 * msg.value * price / 10 >= 7 * msg.value * price / 10
                    require 7 * msg.value * price / 10 <= msg.value * price
                    if not (msg.value * price) - (7 * msg.value * price / 10):
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require 0 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                    else:
                        require (msg.value * price) - (7 * msg.value * price / 10)
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / (msg.value * price) - (7 * msg.value * price / 10) == 666
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000, msg.sender, msg.sender);
                else:
                    require 7 * msg.value * price / 10
                    require 5 * 7 * msg.value * price / 10 / 7 * msg.value * price / 10 == 5
                    require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) >= 7 * msg.value * price / 10
                    require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                    if not (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100):
                        require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                        require 0 <= (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                    else:
                        require (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100) == 666
                        require (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (7 * msg.value * price / 10) + (5 * 7 * msg.value * price / 10 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (5 * 7 * msg.value * price / 10 / 100) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 5 * 7 * msg.value * price / 10 / 100) / 1000, msg.sender, msg.sender);
            require ext_code.size(assetsAddress)
            call assetsAddress.0x47e7ef24 with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.sender, msg.value * price
    else:
        if block.timestamp < startTime + (288 * 24 * 3600):
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args projectWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args founderWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 0, 0, msg.sender, msg.sender);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require msg.value
                require msg.value * price / msg.value == price
                if not msg.value * price:
                    require 0 <= msg.value * price
                    if not msg.value * price:
                        require 0 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, msg.value * price
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                    else:
                        require msg.value * price
                        require 666 * msg.value * price / msg.value * price == 666
                        require 0 <= msg.value * price
                        require 666 * msg.value * price / 1000 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 666 * msg.value * price / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (666 * msg.value * price / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 666 * msg.value * price / 1000, msg.sender, msg.sender);
                else:
                    require msg.value * price
                    require 7 * msg.value * price / msg.value * price == 7
                    if not 7 * msg.value * price / 10:
                        require 7 * msg.value * price / 10 >= 7 * msg.value * price / 10
                        require 7 * msg.value * price / 10 <= msg.value * price
                        if not (msg.value * price) - (7 * msg.value * price / 10):
                            require 7 * msg.value * price / 10 <= msg.value * price
                            require 0 <= (msg.value * price) - (7 * msg.value * price / 10)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 7 * msg.value * price / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                        else:
                            require (msg.value * price) - (7 * msg.value * price / 10)
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / (msg.value * price) - (7 * msg.value * price / 10) == 666
                            require 7 * msg.value * price / 10 <= msg.value * price
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 7 * msg.value * price / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000, msg.sender, msg.sender);
                    else:
                        require 7 * msg.value * price / 10
                        require 3 * 7 * msg.value * price / 10 / 7 * msg.value * price / 10 == 3
                        require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) >= 7 * msg.value * price / 10
                        require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                        if not (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100):
                            require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                            require 0 <= (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                        else:
                            require (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100) == 666
                            require (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100) <= msg.value * price
                            require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100)
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (7 * msg.value * price / 10) + (3 * 7 * msg.value * price / 10 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - (3 * 7 * msg.value * price / 10 / 100) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) - (666 * 3 * 7 * msg.value * price / 10 / 100) / 1000, msg.sender, msg.sender);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, msg.value * price
        else:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args projectWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args founderWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 0, 0, msg.sender, msg.sender);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require msg.value
                require msg.value * price / msg.value == price
                if not msg.value * price:
                    require 0 <= msg.value * price
                    if not msg.value * price:
                        require 0 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, msg.value * price
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                    else:
                        require msg.value * price
                        require 666 * msg.value * price / msg.value * price == 666
                        require 0 <= msg.value * price
                        require 666 * msg.value * price / 1000 <= msg.value * price
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 666 * msg.value * price / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (666 * msg.value * price / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 666 * msg.value * price / 1000, msg.sender, msg.sender);
                else:
                    require msg.value * price
                    require 7 * msg.value * price / msg.value * price == 7
                    if 7 * msg.value * price / 10:
                        require 7 * msg.value * price / 10
                        require not 0 / 7 * msg.value * price / 10
                    require 7 * msg.value * price / 10 >= 7 * msg.value * price / 10
                    require 7 * msg.value * price / 10 <= msg.value * price
                    if not (msg.value * price) - (7 * msg.value * price / 10):
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require 0 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, 0, msg.sender, msg.sender);
                    else:
                        require (msg.value * price) - (7 * msg.value * price / 10)
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / (msg.value * price) - (7 * msg.value * price / 10) == 666
                        require 7 * msg.value * price / 10 <= msg.value * price
                        require (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000 <= (msg.value * price) - (7 * msg.value * price / 10)
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 7 * msg.value * price / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args projectWalletAddress, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args founderWalletAddress, (msg.value * price) - (7 * msg.value * price / 10) - ((666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, msg.value * price, (666 * msg.value * price) - (666 * 7 * msg.value * price / 10) / 1000, msg.sender, msg.sender);
                require ext_code.size(assetsAddress)
                call assetsAddress.0x47e7ef24 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args msg.sender, msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
