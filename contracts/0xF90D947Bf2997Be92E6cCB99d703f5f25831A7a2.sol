contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[9850 len 20]
    stor1 = code.data[9882 len 20]
    return code.data[198 len 9640]
}



// =====================  Runtime code  =====================


#
#  - sub_a048e7ae(?)
#  - sub_e2bd0fc4(?)
#
address sub_3e32a687Address;
address adminAddress;

function sub_3e32a687(?) {
    return sub_3e32a687Address
}

function admin() {
    return adminAddress
}

function suicide() {
    require msg.sender == adminAddress
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_423a3304(?) {
    require msg.sender == adminAddress
    sub_3e32a687Address = arg1
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function withdrawAll() {
    require msg.sender == adminAddress
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawAllTokens(address arg1) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}



}
