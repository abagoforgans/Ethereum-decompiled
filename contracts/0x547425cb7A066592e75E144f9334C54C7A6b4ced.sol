contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct sub_e6d90ea3;
address sub_54879918Address;

function sub_54879918(?) {
    return sub_54879918Address
}

function sub_e6d90ea3(?) {
    return bool(sub_e6d90ea3[arg1].field_0), 
           sub_e6d90ea3[arg1].field_0,
           sub_e6d90ea3[arg1].field_256,
           sub_e6d90ea3[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_4a500089(?) {
    return bool(stor0[arg1].field_0), stor0[arg1].field_256
}

function sub_2d00a151(?) {
    require msg.sender == sub_54879918Address
    sub_54879918Address = arg1
}

function sub_4e30f90d(?) {
    if not stor0[address(arg1)].field_0:
        return 0
    if stor0[address(arg1)].field_256 > block.timestamp:
        return 0
    stor0[address(arg1)].field_0 = 0
    emit 0x450cd0fe: arg1
    return 1
}

function sub_a0c7d7c7(?) {
    if not sub_e6d90ea3[address(arg1)].field_0:
        return 0
    if sub_e6d90ea3[address(arg1)].field_512 > block.timestamp:
        return 0
    sub_e6d90ea3[address(arg1)].field_0 = 0
    emit 0xa9b2c452: arg1
    return 1
}

function sub_2e11ccee(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not stor0[address(arg1)].field_0:
        stor0[address(arg1)].field_0 = 1
    else:
        if stor0[address(arg1)].field_256 > block.timestamp:
            return 0
        if not stor0[address(arg1)].field_0:
            stor0[address(arg1)].field_0 = 1
    stor0[address(arg1)].field_256 = arg2 + block.timestamp
    emit 0x3a5a6f3e: arg2, arg1
    return 1
}

function sub_f18de41c(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1a69c8b2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not sub_e6d90ea3[address(arg1)].field_0:
        sub_e6d90ea3[address(arg1)].field_0 = 1
    else:
        if sub_e6d90ea3[address(arg1)].field_512 > block.timestamp:
            return 0
        if not sub_e6d90ea3[address(arg1)].field_0:
            sub_e6d90ea3[address(arg1)].field_0 = 1
    sub_e6d90ea3[address(arg1)].field_8 = arg2
    sub_e6d90ea3[address(arg1)].field_256 = 0
    sub_e6d90ea3[address(arg1)].field_512 = arg3 + block.timestamp
    emit 0x959af49a: arg3, arg1, arg2
    return 1
}

function sub_5f28cf80(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x90d6b45f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb34798f with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3cc1c51e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        emit 0xccd6d2b0: arg1, arg2
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3cc1c51e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == ext_call.return_data[0]:
        if ext_call.return_data[32]:
            emit 0x26da55df: arg1, arg2
            return 0
    if stor0[address(arg2)].field_0:
        if block.timestamp < stor0[address(arg2)].field_256:
            emit 0x77a5ceb8: arg1, arg2
            return 0
        stor0[address(arg2)].field_0 = 0
    if not sub_e6d90ea3[address(arg2)].field_0:
        return arg3
    if block.timestamp >= sub_e6d90ea3[address(arg2)].field_512:
        sub_e6d90ea3[address(arg2)].field_0 = 0
        return arg3
    if not uint128(sub_e6d90ea3[address(arg2)].field_8 - sub_e6d90ea3[address(arg2)].field_256):
        emit 0x176c1404: arg1, arg2
        return 0
    if arg3 <= uint128(sub_e6d90ea3[address(arg2)].field_8 - sub_e6d90ea3[address(arg2)].field_256):
        sub_e6d90ea3[address(arg2)].field_256 = uint128(arg3 + sub_e6d90ea3[address(arg2)].field_256)
        return arg3
    emit 0x84f5ffb0: uint128(sub_e6d90ea3[address(arg2)].field_8 - sub_e6d90ea3[address(arg2)].field_256), arg2, arg1
    sub_e6d90ea3[address(arg2)].field_256 = sub_e6d90ea3[address(arg2)].field_8
    return uint128(sub_e6d90ea3[address(arg2)].field_8 - sub_e6d90ea3[address(arg2)].field_256)
}



}
