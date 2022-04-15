contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor0 = code.data[2088 len 20]
    stor1 = code.data[2120 len 20]
    stor2 = stor1
    stor3 = block.timestamp + 374040
    stor4 = stor3 + (912 * 24 * 3600)
    return code.data[326 len 1750]
}



// =====================  Runtime code  =====================


address walletAddress;
address stor2;
uint256 startTime;
uint256 endTime;
uint256 weiRaised;

function endTime() {
    return endTime
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

function hasEnded() {
    return (block.timestamp > endTime)
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == walletAddress
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor2)
    if block.timestamp < startTime + (168 * 24 * 3600):
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (300 * msg.value / 10^10) + (30000 * msg.value / 10^10 / 100)
        require ext_call.success
        emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (30000 * msg.value / 10^10 / 100), msg.sender, arg1);
    else:
        if block.timestamp < startTime + (336 * 24 * 3600):
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (300 * msg.value / 10^10) + (5 * 3600 * msg.value / 10^10 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (5 * 3600 * msg.value / 10^10 / 100), msg.sender, arg1);
        else:
            if block.timestamp < startTime + (504 * 24 * 3600):
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (300 * msg.value / 10^10) + (12000 * msg.value / 10^10 / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (12000 * msg.value / 10^10 / 100), msg.sender, arg1);
            else:
                if block.timestamp >= startTime + (672 * 24 * 3600):
                    call stor2.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (300 * msg.value / 10^10) + (3000 * msg.value / 10^10 / 100)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (3000 * msg.value / 10^10 / 100), msg.sender, arg1);
                else:
                    call stor2.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (300 * msg.value / 10^10) + (6000 * msg.value / 10^10 / 100)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (6000 * msg.value / 10^10 / 100), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor2)
    if block.timestamp < startTime + (168 * 24 * 3600):
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (300 * msg.value / 10^10) + (30000 * msg.value / 10^10 / 100)
        require ext_call.success
        emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (30000 * msg.value / 10^10 / 100), msg.sender, msg.sender);
    else:
        if block.timestamp < startTime + (336 * 24 * 3600):
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (300 * msg.value / 10^10) + (5 * 3600 * msg.value / 10^10 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (5 * 3600 * msg.value / 10^10 / 100), msg.sender, msg.sender);
        else:
            if block.timestamp < startTime + (504 * 24 * 3600):
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (300 * msg.value / 10^10) + (12000 * msg.value / 10^10 / 100)
                require ext_call.success
                emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (12000 * msg.value / 10^10 / 100), msg.sender, msg.sender);
            else:
                if block.timestamp >= startTime + (672 * 24 * 3600):
                    call stor2.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (300 * msg.value / 10^10) + (3000 * msg.value / 10^10 / 100)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (3000 * msg.value / 10^10 / 100), msg.sender, msg.sender);
                else:
                    call stor2.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (300 * msg.value / 10^10) + (6000 * msg.value / 10^10 / 100)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (300 * msg.value / 10^10) + (6000 * msg.value / 10^10 / 100), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
