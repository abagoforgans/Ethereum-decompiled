contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x4257d02e2854c9c86d6975fcd14a1af4fa65a652 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x2ea533314069dc9b4df29e72bd1dfb64cc68456d with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PaymentReceived(msg.sender, msg.value);
}



}
