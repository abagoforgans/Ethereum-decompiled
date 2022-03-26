contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 4734]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of struct sub_f11badc0;
mapping of struct sub_d104afb7;

function AddAuthority() {
    return addAuthorityAddress
}

function sub_d104afb7(?) {
    return sub_d104afb7[arg1 << 224].field_0
}

function sub_f11badc0(?) {
    return sub_f11badc0[address(arg1)].field_256, 
           sub_f11badc0[address(arg1)].field_768,
           sub_f11badc0[address(arg1)].field_768,
           sub_f11badc0[address(arg1)].field_768,
           sub_f11badc0[address(arg1)].field_792,
           sub_f11badc0[address(arg1)][2][arg2 << 240].field_0
}

function sub_f958ca69(?) {
    return sub_d104afb7[arg1 << 224].field_0, 
           sub_d104afb7[arg1 << 224].field_256,
           sub_d104afb7[arg1 << 224].field_512,
           sub_d104afb7[arg1 << 224].field_768
}

function destroy() {
    if addAuthorityAddress != msg.sender:
    selfdestruct(addAuthorityAddress)
}

function _fallback() {
    revert 
}

function sub_8661856b(?) {
    return stor1[address(arg1)][Mask(9, 7, arg2) << 240], stor2[address(arg1)][Mask(13, 3, arg2) << 240]
}

function sub_e7ec6795(?) {
    if addAuthorityAddress == msg.sender:
        emit 0x12f1932c: Array(len=arg1.length, data=arg1[all])
}

function sub_cbcf464b(?) {
    if msg.sender == addAuthorityAddress:
        sub_d104afb7[arg1 << 224].field_0 = arg3
        sub_d104afb7[arg1 << 224].field_256 = arg2 or Mask(96, 160, sub_d104afb7[arg1 << 224].field_256)
        sub_d104afb7[arg1 << 224].field_512 = arg4
        sub_d104afb7[arg1 << 224].field_768 = block.number
}

function VerifSignature(bytes arg1, bytes arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    signer = erecover(mem[ceil32(arg1.length) + 160], mem[161] << 248, mem[128], mem[160]) 
    require erecover.result
    return (mem[ceil32(arg1.length) + 192 len 20] == address(signer))
}

function sub_dc37b819(?) {
    if 0 == sub_d104afb7[arg1 << 224].field_256:
        return 0, 12
    if sub_f11badc0[stor4[arg1 << 224].field_256].field_792 <= arg2:
        return 0, 4
    require uint16(2^(2 * arg2 % 128))
    if stor1[stor4[arg1 << 224].field_256][Mask(9, 7, arg2) << 240] / uint16(2^(2 * arg2 % 128)) % 4 <= 1:
        if bool(stor1[stor4[arg1 << 224].field_256][Mask(9, 7, arg2) << 240] / uint16(2^(2 * arg2 % 128))) != sub_f11badc0[stor4[arg1 << 224].field_256].field_784:
            return 0, stor1[stor4[arg1 << 224].field_256][Mask(9, 7, arg2) << 240] / uint16(2^(2 * arg2 % 128)) % 4
    return sub_d104afb7[arg1 << 224].field_512, 
           stor1[stor4[arg1 << 224].field_256][Mask(9, 7, arg2) << 240] / uint16(2^(2 * arg2 % 128)) % 4 or 16 * sub_f11badc0[stor4[arg1 << 224].field_256].field_776 % 16
}

