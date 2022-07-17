contract main {




// =====================  Runtime code  =====================


address stor0;
uint32 sub_ed703838; offset 160
address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of uint8 sub_d567a7f8;
mapping of uint16 stor10;
mapping of uint256 sub_7a81bfad;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint8 stor13; offset 24
uint8 stor13; offset 32
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 sub_02bd01d8;
uint256 sub_e776e991;
uint256 sub_d754fe32;

function sub_02bd01d8(?) {
    return sub_02bd01d8
}

function sub_7a81bfad(?) {
    return sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24]
}

function sub_a62994e5(?) {
    return sub_7a81bfad[address(arg1)][arg2]
}

function sub_d567a7f8(?) {
    return sub_d567a7f8[address(arg1)]
}

function sub_d754fe32(?) {
    return sub_d754fe32
}

function sub_e776e991(?) {
    return sub_e776e991
}

function sub_ed703838(?) {
    return sub_ed703838
}

function _fallback() {
  stop
}

function sub_5de593cd(?) {
    return stor2[address(arg1)], stor7[address(arg1)], sub_d567a7f8[address(arg1)], stor8[address(arg1)], stor10[address(arg1)]
}

function sub_957f9c02(?) {
    return (sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1])
}

function sub_33e86baf(?) {
    return (sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 2] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 3] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 4] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 5] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 6])
}

function sub_0896b68f(?) {
    require ext_code.size(stor1)
    call stor1.0x43d233aa with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Sender not a raffle'
    if arg4 > 0:
        sub_ed703838 = arg4
    stor5[address(arg1)] += arg2
    stor6[address(arg1)] += arg4 * sub_02bd01d8 * arg2 / 10^18
    emit 0x7d771285: address(arg1), arg3, arg2, arg4, arg1
}

function sub_4ecfc639(?) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Sender not authorized'
    if arg2 == uint8(stor13.field_24):
        stor7[address(arg1)] = block.timestamp + arg3
    if arg2 == uint8(stor13.field_16):
        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
    else:
        if arg2 == uint8(stor13.field_24):
            stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
        else:
            if arg2 == uint8(stor13.field_32):
                stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
    sub_d567a7f8[address(arg1)] = arg2
    emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], arg2 << 248, stor8[address(arg1)], stor10[address(arg1)], arg3, stor7[address(arg1)], arg1
}

function sub_4a2cc95e(?) {
    if stor8[address(msg.sender)] < 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PGSI score must be greater than 3 to ban'
    if uint8(stor13.field_32) == uint8(stor13.field_24):
        stor7[address(msg.sender)] = block.timestamp
    if uint8(stor13.field_32) == uint8(stor13.field_16):
        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
    else:
        if uint8(stor13.field_32) == uint8(stor13.field_24):
            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
        else:
            if uint8(stor13.field_32) == uint8(stor13.field_32):
                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
    sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
    emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
}

function sub_a94d07d8(?) {
    if stor7[address(msg.sender)] >= block.timestamp:
        revert with 0, 'Ban time not passed'
    if sub_d567a7f8[address(msg.sender)] != uint8(stor13.field_24):
        revert with 0, 'Wallet not time banned'
    if uint8(stor13.field_8) == uint8(stor13.field_24):
        stor7[address(msg.sender)] = block.timestamp
    if uint8(stor13.field_8) == uint8(stor13.field_16):
        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
    else:
        if uint8(stor13.field_8) == uint8(stor13.field_24):
            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
        else:
            if uint8(stor13.field_8) == uint8(stor13.field_32):
                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
    sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_8)
    emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
}

