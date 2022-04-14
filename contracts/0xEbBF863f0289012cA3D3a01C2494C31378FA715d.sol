contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor9 = 5 * 10^17
    require not msg.value
    stor0 = msg.sender
    stor2 = 1504791000
    stor3 = 1504794600
    stor5 = 500
    stor4 = 0x12b97a56f63f8cf75052b5b816d7ad9e794b8198
    stor1 = 0xa4e9ad64d2c89f96da37d00b856053d44bfa7986
    stor7 = 0
    stor8 = 10^18
    require 1504791000 >= block.timestamp
    require stor3 >= stor2
    return code.data[217 len 2201]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTimestamp;
uint256 endTimestamp;
address hardwareWalletAddress;
uint256 rate;
uint256 weiRaised;
uint256 minContribution;
uint256 hardcap;
uint256 raisedInPresale;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function raisedInPresale() {
    return raisedInPresale
}

function owner() {
    return owner
}

function endTimestamp() {
    return endTimestamp
}

function minContribution() {
    return minContribution
}

function hardcap() {
    return hardcap
}

function startTimestamp() {
    return startTimestamp
}

function hardwareWallet() {
    return hardwareWalletAddress
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    require raisedInPresale + weiRaised >= weiRaised
    if block.timestamp > endTimestamp:
        return (block.timestamp > endTimestamp)
    return raisedInPresale + weiRaised >= hardcap
}

function finishMinting() {
    require owner == msg.sender
    require raisedInPresale + weiRaised >= weiRaised
    if block.timestamp <= endTimestamp:
        require raisedInPresale + weiRaised >= hardcap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 60 * ext_call.return_data[0] / ext_call.return_data[0] == 60
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args hardwareWalletAddress, 60 * ext_call.return_data[0] / 40
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit MainSaleClosed()
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require msg.value >= minContribution
    require msg.value + weiRaised >= weiRaised
    require raisedInPresale >= 0
    require raisedInPresale + msg.value + weiRaised <= hardcap
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp < startTimestamp + 900:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (rate * msg.value) + (4 * rate * msg.value / 20)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (4 * rate * msg.value / 20), msg.sender, arg1);
    else:
        if block.timestamp < startTimestamp + 1800:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (rate * msg.value) + (3 * rate * msg.value / 20)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20), msg.sender, arg1);
        else:
            if block.timestamp >= startTimestamp + 2700:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (rate * msg.value) + (2 * rate * msg.value / 20)
                require ext_call.success
                emit TokenPurchase(msg.value, (rate * msg.value) + (2 * rate * msg.value / 20), msg.sender, arg1);
    call hardwareWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require msg.value >= minContribution
    require msg.value + weiRaised >= weiRaised
    require raisedInPresale >= 0
    require raisedInPresale + msg.value + weiRaised <= hardcap
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp < startTimestamp + 900:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value) + (4 * rate * msg.value / 20)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (4 * rate * msg.value / 20), msg.sender, msg.sender);
    else:
        if block.timestamp < startTimestamp + 1800:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 20)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20), msg.sender, msg.sender);
        else:
            if block.timestamp >= startTimestamp + 2700:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value) + (2 * rate * msg.value / 20)
                require ext_call.success
                emit TokenPurchase(msg.value, (rate * msg.value) + (2 * rate * msg.value / 20), msg.sender, msg.sender);
    call hardwareWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
