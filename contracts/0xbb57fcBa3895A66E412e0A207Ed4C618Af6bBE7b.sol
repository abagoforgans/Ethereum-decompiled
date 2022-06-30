contract main {




// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function sub_bfae915c(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function withdrawAll() {
    require msg.sender == adminAddress
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
