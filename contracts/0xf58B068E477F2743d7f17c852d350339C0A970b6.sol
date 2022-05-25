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
}



}
