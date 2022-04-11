contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[62 len 2425]
}



// =====================  Runtime code  =====================


address owner;
uint256 startDate;
uint256 endDate;
uint256 cap;
address walletAddress;
uint256 weiRaised;
address tokenAddress;

function startDate() {
    return startDate
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

function owner() {
    return owner
}

function endDate() {
    return endDate
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function saleActive() {
    if block.timestamp < startDate:
        return block.timestamp >= startDate
    if block.timestamp > endDate:
        return block.timestamp <= endDate
    return (weiRaised < cap)
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require not tokenAddress
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require arg3 >= block.timestamp
    require arg3 < arg4
    require arg2
    tokenAddress = arg1
    walletAddress = arg2
    startDate = arg3
    endDate = arg4
    cap = arg5
}

function getRateAt(uint256 arg1) {
    if arg1 < startDate:
        return 0
    if arg1 < startDate + (168 * 24 * 3600):
        return 2000
    if arg1 < startDate + (336 * 24 * 3600):
        return 1800
    if arg1 < startDate + (504 * 24 * 3600):
        return 1700
    if arg1 < startDate + (672 * 24 * 3600):
        return 1600
    if arg1 < startDate + (840 * 24 * 3600):
        return 1500
    if arg1 < startDate + (1176 * 24 * 3600):
        return 1400
    if arg1 < startDate + (1512 * 24 * 3600):
        return 1300
    if arg1 < startDate + (1848 * 24 * 3600):
        return 1200
    if arg1 > endDate:
        return 0
    return 1100
}

function finalize() {
    require owner == msg.sender
    if block.timestamp >= startDate:
        if block.timestamp <= endDate:
            require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, ext_call.return_data[0] / 5
    require ext_call.success
    emit TokenReserveMinted((ext_call.return_data[0] / 5));
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require weiRaised < cap
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if block.timestamp < startDate:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        if block.timestamp < startDate + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 2000 * msg.value / msg.value == 2000
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 2000 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 2000 * msg.value, msg.sender, arg1);
        else:
            if block.timestamp < startDate + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 1800 * msg.value / msg.value == 1800
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1800 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1800 * msg.value, msg.sender, arg1);
            else:
                if block.timestamp < startDate + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 1700 * msg.value / msg.value == 1700
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1700 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1700 * msg.value, msg.sender, arg1);
                else:
                    if block.timestamp < startDate + (672 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 1600 * msg.value / msg.value == 1600
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 1600 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1600 * msg.value, msg.sender, arg1);
                    else:
                        if block.timestamp < startDate + (840 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require 1500 * msg.value / msg.value == 1500
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 1500 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1500 * msg.value, msg.sender, arg1);
                        else:
                            if block.timestamp < startDate + (1176 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require 1400 * msg.value / msg.value == 1400
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 1400 * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1400 * msg.value, msg.sender, arg1);
                            else:
                                if block.timestamp < startDate + (1512 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require 1300 * msg.value / msg.value == 1300
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 1300 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1300 * msg.value, msg.sender, arg1);
                                else:
                                    if block.timestamp < startDate + (1848 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require 1200 * msg.value / msg.value == 1200
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 1200 * msg.value
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1200 * msg.value, msg.sender, arg1);
                                    else:
                                        if block.timestamp > endDate:
                                            if msg.value:
                                                require msg.value
                                                require not 0 / msg.value
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 0
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                        else:
                                            if msg.value:
                                                require msg.value
                                                require 1100 * msg.value / msg.value == 1100
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 1100 * msg.value
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 1100 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require weiRaised < cap
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if block.timestamp < startDate:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        if block.timestamp < startDate + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 2000 * msg.value / msg.value == 2000
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2000 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 2000 * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp < startDate + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 1800 * msg.value / msg.value == 1800
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1800 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1800 * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp < startDate + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 1700 * msg.value / msg.value == 1700
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1700 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1700 * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp < startDate + (672 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 1600 * msg.value / msg.value == 1600
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1600 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1600 * msg.value, msg.sender, msg.sender);
                    else:
                        if block.timestamp < startDate + (840 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require 1500 * msg.value / msg.value == 1500
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1500 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1500 * msg.value, msg.sender, msg.sender);
                        else:
                            if block.timestamp < startDate + (1176 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require 1400 * msg.value / msg.value == 1400
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1400 * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1400 * msg.value, msg.sender, msg.sender);
                            else:
                                if block.timestamp < startDate + (1512 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require 1300 * msg.value / msg.value == 1300
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 1300 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1300 * msg.value, msg.sender, msg.sender);
                                else:
                                    if block.timestamp < startDate + (1848 * 24 * 3600):
                                        if msg.value:
                                            require msg.value
                                            require 1200 * msg.value / msg.value == 1200
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 1200 * msg.value
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 1200 * msg.value, msg.sender, msg.sender);
                                    else:
                                        if block.timestamp > endDate:
                                            if msg.value:
                                                require msg.value
                                                require not 0 / msg.value
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 0
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            if msg.value:
                                                require msg.value
                                                require 1100 * msg.value / msg.value == 1100
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 1100 * msg.value
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 1100 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
