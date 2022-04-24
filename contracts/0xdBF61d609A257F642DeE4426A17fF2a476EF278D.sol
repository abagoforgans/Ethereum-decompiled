contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2; offset 152
address stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 1512719999
    Mask(152, 0, stor2.field_0) = 0xa3f365cdcb90fe3a7d0158cf9d8738f3477764
    uint8(stor2.field_152) = 0
    stor3 = 7000
    require not msg.value
    create contract with 0 wei
                    code: code.data[6890 len 4923]
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[276 len 6614]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 iCOBeginsAt;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function ICOBeginsAt() {
    return iCOBeginsAt
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function token() {
    return tokenAddress
}

function getCurrentRate() {
    if iCOBeginsAt < block.timestamp:
        if block.timestamp < iCOBeginsAt + (168 * 24 * 3600):
            return (2 * rate)
    if iCOBeginsAt + (168 * 24 * 3600) < block.timestamp:
        if block.timestamp < iCOBeginsAt + (336 * 24 * 3600):
            return (175 * rate / 100)
    if iCOBeginsAt + (336 * 24 * 3600) < block.timestamp:
        if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
            return (150 * rate / 100)
    if iCOBeginsAt + (504 * 24 * 3600) < block.timestamp:
        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
            return (140 * rate / 100)
    if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
        return rate
    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
        return rate
    return (125 * rate / 100)
}

function buyTokens(address arg1) payable {
    require arg1
    require iCOBeginsAt < block.timestamp
    require msg.value > 0
    if iCOBeginsAt >= block.timestamp:
        if iCOBeginsAt + (168 * 24 * 3600) >= block.timestamp:
            if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                    if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                        if msg.value:
                            require msg.value
                            require msg.value * rate / msg.value == rate
                        require msg.value * rate > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * rate
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                    else:
                        if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                            require msg.value * 125 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * 125 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                else:
                    if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                        require msg.value * 140 * rate / 100 > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * 140 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                    else:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
            else:
                if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                    require msg.value * 150 * rate / 100 > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * 150 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, arg1);
                else:
                    if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                    else:
                        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                            require msg.value * 140 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * 140 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                        else:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
        else:
            if block.timestamp < iCOBeginsAt + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require msg.value * 175 * rate / 100 / msg.value == 175 * rate / 100
                require msg.value * 175 * rate / 100 > 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * 175 * rate / 100
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value * 175 * rate / 100, 175 * rate / 100, msg.sender, arg1);
            else:
                if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                    if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                    else:
                        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                            require msg.value * 140 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * 140 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                        else:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                else:
                    if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                        require msg.value * 150 * rate / 100 > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * 150 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, arg1);
                    else:
                        if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                        else:
                            if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                require msg.value * 140 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 140 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                            else:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
    else:
        if block.timestamp < iCOBeginsAt + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require msg.value * 2 * rate / msg.value == 2 * rate
            require msg.value * 2 * rate > 0
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * 2 * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * 2 * rate, 2 * rate, msg.sender, arg1);
        else:
            if iCOBeginsAt + (168 * 24 * 3600) >= block.timestamp:
                if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                    if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                    else:
                        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                            require msg.value * 140 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * 140 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                        else:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                else:
                    if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                        require msg.value * 150 * rate / 100 > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * 150 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, arg1);
                    else:
                        if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                        else:
                            if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                require msg.value * 140 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 140 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                            else:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
            else:
                if block.timestamp < iCOBeginsAt + (336 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require msg.value * 175 * rate / 100 / msg.value == 175 * rate / 100
                    require msg.value * 175 * rate / 100 > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * 175 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * 175 * rate / 100, 175 * rate / 100, msg.sender, arg1);
                else:
                    if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                        else:
                            if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                require msg.value * 140 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * 140 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                            else:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                    else:
                        if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                            require msg.value * 150 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * 150 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, arg1);
                        else:
                            if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
                            else:
                                if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                    require msg.value * 140 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), msg.value * 140 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, arg1);
                                else:
                                    if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                            if msg.value:
                                                require msg.value
                                                require msg.value * rate / msg.value == rate
                                            require msg.value * rate > 0
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * rate
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, arg1);
                                        else:
                                            if msg.value:
                                                require msg.value
                                                require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                            require msg.value * 125 * rate / 100 > 0
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * 125 * rate / 100
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require iCOBeginsAt < block.timestamp
    require msg.value > 0
    if iCOBeginsAt >= block.timestamp:
        if iCOBeginsAt + (168 * 24 * 3600) >= block.timestamp:
            if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                    if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                        if msg.value:
                            require msg.value
                            require msg.value * rate / msg.value == rate
                        require msg.value * rate > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                    else:
                        if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                            require msg.value * 125 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * 125 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                        require msg.value * 140 * rate / 100 > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 140 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                    else:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
            else:
                if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                    require msg.value * 150 * rate / 100 > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * 150 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, msg.sender);
                else:
                    if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                    else:
                        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                            require msg.value * 140 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * 140 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                        else:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
        else:
            if block.timestamp < iCOBeginsAt + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require msg.value * 175 * rate / 100 / msg.value == 175 * rate / 100
                require msg.value * 175 * rate / 100 > 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 175 * rate / 100
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value * 175 * rate / 100, 175 * rate / 100, msg.sender, msg.sender);
            else:
                if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                    if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                    else:
                        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                            require msg.value * 140 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * 140 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                        else:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                        require msg.value * 150 * rate / 100 > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 150 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, msg.sender);
                    else:
                        if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                        else:
                            if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                require msg.value * 140 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 140 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                            else:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
    else:
        if block.timestamp < iCOBeginsAt + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require msg.value * 2 * rate / msg.value == 2 * rate
            require msg.value * 2 * rate > 0
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * 2 * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * 2 * rate, 2 * rate, msg.sender, msg.sender);
        else:
            if iCOBeginsAt + (168 * 24 * 3600) >= block.timestamp:
                if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                    if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                            if msg.value:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * rate
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                        else:
                            if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                require msg.value * 125 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 125 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                    else:
                        if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                            require msg.value * 140 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * 140 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                        else:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                        require msg.value * 150 * rate / 100 > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 150 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, msg.sender);
                    else:
                        if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                        else:
                            if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                require msg.value * 140 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 140 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                            else:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
            else:
                if block.timestamp < iCOBeginsAt + (336 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require msg.value * 175 * rate / 100 / msg.value == 175 * rate / 100
                    require msg.value * 175 * rate / 100 > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * 175 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value * 175 * rate / 100, 175 * rate / 100, msg.sender, msg.sender);
                else:
                    if iCOBeginsAt + (336 * 24 * 3600) >= block.timestamp:
                        if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                            if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                    require msg.value * 125 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 125 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                        else:
                            if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                require msg.value * 140 * rate / 100 > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * 140 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                            else:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                    else:
                        if block.timestamp < iCOBeginsAt + (504 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require msg.value * 150 * rate / 100 / msg.value == 150 * rate / 100
                            require msg.value * 150 * rate / 100 > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * 150 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value * 150 * rate / 100, 150 * rate / 100, msg.sender, msg.sender);
                        else:
                            if iCOBeginsAt + (504 * 24 * 3600) >= block.timestamp:
                                if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * rate
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                else:
                                    if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                        require msg.value * 125 * rate / 100 > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * 125 * rate / 100
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
                            else:
                                if block.timestamp < iCOBeginsAt + (672 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require msg.value * 140 * rate / 100 / msg.value == 140 * rate / 100
                                    require msg.value * 140 * rate / 100 > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value * 140 * rate / 100
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, msg.value * 140 * rate / 100, 140 * rate / 100, msg.sender, msg.sender);
                                else:
                                    if iCOBeginsAt + (672 * 24 * 3600) >= block.timestamp:
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                    else:
                                        if block.timestamp >= iCOBeginsAt + (840 * 24 * 3600):
                                            if msg.value:
                                                require msg.value
                                                require msg.value * rate / msg.value == rate
                                            require msg.value * rate > 0
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * rate
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, msg.value * rate, rate, msg.sender, msg.sender);
                                        else:
                                            if msg.value:
                                                require msg.value
                                                require msg.value * 125 * rate / 100 / msg.value == 125 * rate / 100
                                            require msg.value * 125 * rate / 100 > 0
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * 125 * rate / 100
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, msg.value * 125 * rate / 100, 125 * rate / 100, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
