contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x64ad58e3002e6569c9dacd317d92fe82b2862f36 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
