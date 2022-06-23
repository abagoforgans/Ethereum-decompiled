contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 sub_f39163cd;
mapping of uint256 sub_d4a9ceee;
mapping of address sub_6d0a8074;
mapping of uint256 sub_2c320e46;
mapping of uint8 sub_5b298ae5;
mapping of address sub_01aa6b08;
array of struct stor8;

function sub_01aa6b08(?) {
    require calldata.size - 4 >= 64
    return sub_01aa6b08[arg1][address(arg2)]
}

function sub_0d180e43(?) {
    require calldata.size - 4 >= 96
    return sub_6d0a8074[arg1], sub_6d0a8074[arg2], sub_6d0a8074[arg3]
}

function sub_12b0e07d(?) {
    require calldata.size - 4 >= 160
    return sub_f39163cd[arg1], sub_f39163cd[arg2], sub_f39163cd[arg3], sub_f39163cd[arg4], sub_f39163cd[arg5]
}

function sub_2c320e46(?) {
    require calldata.size - 4 >= 64
    return sub_2c320e46[arg1][address(arg2)]
}

function sub_327eed76(?) {
    require calldata.size - 4 >= 128
    return sub_01aa6b08[arg1][address(arg2)], sub_01aa6b08[arg3][address(arg4)]
}

function sub_381f1ddd(?) {
    require calldata.size - 4 >= 192
    return bool(sub_5b298ae5[arg1][address(arg2)]), 
           bool(sub_5b298ae5[arg3][address(arg4)]),
           bool(sub_5b298ae5[arg5][address(arg6)])
}

function getAddr(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sub_6d0a8074[arg1]
}

function sub_5941700f(?) {
    require calldata.size - 4 >= 192
    return sub_01aa6b08[arg1][address(arg2)], sub_01aa6b08[arg3][address(arg4)], sub_01aa6b08[arg5][address(arg6)]
}

function sub_595f240a(?) {
    require calldata.size - 4 >= 64
    return bool(sub_5b298ae5[arg1][address(arg2)])
}

function sub_5b298ae5(?) {
    require calldata.size - 4 >= 128
    return bool(sub_5b298ae5[arg1][address(arg2)]), bool(sub_5b298ae5[arg3][address(arg4)])
}

function sub_691ebcc7(?) {
    require calldata.size - 4 >= 128
    return sub_f39163cd[arg1], sub_f39163cd[arg2], sub_f39163cd[arg3], sub_f39163cd[arg4]
}

function sub_6d0a8074(?) {
    require calldata.size - 4 >= 64
    return sub_6d0a8074[arg1], sub_6d0a8074[arg2]
}

function sub_7e4fe2a6(?) {
    require calldata.size - 4 >= 64
    return sub_d4a9ceee[arg1], sub_d4a9ceee[arg2]
}

function sub_8154288c(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_829d68ac(?) {
    require calldata.size - 4 >= 128
    return sub_2c320e46[arg1][address(arg2)], sub_2c320e46[arg3][address(arg4)]
}

function sub_82da7dee(?) {
    require calldata.size - 4 >= 192
    return sub_2c320e46[arg1][address(arg2)], sub_2c320e46[arg3][address(arg4)], sub_2c320e46[arg5][address(arg6)]
}

function getUint(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sub_f39163cd[arg1]
}

function getBytes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sub_d4a9ceee[arg1]
}

function sub_d4a9ceee(?) {
    require calldata.size - 4 >= 96
    return sub_d4a9ceee[arg1], sub_d4a9ceee[arg2], sub_d4a9ceee[arg3]
}

function sub_df9694c7(?) {
    require calldata.size - 4 >= 96
    return sub_f39163cd[arg1], sub_f39163cd[arg2], sub_f39163cd[arg3]
}

