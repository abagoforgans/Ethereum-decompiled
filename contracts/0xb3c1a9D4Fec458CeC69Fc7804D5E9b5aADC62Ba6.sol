contract main {




// =====================  Runtime code  =====================


address clientAddress;
address sub_b74eb18eAddress;
uint256 sub_da3a77ed;
address starAddress;
address sub_60e6a440Address;

function client() {
    return clientAddress
}

function star() {
    return starAddress
}

function sub_60e6a440(?) {
    return sub_60e6a440Address
}

function sub_b74eb18e(?) {
    return sub_b74eb18eAddress
}

function sub_da3a77ed(?) {
    return sub_da3a77ed
}

function _fallback() payable {
    if not msg.value:
        call sub_b74eb18eAddress with:
             gas 2300 wei
    else:
        require sub_da3a77ed * msg.value / msg.value == sub_da3a77ed
        call sub_b74eb18eAddress with:
           value sub_da3a77ed * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call clientAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdrawRemainingTokens() {
    require ext_code.size(sub_60e6a440Address)
    call sub_60e6a440Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_60e6a440Address)
    call sub_60e6a440Address.0xa9059cbb with:
         gas gas_remaining wei
        args clientAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function splitStarFunds() {
    require ext_code.size(starAddress)
    call starAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(starAddress)
        call starAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_b74eb18eAddress, 0
    else:
        require sub_da3a77ed * ext_call.return_data[0] / ext_call.return_data[0] == sub_da3a77ed
        require ext_code.size(starAddress)
        call starAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_b74eb18eAddress, sub_da3a77ed * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(starAddress)
    call starAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(starAddress)
    call starAddress.0xa9059cbb with:
         gas gas_remaining wei
        args clientAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
