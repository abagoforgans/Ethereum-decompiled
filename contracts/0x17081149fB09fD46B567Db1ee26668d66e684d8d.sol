contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 price;
uint256 stor5;

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function price() {
    return price
}

function token() {
    return tokenAddress
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require msg.value >= price
    require price
    emit ProcessedRemainder((msg.value % price));
    if msg.value % price > 0:
        call arg1 with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.value % price <= msg.value
    stor5 = msg.value - (msg.value % price)
    require price
    if not msg.value - (msg.value % price) / price:
        require stor5 + weiRaised >= weiRaised
        weiRaised += stor5
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(stor5, 0, msg.sender, arg1);
    else:
        require 10^18 * msg.value - (msg.value % price) / price / msg.value - (msg.value % price) / price == 10^18
        require stor5 + weiRaised >= weiRaised
        weiRaised += stor5
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, address(arg1), 10^18 * msg.value - (msg.value % price) / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(stor5, 10^18 * msg.value - (msg.value % price) / price, msg.sender, arg1);
    call walletAddress with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require msg.value >= price
    require price
    emit ProcessedRemainder((msg.value % price));
    if msg.value % price > 0:
        call msg.sender with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.value % price <= msg.value
    stor5 = msg.value - (msg.value % price)
    require price
    if not msg.value - (msg.value % price) / price:
        require stor5 + weiRaised >= weiRaised
        weiRaised += stor5
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(stor5, 0, msg.sender, msg.sender);
    else:
        require 10^18 * msg.value - (msg.value % price) / price / msg.value - (msg.value % price) / price == 10^18
        require stor5 + weiRaised >= weiRaised
        weiRaised += stor5
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, msg.sender, 10^18 * msg.value - (msg.value % price) / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(stor5, 10^18 * msg.value - (msg.value % price) / price, msg.sender, msg.sender);
    call walletAddress with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
