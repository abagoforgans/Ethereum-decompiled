contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_aeefe31f;
address sub_f3862cd8Address;
address sub_cff8834cAddress;

function sub_aeefe31f(?) {
    return sub_aeefe31f[address(arg1)]
}

function sub_cff8834c(?) {
    return sub_cff8834cAddress
}

function sub_f3862cd8(?) {
    return sub_f3862cd8Address
}

function kill() {
    if 0x4d9f0ce2893f2f1bc0a0f0ba60aee3176c9f5f91 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_d961dbd1(?) {
    require ext_code.size(sub_cff8834cAddress)
    call sub_cff8834cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_aeefe31f[address(msg.sender)] += arg1
}



}
