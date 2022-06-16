contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_4e8c0bd6(?) {
    if stor0 != tx.origin:
    selfdestruct(tx.origin)
}

function _fallback() payable {
  stop
}

function sub_e502677a(?) payable {
    if msg.value >= eth.balance(this.address):
        call tx.origin with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
