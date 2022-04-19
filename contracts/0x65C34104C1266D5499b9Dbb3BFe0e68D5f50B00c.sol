contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[4115 len 20]
    stor1 = code.data[4147 len 20]
    stor2 = code.data[4147 len 20]
    return code.data[118 len 3985]
}



// =====================  Runtime code  =====================


#
#  - sub_c0fad6ff(?)
#
address adminAddress;
address sub_95fa9fc9Address;
address stor2;

function sub_95fa9fc9(?) {
    return sub_95fa9fc9Address
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function fund() payable {
    emit Fund(msg.sender, msg.value, eth.balance(this.address));
}

function sub_5a1e7337(?) {
    require adminAddress == msg.sender
    sub_95fa9fc9Address = arg1
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function sub_394f000d(?) payable {
    require adminAddress == msg.sender
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit EtherDeltaWithdraw(arg1);
}

function transferOut(uint256 arg1) {
    require adminAddress == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(arg1);
    return 1
}

function sub_f2e3a5a4(?) {
    require adminAddress == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    emit EtherDeltaDeposit(arg1);
    return 1
}



}
