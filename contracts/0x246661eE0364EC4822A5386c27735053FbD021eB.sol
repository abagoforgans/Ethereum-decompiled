contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
address stor14;
uint256 stor15;
uint128 stor18; offset 160
address stor18;

function _fallback() payable {
    stor15 = 0
    Mask(96, 0, stor18.field_160) = 0
    require not msg.value
    require code.data[22938 len 20]
    stor6 = code.data[22938 len 20]
    create contract with 0 wei
                    code: code.data[8832 len 9058]
    require create.new_address
    stor0 = address(create.new_address)
    stor14 = msg.sender
    require code.data[22958 len 32] > 0
    require code.data[22990 len 32] > code.data[22958 len 32]
    require code.data[23022 len 32] > code.data[22990 len 32]
    stor3 = code.data[22990 len 32]
    stor4 = code.data[22958 len 32]
    stor5 = code.data[23022 len 32]
    create contract with 0 wei
                    code: code.data[17890 len 5036], code.data[22938 len 20], stor4, stor3
    require create.new_address
    address(stor18.field_0) = address(create.new_address)
    return code.data[670 len 8162]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 sub_83ab41ce;
uint256 sub_aae80977;
uint256 sub_f20e2853;
address walletAddress;
uint256 rate;
uint256 rate1;
uint256 rate2;
uint256 rate3;
uint256 rate4;
uint256 weiRaised;
uint256 sub_5990b3b7;
address owner;
uint256 stor15;
uint256 sub_ba52bc4c;
uint256 sub_6fff7535;
uint8 isFinalized; offset 160
uint128 stor18; offset 160
address sub_91292736Address;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function sub_5990b3b7(?) {
    return sub_5990b3b7
}

function rate4() {
    return rate4
}

function sub_6fff7535(?) {
    return sub_6fff7535
}

function startTime() {
    return startTime
}

function sub_83ab41ce(?) {
    return sub_83ab41ce
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function sub_91292736(?) {
    return sub_91292736Address
}

function sub_aae80977(?) {
    return sub_aae80977
}

function rate3() {
    return rate3
}

function sub_ba52bc4c(?) {
    return sub_ba52bc4c
}

function rate1() {
    return rate1
}

function sub_f20e2853(?) {
    return sub_f20e2853
}

function rate2() {
    return rate2
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= sub_aae80977
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= sub_f20e2853
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b74381a3(?) {
    require msg.sender == owner
    require ext_code.size(sub_91292736Address)
    call sub_91292736Address.0xd569ed40 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function minimumReached() {
    require msg.sender == owner
    require ext_code.size(sub_91292736Address)
    call sub_91292736Address.0x6b64c6eb with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_00311a53(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xee58294d with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, sub_6fff7535, arg2
    require ext_call.success
}

function sub_faf4b24b(?) {
    require msg.sender == owner
    require block.timestamp <= endTime
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    require arg4 > 0
    require arg5 > 0
    rate1 = arg2
    rate2 = arg3
    rate3 = arg4
    rate4 = arg5
    rate = arg1
}

function claimRefund() {
    require isFinalized
    require msg.sender
    require weiRaised < sub_aae80977
    require ext_code.size(sub_91292736Address)
    call sub_91292736Address.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function sub_f5755040(?) {
    require msg.sender == owner
    require arg1 >= block.timestamp
    require arg2 >= arg1
    startTime = arg1
    endTime = arg2
    sub_ba52bc4c = arg2 + (8592 * 24 * 3600)
    sub_6fff7535 = sub_ba52bc4c + (168 * 24 * 3600)
    require ext_code.size(sub_91292736Address)
    call sub_91292736Address.0xdf914e39 with:
         gas gas_remaining - 710 wei
        args sub_ba52bc4c, sub_6fff7535
    require ext_call.success
}

function sub_57abd5e1(?) {
    require msg.sender == owner
    if block.timestamp <= endTime:
        if weiRaised < sub_f20e2853:
            if arg1 == 1:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x8456cb59 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
    if not arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3f4ba83a with:
             gas gas_remaining - 710 wei
        require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    if block.timestamp <= endTime:
        require weiRaised >= sub_f20e2853
    require ext_code.size(sub_91292736Address)
    if weiRaised < sub_aae80977:
        call sub_91292736Address.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call sub_91292736Address.close() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.burn() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor18 = 1
}

function sub_6978d511(?) {
    require msg.sender
    require arg1 >= 1
    require weiRaised >= sub_aae80977
    require block.timestamp >= sub_ba52bc4c
    require block.timestamp <= sub_6fff7535
    if stor15:
        require stor15
        require stor15 * arg1 / stor15 == arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x727738b4 with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_91292736Address)
        call sub_91292736Address.0xe53fced2 with:
             gas gas_remaining - 710 wei
            args msg.sender, stor15 * arg1
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9106d7ba with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_91292736Address)
        call sub_91292736Address.0xb393f77d with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        stor15 = ext_call.return_data[0]
        if not stor15:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x727738b4 with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(sub_91292736Address)
            call sub_91292736Address.0xe53fced2 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            require stor15
            require stor15 * arg1 / stor15 == arg1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x727738b4 with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(sub_91292736Address)
            call sub_91292736Address.0xe53fced2 with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor15 * arg1
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value < sub_f20e2853
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= sub_f20e2853
    require rate1 > 0
    require rate2 > 0
    require rate3 > 0
    require rate4 > 0
    require msg.value > rate
    if block.timestamp < startTime + (48 * 24 * 3600):
        require rate1
        if not msg.value / rate1:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x9106d7ba with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.totalCrowdsale() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= ext_call.return_data[0]
            revert
        require msg.value / rate1
        require 10^18 * msg.value / rate1 / msg.value / rate1 == 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9106d7ba with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.totalCrowdsale() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require 0 > 10^18 * msg.value / rate1
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 10^18 * msg.value / rate1
        require ext_call.success
        require sub_5990b3b7 + 1 >= sub_5990b3b7
        sub_5990b3b7++
        emit TokenPurchase(msg.value, 10^18 * msg.value / rate1, msg.sender, arg1);
    else:
        if startTime + (48 * 24 * 3600) >= block.timestamp:
            if startTime + (96 * 24 * 3600) >= block.timestamp:
                if startTime + (192 * 24 * 3600) >= block.timestamp:
                    require rate
                    if not msg.value / rate:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        revert
                    require msg.value / rate
                    require 10^18 * msg.value / rate / msg.value / rate == 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9106d7ba with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.totalCrowdsale() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require 0 > 10^18 * msg.value / rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10^18 * msg.value / rate
                    require ext_call.success
                    require sub_5990b3b7 + 1 >= sub_5990b3b7
                    sub_5990b3b7++
                    emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                else:
                    if startTime + (336 * 24 * 3600) <= block.timestamp:
                        require rate
                        if not msg.value / rate:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate
                        require 10^18 * msg.value / rate / msg.value / rate == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * msg.value / rate
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                    else:
                        require rate4
                        if not msg.value / rate4:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate4
                        require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate4
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * msg.value / rate4
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, arg1);
            else:
                if startTime + (192 * 24 * 3600) > block.timestamp:
                    require rate3
                    if not msg.value / rate3:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        revert
                    require msg.value / rate3
                    require 10^18 * msg.value / rate3 / msg.value / rate3 == 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9106d7ba with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.totalCrowdsale() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require 0 > 10^18 * msg.value / rate3
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10^18 * msg.value / rate3
                    require ext_call.success
                    require sub_5990b3b7 + 1 >= sub_5990b3b7
                    sub_5990b3b7++
                    emit TokenPurchase(msg.value, 10^18 * msg.value / rate3, msg.sender, arg1);
                else:
                    if startTime + (192 * 24 * 3600) >= block.timestamp:
                        require rate
                        if not msg.value / rate:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate
                        require 10^18 * msg.value / rate / msg.value / rate == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * msg.value / rate
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                    else:
                        if startTime + (336 * 24 * 3600) <= block.timestamp:
                            require rate
                            if not msg.value / rate:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate
                            require 10^18 * msg.value / rate / msg.value / rate == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 10^18 * msg.value / rate
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                        else:
                            require rate4
                            if not msg.value / rate4:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate4
                            require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate4
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 10^18 * msg.value / rate4
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, arg1);
        else:
            if startTime + (96 * 24 * 3600) > block.timestamp:
                require rate2
                if not msg.value / rate2:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9106d7ba with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.totalCrowdsale() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    revert
                require msg.value / rate2
                require 10^18 * msg.value / rate2 / msg.value / rate2 == 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x9106d7ba with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.totalCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require 0 > 10^18 * msg.value / rate2
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^18 * msg.value / rate2
                require ext_call.success
                require sub_5990b3b7 + 1 >= sub_5990b3b7
                sub_5990b3b7++
                emit TokenPurchase(msg.value, 10^18 * msg.value / rate2, msg.sender, arg1);
            else:
                if startTime + (96 * 24 * 3600) >= block.timestamp:
                    if startTime + (192 * 24 * 3600) >= block.timestamp:
                        require rate
                        if not msg.value / rate:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate
                        require 10^18 * msg.value / rate / msg.value / rate == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * msg.value / rate
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                    else:
                        if startTime + (336 * 24 * 3600) <= block.timestamp:
                            require rate
                            if not msg.value / rate:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate
                            require 10^18 * msg.value / rate / msg.value / rate == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 10^18 * msg.value / rate
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                        else:
                            require rate4
                            if not msg.value / rate4:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate4
                            require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate4
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 10^18 * msg.value / rate4
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, arg1);
                else:
                    if startTime + (192 * 24 * 3600) > block.timestamp:
                        require rate3
                        if not msg.value / rate3:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate3
                        require 10^18 * msg.value / rate3 / msg.value / rate3 == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate3
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * msg.value / rate3
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate3, msg.sender, arg1);
                    else:
                        if startTime + (192 * 24 * 3600) >= block.timestamp:
                            require rate
                            if not msg.value / rate:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate
                            require 10^18 * msg.value / rate / msg.value / rate == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 10^18 * msg.value / rate
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                        else:
                            if startTime + (336 * 24 * 3600) <= block.timestamp:
                                require rate
                                if not msg.value / rate:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x9106d7ba with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.totalCrowdsale() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                    revert
                                require msg.value / rate
                                require 10^18 * msg.value / rate / msg.value / rate == 10^18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require 0 > 10^18 * msg.value / rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 10^18 * msg.value / rate
                                require ext_call.success
                                require sub_5990b3b7 + 1 >= sub_5990b3b7
                                sub_5990b3b7++
                                emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, arg1);
                            else:
                                require rate4
                                if not msg.value / rate4:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x9106d7ba with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.totalCrowdsale() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                    revert
                                require msg.value / rate4
                                require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require 0 > 10^18 * msg.value / rate4
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 10^18 * msg.value / rate4
                                require ext_call.success
                                require sub_5990b3b7 + 1 >= sub_5990b3b7
                                sub_5990b3b7++
                                emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, arg1);
    require ext_code.size(sub_91292736Address)
    call sub_91292736Address.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value < sub_f20e2853
    require weiRaised + msg.value >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= sub_f20e2853
    require rate1 > 0
    require rate2 > 0
    require rate3 > 0
    require rate4 > 0
    require msg.value > rate
    if block.timestamp < startTime + (48 * 24 * 3600):
        require rate1
        if not msg.value / rate1:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x9106d7ba with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.totalCrowdsale() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= ext_call.return_data[0]
            revert
        require msg.value / rate1
        require 10^18 * msg.value / rate1 / msg.value / rate1 == 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9106d7ba with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.totalCrowdsale() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require 0 > 10^18 * msg.value / rate1
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^18 * msg.value / rate1
        require ext_call.success
        require sub_5990b3b7 + 1 >= sub_5990b3b7
        sub_5990b3b7++
        emit TokenPurchase(msg.value, 10^18 * msg.value / rate1, msg.sender, msg.sender);
    else:
        if startTime + (48 * 24 * 3600) >= block.timestamp:
            if startTime + (96 * 24 * 3600) >= block.timestamp:
                if startTime + (192 * 24 * 3600) >= block.timestamp:
                    require rate
                    if not msg.value / rate:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        revert
                    require msg.value / rate
                    require 10^18 * msg.value / rate / msg.value / rate == 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9106d7ba with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.totalCrowdsale() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require 0 > 10^18 * msg.value / rate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / rate
                    require ext_call.success
                    require sub_5990b3b7 + 1 >= sub_5990b3b7
                    sub_5990b3b7++
                    emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                else:
                    if startTime + (336 * 24 * 3600) <= block.timestamp:
                        require rate
                        if not msg.value / rate:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate
                        require 10^18 * msg.value / rate / msg.value / rate == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / rate
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                    else:
                        require rate4
                        if not msg.value / rate4:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate4
                        require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate4
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / rate4
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, msg.sender);
            else:
                if startTime + (192 * 24 * 3600) > block.timestamp:
                    require rate3
                    if not msg.value / rate3:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        revert
                    require msg.value / rate3
                    require 10^18 * msg.value / rate3 / msg.value / rate3 == 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9106d7ba with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.totalCrowdsale() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    require 0 > 10^18 * msg.value / rate3
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / rate3
                    require ext_call.success
                    require sub_5990b3b7 + 1 >= sub_5990b3b7
                    sub_5990b3b7++
                    emit TokenPurchase(msg.value, 10^18 * msg.value / rate3, msg.sender, msg.sender);
                else:
                    if startTime + (192 * 24 * 3600) >= block.timestamp:
                        require rate
                        if not msg.value / rate:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate
                        require 10^18 * msg.value / rate / msg.value / rate == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / rate
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                    else:
                        if startTime + (336 * 24 * 3600) <= block.timestamp:
                            require rate
                            if not msg.value / rate:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate
                            require 10^18 * msg.value / rate / msg.value / rate == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / rate
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                        else:
                            require rate4
                            if not msg.value / rate4:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate4
                            require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate4
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / rate4
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, msg.sender);
        else:
            if startTime + (96 * 24 * 3600) > block.timestamp:
                require rate2
                if not msg.value / rate2:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9106d7ba with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.totalCrowdsale() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    revert
                require msg.value / rate2
                require 10^18 * msg.value / rate2 / msg.value / rate2 == 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x9106d7ba with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.totalCrowdsale() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require 0 > 10^18 * msg.value / rate2
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^18 * msg.value / rate2
                require ext_call.success
                require sub_5990b3b7 + 1 >= sub_5990b3b7
                sub_5990b3b7++
                emit TokenPurchase(msg.value, 10^18 * msg.value / rate2, msg.sender, msg.sender);
            else:
                if startTime + (96 * 24 * 3600) >= block.timestamp:
                    if startTime + (192 * 24 * 3600) >= block.timestamp:
                        require rate
                        if not msg.value / rate:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate
                        require 10^18 * msg.value / rate / msg.value / rate == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / rate
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                    else:
                        if startTime + (336 * 24 * 3600) <= block.timestamp:
                            require rate
                            if not msg.value / rate:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate
                            require 10^18 * msg.value / rate / msg.value / rate == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / rate
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                        else:
                            require rate4
                            if not msg.value / rate4:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate4
                            require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate4
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / rate4
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, msg.sender);
                else:
                    if startTime + (192 * 24 * 3600) > block.timestamp:
                        require rate3
                        if not msg.value / rate3:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            revert
                        require msg.value / rate3
                        require 10^18 * msg.value / rate3 / msg.value / rate3 == 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9106d7ba with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.totalCrowdsale() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        require 0 > 10^18 * msg.value / rate3
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / rate3
                        require ext_call.success
                        require sub_5990b3b7 + 1 >= sub_5990b3b7
                        sub_5990b3b7++
                        emit TokenPurchase(msg.value, 10^18 * msg.value / rate3, msg.sender, msg.sender);
                    else:
                        if startTime + (192 * 24 * 3600) >= block.timestamp:
                            require rate
                            if not msg.value / rate:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                revert
                            require msg.value / rate
                            require 10^18 * msg.value / rate / msg.value / rate == 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x9106d7ba with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.totalCrowdsale() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            require 0 > 10^18 * msg.value / rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / rate
                            require ext_call.success
                            require sub_5990b3b7 + 1 >= sub_5990b3b7
                            sub_5990b3b7++
                            emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                        else:
                            if startTime + (336 * 24 * 3600) <= block.timestamp:
                                require rate
                                if not msg.value / rate:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x9106d7ba with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.totalCrowdsale() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                    revert
                                require msg.value / rate
                                require 10^18 * msg.value / rate / msg.value / rate == 10^18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require 0 > 10^18 * msg.value / rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / rate
                                require ext_call.success
                                require sub_5990b3b7 + 1 >= sub_5990b3b7
                                sub_5990b3b7++
                                emit TokenPurchase(msg.value, 10^18 * msg.value / rate, msg.sender, msg.sender);
                            else:
                                require rate4
                                if not msg.value / rate4:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x9106d7ba with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.totalCrowdsale() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] <= ext_call.return_data[0]
                                    revert
                                require msg.value / rate4
                                require 10^18 * msg.value / rate4 / msg.value / rate4 == 10^18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x9106d7ba with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.totalCrowdsale() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require 0 > 10^18 * msg.value / rate4
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / rate4
                                require ext_call.success
                                require sub_5990b3b7 + 1 >= sub_5990b3b7
                                sub_5990b3b7++
                                emit TokenPurchase(msg.value, 10^18 * msg.value / rate4, msg.sender, msg.sender);
    require ext_code.size(sub_91292736Address)
    call sub_91292736Address.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
