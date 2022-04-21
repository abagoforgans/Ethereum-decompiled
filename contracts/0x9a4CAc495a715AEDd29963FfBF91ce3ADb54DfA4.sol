contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[3899 len 20]
    stor1 = code.data[3931 len 20]
    stor2 = code.data[3931 len 20]
    return code.data[118 len 3769]
}



// =====================  Runtime code  =====================


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

function sub_1146e105(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    return bool(ext_call.success)
}

function sub_f711cdf7(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    require ext_call.success
    return 1
}

function sub_394f000d(?) payable {
    require adminAddress == msg.sender
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit EtherDeltaWithdraw(arg1);
}

function sub_3d0e7dee(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    require ext_call.success
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    return 1
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
    call stor2.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    emit EtherDeltaDeposit(arg1);
    return 1
}

function sub_4775f7ee(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    emit 0x54bb173b: bool(ext_call.success), bool(ext_call.success)
    return bool(ext_call.success)
}

function sub_8cd8b6ca(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    require ext_call.success
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg3[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg4[all]
    return 1
}

function sub_c3a75dcc(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg3[all]
    emit 0xd7e41734: bool(ext_call.success), bool(ext_call.success), bool(ext_call.success)
    return bool(ext_call.success)
}

function sub_4ef8c5d4(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg3[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg4[all]
    emit 0x8a4df938: bool(ext_call.success), bool(ext_call.success), bool(ext_call.success), bool(ext_call.success)
    return bool(ext_call.success)
}

function sub_2ad7f0b4(?) {
    require adminAddress == msg.sender
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    require ext_call.success
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg3[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg4[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg5[all]
    call stor2 with:
         gas gas_remaining - 25710 wei
        args arg6[all]
    return 1
}



}
