contract main {




// =====================  Runtime code  =====================


address stor0;

function end() {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function get() payable {
    if msg.value >= eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
