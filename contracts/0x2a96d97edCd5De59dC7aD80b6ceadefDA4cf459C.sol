contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    require code.data[2380 len 32] >= block.timestamp
    require code.data[2412 len 32] >= code.data[2380 len 32]
    require code.data[2456 len 20]
    require code.data[2488 len 20]
    require code.data[2520 len 20]
    stor3 = code.data[2380 len 32]
    stor4 = code.data[2412 len 32]
    stor5 = code.data[2456 len 20]
    stor2 = code.data[2520 len 20]
    stor1 = code.data[2488 len 20]
    return code.data[250 len 2130]
}



// =====================  Runtime code  =====================


const softCap = 6250000 * 10^18

const hardCap = (93500 * 10^18 * 3600)


mapping of uint256 balanceOf;
address rewardAddress;
address owner;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 tokensSold;
uint8 stor7;

function reward() {
    return rewardAddress
}

function endTime() {
    return endTime
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return tokensSold >= 93500 * 10^18 * 3600
}

function claimRefund() {
    if block.timestamp <= endTime:
        require tokensSold >= 93500 * 10^18 * 3600
    require tokensSold < 6250000 * 10^18
    if eth.balance(this.address) >= balanceOf[address(msg.sender)]:
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > 0:
            call msg.sender with:
               value balanceOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Refund(balanceOf[address(msg.sender)], msg.sender);
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value != 0
    require tokensSold < 93500 * 10^18 * 3600
    if block.timestamp < startTime + (168 * 24 * 3600):
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= 93500 * 10^18 * 3600
            require tokensSold >= tokensSold
            require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value
            require ext_code.size(rewardAddress)
            call rewardAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if tokensSold == 93500 * 10^18 * 3600:
                require ext_code.size(rewardAddress)
                call rewardAddress.setStartTime(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (block.timestamp + (336 * 24 * 3600))
                require ext_call.success
            if not stor7:
                stor7 = 1
                require ext_code.size(rewardAddress)
                call rewardAddress.setStartTime(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (endTime + (336 * 24 * 3600))
                require ext_call.success
        else:
            require 11500 * msg.value / msg.value == 11500
            require (11500 * msg.value) + tokensSold >= tokensSold
            if (11500 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                require (11500 * msg.value) + tokensSold >= tokensSold
                tokensSold += 11500 * msg.value
                require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += msg.value
                require ext_code.size(rewardAddress)
                call rewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, address(arg1), 11500 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 11500 * msg.value, msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if tokensSold == 93500 * 10^18 * 3600:
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (block.timestamp + (336 * 24 * 3600))
                    require ext_call.success
                if not stor7:
                    stor7 = 1
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (endTime + (336 * 24 * 3600))
                    require ext_call.success
            else:
                require tokensSold <= 93500 * 10^18 * 3600
                require -tokensSold + (93500 * 10^18 * 3600) / 11500 <= msg.value
                require 93500 * 10^18 * 3600 >= tokensSold
                tokensSold = 93500 * 10^18 * 3600
                require (-tokensSold + (93500 * 10^18 * 3600) / 11500) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += -tokensSold + (93500 * 10^18 * 3600) / 11500
                require ext_code.size(rewardAddress)
                call rewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, address(arg1), -tokensSold + (93500 * 10^18 * 3600)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 11500, -tokensSold + (93500 * 10^18 * 3600), msg.sender, arg1);
                call walletAddress with:
                   value -tokensSold + (93500 * 10^18 * 3600) / 11500 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if tokensSold == 93500 * 10^18 * 3600:
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (block.timestamp + (336 * 24 * 3600))
                    require ext_call.success
                if not stor7:
                    stor7 = 1
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (endTime + (336 * 24 * 3600))
                    require ext_call.success
                if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11500) > 0:
                    call msg.sender with:
                       value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11500) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        if block.timestamp < startTime + (336 * 24 * 3600):
            if not msg.value:
                require tokensSold >= tokensSold
                require tokensSold <= 93500 * 10^18 * 3600
                require tokensSold >= tokensSold
                require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += msg.value
                require ext_code.size(rewardAddress)
                call rewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, address(arg1), 0
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if tokensSold == 93500 * 10^18 * 3600:
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (block.timestamp + (336 * 24 * 3600))
                    require ext_call.success
                if not stor7:
                    stor7 = 1
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (endTime + (336 * 24 * 3600))
                    require ext_call.success
            else:
                require 11000 * msg.value / msg.value == 11000
                require (11000 * msg.value) + tokensSold >= tokensSold
                if (11000 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                    require (11000 * msg.value) + tokensSold >= tokensSold
                    tokensSold += 11000 * msg.value
                    require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, address(arg1), 11000 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 11000 * msg.value, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                else:
                    require tokensSold <= 93500 * 10^18 * 3600
                    require -tokensSold + (93500 * 10^18 * 3600) / 11000 <= msg.value
                    require 93500 * 10^18 * 3600 >= tokensSold
                    tokensSold = 93500 * 10^18 * 3600
                    require (-tokensSold + (93500 * 10^18 * 3600) / 11000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += -tokensSold + (93500 * 10^18 * 3600) / 11000
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, address(arg1), -tokensSold + (93500 * 10^18 * 3600)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 11000, -tokensSold + (93500 * 10^18 * 3600), msg.sender, arg1);
                    call walletAddress with:
                       value -tokensSold + (93500 * 10^18 * 3600) / 11000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                    if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11000) > 0:
                        call msg.sender with:
                           value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            if block.timestamp >= startTime + (504 * 24 * 3600):
                if not msg.value:
                    require tokensSold >= tokensSold
                    require tokensSold <= 93500 * 10^18 * 3600
                    require tokensSold >= tokensSold
                    require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, address(arg1), 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                else:
                    require 10000 * msg.value / msg.value == 10000
                    require (10000 * msg.value) + tokensSold >= tokensSold
                    if (10000 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                        require (10000 * msg.value) + tokensSold >= tokensSold
                        tokensSold += 10000 * msg.value
                        require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, address(arg1), 10000 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                    else:
                        require tokensSold <= 93500 * 10^18 * 3600
                        require -tokensSold + (93500 * 10^18 * 3600) / 10000 <= msg.value
                        require 93500 * 10^18 * 3600 >= tokensSold
                        tokensSold = 93500 * 10^18 * 3600
                        require (-tokensSold + (93500 * 10^18 * 3600) / 10000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += -tokensSold + (93500 * 10^18 * 3600) / 10000
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, address(arg1), -tokensSold + (93500 * 10^18 * 3600)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 10000, -tokensSold + (93500 * 10^18 * 3600), msg.sender, arg1);
                        call walletAddress with:
                           value -tokensSold + (93500 * 10^18 * 3600) / 10000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                        if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10000) > 0:
                            call msg.sender with:
                               value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
            else:
                if not msg.value:
                    require tokensSold >= tokensSold
                    require tokensSold <= 93500 * 10^18 * 3600
                    require tokensSold >= tokensSold
                    require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, address(arg1), 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                else:
                    require 10500 * msg.value / msg.value == 10500
                    require (10500 * msg.value) + tokensSold >= tokensSold
                    if (10500 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                        require (10500 * msg.value) + tokensSold >= tokensSold
                        tokensSold += 10500 * msg.value
                        require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, address(arg1), 10500 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 10500 * msg.value, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                    else:
                        require tokensSold <= 93500 * 10^18 * 3600
                        require -tokensSold + (93500 * 10^18 * 3600) / 10500 <= msg.value
                        require 93500 * 10^18 * 3600 >= tokensSold
                        tokensSold = 93500 * 10^18 * 3600
                        require (-tokensSold + (93500 * 10^18 * 3600) / 10500) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += -tokensSold + (93500 * 10^18 * 3600) / 10500
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, address(arg1), -tokensSold + (93500 * 10^18 * 3600)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 10500, -tokensSold + (93500 * 10^18 * 3600), msg.sender, arg1);
                        call walletAddress with:
                           value -tokensSold + (93500 * 10^18 * 3600) / 10500 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                        if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10500) > 0:
                            call msg.sender with:
                               value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10500) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
}

