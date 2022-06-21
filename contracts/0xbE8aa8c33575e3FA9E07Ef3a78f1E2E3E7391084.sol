contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_98ec707c(?) payable {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
