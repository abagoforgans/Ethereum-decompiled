contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 tokenSold;
uint256 price;
address tokenAddress;
uint256 deadline;
uint256 sub_cb3aa74c;
mapping of uint256 balanceOf;
uint8 minToken;
uint8 stor8; offset 16

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenSold() {
    return tokenSold
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function price() {
    return price
}

function minToken() {
    return minToken
}

function sub_cb3aa74c(?) {
    return sub_cb3aa74c
}

function crowdsaleClosed() {
    return bool(stor8)
}

function token() {
    return tokenAddress
}

function sub_28dfa4e5(?) {
    if block.timestamp < deadline:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9a1af71f(?) {
    require msg.sender == owner
    if block.timestamp >= deadline:
        require arg1 > 0
        require sub_cb3aa74c > 0
        deadline = block.timestamp + (24 * 3600 * arg1)
        if arg2:
            require arg2
            require arg2 / arg2 == 1
        price = arg2
        minToken = arg3
        require 1 <= sub_cb3aa74c
        sub_cb3aa74c--
}

function _fallback() payable {
    require not stor8
    require block.timestamp <= deadline
    require price
    if msg.value / price:
        require msg.value / price
        require msg.value / price / msg.value / price == 1
    require msg.value / price >= minToken
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require tokenSold + msg.value >= tokenSold
    tokenSold += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
    emit BuyTokens(msg.sender, msg.value / price);
    emit FundTransfer(msg.sender, msg.value / price, 1);
}

function buyTokens() payable {
    require not stor8
    require block.timestamp <= deadline
    require price
    if msg.value / price:
        require msg.value / price
        require msg.value / price / msg.value / price == 1
    require msg.value / price >= minToken
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require tokenSold + msg.value >= tokenSold
    tokenSold += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
    emit BuyTokens(msg.sender, msg.value / price);
    emit FundTransfer(msg.sender, msg.value / price, 1);
    return (msg.value / price)
}



}
