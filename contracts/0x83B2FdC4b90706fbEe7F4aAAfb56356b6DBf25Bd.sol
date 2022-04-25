contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor4 = 420360 * 24 * 3600
    stor5 = 420936 * 24 * 3600
    stor6 = 421608 * 24 * 3600
    stor7 = 422280 * 24 * 3600
    stor8 = 422952 * 24 * 3600
    stor9 = 423624 * 24 * 3600
    stor10 = 424296 * 24 * 3600
    stor11 = 429024 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[5768 len 3014]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = msg.sender
    stor12 = 0
    return code.data[253 len 5515]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 investors;

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function investors() {
    return investors
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setNewWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.getTotalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp >= stor4:
        if block.timestamp >= stor6:
            if block.timestamp >= stor8:
                if block.timestamp >= stor11:
                    if block.timestamp <= stor11:
                        return 0
                else:
                    if ext_call.return_data[0] <= 2500000 * 10^18:
                        if block.timestamp <= stor11:
                            return 0
            else:
                if ext_call.return_data[0] <= 1000000 * 10^18:
                    if block.timestamp >= stor11:
                        if block.timestamp <= stor11:
                            return 0
                    else:
                        if ext_call.return_data[0] <= 2500000 * 10^18:
                            if block.timestamp <= stor11:
                                return 0
        else:
            if ext_call.return_data[0] <= 500000 * 10^18:
                if block.timestamp >= stor8:
                    if block.timestamp >= stor11:
                        if block.timestamp <= stor11:
                            return 0
                    else:
                        if ext_call.return_data[0] <= 2500000 * 10^18:
                            if block.timestamp <= stor11:
                                return 0
                else:
                    if ext_call.return_data[0] <= 1000000 * 10^18:
                        if block.timestamp >= stor11:
                            if block.timestamp <= stor11:
                                return 0
                        else:
                            if ext_call.return_data[0] <= 2500000 * 10^18:
                                if block.timestamp <= stor11:
                                    return 0
    return 1
}

