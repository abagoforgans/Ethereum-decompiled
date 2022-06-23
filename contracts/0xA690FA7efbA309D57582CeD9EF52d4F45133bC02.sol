contract main {




// =====================  Runtime code  =====================


const sub_3cc1c51e(?) = 1

const sub_5fa2c627(?) = 3


mapping of struct stor0;
address sub_54879918Address;

function sub_54879918(?) {
    return sub_54879918Address
}

function _fallback() payable {
    revert
}

function sub_008b95d9(?) {
    return 3 <= stor0[address(arg1)].field_0
}

function sub_8e9e888f(?) {
    return 1 <= stor0[address(arg1)].field_0
}

function sub_0b34798f(?) {
    return stor0[arg1].field_0, bool(stor0[arg1].field_256)
}

function sub_2d00a151(?) {
    require msg.sender == sub_54879918Address
    sub_54879918Address = arg1
}

function removeKYC(address arg1) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor0[address(arg1)].field_256:
        stor0[address(arg1)].field_256 = 0
    stor0[address(arg1)].field_0 = 0
    emit 0xdab4880f: arg1
}

function sub_b84d1d2f(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 < 1:
        return 0
    if stor0[address(arg1)].field_0:
        return 0
    stor0[address(arg1)].field_0 = arg2
    emit 0xa4f53b39: arg2, arg1
    return 1
}

function sub_f7bc5d1f(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not stor0[address(arg1)].field_0:
        return 0
    stor0[address(arg1)].field_256 = not stor0[address(arg1)].field_256 or Mask(248, 8, stor0[address(arg1)].field_256)
    emit 0xe5da293a: bool(uint8(not stor0[address(arg1)].field_256)), arg1
    return 1
}

function sub_2a696080(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 < 1:
        return 0
    if not stor0[address(arg1)].field_0:
        return 0
    if arg2 >= 3:
        if stor0[address(arg1)].field_256:
            stor0[address(arg1)].field_256 = 0
    stor0[address(arg1)].field_0 = arg2
    emit 0xb4686ec0: arg2, arg1
    return 1
}



}
