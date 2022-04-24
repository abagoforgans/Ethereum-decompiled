contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 13404]




// =====================  Runtime code  =====================


const signedApproveAndCallSig = 0xf16f9b5300000000000000000000000000000000000000000000000000000000

const signedTransferSig = 0x7532eaac00000000000000000000000000000000000000000000000000000000

const bttsVersion = 100

const signedApproveSig = 0xe9afa7a100000000000000000000000000000000000000000000000000000000

const signedTransferFromSig = 0x344bcc7d00000000000000000000000000000000000000000000000000000000

const signingPrefix = 'hereum Signed Message:
32'


array of address stor1;
array of struct stor2;
array of uint8 stor6;
array of uint256 stor7;

function _fallback() payable {
    revert
}

function sub_64850de5(?) payable {
    require address(stor[arg1]) == msg.sender
    stor1[arg1] = arg2
}

function sub_883c811a(?) payable {
    return sha3(0x7532eaac00000000000000000000000000000000000000000000000000000000, Mask(96, 0, arg1), arg2, arg3, arg4, arg5)
}

function sub_bbcd6939(?) payable {
    return sha3(0xe9afa7a100000000000000000000000000000000000000000000000000000000, Mask(96, 0, arg1), arg2, arg3, arg4, arg5)
}

function sub_0781fc28(?) payable {
    return sha3(0x344bcc7d00000000000000000000000000000000000000000000000000000000, Mask(96, 0, arg1), arg2, arg3, arg4, arg5, arg6)
}

function sub_8fedeca6(?) payable {
    require address(stor[arg1]) == msg.sender
    emit OwnershipTransferred(address(stor[arg1]), arg2);
    address(stor[arg1]) = arg2
    stor1[arg1] = 0
}

function sub_976f56a5(?) payable {
    require address(stor[arg1]) == msg.sender
    require not uint8(stor2[arg1].field_168)
    uint8(stor2[arg1].field_168) = 1
    emit TransfersEnabled()
}

function sub_ea300bda(?) payable {
    require stor1[arg1] == msg.sender
    emit OwnershipTransferred(address(stor[arg1]), stor1[arg1]);
    address(stor[arg1]) = stor1[arg1]
    stor1[arg1] = 0
}

function sub_b39d0e09(?) payable {
    require address(stor[arg1]) == msg.sender
    require uint8(stor[arg1 + 3][address(arg2)])
    uint8(stor[arg1 + 3][address(arg2)]) = 0
    emit AccountUnlocked(arg2);
}

function sub_5250afa1(?) payable {
    require address(stor[arg1]) == msg.sender
    require uint8(stor2[arg1].field_160)
    emit MinterUpdated(address(stor2[arg1].field_0), arg2);
    address(stor2[arg1].field_0) = arg2
}

function sub_bed568f7(?) payable {
    require not uint8(stor[arg1 + 3][address(msg.sender)])
    uint256(stor[arg1 + 9][address(msg.sender)][address(arg2)]) = arg3
    emit 0xef8c5be1: arg3, msg.sender, arg2
    return 1
}

function sub_7512eb85(?) payable {
    require address(stor[arg1]) == msg.sender
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor[arg1]), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_f72cb00a(?) payable {
    require uint8(stor2[arg1].field_160)
    if address(stor2[arg1].field_0) != msg.sender:
        require address(stor[arg1]) == msg.sender
    uint8(stor2[arg1].field_160) = 0
    if address(stor2[arg1].field_0):
        emit MinterUpdated(address(stor2[arg1].field_0), 0);
        address(stor2[arg1].field_0) = 0
    emit MintingDisabled()
}

function sub_5ce9f29c(?) payable {
    require not uint8(stor[arg1 + 3][address(msg.sender)])
    uint256(stor[arg1 + 9][address(msg.sender)][address(arg3)]) = arg4
    emit 0xef8c5be1: arg4, msg.sender, arg3
    require ext_code.size(arg3)
    call arg3.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg4, address(arg2), Array(len=arg5.length, data=arg5[all])
    require ext_call.success
    return 1
}

