contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address tokenFromAddress;
address sub_17c8330cAddress;

function sub_17c8330c(?) {
    return sub_17c8330cAddress
}

function tokenFrom() {
    return tokenFromAddress
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function deposit(address arg1) payable {
    call sub_17c8330cAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value / 8 * 10^13:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenFromAddress, address(arg1), 0
    else:
        if 100 * 10^6 * msg.value / 8 * 10^13 / msg.value / 8 * 10^13 != 100 * 10^6:
            revert with 0, 'SafeMath mul failed'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenFromAddress, address(arg1), 100 * 10^6 * msg.value / 8 * 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