function sub_d4dea7b7(?) {
    require ext_code.size(stor1)
    call stor1.0x43d233aa with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Sender not a raffle'
    if sub_d567a7f8[address(arg1)] == uint8(stor13.field_0):
        sub_d567a7f8[address(arg1)] = uint8(stor13.field_8)
    if arg4 > 0:
        sub_ed703838 = arg4
    stor3[address(arg1)] += arg2
    stor2[address(arg1)]++
    stor4[address(arg1)] += arg4 * sub_02bd01d8 * arg2 / 10^18
    sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] += arg4 * sub_02bd01d8 * arg2 / 10^18
    if stor10[address(arg1)] != 1:
        if sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] >= sub_e776e991 * sub_02bd01d8:
            if uint8(stor13.field_16) == uint8(stor13.field_24):
                stor7[address(arg1)] = block.timestamp
            if uint8(stor13.field_16) == uint8(stor13.field_16):
                stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
            else:
                if uint8(stor13.field_16) == uint8(stor13.field_24):
                    stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                else:
                    if uint8(stor13.field_16) == uint8(stor13.field_32):
                        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
            sub_d567a7f8[address(arg1)] = uint8(stor13.field_16)
            emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], uint8(stor13.field_0), stor8[address(arg1)], stor10[address(arg1)], 0, stor7[address(arg1)], arg1
        else:
            if sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 2] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 3] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 4] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 5] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 6] >= sub_d754fe32 * sub_02bd01d8:
                if uint8(stor13.field_16) == uint8(stor13.field_24):
                    stor7[address(arg1)] = block.timestamp
                if uint8(stor13.field_16) == uint8(stor13.field_16):
                    stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                else:
                    if uint8(stor13.field_16) == uint8(stor13.field_24):
                        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    else:
                        if uint8(stor13.field_16) == uint8(stor13.field_32):
                            stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                sub_d567a7f8[address(arg1)] = uint8(stor13.field_16)
                emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], uint8(stor13.field_0), stor8[address(arg1)], stor10[address(arg1)], 0, stor7[address(arg1)], arg1
    else:
        if stor8[address(arg1)] > 2:
            if sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] >= sub_e776e991 * sub_02bd01d8:
                if uint8(stor13.field_16) == uint8(stor13.field_24):
                    stor7[address(arg1)] = block.timestamp
                if uint8(stor13.field_16) == uint8(stor13.field_16):
                    stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                else:
                    if uint8(stor13.field_16) == uint8(stor13.field_24):
                        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    else:
                        if uint8(stor13.field_16) == uint8(stor13.field_32):
                            stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                sub_d567a7f8[address(arg1)] = uint8(stor13.field_16)
                emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], uint8(stor13.field_0), stor8[address(arg1)], stor10[address(arg1)], 0, stor7[address(arg1)], arg1
            else:
                if sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 2] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 3] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 4] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 5] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 6] >= sub_d754fe32 * sub_02bd01d8:
                    if uint8(stor13.field_16) == uint8(stor13.field_24):
                        stor7[address(arg1)] = block.timestamp
                    if uint8(stor13.field_16) == uint8(stor13.field_16):
                        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    else:
                        if uint8(stor13.field_16) == uint8(stor13.field_24):
                            stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                        else:
                            if uint8(stor13.field_16) == uint8(stor13.field_32):
                                stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    sub_d567a7f8[address(arg1)] = uint8(stor13.field_16)
                    emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], uint8(stor13.field_0), stor8[address(arg1)], stor10[address(arg1)], 0, stor7[address(arg1)], arg1
        else:
            if sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] >= 2 * sub_e776e991 * sub_02bd01d8:
                if uint8(stor13.field_16) == uint8(stor13.field_24):
                    stor7[address(arg1)] = block.timestamp
                if uint8(stor13.field_16) == uint8(stor13.field_16):
                    stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                else:
                    if uint8(stor13.field_16) == uint8(stor13.field_24):
                        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    else:
                        if uint8(stor13.field_16) == uint8(stor13.field_32):
                            stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                sub_d567a7f8[address(arg1)] = uint8(stor13.field_16)
                emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], uint8(stor13.field_0), stor8[address(arg1)], stor10[address(arg1)], 0, stor7[address(arg1)], arg1
            else:
                if sub_7a81bfad[address(arg1)][block.timestamp / 60 / 60 / 24] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 1] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 2] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 3] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 4] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 5] + sub_7a81bfad[address(arg1)][(block.timestamp / 60 / 60 / 24) - 6] >= 2 * sub_d754fe32 * sub_02bd01d8:
                    if uint8(stor13.field_16) == uint8(stor13.field_24):
                        stor7[address(arg1)] = block.timestamp
                    if uint8(stor13.field_16) == uint8(stor13.field_16):
                        stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    else:
                        if uint8(stor13.field_16) == uint8(stor13.field_24):
                            stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                        else:
                            if uint8(stor13.field_16) == uint8(stor13.field_32):
                                stor10[address(arg1)] = uint16(stor10[address(arg1)] + 1)
                    sub_d567a7f8[address(arg1)] = uint8(stor13.field_16)
                    emit 0x8dd2ca63: address(arg1), sub_d567a7f8[address(arg1)], uint8(stor13.field_0), stor8[address(arg1)], stor10[address(arg1)], 0, stor7[address(arg1)], arg1
    emit 0xf3a97cf4: address(arg1), arg3, arg2, arg4, arg1
    return 1
}

