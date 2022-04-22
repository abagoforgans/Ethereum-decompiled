contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor7;
uint256 stor8;

function _fallback() payable {
    stor2 = 419640 * 24 * 3600
    stor3 = 420024 * 24 * 3600
    stor4 = 0
    stor7 = 0x47c8f28e6056374aba3df0854306c2556b104601
    stor8 = 100
    require not msg.value
    create contract with 0 wei
                    code: code.data[13511 len 9800]
    require create.new_address
    stor0 = address(create.new_address)
    stor1[0] = 40
    stor1[1] = 35
    stor1[2] = 30
    stor1[3] = 25
    stor1[4] = 20
    stor1[5] = 10
    return code.data[615 len 12896]
}



// =====================  Runtime code  =====================


address tokenAddress;
mapping of uint8 stor1;
uint256 preStartTime;
uint256 preEndTime;
uint8 stor4;
uint256 icoStartTime;
uint256 icoEndTime;
address walletAddress;
uint256 finneyPerToken;
uint256 weiRaised;
uint256 ethRaised;

function weiRaised() {
    return weiRaised
}

function preStartTime() {
    return preStartTime
}

function wallet() {
    return walletAddress
}

function icoEndTime() {
    return icoEndTime
}

function finneyPerToken() {
    return finneyPerToken
}

function preEndTime() {
    return preEndTime
}

function icoStartTime() {
    return icoStartTime
}

function isICOStarted() {
    return bool(stor4)
}

function token() {
    return tokenAddress
}

function ethRaised() {
    return ethRaised
}

