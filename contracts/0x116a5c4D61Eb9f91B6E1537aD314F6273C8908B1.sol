contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function stop() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0xf50ab247 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