function sendTokens(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    investors++
    require arg1
    if block.timestamp < stor4:
        if block.timestamp < stor5:
            if block.timestamp < stor6:
                if block.timestamp < stor7:
                    if block.timestamp < stor8:
                        if block.timestamp < stor9:
                            if block.timestamp < stor10:
                                require weiRaised >= weiRaised
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not arg2:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    require 90 * arg2 / arg2 == 90
                                    require (90 * arg2 / 1000) + weiRaised >= weiRaised
                                    weiRaised += 90 * arg2 / 1000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(90 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not arg2:
                                require weiRaised >= weiRaised
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                require 85 * arg2 / arg2 == 85
                                require (85 * arg2 / 1000) + weiRaised >= weiRaised
                                weiRaised += 85 * arg2 / 1000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(85 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not arg2:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    require 90 * arg2 / arg2 == 90
                                    require (90 * arg2 / 1000) + weiRaised >= weiRaised
                                    weiRaised += 90 * arg2 / 1000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(90 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not arg2:
                            require weiRaised >= weiRaised
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            require 80 * arg2 / arg2 == 80
                            require (80 * arg2 / 1000) + weiRaised >= weiRaised
                            weiRaised += 80 * arg2 / 1000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(80 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not arg2:
                                require weiRaised >= weiRaised
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                require 85 * arg2 / arg2 == 85
                                require (85 * arg2 / 1000) + weiRaised >= weiRaised
                                weiRaised += 85 * arg2 / 1000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(85 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not arg2:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    require 90 * arg2 / arg2 == 90
                                    require (90 * arg2 / 1000) + weiRaised >= weiRaised
                                    weiRaised += 90 * arg2 / 1000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(90 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp < stor7:
                    if not arg2:
                        require weiRaised >= weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        require ext_call.success
                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        require 75 * arg2 / arg2 == 75
                        require (75 * arg2 / 1000) + weiRaised >= weiRaised
                        weiRaised += 75 * arg2 / 1000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        require ext_call.success
                        emit TokenPurchase(75 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not arg2:
                            require weiRaised >= weiRaised
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            require 80 * arg2 / arg2 == 80
                            require (80 * arg2 / 1000) + weiRaised >= weiRaised
                            weiRaised += 80 * arg2 / 1000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(80 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not arg2:
                                require weiRaised >= weiRaised
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                require 85 * arg2 / arg2 == 85
                                require (85 * arg2 / 1000) + weiRaised >= weiRaised
                                weiRaised += 85 * arg2 / 1000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(85 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not arg2:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    require 90 * arg2 / arg2 == 90
                                    require (90 * arg2 / 1000) + weiRaised >= weiRaised
                                    weiRaised += 90 * arg2 / 1000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(90 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp < stor6:
                if not arg2:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2
                    require ext_call.success
                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                else:
                    require 70 * arg2 / arg2 == 70
                    require (70 * arg2 / 1000) + weiRaised >= weiRaised
                    weiRaised += 70 * arg2 / 1000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2
                    require ext_call.success
                    emit TokenPurchase(70 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp < stor7:
                    if not arg2:
                        require weiRaised >= weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        require ext_call.success
                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        require 75 * arg2 / arg2 == 75
                        require (75 * arg2 / 1000) + weiRaised >= weiRaised
                        weiRaised += 75 * arg2 / 1000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        require ext_call.success
                        emit TokenPurchase(75 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not arg2:
                            require weiRaised >= weiRaised
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            require 80 * arg2 / arg2 == 80
                            require (80 * arg2 / 1000) + weiRaised >= weiRaised
                            weiRaised += 80 * arg2 / 1000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(80 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not arg2:
                                require weiRaised >= weiRaised
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                require 85 * arg2 / arg2 == 85
                                require (85 * arg2 / 1000) + weiRaised >= weiRaised
                                weiRaised += 85 * arg2 / 1000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(85 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not arg2:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    require 90 * arg2 / arg2 == 90
                                    require (90 * arg2 / 1000) + weiRaised >= weiRaised
                                    weiRaised += 90 * arg2 / 1000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(90 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
    else:
        if block.timestamp < stor5:
            if not arg2:
                require weiRaised >= weiRaised
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2
                require ext_call.success
                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
            else:
                require 65 * arg2 / arg2 == 65
                require (65 * arg2 / 1000) + weiRaised >= weiRaised
                weiRaised += 65 * arg2 / 1000
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2
                require ext_call.success
                emit TokenPurchase(65 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp < stor6:
                if not arg2:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2
                    require ext_call.success
                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                else:
                    require 70 * arg2 / arg2 == 70
                    require (70 * arg2 / 1000) + weiRaised >= weiRaised
                    weiRaised += 70 * arg2 / 1000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2
                    require ext_call.success
                    emit TokenPurchase(70 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp < stor7:
                    if not arg2:
                        require weiRaised >= weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        require ext_call.success
                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        require 75 * arg2 / arg2 == 75
                        require (75 * arg2 / 1000) + weiRaised >= weiRaised
                        weiRaised += 75 * arg2 / 1000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        require ext_call.success
                        emit TokenPurchase(75 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not arg2:
                            require weiRaised >= weiRaised
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            require 80 * arg2 / arg2 == 80
                            require (80 * arg2 / 1000) + weiRaised >= weiRaised
                            weiRaised += 80 * arg2 / 1000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg2
                            require ext_call.success
                            emit TokenPurchase(80 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not arg2:
                                require weiRaised >= weiRaised
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                require 85 * arg2 / arg2 == 85
                                require (85 * arg2 / 1000) + weiRaised >= weiRaised
                                weiRaised += 85 * arg2 / 1000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2
                                require ext_call.success
                                emit TokenPurchase(85 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not arg2:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    require 90 * arg2 / arg2 == 90
                                    require (90 * arg2 / 1000) + weiRaised >= weiRaised
                                    weiRaised += 90 * arg2 / 1000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(90 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require weiRaised >= weiRaised
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    require ext_call.success
                                    emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        require weiRaised >= weiRaised
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(0, arg2, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 95 * arg2 / arg2 == 95
                                        require (95 * arg2 / 1000) + weiRaised >= weiRaised
                                        weiRaised += 95 * arg2 / 1000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), arg2
                                        require ext_call.success
                                        emit TokenPurchase(95 * arg2 / 1000, arg2, block.timestamp, msg.sender, arg1);
}

function buyXgoldTokens(address arg1) payable {
    investors++
    require arg1
    require msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.getTotalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= stor4
    if block.timestamp < stor6:
        require ext_call.return_data[0] <= 500000 * 10^18
    if block.timestamp < stor8:
        require ext_call.return_data[0] <= 1000000 * 10^18
    if block.timestamp < stor11:
        require ext_call.return_data[0] <= 2500000 * 10^18
    require block.timestamp <= stor11
    if block.timestamp < stor4:
        if block.timestamp < stor5:
            if block.timestamp < stor6:
                if block.timestamp < stor7:
                    if block.timestamp < stor8:
                        if block.timestamp < stor9:
                            if block.timestamp < stor10:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp < stor7:
                    if not msg.value:
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                    else:
                        require 1000 * msg.value / msg.value == 1000
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 1000 * msg.value / 75
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1000 * msg.value / 75, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp < stor6:
                if not msg.value:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                else:
                    require 1000 * msg.value / msg.value == 1000
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1000 * msg.value / 70
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1000 * msg.value / 70, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp < stor7:
                    if not msg.value:
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                    else:
                        require 1000 * msg.value / msg.value == 1000
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 1000 * msg.value / 75
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1000 * msg.value / 75, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
    else:
        if block.timestamp < stor5:
            if not msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                require 1000 * msg.value / msg.value == 1000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1000 * msg.value / 65
                require ext_call.success
                emit TokenPurchase(msg.value, 1000 * msg.value / 65, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp < stor6:
                if not msg.value:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                else:
                    require 1000 * msg.value / msg.value == 1000
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1000 * msg.value / 70
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1000 * msg.value / 70, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp < stor7:
                    if not msg.value:
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                    else:
                        require 1000 * msg.value / msg.value == 1000
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 1000 * msg.value / 75
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1000 * msg.value / 75, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, arg1);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, arg1);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, arg1);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    investors++
    require msg.sender
    require msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.getTotalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= stor4
    if block.timestamp < stor6:
        require ext_call.return_data[0] <= 500000 * 10^18
    if block.timestamp < stor8:
        require ext_call.return_data[0] <= 1000000 * 10^18
    if block.timestamp < stor11:
        require ext_call.return_data[0] <= 2500000 * 10^18
    require block.timestamp <= stor11
    if block.timestamp < stor4:
        if block.timestamp < stor5:
            if block.timestamp < stor6:
                if block.timestamp < stor7:
                    if block.timestamp < stor8:
                        if block.timestamp < stor9:
                            if block.timestamp < stor10:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
            else:
                if block.timestamp < stor7:
                    if not msg.value:
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                    else:
                        require 1000 * msg.value / msg.value == 1000
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1000 * msg.value / 75
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1000 * msg.value / 75, block.timestamp, msg.sender, msg.sender);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
        else:
            if block.timestamp < stor6:
                if not msg.value:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                else:
                    require 1000 * msg.value / msg.value == 1000
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1000 * msg.value / 70
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1000 * msg.value / 70, block.timestamp, msg.sender, msg.sender);
            else:
                if block.timestamp < stor7:
                    if not msg.value:
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                    else:
                        require 1000 * msg.value / msg.value == 1000
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1000 * msg.value / 75
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1000 * msg.value / 75, block.timestamp, msg.sender, msg.sender);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
    else:
        if block.timestamp < stor5:
            if not msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
            else:
                require 1000 * msg.value / msg.value == 1000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1000 * msg.value / 65
                require ext_call.success
                emit TokenPurchase(msg.value, 1000 * msg.value / 65, block.timestamp, msg.sender, msg.sender);
        else:
            if block.timestamp < stor6:
                if not msg.value:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                else:
                    require 1000 * msg.value / msg.value == 1000
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1000 * msg.value / 70
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1000 * msg.value / 70, block.timestamp, msg.sender, msg.sender);
            else:
                if block.timestamp < stor7:
                    if not msg.value:
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                    else:
                        require 1000 * msg.value / msg.value == 1000
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1000 * msg.value / 75
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1000 * msg.value / 75, block.timestamp, msg.sender, msg.sender);
                else:
                    if block.timestamp < stor8:
                        if not msg.value:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                        else:
                            require 1000 * msg.value / msg.value == 1000
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1000 * msg.value / 80
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1000 * msg.value / 80, block.timestamp, msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor9:
                            if not msg.value:
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                            else:
                                require 1000 * msg.value / msg.value == 1000
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1000 * msg.value / 85
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1000 * msg.value / 85, block.timestamp, msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor10:
                                if not msg.value:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    require 1000 * msg.value / msg.value == 1000
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1000 * msg.value / 90
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1000 * msg.value / 90, block.timestamp, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor11:
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                else:
                                    if not msg.value:
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                                    else:
                                        require 1000 * msg.value / msg.value == 1000
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1000 * msg.value / 95
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1000 * msg.value / 95, block.timestamp, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
