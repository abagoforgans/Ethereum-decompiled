contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address fundWalletAddress;
address adminAddress;
uint256 rate;
uint256 amountRaised;
uint8 stor5;
uint256 cap;
mapping of uint8 stor7;

function rate() {
    return rate
}

function cap() {
    return cap
}

function fundWallet() {
    return fundWalletAddress
}

function isWhiteListed(address arg1) {
    return bool(stor7[address(arg1)])
}

function amountRaised() {
    return amountRaised
}

function crowdsaleOpen() {
    return bool(stor5)
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return amountRaised >= cap
}

function getEtherRaised() {
    return (amountRaised / 10^18)
}

function setRate(uint256 arg1) {
    require msg.sender == adminAddress
    rate = arg1
}

function setCrowdsaleOpen(bool arg1) {
    require msg.sender == adminAddress
    stor5 = uint8(arg1)
}

function blockAccount(address arg1) {
    require msg.sender == adminAddress
    stor7[address(arg1)] = 0
}

function approveAccount(address arg1) {
    require msg.sender == adminAddress
    stor7[address(arg1)] = 1
}

function lockRemainingTokens() {
    require msg.sender == adminAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyTokens() payable {
    require stor5
    require msg.sender
    require msg.value
    require stor7[address(msg.sender)]
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value <= cap
    if not msg.value:
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call fundWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call fundWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
}

function _fallback() payable {
    require stor5
    require msg.sender
    require msg.value
    require stor7[address(msg.sender)]
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value <= cap
    if not msg.value:
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call fundWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require amountRaised + msg.value >= amountRaised
        amountRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call fundWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
}



}