function sub_9fb6f526(?) payable {
    require uint8(stor2[arg1].field_160)
    if address(stor2[arg1].field_0) != msg.sender:
        require address(stor[arg1]) == msg.sender
    if arg4:
        uint8(stor[arg1 + 3][address(arg2)]) = 1
    require arg3 + uint256(stor[arg1 + 8][address(arg2)]) >= uint256(stor[arg1 + 8][address(arg2)])
    uint256(stor[arg1 + 8][address(arg2)]) += arg3
    require arg3 + stor7[arg1] >= stor7[arg1]
    stor7[arg1] += arg3
    emit Mint(arg3, arg4, arg2);
    emit Transfer(arg3, 0, arg2);
    return 1
}

function sub_67b99654(?) payable {
    require uint8(stor2[arg1].field_168)
    require not uint8(stor[arg1 + 3][address(arg2)])
    require arg4 <= uint256(stor[arg1 + 8][address(arg2)])
    uint256(stor[arg1 + 8][address(arg2)]) -= arg4
    require arg4 <= uint256(stor[arg1 + 9][address(arg2)][address(msg.sender)])
    uint256(stor[arg1 + 9][address(arg2)][address(msg.sender)]) -= arg4
    require arg4 + uint256(stor[arg1 + 8][address(arg3)]) >= uint256(stor[arg1 + 8][address(arg3)])
    uint256(stor[arg1 + 8][address(arg3)]) += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function sub_06ad0e7b(?) payable {
    if not uint8(stor2[arg1].field_168):
        require uint8(stor2[arg1].field_160)
        if address(stor[arg1]) != msg.sender:
            require address(stor2[arg1].field_0) == msg.sender
    require not uint8(stor[arg1 + 3][address(msg.sender)])
    require arg3 <= uint256(stor[arg1 + 8][address(msg.sender)])
    uint256(stor[arg1 + 8][address(msg.sender)]) -= arg3
    require arg3 + uint256(stor[arg1 + 8][arg2]) >= uint256(stor[arg1 + 8][arg2])
    uint256(stor[arg1 + 8][address(arg2)]) = arg3 + uint256(stor[arg1 + 8][arg2])
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function sub_35659df9(?) payable {
    require not address(stor[arg1])
    address(stor[arg1]) = arg2
    uint256(stor[sha3(arg1 + 4)][]) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[sha3(arg1 + 5)][]) = Array(len=arg4.length, data=arg4[all])
    stor6[arg1] = arg5
    if arg6 > 0:
        uint256(stor[arg1 + 8][address(arg2)]) = arg6
        stor7[arg1] = arg6
        emit Mint(arg6, 0, address(stor[arg1]));
        emit Transfer(arg6, 0, address(stor[arg1]));
    uint8(stor2[arg1].field_160) = uint8(arg7)
    Mask(88, 0, stor2[arg1].field_168) = Mask(88, 0, arg8)
    Mask(80, 0, stor2[arg1].field_176) = 0
    Mask(80, 0, stor2[arg1].field_176) = Mask(80, 16, arg7) >> 16
}

function sub_6a097201(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 65:
        return 0
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            return 0
    signer = erecover(arg1, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}

function sub_d1adb133(?) payable {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = 0xf16f9b5300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + 132] = address(arg1)
    mem[ceil32(arg5.length) + 152] = address(arg2)
    mem[ceil32(arg5.length) + 224 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 256 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
    mem[arg5.length + ceil32(arg5.length) + 224] = arg6
    return sha3(0, arg1, arg2, arg3, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 224 len (arg5.length % 32) + 32], arg7, None)
}

function sub_c3af8bcb(?) payable {
    require arg1 <= 9
    if not arg1:
        return 'Success'
    require arg1 <= 9
    if arg1 == 1:
        return 'Tokens not transferable yet'
    require arg1 <= 9
    if arg1 == 2:
        return 'Account locked'
    require arg1 <= 9
    if arg1 == 3:
        return 'Mismatch in signing account'
    require arg1 <= 9
    if arg1 == 4:
        return 'Transfer already executed'
    require arg1 <= 9
    if arg1 == 5:
        return 'Insufficient approved tokens'
    require arg1 <= 9
    if arg1 == 6:
        return Array(len=37, data='Insufficient approved tokens for', ' fees', Mask(40, -256, 'Insufficient approved tokens for', ' fees') << 256), 
    require arg1 <= 9
    if arg1 == 7:
        return 'Insufficient tokens'
    require arg1 <= 9
    if arg1 == 8:
        return 'Insufficient tokens for fees'
    require arg1 <= 9
    if arg1 != 9:
        return 'Unknown error'
    return 'Overflow error'
}

function sub_233a651d(?) payable {
    mem[128 len arg8.length] = arg8[all]
    if not uint8(stor2[arg1].field_168):
        return 1
    mem[ceil32(arg8.length) + 192] = arg5
    if not arg3:
        return 3
    mem[ceil32(arg8.length) + 128] = 28
    mem[ceil32(arg8.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 192 len 0] = None
    mem[ceil32(arg8.length) + 196 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 220] = sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg8.length != 65:
        if arg3:
            return 3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, arg5) >> 32, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            require erecover.result
            if arg3 != address(signer):
                return 3
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if arg3:
                    return 3
            else:
                signer = erecover(sha3(Mask(224, 32, arg5) >> 32, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                require erecover.result
                if arg3 != address(signer):
                    return 3
    if uint8(stor[arg1 + 3][address(arg3)]):
        return 2
    if uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)]):
        return 4
    if uint256(stor[arg1 + 8][address(arg3)]) < arg6:
        return 8
    if uint256(stor[arg1 + 8][address(arg9)]) + arg6 >= uint256(stor[arg1 + 8][address(arg9)]):
        return 0
    return 9
}

