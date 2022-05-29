contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    if msg.sender == stor0:
        selfdestruct(stor0)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
