contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 sub_a71f7f1c;
uint8 stor3;
uint8 stor3; offset 8
address sub_5269c6e5Address; offset 16
uint256 stor3; offset 8
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of address sub_fef03da3;
mapping of address sub_29ad2b66;

function sub_29ad2b66(?) {
    require calldata.size - 4 >= 32
    return sub_29ad2b66[address(arg1)]
}

function sub_5269c6e5(?) {
    return sub_5269c6e5Address
}

function sub_90a289e7(?) {
    return bool(uint8(stor3.field_8))
}

function sub_a71f7f1c(?) {
    return sub_a71f7f1c
}

function sub_b0253a35(?) {
    return bool(uint8(stor3.field_0))
}

function sub_f1234f3f(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_f18a1568(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function sub_fef03da3(?) {
    require calldata.size - 4 >= 32
    return sub_fef03da3[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9bb4e83b(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit 0xb1faf7ee: msg.sender
}

function sub_b9e0aa96(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no WLcontrol'
    sub_29ad2b66[address(arg1)] = arg2
}

function sub_bc868f5b(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    sub_a71f7f1c = arg1
    emit 0x7a23f935: msg.sender, arg1
}

function sub_1bc2d790(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    sub_5269c6e5Address = arg1
    emit 0xa4d20ae8: msg.sender, arg1
}

function sub_2b14f183(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    uint8(stor3.field_0) = uint8(arg1)
    emit 0xe3776d94: msg.sender, bool(uint8(arg1))
}

function sub_4088e7d0(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
    emit 0xfe28bf5d: msg.sender, arg1
}

function sub_a02a8916(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0x4454cca7: arg1
}

function sub_417a579d(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit 0x20aba89e: arg1
}

function sub_79471c8b(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xa33a1072: arg1
}

function sub_240b6245(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor3.field_0):
        return bool(stor4[address(arg1)])
    require sub_a71f7f1c + stor5[address(arg1)] >= stor5[address(arg1)]
    if block.number <= sub_a71f7f1c + stor5[address(arg1)]:
        return bool(stor4[address(arg1)])
    else:
        return 0
}

function sub_4df48759(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor3.field_0):
        revert with 0, 'expiration disabled'
    require sub_a71f7f1c + stor5[address(arg1)] >= stor5[address(arg1)]
    require block.number <= sub_a71f7f1c + stor5[address(arg1)]
    return (sub_a71f7f1c + stor5[address(arg1)] - block.number)
}

function sub_67ec806f(?) {
    require calldata.size - 4 >= 128
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no WLcontrol'
    stor4[address(arg1)] = uint8(arg2)
    stor5[address(arg1)] = block.number
    sub_fef03da3[address(arg1)] = arg4
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no WLcontrol'
    sub_29ad2b66[address(arg1)] = arg3
    emit 0x5f033233: arg2, address(arg3), arg4, arg1
}

function sub_da79fc1a(?) {
    require calldata.size - 4 >= 128
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no WLcontrol'
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no WLcontrol'
    stor4[address(arg1)] = uint8(arg2)
    stor5[address(arg1)] = block.number
    sub_fef03da3[address(arg1)] = arg4
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no WLcontrol'
    sub_29ad2b66[address(arg1)] = arg3
    emit 0x5f033233: arg2, address(arg3), arg4, arg1
    emit 0x39c0948d: msg.sender, arg2, address(arg3), arg4, arg1
}

function sub_4867c36a(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor3.field_8):
        if uint8(stor3.field_0):
            require sub_a71f7f1c + stor5[address(arg1)] >= stor5[address(arg1)]
            if block.number > sub_a71f7f1c + stor5[address(arg1)]:
                revert with 0, 'whitelist expired'
    else:
        if uint8(stor3.field_0):
            require sub_a71f7f1c + stor5[address(arg1)] >= stor5[address(arg1)]
            if block.number > sub_a71f7f1c + stor5[address(arg1)]:
                if not sub_29ad2b66[address(arg1)]:
                    revert with 0, 'expired, unknown identity'
                require ext_code.size(sub_5269c6e5Address)
                call sub_5269c6e5Address.0x68845a78 with:
                     gas gas_remaining wei
                    args address(arg1), sub_29ad2b66[address(arg1)], sub_fef03da3[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint8(stor3.field_0):
                require sub_a71f7f1c + stor5[address(arg1)] >= stor5[address(arg1)]
                if block.number > sub_a71f7f1c + stor5[address(arg1)]:
                    revert with 0, 'whitelist expired'
    if not stor4[address(arg1)]:
        revert with 0, 'not whitelisted'
    return 1
}



}
