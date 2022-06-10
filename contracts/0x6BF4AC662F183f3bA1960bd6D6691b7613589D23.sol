contract main {




// =====================  Runtime code  =====================


address sub_23be605dAddress;
address sub_b04c6a0bAddress;
address sub_3b6e4ba0Address;
address tokenAddress;

function sub_23be605d(?) {
    return sub_23be605dAddress
}

function sub_3b6e4ba0(?) {
    return sub_3b6e4ba0Address
}

function sub_b04c6a0b(?) {
    return sub_b04c6a0bAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function transferDividends() {
    if sub_23be605dAddress != msg.sender:
        if sub_b04c6a0bAddress != msg.sender:
            require msg.sender == sub_3b6e4ba0Address
    require ext_code.size(tokenAddress)
    call tokenAddress.sendDividends() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
