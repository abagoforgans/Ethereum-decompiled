contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenContractAddress;
uint256 tokenPrice;
uint256 tokensSold;

function tokensSold() {
    return tokensSold
}

function tokenContract() {
    return tokenContractAddress
}

function tokenPrice() {
    return tokenPrice
}

function endSale() {
    require msg.sender == stor0
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    selfdestruct(stor0)
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not tokenPrice:
        require not msg.value
    else:
        require tokenPrice
        require arg1 * tokenPrice / tokenPrice == arg1
        require msg.value == arg1 * tokenPrice
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    tokensSold += arg1
    emit Sell(msg.sender, arg1);
}

function _fallback() payable {
    if tokenPrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require tokenPrice
    if not tokenPrice:
        require not msg.value
    else:
        require tokenPrice
        require msg.value / tokenPrice * tokenPrice / tokenPrice == msg.value / tokenPrice
        require msg.value == msg.value / tokenPrice * tokenPrice
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= msg.value / tokenPrice
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / tokenPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    tokensSold += msg.value / tokenPrice
    emit Sell(msg.sender, msg.value / tokenPrice);
}



}
