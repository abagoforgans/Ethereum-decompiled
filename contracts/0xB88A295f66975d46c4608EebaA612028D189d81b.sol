contract main {




// =====================  Runtime code  =====================


function _fallback() {
    call 0x74fd51a98a4a1ecbef8cc43be801cce630e260bd with:
         gas gas_remaining wei
    require ext_code.size(0x74fd51a98a4a1ecbef8cc43be801cce630e260bd)
    call 0x74fd51a98a4a1ecbef8cc43be801cce630e260bd.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x74fd51a98a4a1ecbef8cc43be801cce630e260bd)
    call 0x74fd51a98a4a1ecbef8cc43be801cce630e260bd.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(msg.sender)
}



}