function _fallback() payable {
    if walletAddress == msg.sender:
        if block.timestamp <= endTime:
            require tokensSold >= 93500 * 10^18 * 3600
        require tokensSold < 6250000 * 10^18
    else:
        require msg.sender
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value != 0
        require tokensSold < 93500 * 10^18 * 3600
        if block.timestamp < startTime + (168 * 24 * 3600):
            if not msg.value:
                require tokensSold >= tokensSold
                require tokensSold <= 93500 * 10^18 * 3600
                require tokensSold >= tokensSold
                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value
                require ext_code.size(rewardAddress)
                call rewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, msg.sender, 0
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if tokensSold == 93500 * 10^18 * 3600:
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (block.timestamp + (336 * 24 * 3600))
                    require ext_call.success
                if not stor7:
                    stor7 = 1
                    require ext_code.size(rewardAddress)
                    call rewardAddress.setStartTime(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (endTime + (336 * 24 * 3600))
                    require ext_call.success
            else:
                require 11500 * msg.value / msg.value == 11500
                require (11500 * msg.value) + tokensSold >= tokensSold
                if (11500 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                    require (11500 * msg.value) + tokensSold >= tokensSold
                    tokensSold += 11500 * msg.value
                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, msg.sender, 11500 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 11500 * msg.value, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                else:
                    require tokensSold <= 93500 * 10^18 * 3600
                    require -tokensSold + (93500 * 10^18 * 3600) / 11500 <= msg.value
                    require 93500 * 10^18 * 3600 >= tokensSold
                    tokensSold = 93500 * 10^18 * 3600
                    require (-tokensSold + (93500 * 10^18 * 3600) / 11500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += -tokensSold + (93500 * 10^18 * 3600) / 11500
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, msg.sender, -tokensSold + (93500 * 10^18 * 3600)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 11500, -tokensSold + (93500 * 10^18 * 3600), msg.sender, msg.sender);
                    call walletAddress with:
                       value -tokensSold + (93500 * 10^18 * 3600) / 11500 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                    if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11500) > 0:
                        call msg.sender with:
                           value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11500) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if not msg.value:
                    require tokensSold >= tokensSold
                    require tokensSold <= 93500 * 10^18 * 3600
                    require tokensSold >= tokensSold
                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, msg.sender, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if tokensSold == 93500 * 10^18 * 3600:
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (block.timestamp + (336 * 24 * 3600))
                        require ext_call.success
                    if not stor7:
                        stor7 = 1
                        require ext_code.size(rewardAddress)
                        call rewardAddress.setStartTime(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (endTime + (336 * 24 * 3600))
                        require ext_call.success
                else:
                    require 11000 * msg.value / msg.value == 11000
                    require (11000 * msg.value) + tokensSold >= tokensSold
                    if (11000 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                        require (11000 * msg.value) + tokensSold >= tokensSold
                        tokensSold += 11000 * msg.value
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, 11000 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 11000 * msg.value, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                    else:
                        require tokensSold <= 93500 * 10^18 * 3600
                        require -tokensSold + (93500 * 10^18 * 3600) / 11000 <= msg.value
                        require 93500 * 10^18 * 3600 >= tokensSold
                        tokensSold = 93500 * 10^18 * 3600
                        require (-tokensSold + (93500 * 10^18 * 3600) / 11000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += -tokensSold + (93500 * 10^18 * 3600) / 11000
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, -tokensSold + (93500 * 10^18 * 3600)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 11000, -tokensSold + (93500 * 10^18 * 3600), msg.sender, msg.sender);
                        call walletAddress with:
                           value -tokensSold + (93500 * 10^18 * 3600) / 11000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                        if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11000) > 0:
                            call msg.sender with:
                               value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 11000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
            else:
                if block.timestamp >= startTime + (504 * 24 * 3600):
                    if not msg.value:
                        require tokensSold >= tokensSold
                        require tokensSold <= 93500 * 10^18 * 3600
                        require tokensSold >= tokensSold
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                    else:
                        require 10000 * msg.value / msg.value == 10000
                        require (10000 * msg.value) + tokensSold >= tokensSold
                        if (10000 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                            require (10000 * msg.value) + tokensSold >= tokensSold
                            tokensSold += 10000 * msg.value
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(rewardAddress)
                            call rewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, 10000 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            if tokensSold == 93500 * 10^18 * 3600:
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                require ext_call.success
                            if not stor7:
                                stor7 = 1
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (endTime + (336 * 24 * 3600))
                                require ext_call.success
                        else:
                            require tokensSold <= 93500 * 10^18 * 3600
                            require -tokensSold + (93500 * 10^18 * 3600) / 10000 <= msg.value
                            require 93500 * 10^18 * 3600 >= tokensSold
                            tokensSold = 93500 * 10^18 * 3600
                            require (-tokensSold + (93500 * 10^18 * 3600) / 10000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += -tokensSold + (93500 * 10^18 * 3600) / 10000
                            require ext_code.size(rewardAddress)
                            call rewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, -tokensSold + (93500 * 10^18 * 3600)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 10000, -tokensSold + (93500 * 10^18 * 3600), msg.sender, msg.sender);
                            call walletAddress with:
                               value -tokensSold + (93500 * 10^18 * 3600) / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            if tokensSold == 93500 * 10^18 * 3600:
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                require ext_call.success
                            if not stor7:
                                stor7 = 1
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (endTime + (336 * 24 * 3600))
                                require ext_call.success
                            if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10000) > 0:
                                call msg.sender with:
                                   value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10000) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    if not msg.value:
                        require tokensSold >= tokensSold
                        require tokensSold <= 93500 * 10^18 * 3600
                        require tokensSold >= tokensSold
                        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if tokensSold == 93500 * 10^18 * 3600:
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (block.timestamp + (336 * 24 * 3600))
                            require ext_call.success
                        if not stor7:
                            stor7 = 1
                            require ext_code.size(rewardAddress)
                            call rewardAddress.setStartTime(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (endTime + (336 * 24 * 3600))
                            require ext_call.success
                    else:
                        require 10500 * msg.value / msg.value == 10500
                        require (10500 * msg.value) + tokensSold >= tokensSold
                        if (10500 * msg.value) + tokensSold <= 93500 * 10^18 * 3600:
                            require (10500 * msg.value) + tokensSold >= tokensSold
                            tokensSold += 10500 * msg.value
                            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value
                            require ext_code.size(rewardAddress)
                            call rewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, 10500 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 10500 * msg.value, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            if tokensSold == 93500 * 10^18 * 3600:
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                require ext_call.success
                            if not stor7:
                                stor7 = 1
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (endTime + (336 * 24 * 3600))
                                require ext_call.success
                        else:
                            require tokensSold <= 93500 * 10^18 * 3600
                            require -tokensSold + (93500 * 10^18 * 3600) / 10500 <= msg.value
                            require 93500 * 10^18 * 3600 >= tokensSold
                            tokensSold = 93500 * 10^18 * 3600
                            require (-tokensSold + (93500 * 10^18 * 3600) / 10500) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += -tokensSold + (93500 * 10^18 * 3600) / 10500
                            require ext_code.size(rewardAddress)
                            call rewardAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, -tokensSold + (93500 * 10^18 * 3600)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(-tokensSold + (93500 * 10^18 * 3600) / 10500, -tokensSold + (93500 * 10^18 * 3600), msg.sender, msg.sender);
                            call walletAddress with:
                               value -tokensSold + (93500 * 10^18 * 3600) / 10500 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            if tokensSold == 93500 * 10^18 * 3600:
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (block.timestamp + (336 * 24 * 3600))
                                require ext_call.success
                            if not stor7:
                                stor7 = 1
                                require ext_code.size(rewardAddress)
                                call rewardAddress.setStartTime(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (endTime + (336 * 24 * 3600))
                                require ext_call.success
                            if msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10500) > 0:
                                call msg.sender with:
                                   value msg.value - (-tokensSold + (93500 * 10^18 * 3600) / 10500) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
}



}