function sub_31d233ab(?) {
    stor8[address(msg.sender)] = arg1
    emit 0x56e44ad4: address(msg.sender), arg3, arg1 << 248, arg2, msg.sender
    if stor10[address(msg.sender)] <= 1:
        if arg1 <= 2:
            if uint8(stor13.field_8) == uint8(stor13.field_24):
                stor7[address(msg.sender)] = block.timestamp
            if uint8(stor13.field_8) == uint8(stor13.field_16):
                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
            else:
                if uint8(stor13.field_8) == uint8(stor13.field_24):
                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                else:
                    if uint8(stor13.field_8) == uint8(stor13.field_32):
                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
            sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_8)
            emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
        else:
            if arg1 >= 3:
                if arg1 <= 4:
                    if uint8(stor13.field_24) == uint8(stor13.field_24):
                        stor7[address(msg.sender)] = block.timestamp + (10 * stor14)
                    if uint8(stor13.field_24) == uint8(stor13.field_16):
                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                    else:
                        if uint8(stor13.field_24) == uint8(stor13.field_24):
                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                        else:
                            if uint8(stor13.field_24) == uint8(stor13.field_32):
                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                    sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                    emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 10 * stor14, stor7[address(msg.sender)], msg.sender
                else:
                    if arg1 >= 5:
                        if arg1 <= 7:
                            if arg2 != 1:
                                if uint8(stor13.field_24) == uint8(stor13.field_24):
                                    stor7[address(msg.sender)] = block.timestamp + stor15
                                if uint8(stor13.field_24) == uint8(stor13.field_16):
                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                else:
                                    if uint8(stor13.field_24) == uint8(stor13.field_24):
                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                    else:
                                        if uint8(stor13.field_24) == uint8(stor13.field_32):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                                emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], stor15, stor7[address(msg.sender)], msg.sender
                            else:
                                if uint8(stor13.field_32) == uint8(stor13.field_24):
                                    stor7[address(msg.sender)] = block.timestamp
                                if uint8(stor13.field_32) == uint8(stor13.field_16):
                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                else:
                                    if uint8(stor13.field_32) == uint8(stor13.field_24):
                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                    else:
                                        if uint8(stor13.field_32) == uint8(stor13.field_32):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
                                emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
                        else:
                            if arg1 >= 8:
                                if arg1 > 10:
                                    if arg1 >= 11:
                                        if uint8(stor13.field_32) == uint8(stor13.field_24):
                                            stor7[address(msg.sender)] = block.timestamp
                                        if uint8(stor13.field_32) == uint8(stor13.field_16):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        else:
                                            if uint8(stor13.field_32) == uint8(stor13.field_24):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            else:
                                                if uint8(stor13.field_32) == uint8(stor13.field_32):
                                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
                                        emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
                                else:
                                    if arg2 != 1:
                                        if uint8(stor13.field_24) == uint8(stor13.field_24):
                                            stor7[address(msg.sender)] = block.timestamp + stor16
                                        if uint8(stor13.field_24) == uint8(stor13.field_16):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        else:
                                            if uint8(stor13.field_24) == uint8(stor13.field_24):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            else:
                                                if uint8(stor13.field_24) == uint8(stor13.field_32):
                                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                                        emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], stor16, stor7[address(msg.sender)], msg.sender
                                    else:
                                        if uint8(stor13.field_32) == uint8(stor13.field_24):
                                            stor7[address(msg.sender)] = block.timestamp
                                        if uint8(stor13.field_32) == uint8(stor13.field_16):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        else:
                                            if uint8(stor13.field_32) == uint8(stor13.field_24):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            else:
                                                if uint8(stor13.field_32) == uint8(stor13.field_32):
                                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
                                        emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
    else:
        if stor10[address(msg.sender)] >= 2:
            if not arg1:
                if uint8(stor13.field_24) == uint8(stor13.field_24):
                    stor7[address(msg.sender)] = block.timestamp + (5 * stor14)
                if uint8(stor13.field_24) == uint8(stor13.field_16):
                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                else:
                    if uint8(stor13.field_24) == uint8(stor13.field_24):
                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                    else:
                        if uint8(stor13.field_24) == uint8(stor13.field_32):
                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 5 * stor14, stor7[address(msg.sender)], msg.sender
            else:
                if arg1 >= 1:
                    if arg1 <= 2:
                        if uint8(stor13.field_24) == uint8(stor13.field_24):
                            stor7[address(msg.sender)] = block.timestamp + (15 * stor14)
                        if uint8(stor13.field_24) == uint8(stor13.field_16):
                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                        else:
                            if uint8(stor13.field_24) == uint8(stor13.field_24):
                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                            else:
                                if uint8(stor13.field_24) == uint8(stor13.field_32):
                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                        sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                        emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 15 * stor14, stor7[address(msg.sender)], msg.sender
                    else:
                        if arg1 >= 3:
                            if arg1 <= 4:
                                if arg2 != 1:
                                    if uint8(stor13.field_24) == uint8(stor13.field_24):
                                        stor7[address(msg.sender)] = block.timestamp + stor15
                                    if uint8(stor13.field_24) == uint8(stor13.field_16):
                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                    else:
                                        if uint8(stor13.field_24) == uint8(stor13.field_24):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        else:
                                            if uint8(stor13.field_24) == uint8(stor13.field_32):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                    sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                                    emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], stor15, stor7[address(msg.sender)], msg.sender
                                else:
                                    if uint8(stor13.field_32) == uint8(stor13.field_24):
                                        stor7[address(msg.sender)] = block.timestamp
                                    if uint8(stor13.field_32) == uint8(stor13.field_16):
                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                    else:
                                        if uint8(stor13.field_32) == uint8(stor13.field_24):
                                            stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                        else:
                                            if uint8(stor13.field_32) == uint8(stor13.field_32):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                    sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
                                    emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
                            else:
                                if arg1 >= 5:
                                    if arg1 > 10:
                                        if arg1 >= 11:
                                            if uint8(stor13.field_32) == uint8(stor13.field_24):
                                                stor7[address(msg.sender)] = block.timestamp
                                            if uint8(stor13.field_32) == uint8(stor13.field_16):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            else:
                                                if uint8(stor13.field_32) == uint8(stor13.field_24):
                                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                                else:
                                                    if uint8(stor13.field_32) == uint8(stor13.field_32):
                                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
                                            emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
                                    else:
                                        if arg2 != 1:
                                            if uint8(stor13.field_24) == uint8(stor13.field_24):
                                                stor7[address(msg.sender)] = block.timestamp + (2 * stor16)
                                            if uint8(stor13.field_24) == uint8(stor13.field_16):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            else:
                                                if uint8(stor13.field_24) == uint8(stor13.field_24):
                                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                                else:
                                                    if uint8(stor13.field_24) == uint8(stor13.field_32):
                                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_24)
                                            emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 2 * stor16, stor7[address(msg.sender)], msg.sender
                                        else:
                                            if uint8(stor13.field_32) == uint8(stor13.field_24):
                                                stor7[address(msg.sender)] = block.timestamp
                                            if uint8(stor13.field_32) == uint8(stor13.field_16):
                                                stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            else:
                                                if uint8(stor13.field_32) == uint8(stor13.field_24):
                                                    stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                                else:
                                                    if uint8(stor13.field_32) == uint8(stor13.field_32):
                                                        stor10[address(msg.sender)] = uint16(stor10[address(msg.sender)] + 1)
                                            sub_d567a7f8[address(msg.sender)] = uint8(stor13.field_32)
                                            emit 0x8dd2ca63: address(msg.sender), sub_d567a7f8[address(msg.sender)], uint8(stor13.field_0), stor8[address(msg.sender)], stor10[address(msg.sender)], 0, stor7[address(msg.sender)], msg.sender
}



}