function sub_f18a1568(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function sub_f39163cd(?) {
    require calldata.size - 4 >= 64
    return sub_f39163cd[arg1], sub_f39163cd[arg2]
}

function _fallback() payable {
    revert
}

function sub_a9cd3891(?) {
    require calldata.size - 4 >= 96
    return sub_f39163cd[arg1], sub_d4a9ceee[arg2], sub_6d0a8074[arg3]
}

function sub_9bb4e83b(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit 0xb1faf7ee: msg.sender
}

function sub_cf9b6e94(?) {
    require calldata.size - 4 >= 192
    return sub_2c320e46[arg1][address(arg2)], bool(sub_5b298ae5[arg3][address(arg4)]), sub_01aa6b08[arg5][address(arg6)]
}

function sub_49b37bb5(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0xa9a45aa0: arg1
}

function sub_0a619180(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xd5292536: arg1
}

function sub_417a579d(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit 0x20aba89e: arg1
}

function sub_28bf565f(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_01aa6b08[arg1][address(arg2)] = arg3
}

function sub_373cf819(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_2c320e46[arg1][address(arg2)] = arg3
}

function setAddr(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_6d0a8074[arg1] = arg2
}

function setUint(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_f39163cd[arg1] = arg2
}

function setBytes(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_d4a9ceee[arg1] = arg2
}

function sub_b46a2372(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_5b298ae5[arg1][address(arg2)] = uint8(arg3)
}

function sub_465d0533(?) {
    require calldata.size - 4 >= 128
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_f39163cd[arg1] = arg2
    if arg3:
        sub_f39163cd[arg3] = arg4
}

function sub_71a66c3e(?) {
    require calldata.size - 4 >= 128
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_6d0a8074[arg1] = arg2
    if arg3:
        sub_6d0a8074[arg3] = arg4
}

function sub_d5714046(?) {
    require calldata.size - 4 >= 128
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_d4a9ceee[arg1] = arg2
    if arg3:
        sub_d4a9ceee[arg3] = arg4
}

function sub_89bc89fc(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    stor8[arg1][address(arg2)].field_0++
    stor8[arg1][address(arg2)][stor8[arg1][address(arg2)].field_0].field_0 = arg3
}

function sub_9f2844d6(?) {
    require calldata.size - 4 >= 192
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_2c320e46[arg1][address(arg2)] = arg3
    if arg4:
        sub_2c320e46[arg4][address(arg5)] = arg6
}

function sub_b30f9ad1(?) {
    require calldata.size - 4 >= 192
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_01aa6b08[arg1][address(arg2)] = arg3
    if arg4:
        sub_01aa6b08[arg4][address(arg5)] = arg6
}

function sub_5c90dd41(?) {
    require calldata.size - 4 >= 192
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_5b298ae5[arg1][address(arg2)] = uint8(arg3)
    if arg4:
        sub_5b298ae5[arg4][address(arg5)] = uint8(arg6)
}

function sub_3a6a03ff(?) {
    require calldata.size - 4 >= 192
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_6d0a8074[arg1] = arg2
    if arg3:
        sub_6d0a8074[arg3] = arg4
    if arg5:
        sub_6d0a8074[arg5] = arg6
}

function sub_41253e30(?) {
    require calldata.size - 4 >= 192
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_f39163cd[arg1] = arg2
    if arg3:
        sub_f39163cd[arg3] = arg4
    if arg5:
        sub_f39163cd[arg5] = arg6
}

function sub_e22ede7a(?) {
    require calldata.size - 4 >= 192
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_d4a9ceee[arg1] = arg2
    if arg3:
        sub_d4a9ceee[arg3] = arg4
    if arg5:
        sub_d4a9ceee[arg5] = arg6
}

function sub_437fde39(?) {
    require calldata.size - 4 >= 288
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_2c320e46[arg1][address(arg2)] = arg3
    if arg4:
        sub_2c320e46[arg4][address(arg5)] = arg6
    if arg7:
        sub_2c320e46[arg7][address(arg8)] = arg9
}

function sub_65b35254(?) {
    require calldata.size - 4 >= 288
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_01aa6b08[arg1][address(arg2)] = arg3
    if arg4:
        sub_01aa6b08[arg4][address(arg5)] = arg6
    if arg7:
        sub_01aa6b08[arg7][address(arg8)] = arg9
}

function sub_3d302bd4(?) {
    require calldata.size - 4 >= 256
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_f39163cd[arg1] = arg2
    if arg3:
        sub_f39163cd[arg3] = arg4
    if arg5:
        sub_f39163cd[arg5] = arg6
    if arg7:
        sub_f39163cd[arg7] = arg8
}

function sub_09a657c4(?) {
    require calldata.size - 4 >= 288
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_5b298ae5[arg1][address(arg2)] = uint8(arg3)
    if arg4:
        sub_5b298ae5[arg4][address(arg5)] = uint8(arg6)
    if arg7:
        sub_5b298ae5[arg7][address(arg8)] = uint8(arg9)
}

function sub_dfa7ab22(?) {
    require calldata.size - 4 >= 320
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 32, 9, 0xfe6e6f205341646d696e00000000000000000000000000000000000000000000
    if arg1:
        sub_f39163cd[arg1] = arg2
    if arg3:
        sub_f39163cd[arg3] = arg4
    if arg5:
        sub_f39163cd[arg5] = arg6
    if arg7:
        sub_f39163cd[arg7] = arg8
    if arg9:
        sub_f39163cd[arg9] = arg10
}

function sub_c2b76dbb(?) {
    require calldata.size - 4 >= 64
    if not stor8[arg1][address(arg2)].field_0:
        mem[(32 * stor8[arg1][address(arg2)].field_0) + 128] = 32
        mem[(32 * stor8[arg1][address(arg2)].field_0) + 160] = stor8[arg1][address(arg2)].field_0
        mem[(32 * stor8[arg1][address(arg2)].field_0) + 192 len floor32(stor8[arg1][address(arg2)].field_0)] = mem[128 len floor32(stor8[arg1][address(arg2)].field_0)]
        return memory
          from (32 * stor8[arg1][address(arg2)].field_0) + 128
           len (96 * stor8[arg1][address(arg2)].field_0) + 64
    mem[128] = stor8[arg1][address(arg2)].field_0
    idx = 128
    s = 0
    while (32 * stor8[arg1][address(arg2)].field_0) + 96 > idx:
        mem[idx + 32] = stor8[arg1][address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8[arg1][address(arg2)].field_0) + 192 len floor32(stor8[arg1][address(arg2)].field_0)] = mem[128 len floor32(stor8[arg1][address(arg2)].field_0)]
    return Array(len=stor8[arg1][address(arg2)].field_0, data=mem[128 len floor32(stor8[arg1][address(arg2)].field_0)], mem[(32 * stor8[arg1][address(arg2)].field_0) + floor32(stor8[arg1][address(arg2)].field_0) + 192 len (32 * stor8[arg1][address(arg2)].field_0) - floor32(stor8[arg1][address(arg2)].field_0)]), 
}



}
