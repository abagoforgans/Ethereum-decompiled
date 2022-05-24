contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 price;
uint256 stor6;

function rate() {
    return rate
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

function price() {
    return price
}

function token() {
    return tokenAddress
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    price = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    stor6 = msg.value - (msg.value % price)
    require price
    if not stor6 / price:
        require weiRaised + stor6 >= weiRaised
        weiRaised += stor6
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(stor6, 0, msg.sender, arg1);
    else:
        require stor6 / price
        require 10^18 * stor6 / price / stor6 / price == 10^18
        require weiRaised + stor6 >= weiRaised
        weiRaised += stor6
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(arg1), 10^18 * stor6 / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(stor6, 10^18 * stor6 / price, msg.sender, arg1);
    call walletAddress with:
       value stor6 wei
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
    stor6 = msg.value - (msg.value % price)
    require price
    if not stor6 / price:
        require weiRaised + stor6 >= weiRaised
        weiRaised += stor6
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(stor6, 0, msg.sender, msg.sender);
    else:
        require stor6 / price
        require 10^18 * stor6 / price / stor6 / price == 10^18
        require weiRaised + stor6 >= weiRaised
        weiRaised += stor6
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, 10^18 * stor6 / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(stor6, 10^18 * stor6 / price, msg.sender, msg.sender);
    call walletAddress with:
       value stor6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
