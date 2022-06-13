contract main {




// =====================  Runtime code  =====================


address sub_e2a5aba5Address;
address GOLDAddress;

function GOLD() {
    return GOLDAddress
}

function sub_e2a5aba5(?) {
    return sub_e2a5aba5Address
}

function _fallback() payable {
    revert
}

function transmute(uint256 arg1) {
    require ext_code.size(sub_e2a5aba5Address)
    call sub_e2a5aba5Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'LEAD transfer failed'
    require ext_code.size(GOLDAddress)
    call GOLDAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'GOLD transfer failed'
}



}