function sub_b21b2fdd(?) payable {
    mem[128 len arg8.length] = arg8[all]
    require uint8(stor2[arg1].field_168)
    require arg3
    mem[ceil32(arg8.length) + 128] = 28
    mem[ceil32(arg8.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 196 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 192 len 4] = arg5
    mem[ceil32(arg8.length) + 220] = sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg8.length != 65:
        require not arg3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            require erecover.result
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                require erecover.result
                require arg3 == address(signer)
    require not uint8(stor[arg1 + 3][address(arg3)])
    require not uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)])
    uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)]) = 1
    uint256(stor[arg1 + 9][address(arg3)][address(arg4)]) = arg5
    emit 0xef8c5be1: arg5, arg3, arg4
    require arg6 <= uint256(stor[arg1 + 8][address(arg3)])
    uint256(stor[arg1 + 8][address(arg3)]) -= arg6
    require arg6 + uint256(stor[arg1 + 8][arg9]) >= uint256(stor[arg1 + 8][arg9])
    uint256(stor[arg1 + 8][address(arg9)]) = arg6 + uint256(stor[arg1 + 8][arg9])
    emit Transfer(arg6, arg3, arg9);
    return 1
}

function sub_ecbc8784(?) payable {
    mem[128 len arg8.length] = arg8[all]
    if not uint8(stor2[arg1].field_168):
        return 1
    if not arg3:
        return 3
    mem[ceil32(arg8.length) + 128] = 28
    mem[ceil32(arg8.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 196 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 192 len 4] = arg5
    mem[ceil32(arg8.length) + 220] = sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg8.length != 65:
        if arg3:
            return 3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            require erecover.result
            if arg3 != address(signer):
                return 3
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if arg3:
                    return 3
            else:
                signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                require erecover.result
                if arg3 != address(signer):
                    return 3
    if uint8(stor[arg1 + 3][address(arg3)]):
        return 2
    if uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)]):
        return 4
    require arg6 + arg5 >= arg5
    if uint256(stor[arg1 + 8][address(arg3)]) < arg5:
        return 7
    if uint256(stor[arg1 + 8][address(arg3)]) < arg6 + arg5:
        return 8
    if uint256(stor[arg1 + 8][address(arg4)]) + arg5 >= uint256(stor[arg1 + 8][address(arg4)]):
        if uint256(stor[arg1 + 8][address(arg9)]) + arg6 >= uint256(stor[arg1 + 8][address(arg9)]):
            return 0
    return 9
}

