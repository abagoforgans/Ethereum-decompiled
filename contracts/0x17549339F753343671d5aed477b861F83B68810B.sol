contract main {




// =====================  Runtime code  =====================


address sub_5daa962eAddress;
address registrarAddress;
address registrarOwner;
mapping of struct sub_477c2707;

function sub_0645f82e(?) {
    return sub_477c2707[Mask(80, 176, arg1)].field_0, sub_477c2707[Mask(80, 176, arg1)].field_256
}

function registrarOwner() {
    return registrarOwner
}

function registrar() {
    return registrarAddress
}

function sub_477c2707(?) {
    return sub_477c2707[Mask(80, 176, arg1)].field_0
}

function sub_5daa962e(?) {
    return sub_5daa962eAddress
}

function sub_babdbca7(?) {
    return sub_477c2707[Mask(80, 176, arg1)].field_256
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == registrarOwner
    registrarOwner = arg1
}

function sub_414e07b0(?) {
    if not sub_477c2707[Mask(80, 176, arg1)].field_0:
        return 0
    return 1
}

function withdraw() {
    require msg.sender == registrarOwner
    call registrarOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_54a5737d(?) payable {
    if msg.value < 13278414110 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Eth to bid on domain.'
    require ext_code.size(registrarAddress)
    call registrarAddress.startAuction(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_477c2707[Mask(80, 176, arg2)].field_0 = arg1
    sub_477c2707[Mask(80, 176, arg2)].field_256 = msg.value
    emit 0xa70e1406: arg1, msg.value, Mask(80, 176, arg2)
}

function sub_d24bf913(?) {
    require msg.sender == registrarOwner
    if not sub_477c2707[Mask(80, 176, arg1)].field_0:
        revert with 0, 'Bid already retrieved or doesn't exist.'
    call registrarOwner with:
       value sub_477c2707[Mask(80, 176, arg1)].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_477c2707[Mask(80, 176, arg1)].field_0 = 0
    sub_477c2707[Mask(80, 176, arg1)].field_256 = 0
    emit 0x997c709d: sub_477c2707[Mask(80, 176, arg1)].field_0, sub_477c2707[Mask(80, 176, arg1)].field_256, Mask(80, 176, arg1)
    return sub_477c2707[Mask(80, 176, arg1)].field_0, sub_477c2707[Mask(80, 176, arg1)].field_256, Mask(80, 176, arg1)
}



}
