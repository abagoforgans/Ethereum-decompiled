contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = 0x4e28639effed150bd154222452ea6e7e605738f3
    stor1 = 0xf42d209fc46f678e8d31717d7ce14c69724a60e
    stor2 = stor1
    return code.data[325 len 1879]
}



// =====================  Runtime code  =====================


address walletAddress;
address stor2;
uint256 startTime;
uint256 endTime;
uint256 weiRaised;
uint8 stor6;

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

function startSale(uint256 arg1) {
    require msg.sender == walletAddress
    require not stor6
    startTime = block.timestamp + (60 * arg1)
    endTime = startTime + (720 * 24 * 3600)
    stor6 = 1
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
            args address(arg1), (1300 * msg.value / 10^10) + (26000 * msg.value / 10^10 / 100)
        require ext_call.success
        emit TokenPurchase(msg.value, (1300 * msg.value / 10^10) + (26000 * msg.value / 10^10 / 100), msg.sender, arg1);
    else:
        if block.timestamp >= startTime + (336 * 24 * 3600):
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (1300 * msg.value / 10^10) + (6500 * msg.value / 10^10 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (1300 * msg.value / 10^10) + (6500 * msg.value / 10^10 / 100), msg.sender, arg1);
        else:
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (1300 * msg.value / 10^10) + (13000 * msg.value / 10^10 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (1300 * msg.value / 10^10) + (13000 * msg.value / 10^10 / 100), msg.sender, arg1);
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
            args msg.sender, (1300 * msg.value / 10^10) + (26000 * msg.value / 10^10 / 100)
        require ext_call.success
        emit TokenPurchase(msg.value, (1300 * msg.value / 10^10) + (26000 * msg.value / 10^10 / 100), msg.sender, msg.sender);
    else:
        if block.timestamp >= startTime + (336 * 24 * 3600):
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (1300 * msg.value / 10^10) + (6500 * msg.value / 10^10 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (1300 * msg.value / 10^10) + (6500 * msg.value / 10^10 / 100), msg.sender, msg.sender);
        else:
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (1300 * msg.value / 10^10) + (13000 * msg.value / 10^10 / 100)
            require ext_call.success
            emit TokenPurchase(msg.value, (1300 * msg.value / 10^10) + (13000 * msg.value / 10^10 / 100), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
