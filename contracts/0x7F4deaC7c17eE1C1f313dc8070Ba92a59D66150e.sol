contract main {




// =====================  Runtime code  =====================


address dAddress;

function d() {
    return dAddress
}

function _fallback() payable {
    dAddress = 0x2d7f8ad78c747276cb8f3047ee01fb61478af2f2
    call 0x2d7f8ad78c747276cb8f3047ee01fb61478af2f2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
