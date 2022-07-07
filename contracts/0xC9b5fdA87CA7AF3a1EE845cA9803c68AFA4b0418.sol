contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x85716f7d79ead33e4516f51f85b780cbb30f86f6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