function sub_6a7191aa(?) payable {
    mem[128 len arg8.length] = arg8[all]
    require uint8(stor2[arg1].field_168)
    require arg3
    mem[ceil32(arg8.length) + 128] = 28
    mem[ceil32(arg8.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 196 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg8.length) + 192 len 4] = arg5
    mem[ceil32(arg8.length) + 220] = sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg8.length != 65:
        require not arg3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            require erecover.result
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                require erecover.result
                require arg3 == address(signer)
    require not uint8(stor[arg1 + 3][address(arg3)])
    require not uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)])
    uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7)]) = 1
    require arg5 <= uint256(stor[arg1 + 8][address(arg3)])
    uint256(stor[arg1 + 8][address(arg3)]) -= arg5
    require arg5 + uint256(stor[arg1 + 8][arg4]) >= uint256(stor[arg1 + 8][arg4])
    uint256(stor[arg1 + 8][address(arg4)]) = arg5 + uint256(stor[arg1 + 8][arg4])
    emit Transfer(arg5, arg3, arg4);
    require arg6 <= uint256(stor[arg1 + 8][address(arg3)])
    uint256(stor[arg1 + 8][address(arg3)]) -= arg6
    require arg6 + uint256(stor[arg1 + 8][arg9]) >= uint256(stor[arg1 + 8][arg9])
    uint256(stor[arg1 + 8][address(arg9)]) = arg6 + uint256(stor[arg1 + 8][arg9])
    emit Transfer(arg6, arg3, arg9);
    return 1
}

function sub_5ac41956(?) payable {
    mem[128 len arg9.length] = arg9[all]
    if not uint8(stor2[arg1].field_168):
        return 1
    mem[ceil32(arg9.length) + 192] = address(arg5)
    if not arg3:
        return 3
    mem[ceil32(arg9.length) + 128] = 28
    mem[ceil32(arg9.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg9.length) + 192 len 0] = None
    mem[ceil32(arg9.length) + 196 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg9.length) + 220] = sha3(0, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg9.length != 65:
        if arg3:
            return 3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(arg5, uint64(arg6), sha3(0, arg2, arg3, arg4, arg5, arg6, arg7, arg8)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            require erecover.result
            if arg3 != address(signer):
                return 3
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if arg3:
                    return 3
            else:
                signer = erecover(sha3(arg5, uint64(arg6), sha3(0, arg2, arg3, arg4, arg5, arg6, arg7, arg8)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                require erecover.result
                if arg3 != address(signer):
                    return 3
    if uint8(stor[arg1 + 3][address(arg4)]):
        return 2
    if uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, arg5, arg6, arg7, arg8)]):
        return 4
    require arg7 + arg6 >= arg6
    if uint256(stor[arg1 + 9][address(arg4)][address(arg3)]) < arg6:
        return 5
    if uint256(stor[arg1 + 9][address(arg4)][address(arg3)]) < arg7 + arg6:
        return 6
    if uint256(stor[arg1 + 8][address(arg4)]) < arg6:
        return 7
    if uint256(stor[arg1 + 8][address(arg4)]) < arg7 + arg6:
        return 8
    if uint256(stor[arg1 + 8][address(arg5)]) + arg6 >= uint256(stor[arg1 + 8][address(arg5)]):
        if uint256(stor[arg1 + 8][address(arg10)]) + arg7 >= uint256(stor[arg1 + 8][address(arg10)]):
            return 0
    return 9
}