function sub_cd50f13e(?) {
    if 0 == sub_d104afb7[arg1 << 224].field_256:
        return 0, 0, 12
    if sub_f11badc0[stor4[arg1 << 224].field_256].field_792 <= arg2:
        return 0, 0, 4
    require 2^(2 * arg2 % 128)
    if stor1[stor4[arg1 << 224].field_256][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 <= 1:
        return 0, 0, stor1[stor4[arg1 << 224].field_256][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4
    require 2^(32 * arg2 % 8)
    return sub_f11badc0[stor4[arg1 << 224].field_256].field_256 + (uint32(stor2[stor4[arg1 << 224].field_256][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
           stor2[stor4[arg1 << 224].field_256][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
           stor1[stor4[arg1 << 224].field_256][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[stor4[arg1 << 224].field_256].field_776 % 16
}

function sub_12a9f213(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg6.length
    mem[(32 * arg5.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if msg.sender == addAuthorityAddress:
        idx = 0
        while uint32(idx) < arg2:
            require uint32(idx) < arg3.length
            if uint32(var18004) >= mem[(32 * uint32(idx)) + 158 len 2]:
                idx = idx + 1
                continue 
            require uint32(var20001) < arg6.length
            require uint32(idx) < arg4.length
            require uint32(var20001) < arg5.length
            if not arg1:
                mem[0] = uint16(mem[(32 * uint32(var20001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 128
                mem[32] = sha3(mem[(32 * uint32(idx)) + (32 * arg3.length) + 172 len 20], 1)
                stor1[mem[(32 * uint32(idx)) + (32 * arg3.length) + 172 len 20]][uint16(mem[(32 * uint32(var20001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 128] = mem[(32 * uint32(var20001)) + (32 * arg5.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            else:
                mem[0] = uint16(mem[(32 * uint32(var20001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 8
                mem[32] = sha3(mem[(32 * uint32(idx)) + (32 * arg3.length) + 172 len 20], 2)
                stor2[mem[(32 * uint32(idx)) + (32 * arg3.length) + 172 len 20]][uint16(mem[(32 * uint32(var20001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 8] = mem[(32 * uint32(var20001)) + (32 * arg5.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            require uint32(idx) < arg3.length
            if uint32(var20001 + 1) >= mem[(32 * uint32(idx)) + 158 len 2]:
                idx = idx + 1
                continue 
            var20001 = var20001 + 1
            continue 
}

function sub_a977ee85(?) {
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    if addAuthorityAddress != msg.sender:
    sub_f11badc0[address(arg3)].field_0 = msg.sender or Mask(96, 160, sub_f11badc0[address(arg3)].field_0)
    sub_f11badc0[address(arg3)].field_256 = block.number
    sub_f11badc0[address(arg3)][2][arg1 << 240].field_0 = arg2 or Mask(96, 160, sub_f11badc0[address(arg3)][2][arg1 << 240].field_0)
    sub_f11badc0[address(arg3)].field_808 = Mask(216, 0, arg3)
    sub_f11badc0[address(arg3)].field_768 = arg4 or Mask(248, 8, sub_f11badc0[address(arg3)].field_768)
    sub_f11badc0[address(arg3)].field_776 = Mask(248, 0, arg5)
    sub_f11badc0[address(arg3)].field_784 = Mask(240, 0, arg6)
    sub_f11badc0[address(arg3)].field_792 = Mask(232, 0, arg7)
    if uint8(arg6) <= 0:
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
    require uint8(arg4)
    if uint16(var11003) >= uint16(uint16(arg7) / uint8(arg4)):
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
    require uint16(var13001) < arg8.length
    stor1[address(arg3)][var15001] = mem[(32 * var15001) + 128]
    require uint8(arg4)
    if uint16(var19003) >= uint16(uint16(arg7) / uint8(arg4)):
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
    require uint16(var21001) < arg8.length
    stor1[address(arg3)][var23001] = mem[(32 * var23001) + 128]
    require uint8(arg4)
    if uint16(var27003) >= uint16(uint16(arg7) / uint8(arg4)):
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
    require uint16(var29001) < arg8.length
    stor1[address(arg3)][var31001] = mem[(32 * var31001) + 128]
    require uint8(arg4)
    if uint16(var35003) >= uint16(uint16(arg7) / uint8(arg4)):
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
    require uint16(var37001) < arg8.length
    stor1[address(arg3)][var39001] = mem[(32 * var39001) + 128]
    require uint8(arg4)
    if uint16(var43003) >= uint16(uint16(arg7) / uint8(arg4)):
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
    require uint16(var45001) < arg8.length
    # nil
}

function sub_99be95a0(?) {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    if sub_f11badc0[address(arg1)].field_808 != arg1:
        return 0, 0, 12
    else:
        if sub_f11badc0[address(arg1)].field_792 <= arg2:
            return 0, 0, 4
        else:
            require 2^(2 * arg2 % 128)
            if stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 <= 1:
                if bool(stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128)) != sub_f11badc0[address(arg1)].field_784:
                    if sub_f11badc0[address(arg1)][2][arg4 << 240].field_0 != msg.sender:
                        return 0
                    else:
                        if not arg3:
                            return 0
                        else:
                            return 0
                else:
                    if sub_f11badc0[address(arg1)][2][arg4 << 240].field_0 != msg.sender:
                        return 0, 
                               0,
                               1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                    else:
                        if not arg3:
                            return 0, 
                                   0,
                                   1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                        else:
                            if 1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16 <= 0:
                                return 0, 
                                       0,
                                       1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                            else:
                                _40 = mem[161]
                                _42 = mem[ceil32(arg5.length) + 180]
                                mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = mem[ceil32(arg5.length) + 160]
                                signer = erecover(mem[ceil32(arg5.length) + 160], _40 << 248, mem[128], mem[160]) 
                                mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = signer
                                require erecover.result
                                if address(_42) != address(signer):
                                    return 0, 
                                           0,
                                           1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16 or 8
                                else:
                                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 416 len arg6.length] = arg6[all]
                                    if not arg6.length % 32:
                                        emit 0xc6fef693: 128, address(arg1), arg2, 192, 3, '-->', arg6.length, arg6[all], mem[ceil32(arg5.length) + 192 len 20]
                                        return 0, 
                                               0,
                                               1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                                    else:
                                        mem[floor32(arg6.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[floor32(arg6.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 448 len arg6.length % 32]
                                        emit 0xc6fef693: 128, address(arg1), arg2, 192, 3, '-->', arg6.length, arg6[all], mem[ceil32(arg5.length) + ceil32(arg6.length) + arg6.length + 416 len -(arg6.length % 32) + 32], mem[ceil32(arg5.length) + 192 len 20]
                                        return 0, 
                                               0,
                                               1 or stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
            else:
                require 2^(32 * arg2 % 8)
                if sub_f11badc0[address(arg1)][2][arg4 << 240].field_0 != msg.sender:
                    return sub_f11badc0[address(arg1)].field_256 + (uint32(stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
                           stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
                           stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                else:
                    if not arg3:
                        return sub_f11badc0[address(arg1)].field_256 + (uint32(stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
                               stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
                               stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                    else:
                        if stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16 <= 0:
                            return sub_f11badc0[address(arg1)].field_256 + (uint32(stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
                                   stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
                                   stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                        else:
                            _54 = mem[161]
                            _56 = mem[ceil32(arg5.length) + 180]
                            mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = mem[ceil32(arg5.length) + 160]
                            signer = erecover(mem[ceil32(arg5.length) + 160], _54 << 248, mem[128], mem[160]) 
                            mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = signer
                            require erecover.result
                            if address(_56) != address(signer):
                                return sub_f11badc0[address(arg1)].field_256 + (uint32(stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
                                       stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
                                       stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16 or 8
                            else:
                                mem[ceil32(arg5.length) + ceil32(arg6.length) + 416 len arg6.length] = arg6[all]
                                if not arg6.length % 32:
                                    emit 0xc6fef693: 128, address(arg1), arg2, 192, 3, '-->', arg6.length, arg6[all], mem[ceil32(arg5.length) + 192 len 20]
                                    return sub_f11badc0[address(arg1)].field_256 + (uint32(stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
                                           stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
                                           stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
                                else:
                                    mem[floor32(arg6.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[floor32(arg6.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 448 len arg6.length % 32]
                                    emit 0xc6fef693: 128, address(arg1), arg2, 192, 3, '-->', arg6.length, arg6[all], mem[ceil32(arg5.length) + ceil32(arg6.length) + arg6.length + 416 len -(arg6.length % 32) + 32], mem[ceil32(arg5.length) + 192 len 20]
                                    return sub_f11badc0[address(arg1)].field_256 + (uint32(stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8)) / 256), 
                                           stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 248,
                                           stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * sub_f11badc0[address(arg1)].field_776 % 16
}



}