function activeteICO(uint256 arg1) {
    require msg.sender == walletAddress
    require arg1 >= block.timestamp
    require arg1 >= preEndTime
    require not stor4
    stor4 = 1
    icoEndTime = arg1
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp < preStartTime:
        if not stor4:
            if block.timestamp < preStartTime:
                require stor4
        else:
            if block.timestamp < icoStartTime:
                if block.timestamp < preStartTime:
                    require block.timestamp >= icoStartTime
            else:
                if block.timestamp < preStartTime:
                    require block.timestamp <= icoEndTime
    else:
        if not stor4:
            if block.timestamp > preEndTime:
                require stor4
        else:
            if block.timestamp < icoStartTime:
                if block.timestamp > preEndTime:
                    require block.timestamp >= icoStartTime
            else:
                if block.timestamp > preEndTime:
                    require block.timestamp <= icoEndTime
    require msg.value
    if not stor4:
        if msg.value / 10^15:
            require msg.value / 10^15
            require 100 * msg.value / 10^15 / msg.value / 10^15 == 100
        require finneyPerToken
        require 100 * msg.value / 10^15 / 50 / finneyPerToken > 0
        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
        weiRaised += 10^15 * msg.value / 10^15
        require ext_code.size(tokenAddress)
        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), 100 * msg.value / 10^15 / 50 / finneyPerToken
        require ext_call.success
        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 50 / finneyPerToken, msg.sender, arg1);
    else:
        require bool(stor4) == 1
        require icoStartTime < block.timestamp
        require icoEndTime > block.timestamp
        require bool(stor4) == 1
        require icoStartTime < block.timestamp
        require icoEndTime > block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.totalSoldTokens() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if msg.value / 10^15:
            require msg.value / 10^15
            require 100 * msg.value / 10^15 / msg.value / 10^15 == 100
        if ext_call.return_data[0] < 150000:
            if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 50:
                require finneyPerToken
                require 100 * msg.value / 10^15 / 50 / finneyPerToken > 0
                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                weiRaised += 10^15 * msg.value / 10^15
                require ext_code.size(tokenAddress)
                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * msg.value / 10^15 / 50 / finneyPerToken
                require ext_call.success
                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 50 / finneyPerToken, msg.sender, arg1);
            else:
                require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                require finneyPerToken
                require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                weiRaised += 10^15 * msg.value / 10^15
                require ext_code.size(tokenAddress)
                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                require ext_call.success
                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
        else:
            if ext_call.return_data[0] < 250000:
                if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 40:
                    require finneyPerToken
                    require 100 * msg.value / 10^15 / 60 / finneyPerToken > 0
                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                    weiRaised += 10^15 * msg.value / 10^15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 100 * msg.value / 10^15 / 60 / finneyPerToken
                    require ext_call.success
                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 60 / finneyPerToken, msg.sender, arg1);
                else:
                    require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                    require finneyPerToken
                    require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                    weiRaised += 10^15 * msg.value / 10^15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                    require ext_call.success
                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
            else:
                if ext_call.return_data[0] < 500000:
                    if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 35:
                        require finneyPerToken
                        require 100 * msg.value / 10^15 / 65 / finneyPerToken > 0
                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                        weiRaised += 10^15 * msg.value / 10^15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * msg.value / 10^15 / 65 / finneyPerToken
                        require ext_call.success
                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 65 / finneyPerToken, msg.sender, arg1);
                    else:
                        require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                        require finneyPerToken
                        require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                        weiRaised += 10^15 * msg.value / 10^15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                        require ext_call.success
                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
                else:
                    if ext_call.return_data[0] < 700000:
                        if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 30:
                            require finneyPerToken
                            require 100 * msg.value / 10^15 / 70 / finneyPerToken > 0
                            require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                            weiRaised += 10^15 * msg.value / 10^15
                            require ext_code.size(tokenAddress)
                            call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * msg.value / 10^15 / 70 / finneyPerToken
                            require ext_call.success
                            emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 70 / finneyPerToken, msg.sender, arg1);
                        else:
                            require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                            require finneyPerToken
                            require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                            require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                            weiRaised += 10^15 * msg.value / 10^15
                            require ext_code.size(tokenAddress)
                            call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                            require ext_call.success
                            emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
                    else:
                        if ext_call.return_data[0] < 1100000:
                            if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 25:
                                require finneyPerToken
                                require 100 * msg.value / 10^15 / 75 / finneyPerToken > 0
                                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                weiRaised += 10^15 * msg.value / 10^15
                                require ext_code.size(tokenAddress)
                                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 100 * msg.value / 10^15 / 75 / finneyPerToken
                                require ext_call.success
                                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 75 / finneyPerToken, msg.sender, arg1);
                            else:
                                require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                require finneyPerToken
                                require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                weiRaised += 10^15 * msg.value / 10^15
                                require ext_code.size(tokenAddress)
                                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                require ext_call.success
                                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
                        else:
                            if ext_call.return_data[0] < 2100000:
                                if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 20:
                                    require finneyPerToken
                                    require 100 * msg.value / 10^15 / 80 / finneyPerToken > 0
                                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                    weiRaised += 10^15 * msg.value / 10^15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * msg.value / 10^15 / 80 / finneyPerToken
                                    require ext_call.success
                                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 80 / finneyPerToken, msg.sender, arg1);
                                else:
                                    require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                    require finneyPerToken
                                    require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                    weiRaised += 10^15 * msg.value / 10^15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                    require ext_call.success
                                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
                            else:
                                if ext_call.return_data[0] >= 3500000:
                                    if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 0:
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / 100 / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * msg.value / 10^15 / 100 / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 100 / finneyPerToken, msg.sender, arg1);
                                    else:
                                        require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
                                else:
                                    if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 10:
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / 90 / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * msg.value / 10^15 / 90 / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 90 / finneyPerToken, msg.sender, arg1);
                                    else:
                                        require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    if block.timestamp < preStartTime:
        if not stor4:
            if block.timestamp < preStartTime:
                require stor4
        else:
            if block.timestamp < icoStartTime:
                if block.timestamp < preStartTime:
                    require block.timestamp >= icoStartTime
            else:
                if block.timestamp < preStartTime:
                    require block.timestamp <= icoEndTime
    else:
        if not stor4:
            if block.timestamp > preEndTime:
                require stor4
        else:
            if block.timestamp < icoStartTime:
                if block.timestamp > preEndTime:
                    require block.timestamp >= icoStartTime
            else:
                if block.timestamp > preEndTime:
                    require block.timestamp <= icoEndTime
    require msg.value
    if not stor4:
        if msg.value / 10^15:
            require msg.value / 10^15
            require 100 * msg.value / 10^15 / msg.value / 10^15 == 100
        require finneyPerToken
        require 100 * msg.value / 10^15 / 50 / finneyPerToken > 0
        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
        weiRaised += 10^15 * msg.value / 10^15
        require ext_code.size(tokenAddress)
        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * msg.value / 10^15 / 50 / finneyPerToken
        require ext_call.success
        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 50 / finneyPerToken, msg.sender, msg.sender);
    else:
        require bool(stor4) == 1
        require icoStartTime < block.timestamp
        require icoEndTime > block.timestamp
        require bool(stor4) == 1
        require icoStartTime < block.timestamp
        require icoEndTime > block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.totalSoldTokens() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if msg.value / 10^15:
            require msg.value / 10^15
            require 100 * msg.value / 10^15 / msg.value / 10^15 == 100
        if ext_call.return_data[0] < 150000:
            if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 50:
                require finneyPerToken
                require 100 * msg.value / 10^15 / 50 / finneyPerToken > 0
                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                weiRaised += 10^15 * msg.value / 10^15
                require ext_code.size(tokenAddress)
                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * msg.value / 10^15 / 50 / finneyPerToken
                require ext_call.success
                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 50 / finneyPerToken, msg.sender, msg.sender);
            else:
                require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                require finneyPerToken
                require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                weiRaised += 10^15 * msg.value / 10^15
                require ext_code.size(tokenAddress)
                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                require ext_call.success
                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
        else:
            if ext_call.return_data[0] < 250000:
                if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 40:
                    require finneyPerToken
                    require 100 * msg.value / 10^15 / 60 / finneyPerToken > 0
                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                    weiRaised += 10^15 * msg.value / 10^15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * msg.value / 10^15 / 60 / finneyPerToken
                    require ext_call.success
                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 60 / finneyPerToken, msg.sender, msg.sender);
                else:
                    require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                    require finneyPerToken
                    require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                    weiRaised += 10^15 * msg.value / 10^15
                    require ext_code.size(tokenAddress)
                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                    require ext_call.success
                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
            else:
                if ext_call.return_data[0] < 500000:
                    if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 35:
                        require finneyPerToken
                        require 100 * msg.value / 10^15 / 65 / finneyPerToken > 0
                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                        weiRaised += 10^15 * msg.value / 10^15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * msg.value / 10^15 / 65 / finneyPerToken
                        require ext_call.success
                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 65 / finneyPerToken, msg.sender, msg.sender);
                    else:
                        require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                        require finneyPerToken
                        require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                        weiRaised += 10^15 * msg.value / 10^15
                        require ext_code.size(tokenAddress)
                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                        require ext_call.success
                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
                else:
                    if ext_call.return_data[0] < 700000:
                        if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 30:
                            require finneyPerToken
                            require 100 * msg.value / 10^15 / 70 / finneyPerToken > 0
                            require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                            weiRaised += 10^15 * msg.value / 10^15
                            require ext_code.size(tokenAddress)
                            call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * msg.value / 10^15 / 70 / finneyPerToken
                            require ext_call.success
                            emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 70 / finneyPerToken, msg.sender, msg.sender);
                        else:
                            require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                            require finneyPerToken
                            require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                            require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                            weiRaised += 10^15 * msg.value / 10^15
                            require ext_code.size(tokenAddress)
                            call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                            require ext_call.success
                            emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
                    else:
                        if ext_call.return_data[0] < 1100000:
                            if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 25:
                                require finneyPerToken
                                require 100 * msg.value / 10^15 / 75 / finneyPerToken > 0
                                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                weiRaised += 10^15 * msg.value / 10^15
                                require ext_code.size(tokenAddress)
                                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 100 * msg.value / 10^15 / 75 / finneyPerToken
                                require ext_call.success
                                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 75 / finneyPerToken, msg.sender, msg.sender);
                            else:
                                require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                require finneyPerToken
                                require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                weiRaised += 10^15 * msg.value / 10^15
                                require ext_code.size(tokenAddress)
                                call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                require ext_call.success
                                emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
                        else:
                            if ext_call.return_data[0] < 2100000:
                                if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 20:
                                    require finneyPerToken
                                    require 100 * msg.value / 10^15 / 80 / finneyPerToken > 0
                                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                    weiRaised += 10^15 * msg.value / 10^15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * msg.value / 10^15 / 80 / finneyPerToken
                                    require ext_call.success
                                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 80 / finneyPerToken, msg.sender, msg.sender);
                                else:
                                    require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                    require finneyPerToken
                                    require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                    require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                    weiRaised += 10^15 * msg.value / 10^15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                    require ext_call.success
                                    emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
                            else:
                                if ext_call.return_data[0] >= 3500000:
                                    if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 0:
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / 100 / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * msg.value / 10^15 / 100 / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 100 / finneyPerToken, msg.sender, msg.sender);
                                    else:
                                        require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
                                else:
                                    if stor1[block.timestamp - stor5 / 168 * 24 * 3600] >= 10:
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / 90 / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * msg.value / 10^15 / 90 / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / 90 / finneyPerToken, msg.sender, msg.sender);
                                    else:
                                        require uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100)
                                        require finneyPerToken
                                        require 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken > 0
                                        require weiRaised + (10^15 * msg.value / 10^15) >= weiRaised
                                        weiRaised += 10^15 * msg.value / 10^15
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.autoTransfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken
                                        require ext_call.success
                                        emit TokenPurchase(10^15 * msg.value / 10^15, 100 * msg.value / 10^15 / uint8(-stor1[block.timestamp - stor5 / 168 * 24 * 3600] + 100) / finneyPerToken, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