function sub_97e8c813(?) payable {
    mem[128 len arg9.length] = arg9[all]
    require uint8(stor2[arg1].field_168)
    require arg3
    mem[ceil32(arg9.length) + 128] = 28
    mem[ceil32(arg9.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg9.length) + 196 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg9.length) + 192 len 4] = arg5
    mem[ceil32(arg9.length) + 220] = sha3(0, arg2, arg3, arg4, address(arg5), arg6, arg7, arg8)
    if arg9.length != 65:
        require not arg3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, address(arg5), arg6, arg7, arg8)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            require erecover.result
            require arg3 == address(signer)
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                require not arg3
            else:
                signer = erecover(sha3(arg5, 0x68657265756d205369676e65, sha3(0, arg2, arg3, arg4, address(arg5), arg6, arg7, arg8)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                require erecover.result
                require arg3 == address(signer)
    require not uint8(stor[arg1 + 3][address(arg4)])
    require not uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, address(arg5), arg6, arg7, arg8)])
    uint8(stor[arg1 + 10][address(arg3)][sha3(0, arg2, arg3, arg4, address(arg5), arg6, arg7, arg8)]) = 1
    require arg6 <= uint256(stor[arg1 + 8][address(arg4)])
    uint256(stor[arg1 + 8][address(arg4)]) -= arg6
    require arg6 <= uint256(stor[arg1 + 9][address(arg4)][address(arg3)])
    uint256(stor[arg1 + 9][address(arg4)][address(arg3)]) -= arg6
    require arg6 + uint256(stor[arg1 + 8][address(arg5)]) >= uint256(stor[arg1 + 8][address(arg5)])
    uint256(stor[arg1 + 8][address(arg5)]) += arg6
    emit Transfer(arg6, arg4, address(arg5));
    require arg7 <= uint256(stor[arg1 + 8][address(arg4)])
    uint256(stor[arg1 + 8][address(arg4)]) -= arg7
    require arg7 <= uint256(stor[arg1 + 9][address(arg4)][address(arg3)])
    uint256(stor[arg1 + 9][address(arg4)][address(arg3)]) -= arg7
    require arg7 + uint256(stor[arg1 + 8][address(arg10)]) >= uint256(stor[arg1 + 8][address(arg10)])
    uint256(stor[arg1 + 8][address(arg10)]) += arg7
    emit Transfer(arg7, arg4, arg10);
    return 1
}

function sub_d4d7ebb1(?) payable {
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg9.length
    mem[ceil32(arg6.length) + 160 len arg9.length] = arg9[all]
    if not uint8(stor2[arg1].field_168):
        return 1
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 160] = 0xf16f9b5300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 224] = arg5
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 256 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[ceil32(arg6.length) + ceil32(arg9.length) + floor32(arg6.length) + -(arg6.length % 32) + 288 len arg6.length % 32] = mem[floor32(arg6.length) + -(arg6.length % 32) + 160 len arg6.length % 32]
    mem[arg6.length + ceil32(arg6.length) + ceil32(arg9.length) + 256] = arg7
    _200 = sha3(0, arg2, arg3, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[ceil32(arg6.length) + ceil32(arg9.length) + floor32(arg6.length) + 256 len (arg6.length % 32) + 32], arg8, None)
    if not arg3:
        return 3
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 160] = 28
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 192] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 228 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 252] = sha3(0, arg2, arg3, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[ceil32(arg6.length) + ceil32(arg9.length) + floor32(arg6.length) + 256 len (arg6.length % 32) + 32], arg8, None)
    if arg9.length != 65:
        if arg3:
            return 3
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27):
            signer = erecover(sha3(uint32(arg5), 0x68657265756d205369676e65, _200), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
            require erecover.result
            if arg3 != address(signer):
                return 3
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27) != 28:
                if arg3:
                    return 3
            else:
                signer = erecover(sha3(uint32(arg5), 0x68657265756d205369676e65, _200), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
                require erecover.result
                if arg3 != address(signer):
                    return 3
    if uint8(stor[arg1 + 3][address(arg3)]):
        return 2
    if uint8(stor[arg1 + 10][address(arg3)][_200]):
        return 4
    if uint256(stor[arg1 + 8][address(arg3)]) < arg7:
        return 8
    if uint256(stor[arg1 + 8][address(arg10)]) + arg7 >= uint256(stor[arg1 + 8][address(arg10)]):
        return 0
    return 9
}

