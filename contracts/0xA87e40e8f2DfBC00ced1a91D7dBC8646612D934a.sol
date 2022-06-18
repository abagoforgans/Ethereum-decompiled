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

function _fallback() payable {
    revert
}

function sub_a49a4ca8(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'Must be admin'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function endSale() payable {
    if stor0 != msg.sender:
        revert with 0, 'Must be admin'
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
    if not ext_call.return_data[0]:
        revert with 0, 'cannot transfer to admin'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not tokenPrice:
        if msg.value:
            revert with 0, 'Wrong payment value'
    else:
        require tokenPrice
        if arg1 * tokenPrice / tokenPrice != arg1:
            revert with 0, 'Unable to safely multiply'
        if arg1 * tokenPrice != msg.value:
            revert with 0, 'Wrong payment value'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Exceeds available tokens.'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer tokens'
    tokensSold += arg1
    emit Sell(msg.sender, arg1);
}



}
