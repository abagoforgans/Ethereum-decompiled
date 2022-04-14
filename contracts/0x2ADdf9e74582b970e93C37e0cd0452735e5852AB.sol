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
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = 1504785900
    stor3 = 417997 * 3600
    stor5 = 500
    stor4 = 0x12b97a56f63f8cf75052b5b816d7ad9e794b8198
    create contract with 0 wei
                    code: code.data[1976 len 3281]
    require create.new_address
    stor1 = address(create.new_address)
    stor7 = 0
    stor8 = 50000 * 10^18
    require stor2 >= block.timestamp
    require stor3 >= stor2
    return code.data[261 len 1715]
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
uint256 numberOfPurchasers;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function numberOfPurchasers() {
    return numberOfPurchasers
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
    if block.timestamp > endTimestamp:
        return (block.timestamp > endTimestamp)
    return weiRaised >= hardcap
}

function finishPresale() {
    require owner == msg.sender
    if block.timestamp <= endTimestamp:
        require weiRaised >= hardcap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit PreSaleClosed()
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require msg.value >= minContribution
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardcap
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    numberOfPurchasers++
    require ext_code.size(tokenAddress)
    if numberOfPurchasers >= 2:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (rate * msg.value) + (rate * msg.value / 4)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 4), msg.sender, arg1);
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (rate * msg.value) + (3 * rate * msg.value / 10)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 10), msg.sender, arg1);
    call hardwareWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require block.timestamp >= startTimestamp
    require block.timestamp <= endTimestamp
    require msg.value >= minContribution
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardcap
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    numberOfPurchasers++
    require ext_code.size(tokenAddress)
    if numberOfPurchasers >= 2:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value) + (rate * msg.value / 4)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 4), msg.sender, msg.sender);
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 10)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 10), msg.sender, msg.sender);
    call hardwareWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
