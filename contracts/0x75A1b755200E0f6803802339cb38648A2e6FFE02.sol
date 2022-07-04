contract main {




// =====================  Runtime code  =====================


#
#  - sub_5781e6aa(?)
#
mapping of uint256 sub_189ec22f;
mapping of uint8 stor1;
mapping of uint8 sub_71984afb;
mapping of uint8 stor3;
mapping of uint8 sub_32a93efb;
mapping of uint8 stor5;
mapping of uint256 sub_c0366d7e;
mapping of struct stor7;

function sub_189ec22f(?) payable {
    require calldata.size - 4 >= 32
    return sub_189ec22f[arg1]
}

function sub_1f8aeaac(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor3[arg1][arg2])
}

function sub_32a93efb(?) payable {
    require calldata.size - 4 >= 32
    return sub_32a93efb[arg1]
}

function sub_71984afb(?) payable {
    require calldata.size - 4 >= 32
    return sub_71984afb[arg1]
}

function isAdmin(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor1[arg1][arg2])
}

function sub_c0366d7e(?) payable {
    require calldata.size - 4 >= 32
    return sub_c0366d7e[arg1]
}

function isRegistered(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_deb14777(?) payable {
    require calldata.size - 4 >= 96
    return bool(stor7[address(arg1)][arg2][5][address(arg3)].field_0)
}

function _fallback() payable {
    revert
}

function sub_ab1adb86(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0, 'ONLY_INTERNAL'
    if not stor3[address(arg1)][address(arg2)]:
        revert with 0, 'NOT_CREATOR'
    stor3[address(arg1)][address(arg2)] = 0
}

function sub_97d6ade3(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0, 'ONLY_INTERNAL'
    sub_c0366d7e[address(arg1)] = sub_189ec22f[address(arg1)] + 1
    if arg2 > sub_71984afb[address(arg1)]:
        revert with 0, 'QUORUM_TOO_BIG'
    if arg2 <= 0:
        revert with 0, 'QUORUM_ZERO'
    sub_32a93efb[address(arg1)] = arg2
}

function sub_6a1f22b9(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0, 'ONLY_INTERNAL'
    if this.address == arg2:
        revert with 0, 'INVALID_CREATOR'
    if stor1[address(arg1)][address(arg2)]:
        revert with 0, 'ALREADY_ADMIN'
    if stor3[address(arg1)][address(arg2)]:
        revert with 0, 'ALREADY_CREATOR'
    stor3[address(arg1)][address(arg2)] = 1
}

function sub_613d5a28(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        revert with 0, 'ONLY_INTERNAL'
    if arg3:
        if sub_32a93efb[address(arg1)] > 1:
            if uint8(sub_32a93efb[address(arg1)] - 1) > sub_71984afb[address(arg1)]:
                revert with 0, 'QUORUM_TOO_BIG'
            if uint8(sub_32a93efb[address(arg1)] - 1) <= 0:
                revert with 0, 'QUORUM_ZERO'
            sub_32a93efb[address(arg1)] = uint8(sub_32a93efb[address(arg1)] - 1)
    sub_c0366d7e[address(arg1)] = sub_189ec22f[address(arg1)] + 1
    if not stor1[address(arg1)][address(arg2)]:
        revert with 0, 'NOT_ADMIN'
    sub_71984afb[address(arg1)] = uint8(sub_71984afb[address(arg1)] - 1)
    if sub_32a93efb[address(arg1)] > uint8(sub_71984afb[address(arg1)] - 1):
        revert with 0, 'TOO_FEW_ADMINS'
    stor1[address(arg1)][address(arg2)] = 0
}

function sub_cd64bc9e(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        revert with 0, 'ONLY_INTERNAL'
    sub_c0366d7e[address(arg1)] = sub_189ec22f[address(arg1)] + 1
    if this.address == arg2:
        revert with 0, 'INVALID_ADMIN'
    if stor1[address(arg1)][address(arg2)]:
        revert with 0, 'ALREADY_ADMIN'
    if stor3[address(arg1)][address(arg2)]:
        revert with 0, 'ALREADY_CREATOR'
    if uint8(sub_71984afb[address(arg1)] + 1) <= sub_71984afb[address(arg1)]:
        revert with 0, 'OVERFLOW'
    sub_71984afb[address(arg1)] = uint8(sub_71984afb[address(arg1)] + 1)
    stor1[address(arg1)][address(arg2)] = 1
    if arg3:
        if sub_32a93efb[address(arg1)] >= uint8(sub_32a93efb[address(arg1)] + 1):
            revert with 0, 'OVERFLOW'
        if uint8(sub_32a93efb[address(arg1)] + 1) > sub_71984afb[address(arg1)]:
            revert with 0, 'QUORUM_TOO_BIG'
        if uint8(sub_32a93efb[address(arg1)] + 1) <= 0:
            revert with 0, 'QUORUM_ZERO'
        sub_32a93efb[address(arg1)] = uint8(sub_32a93efb[address(arg1)] + 1)
}

function sub_794f0c33(?) payable {
    require calldata.size - 4 >= 64
    if not stor5[address(arg1)]:
        revert with 0, 'ONLY_REGISTERED_TENANT'
    if not stor1[address(arg1)][msg.sender]:
        if not stor3[address(arg1)][msg.sender]:
            revert with 0, 'ONLY_ADMIN_OR_CREATOR_OF_TENANT'
    if arg2 > sub_189ec22f[address(arg1)]:
        revert with 0, 'ONLY_EXISTING_ACTION'
    if arg2 <= 0:
        revert with 0, 'ONLY_EXISTING_ACTION'
    if stor3[address(arg1)][msg.sender]:
        if stor7[address(arg1)][arg2].field_776 != msg.sender:
            revert with 0, 'CREATOR_REJECT_NOT_REQUESTOR'
    if 1 == stor7[address(arg1)][arg2].field_0:
        idx = 128
        s = 0
        while stor7[address(arg1)][arg2][2].length + 96 > idx:
            mem[idx + 32] = stor7[address(arg1)][arg2][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor7[address(arg1)][arg2][2].length >= 96
        if msg.sender == mem[172 len 20]:
            revert with 0, 'CANNOT_REJECT_ITS_OWN_REMOVAL'
    if stor7[address(arg1)][arg2][5][msg.sender].field_0:
        revert with 0, 'CANNOT_REJECT_APPROVED'
    if stor7[address(arg1)][arg2].field_1552:
        revert with 0, 'CANNOT_REJECT_FAILED'
    if stor7[address(arg1)][arg2].field_1544:
        revert with 0, 'CANNOT_REJECT_REJECTED'
    if stor7[address(arg1)][arg2].field_1536 >= stor7[address(arg1)][arg2].field_768:
        if not stor7[address(arg1)][arg2].field_1552:
            revert with 0, 'CANNOT_REJECT_COMPLETED'
    stor7[address(arg1)][arg2].field_1024 = msg.sender or Mask(96, 160, stor7[address(arg1)][arg2].field_1024)
    stor7[address(arg1)][arg2].field_1544 = 1
    emit 0xa6d02f92: msg.sender, arg1, arg2
    return 1
}

function sub_363447cc(?) payable {
    require calldata.size - 4 >= 64
    if not stor5[address(arg1)]:
        revert with 0, 'ONLY_REGISTERED_TENANT'
    if not stor1[address(arg1)][msg.sender]:
        revert with 0, 'ONLY_ADMIN_OF_TENANT'
    if arg2 > sub_189ec22f[address(arg1)]:
        revert with 0, 'ONLY_EXISTING_ACTION'
    if arg2 <= 0:
        revert with 0, 'ONLY_EXISTING_ACTION'
    if sub_c0366d7e[address(arg1)] > arg2:
        revert with 0, 'ACTION_INVALIDATED'
    if stor7[address(arg1)][arg2].field_1544:
        revert with 0, 'CANNOT_APPROVE_REJECTED'
    if stor7[address(arg1)][arg2].field_1552:
        revert with 0, 'CANNOT_APPROVE_FAILED'
    if stor7[address(arg1)][arg2][5][msg.sender].field_0:
        revert with 0, 'CANNOT_APPROVE_AGAIN'
    if stor7[address(arg1)][arg2].field_1536 < stor7[address(arg1)][arg2].field_768:
        stor7[address(arg1)][arg2][5][msg.sender].field_0 = 1
        stor7[address(arg1)][arg2].field_1536 = uint8(stor7[address(arg1)][arg2].field_1536 + 1)
        emit 0x49a0b054: msg.sender, arg1, arg2
    else:
        if not stor7[address(arg1)][arg2].field_1552:
            revert with 0, 'CANNOT_APPROVE_COMPLETED'
        stor7[address(arg1)][arg2][5][msg.sender].field_0 = 1
        stor7[address(arg1)][arg2].field_1536 = uint8(stor7[address(arg1)][arg2].field_1536 + 1)
        emit 0x49a0b054: msg.sender, arg1, arg2
        if stor7[address(arg1)][arg2].field_1536 >= stor7[address(arg1)][arg2].field_768:
            if not stor7[address(arg1)][arg2].field_1552:
                if stor7[address(arg1)][arg2].field_1544:
                    revert with 0, 'CANNOT_COMPLETE_REJECTED'
                if stor7[address(arg1)][arg2].field_1552:
                    revert with 0, 'CANNOT_COMPLETE_FAILED'
                if stor7[address(arg1)][arg2].field_1536 < stor7[address(arg1)][arg2].field_768:
                    revert with 0, 'CANNNOT_COMPLETE_AGAIN'
                if stor7[address(arg1)][arg2].field_1552:
                    revert with 0, 'CANNNOT_COMPLETE_AGAIN'
                mem[96] = stor7[address(arg1)][arg2][1].field_0
                idx = 96
                s = 0
                while stor7[address(arg1)][arg2][1].length + 96 > idx + 32:
                    mem[idx + 32] = stor7[address(arg1)][arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[128] = Mask(32, 224, sha3(mem[96 len stor7[address(arg1)][arg2][1].length]))
                mem[132] = stor7[address(arg1)][arg2][2].field_0
                idx = 132
                s = 0
                while stor7[address(arg1)][arg2][2].length + 132 > idx + 32:
                    mem[idx + 32] = stor7[address(arg1)][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor7[address(arg1)][arg2][2].length + 132 len floor32(stor7[address(arg1)][arg2][2].length + 4)] = mem[128 len floor32(stor7[address(arg1)][arg2][2].length + 4)]
                call stor7[address(arg1)][arg2].field_8.mem[stor7[address(arg1)][arg2][2].length + 132 len 4] with:
                     gas gas_remaining wei
                    args mem[stor7[address(arg1)][arg2][2].length + 136 len stor7[address(arg1)][arg2][2].length]
                if not ext_call.success:
                    stor7[address(arg1)][arg2].field_1552 = 1
                if not stor7[address(arg1)][arg2].field_1552:
                    emit 0x8b871670: arg1, arg2
                else:
                    emit 0x96f7fcbc: arg1, arg2
    return 1
}

function sub_32670229(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if arg1 != msg.sender:
        require ext_code.size(arg1)
        staticcall arg1.0x8da5cb5b with:
                gas gas_remaining wei
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'ONLY_TENANT_OR_TENANT_OWNER'
    if this.address == arg1:
        revert with 0, 'INVALID_TENANT'
    if stor5[address(arg1)]:
        revert with 0, 'ALREADY_REGISTERED'
    idx = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < arg3.length
        if this.address == mem[(32 * uint8(idx)) + (32 * arg2.length) + 172 len 20]:
            revert with 0, 'INVALID_ADMIN'
        if stor1[address(arg1)][address(mem[(32 * uint8(idx)) + (32 * arg2.length) + 160])]:
            revert with 0, 'ALREADY_ADMIN'
        if stor3[address(arg1)][address(mem[(32 * uint8(idx)) + (32 * arg2.length) + 160])]:
            revert with 0, 'ALREADY_CREATOR'
        if uint8(sub_71984afb[address(arg1)] + 1) <= sub_71984afb[address(arg1)]:
            revert with 0, 'OVERFLOW'
        sub_71984afb[address(arg1)] = uint8(sub_71984afb[address(arg1)] + 1)
        mem[0] = mem[(32 * uint8(idx)) + (32 * arg2.length) + 172 len 20]
        mem[32] = sha3(address(arg1), 1)
        stor1[address(arg1)][address(mem[(32 * uint8(idx)) + (32 * arg2.length) + 160])] = 1
        idx = idx + 1
        continue 
    if arg4 > sub_71984afb[address(arg1)]:
        revert with 0, 'QUORUM_TOO_BIG'
    if arg4 <= 0:
        revert with 0, 'QUORUM_ZERO'
    sub_32a93efb[address(arg1)] = arg4
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        if this.address == mem[(32 * uint8(idx)) + 140 len 20]:
            revert with 0, 'INVALID_CREATOR'
        if stor1[address(arg1)][address(mem[(32 * uint8(idx)) + 128])]:
            revert with 0, 'ALREADY_ADMIN'
        if stor3[address(arg1)][address(mem[(32 * uint8(idx)) + 128])]:
            revert with 0, 'ALREADY_CREATOR'
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = sha3(address(arg1), 3)
        stor3[address(arg1)][address(mem[(32 * uint8(idx)) + 128])] = 1
        idx = idx + 1
        continue 
    stor5[address(arg1)] = 1
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = arg4
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 96
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = (32 * arg2.length) + 128
    mem[(64 * arg2.length) + (32 * arg3.length) + 288] = arg3.length
    s = 0
    while None < 32 * mem[(32 * arg2.length) + 128]:
        mem[None + (64 * arg2.length) + (32 * arg3.length) + 320] = mem[None + (32 * arg2.length) + 160]
        s = None + 32
        continue 
    emit 0xac30122b: mem[(32 * arg2.length) + (32 * arg3.length) + 160 len (32 * mem[(32 * arg2.length) + 128]) + (32 * arg2.length) + 160], arg1
    return 1
}

function sub_f25e189d(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if not stor5[address(arg1)]:
        revert with 0, 'ONLY_REGISTERED_TENANT'
    if not stor1[address(arg1)][msg.sender]:
        if not stor3[address(arg1)][msg.sender]:
            revert with 0, 'ONLY_ADMIN_OR_CREATOR_OF_TENANT'
    sub_189ec22f[address(arg1)]++
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_0 = 5
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_8 = arg1
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_256 = 0
    stor7[address(arg1)][stor0[address(arg1)] + 1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor7[address(arg1)][stor0[address(arg1)] + 1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_768 = sub_32a93efb[address(arg1)]
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_776 = Mask(248, 0, msg.sender)
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_936 = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    emit 0x6b2cd3e1: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], arg1, sub_189ec22f[address(arg1)] + 1
    if not stor1[address(arg1)][msg.sender]:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = sub_189ec22f[address(arg1)] + 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
    if sub_c0366d7e[address(arg1)] > sub_189ec22f[address(arg1)] + 1:
        revert with 0, 'ACTION_INVALIDATED'
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1544:
        revert with 0, 'CANNOT_APPROVE_REJECTED'
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552:
        revert with 0, 'CANNOT_APPROVE_FAILED'
    if stor7[address(arg1)][stor0[address(arg1)] + 1][5][msg.sender].field_0:
        revert with 0, 'CANNOT_APPROVE_AGAIN'
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 < stor7[address(arg1)][stor0[address(arg1)] + 1].field_768:
        stor7[address(arg1)][stor0[address(arg1)] + 1][5][msg.sender].field_0 = 1
        stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 = uint8(stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 + 1)
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
        emit 0x49a0b054: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], arg1, sub_189ec22f[address(arg1)] + 1
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = sub_189ec22f[address(arg1)] + 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
    if not stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552:
        revert with 0, 'CANNOT_APPROVE_COMPLETED'
    mem[32] = sha3(sub_189ec22f[address(arg1)] + 1, sha3(address(arg1), 7)) + 5
    stor7[address(arg1)][stor0[address(arg1)] + 1][5][msg.sender].field_0 = 1
    stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 = uint8(stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 + 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    emit 0x49a0b054: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], arg1, sub_189ec22f[address(arg1)] + 1
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 < stor7[address(arg1)][stor0[address(arg1)] + 1].field_768:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = sub_189ec22f[address(arg1)] + 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = sub_189ec22f[address(arg1)] + 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1544:
        revert with 0, 'CANNOT_COMPLETE_REJECTED'
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552:
        revert with 0, 'CANNOT_COMPLETE_FAILED'
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1536 < stor7[address(arg1)][stor0[address(arg1)] + 1].field_768:
        revert with 0, 'CANNNOT_COMPLETE_AGAIN'
    if stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552:
        revert with 0, 'CANNNOT_COMPLETE_AGAIN'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor7[address(arg1)][stor0[address(arg1)] + 1][1].field_0
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][1].length + 160 > idx + 32:
        mem[idx + 32] = stor7[address(arg1)][stor0[address(arg1)] + 1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = Mask(32, 224, sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len stor7[address(arg1)][stor0[address(arg1)] + 1][1].length]))
    mem[0] = sha3(sub_189ec22f[address(arg1)] + 1, sha3(address(arg1), 7)) + 2
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = stor7[address(arg1)][stor0[address(arg1)] + 1][2].field_0
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 196
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + 196 > idx + 32:
        mem[idx + 32] = stor7[address(arg1)][stor0[address(arg1)] + 1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + 4
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + 196
    mem[ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 228 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
    call stor7[address(arg1)][stor0[address(arg1)] + 1].field_8.mem[ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(arg3.length) + stor7[address(arg1)][stor0[address(arg1)] + 1][2].length + 200 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] - 4]
    if not ext_call.success:
        stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552 = 1
    if not stor7[address(arg1)][stor0[address(arg1)] + 1].field_1552:
        emit 0x8b871670: arg1, sub_189ec22f[address(arg1)] + 1
    else:
        emit 0x96f7fcbc: arg1, sub_189ec22f[address(arg1)] + 1
    return (sub_189ec22f[address(arg1)] + 1)
}

function sub_036901ff(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = stor7[address(arg1)][arg2][1].length
    mem[128] = stor7[address(arg1)][arg2][1].field_0
    idx = 128
    s = 0
    while stor7[address(arg1)][arg2][1].length + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 160
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + 128] = stor7[address(arg1)][arg2][2].length
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + 160] = stor7[address(arg1)][arg2][2].field_0
    idx = ceil32(stor7[address(arg1)][arg2][1].length) + 160
    s = 0
    while ceil32(stor7[address(arg1)][arg2][1].length) + stor7[address(arg1)][arg2][2].length + 128 > idx:
        mem[idx + 32] = stor7[address(arg1)][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 160] = stor7[address(arg1)][arg2].field_8 == this.address
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 256] = stor7[address(arg1)][arg2].field_768
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 288] = stor7[address(arg1)][arg2].field_776
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 320] = stor7[address(arg1)][arg2].field_1024
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 352] = stor7[address(arg1)][arg2].field_1536
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 384] = bool(stor7[address(arg1)][arg2].field_1544)
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 416] = bool(stor7[address(arg1)][arg2].field_1552)
    if stor7[address(arg1)][arg2].field_1536 < stor7[address(arg1)][arg2].field_768:
        mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 448] = stor7[address(arg1)][arg2].field_1536 >= stor7[address(arg1)][arg2].field_768
        mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 480] = sub_c0366d7e[address(arg1)] <= arg2
        mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 192] = 352
        mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 512] = stor7[address(arg1)][arg2][1].length
        mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 544 len ceil32(stor7[address(arg1)][arg2][1].length)] = mem[128 len ceil32(stor7[address(arg1)][arg2][1].length)]
        mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 224] = stor7[address(arg1)][arg2][1].length + 384
        mem[stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 544] = stor7[address(arg1)][arg2][2].length
        mem[stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 576 len ceil32(stor7[address(arg1)][arg2][2].length)] = mem[ceil32(stor7[address(arg1)][arg2][1].length) + 160 len ceil32(stor7[address(arg1)][arg2][2].length)]
        if not stor7[address(arg1)][arg2][2].length % 32:
            return stor7[address(arg1)][arg2].field_8 == this.address, 
                   Array(len=stor7[address(arg1)][arg2][1].length, data=mem[128 len ceil32(stor7[address(arg1)][arg2][1].length)], mem[(2 * ceil32(stor7[address(arg1)][arg2][1].length)) + ceil32(stor7[address(arg1)][arg2][2].length) + 544 len stor7[address(arg1)][arg2][2].length + stor7[address(arg1)][arg2][1].length + -ceil32(stor7[address(arg1)][arg2][1].length) + 32]),
                   stor7[address(arg1)][arg2][1].length + 384,
                   stor7[address(arg1)][arg2].field_768,
                   stor7[address(arg1)][arg2].field_768,
                   stor7[address(arg1)][arg2].field_1024,
                   stor7[address(arg1)][arg2].field_1536,
                   bool(stor7[address(arg1)][arg2].field_1544),
                   bool(stor7[address(arg1)][arg2].field_1552),
                   stor7[address(arg1)][arg2].field_1536 >= stor7[address(arg1)][arg2].field_768,
                   sub_c0366d7e[address(arg1)] <= arg2
        mem[floor32(stor7[address(arg1)][arg2][2].length) + stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 576] = mem[floor32(stor7[address(arg1)][arg2][2].length) + stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + -stor7[address(arg1)][arg2][2].length % 32 + 608 len stor7[address(arg1)][arg2][2].length % 32]
        return stor7[address(arg1)][arg2].field_8 == this.address, 
               Array(len=stor7[address(arg1)][arg2][1].length, data=mem[128 len ceil32(stor7[address(arg1)][arg2][1].length)], mem[(2 * ceil32(stor7[address(arg1)][arg2][1].length)) + ceil32(stor7[address(arg1)][arg2][2].length) + 544 len floor32(stor7[address(arg1)][arg2][2].length) + stor7[address(arg1)][arg2][1].length + -ceil32(stor7[address(arg1)][arg2][1].length) + 64]),
               stor7[address(arg1)][arg2][1].length + 384,
               stor7[address(arg1)][arg2].field_768,
               stor7[address(arg1)][arg2].field_768,
               stor7[address(arg1)][arg2].field_1024,
               stor7[address(arg1)][arg2].field_1536,
               bool(stor7[address(arg1)][arg2].field_1544),
               bool(stor7[address(arg1)][arg2].field_1552),
               stor7[address(arg1)][arg2].field_1536 >= stor7[address(arg1)][arg2].field_768,
               sub_c0366d7e[address(arg1)] <= arg2
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 448] = not bool(stor7[address(arg1)][arg2].field_1552)
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 480] = sub_c0366d7e[address(arg1)] <= arg2
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 192] = 352
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 512] = stor7[address(arg1)][arg2][1].length
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 544 len ceil32(stor7[address(arg1)][arg2][1].length)] = mem[128 len ceil32(stor7[address(arg1)][arg2][1].length)]
    mem[ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 224] = stor7[address(arg1)][arg2][1].length + 384
    mem[stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 544] = stor7[address(arg1)][arg2][2].length
    mem[stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 576 len ceil32(stor7[address(arg1)][arg2][2].length)] = mem[ceil32(stor7[address(arg1)][arg2][1].length) + 160 len ceil32(stor7[address(arg1)][arg2][2].length)]
    if not stor7[address(arg1)][arg2][2].length % 32:
        return stor7[address(arg1)][arg2].field_8 == this.address, 
               Array(len=stor7[address(arg1)][arg2][1].length, data=mem[128 len ceil32(stor7[address(arg1)][arg2][1].length)], mem[(2 * ceil32(stor7[address(arg1)][arg2][1].length)) + ceil32(stor7[address(arg1)][arg2][2].length) + 544 len stor7[address(arg1)][arg2][2].length + stor7[address(arg1)][arg2][1].length + -ceil32(stor7[address(arg1)][arg2][1].length) + 32]),
               stor7[address(arg1)][arg2][1].length + 384,
               stor7[address(arg1)][arg2].field_768,
               stor7[address(arg1)][arg2].field_768,
               stor7[address(arg1)][arg2].field_1024,
               stor7[address(arg1)][arg2].field_1536,
               bool(stor7[address(arg1)][arg2].field_1544),
               bool(stor7[address(arg1)][arg2].field_1552),
               not bool(stor7[address(arg1)][arg2].field_1552),
               sub_c0366d7e[address(arg1)] <= arg2
    mem[floor32(stor7[address(arg1)][arg2][2].length) + stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + 576] = mem[floor32(stor7[address(arg1)][arg2][2].length) + stor7[address(arg1)][arg2][1].length + ceil32(stor7[address(arg1)][arg2][1].length) + ceil32(stor7[address(arg1)][arg2][2].length) + -stor7[address(arg1)][arg2][2].length % 32 + 608 len stor7[address(arg1)][arg2][2].length % 32]
    return stor7[address(arg1)][arg2].field_8 == this.address, 
           Array(len=stor7[address(arg1)][arg2][1].length, data=mem[128 len ceil32(stor7[address(arg1)][arg2][1].length)], mem[(2 * ceil32(stor7[address(arg1)][arg2][1].length)) + ceil32(stor7[address(arg1)][arg2][2].length) + 544 len floor32(stor7[address(arg1)][arg2][2].length) + stor7[address(arg1)][arg2][1].length + -ceil32(stor7[address(arg1)][arg2][1].length) + 64]),
           stor7[address(arg1)][arg2][1].length + 384,
           stor7[address(arg1)][arg2].field_768,
           stor7[address(arg1)][arg2].field_768,
           stor7[address(arg1)][arg2].field_1024,
           stor7[address(arg1)][arg2].field_1536,
           bool(stor7[address(arg1)][arg2].field_1544),
           bool(stor7[address(arg1)][arg2].field_1552),
           not bool(stor7[address(arg1)][arg2].field_1552),
           sub_c0366d7e[address(arg1)] <= arg2
}



}