function sub_8ed89fb3(?) payable {
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg9.length
    mem[ceil32(arg6.length) + 160 len arg9.length] = arg9[all]
    require uint8(stor2[arg1].field_168)
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 160] = 0xf16f9b5300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 224] = arg5
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 256 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[ceil32(arg6.length) + ceil32(arg9.length) + floor32(arg6.length) + -(arg6.length % 32) + 288 len arg6.length % 32] = mem[floor32(arg6.length) + -(arg6.length % 32) + 160 len arg6.length % 32]
    mem[arg6.length + ceil32(arg6.length) + ceil32(arg9.length) + 256] = arg7
    mem[arg6.length + ceil32(arg6.length) + ceil32(arg9.length) + 288] = arg8
    _300 = sha3(0, arg2, arg3, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[ceil32(arg6.length) + ceil32(arg9.length) + floor32(arg6.length) + 256 len (arg6.length % 32) + 32], arg8, None)
    require arg3
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 160] = 28
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 192] = 0x19457468657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 228 len 28] = 0x68657265756d205369676e6564204d6573736167653a0a3332000000
    mem[ceil32(arg6.length) + ceil32(arg9.length) + 252] = sha3(0, arg2, arg3, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[ceil32(arg6.length) + ceil32(arg9.length) + floor32(arg6.length) + 256 len (arg6.length % 32) + 32], arg8, None)
    if arg9.length != 65:
        require not arg3
        require not uint8(stor[arg1 + 3][address(arg3)])
        require not uint8(stor[arg1 + 10][address(arg3)][_300])
        uint8(stor[arg1 + 10][address(arg3)][_300]) = 1
        uint256(stor[arg1 + 9][address(arg3)][address(arg4)]) = arg5
        emit 0xef8c5be1: arg5, arg3, arg4
        require arg7 <= uint256(stor[arg1 + 8][address(arg3)])
        uint256(stor[arg1 + 8][address(arg3)]) -= arg7
        require arg7 + uint256(stor[arg1 + 8][arg10]) >= uint256(stor[arg1 + 8][arg10])
        uint256(stor[arg1 + 8][address(arg10)]) = arg7 + uint256(stor[arg1 + 8][arg10])
        emit Transfer(arg7, arg3, arg10);
        mem[ceil32(arg6.length) + ceil32(arg9.length) + 228] = msg.sender
        mem[ceil32(arg6.length) + ceil32(arg9.length) + 260] = arg5
        mem[ceil32(arg6.length) + ceil32(arg9.length) + 292] = arg2
        mem[ceil32(arg6.length) + ceil32(arg9.length) + 324] = 128
        mem[ceil32(arg6.length) + ceil32(arg9.length) + 356] = arg6.length
        mem[ceil32(arg6.length) + ceil32(arg9.length) + 388 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            require ext_code.size(arg4)
            call arg4.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 710 wei
                args mem[ceil32(arg6.length) + ceil32(arg9.length) + 228 len arg6.length + 28], arg7, arg8, mem[ceil32(arg6.length) + ceil32(arg9.length) + arg6.length + 320 len 68]
        else:
            mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg9.length) + 388] = mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg9.length) + -(arg6.length % 32) + 420 len arg6.length % 32]
            require ext_code.size(arg4)
            call arg4.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 710 wei
                args mem[ceil32(arg6.length) + ceil32(arg9.length) + 228 len arg6.length + 28], arg7, arg8, mem[ceil32(arg6.length) + ceil32(arg9.length) + arg6.length + 320 len -(arg6.length % 32) + 100]
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27):
            signer = erecover(sha3(uint32(arg5), 0x68657265756d205369676e65, _300), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
            require erecover.result
            require arg3 == address(signer)
            require not uint8(stor[arg1 + 3][address(arg3)])
            require not uint8(stor[arg1 + 10][address(arg3)][_300])
            uint8(stor[arg1 + 10][address(arg3)][_300]) = 1
            uint256(stor[arg1 + 9][address(arg3)][address(arg4)]) = arg5
            emit 0xef8c5be1: arg5, arg3, arg4
            require arg7 <= uint256(stor[arg1 + 8][address(arg3)])
            uint256(stor[arg1 + 8][address(arg3)]) -= arg7
            require arg7 + uint256(stor[arg1 + 8][arg10]) >= uint256(stor[arg1 + 8][arg10])
            uint256(stor[arg1 + 8][address(arg10)]) = arg7 + uint256(stor[arg1 + 8][arg10])
            emit Transfer(arg7, arg3, arg10);
            require ext_code.size(arg4)
            call arg4.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg5, address(arg2), Array(len=arg6.length, data=arg6[all])
        else:
            if 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27):
                signer = erecover(sha3(uint32(arg5), 0x68657265756d205369676e65, _300), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
                require erecover.result
                require arg3 == address(signer)
                require not uint8(stor[arg1 + 3][address(arg3)])
                require not uint8(stor[arg1 + 10][address(arg3)][_300])
                uint8(stor[arg1 + 10][address(arg3)][_300]) = 1
                uint256(stor[arg1 + 9][address(arg3)][address(arg4)]) = arg5
                emit 0xef8c5be1: arg5, arg3, arg4
                require arg7 <= uint256(stor[arg1 + 8][address(arg3)])
                uint256(stor[arg1 + 8][address(arg3)]) -= arg7
                require arg7 + uint256(stor[arg1 + 8][arg10]) >= uint256(stor[arg1 + 8][arg10])
                uint256(stor[arg1 + 8][address(arg10)]) = arg7 + uint256(stor[arg1 + 8][arg10])
                emit Transfer(arg7, arg3, arg10);
                require ext_code.size(arg4)
                call arg4.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg5, address(arg2), Array(len=arg6.length, data=arg6[all])
            else:
                require not arg3
                require not uint8(stor[arg1 + 3][address(arg3)])
                require not uint8(stor[arg1 + 10][address(arg3)][_300])
                uint8(stor[arg1 + 10][address(arg3)][_300]) = 1
                uint256(stor[arg1 + 9][address(arg3)][address(arg4)]) = arg5
                emit 0xef8c5be1: arg5, arg3, arg4
                require arg7 <= uint256(stor[arg1 + 8][address(arg3)])
                uint256(stor[arg1 + 8][address(arg3)]) -= arg7
                require arg7 + uint256(stor[arg1 + 8][arg10]) >= uint256(stor[arg1 + 8][arg10])
                uint256(stor[arg1 + 8][address(arg10)]) = arg7 + uint256(stor[arg1 + 8][arg10])
                emit Transfer(arg7, arg3, arg10);
                mem[ceil32(arg6.length) + ceil32(arg9.length) + 228] = msg.sender
                mem[ceil32(arg6.length) + ceil32(arg9.length) + 260] = arg5
                mem[ceil32(arg6.length) + ceil32(arg9.length) + 292] = arg2
                mem[ceil32(arg6.length) + ceil32(arg9.length) + 324] = 128
                mem[ceil32(arg6.length) + ceil32(arg9.length) + 356] = arg6.length
                mem[ceil32(arg6.length) + ceil32(arg9.length) + 388 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
                if not arg6.length % 32:
                    require ext_code.size(arg4)
                    call arg4.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining - 710 wei
                        args mem[ceil32(arg6.length) + ceil32(arg9.length) + 228 len arg6.length + 28], arg7, arg8, mem[ceil32(arg6.length) + ceil32(arg9.length) + arg6.length + 320 len 68]
                else:
                    mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg9.length) + 388] = mem[floor32(arg6.length) + ceil32(arg6.length) + ceil32(arg9.length) + -(arg6.length % 32) + 420 len arg6.length % 32]
                    require ext_code.size(arg4)
                    call arg4.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining - 710 wei
                        args mem[ceil32(arg6.length) + ceil32(arg9.length) + 228 len arg6.length + 28], arg7, arg8, mem[ceil32(arg6.length) + ceil32(arg9.length) + arg6.length + 320 len -(arg6.length % 32) + 100]
    require ext_call.success
    return 1
}



}
