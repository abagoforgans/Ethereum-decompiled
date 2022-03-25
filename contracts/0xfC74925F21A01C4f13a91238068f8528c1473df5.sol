contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 5291]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of struct sub_f11badc0;

function AddAuthority() {
    return addAuthorityAddress
}

function sub_f11badc0(?) {
    return sub_f11badc0[address(arg1)].field_256, 
           sub_f11badc0[address(arg1)].field_768,
           sub_f11badc0[address(arg1)].field_768,
           sub_f11badc0[address(arg1)].field_768,
           sub_f11badc0[address(arg1)].field_1024,
           sub_f11badc0[address(arg1)][2][arg2 << 240].field_0
}

function destroy() {
    if addAuthorityAddress != msg.sender:
    selfdestruct(addAuthorityAddress)
}

function _fallback() {
    revert 
}

function sub_63a20fab(?) {
    return stor1[address(arg1)][Mask(249, 7, arg2)], stor2[address(arg1)][Mask(253, 3, arg2)]
}

function sub_e7ec6795(?) {
    if msg.sender == addAuthorityAddress:
        emit 0x12f1932c: Array(len=arg1.length, data=arg1[all])
}

function sub_69d8fc4a(?) {
    mem[128 len arg6.length] = arg6[all]
    if sub_f11badc0[address(arg1)].field_1536 != arg1:
        return 0, 0, 192
    if sub_f11badc0[address(arg1)].field_1280 != arg2:
        return 0, 0, 128
    if sub_f11badc0[address(arg1)].field_1024 <= arg3:
        return 0, 0, 64
    require 2^(2 * arg3 % 128)
    if stor1[address(arg1)][Mask(249, 7, arg3)] / 2^(2 * arg3 % 128) % 4 > 1:
        require 2^(32 * arg3 % 8)
        return sub_f11badc0[address(arg1)].field_256 + (Mask(23, 9, stor2[address(arg1)][Mask(253, 3, arg3)] / 2^(32 * arg3 % 8)) >> 9), 
               stor2[address(arg1)][Mask(253, 3, arg3)] / 2^(32 * arg3 % 8) << 247,
               stor1[address(arg1)][Mask(249, 7, arg3)] / 2^(2 * arg3 % 128) % 4 or 4 * sub_f11badc0[address(arg1)].field_776 % 64
    if bool(stor1[address(arg1)][Mask(249, 7, arg3)] / 2^(2 * arg3 % 128)) != sub_f11badc0[address(arg1)].field_784:
        return 0
    if msg.sender == sub_f11badc0[address(arg1)][2][arg5 << 240].field_0:
        if arg4:
            emit 0xa18a6d3a: Array(len=arg6.length, data=arg6[all]), mem[128 len 20]
    return 0, 
           0,
           stor1[address(arg1)][Mask(249, 7, arg3)] / 2^(2 * arg3 % 128) % 4 or 4 * sub_f11badc0[address(arg1)].field_776 % 64 or 1
}

function sub_1c42df5b(?) {
    mem[64] = (32 * arg9.length) + 128
    mem[96] = arg9.length
    mem[128 len 32 * arg9.length] = call.data[arg9 + 36 len 32 * arg9.length]
    if msg.sender == addAuthorityAddress:
        sub_f11badc0[address(arg4)].field_0 = msg.sender or Mask(96, 160, sub_f11badc0[address(arg4)].field_0)
        sub_f11badc0[address(arg4)].field_256 = block.number
        sub_f11badc0[address(arg4)][2][arg1 << 240].field_0 = arg2 or Mask(96, 160, sub_f11badc0[address(arg4)][2][arg1 << 240].field_0)
        sub_f11badc0[address(arg4)].field_1280 = arg3 or Mask(96, 160, sub_f11badc0[address(arg4)].field_1280)
        sub_f11badc0[address(arg4)].field_1536 = arg4 or Mask(96, 160, sub_f11badc0[address(arg4)].field_1536)
        sub_f11badc0[address(arg4)].field_768 = arg5 or Mask(248, 8, sub_f11badc0[address(arg4)].field_768)
        sub_f11badc0[address(arg4)].field_776 = Mask(248, 0, arg6)
        sub_f11badc0[address(arg4)].field_784 = Mask(240, 0, arg7)
        sub_f11badc0[address(arg4)].field_1024 = arg8
        if uint8(arg7) > 0:
            require uint8(arg5)
            if var13003 < arg8 / uint8(arg5):
                require var15001 < arg9.length
                mem[0] = var17003
                mem[32] = sha3(address(arg4), 1)
                stor1[address(arg4)][var17003] = mem[(32 * var17001) + 128]
                require uint8(arg5)
                idx = var17003
                while idx + 1 < arg8 / uint8(arg5):
                    require idx + 1 < arg9.length
                    mem[0] = idx + 1
                    mem[32] = sha3(address(arg4), 1)
                    stor1[address(arg4)][idx + 1] = mem[(32 * idx + 1) + 128]
                    require uint8(arg5)
                    idx = idx + 1
                    continue 
        emit 0xf1b2cff5: address(arg2), address(arg4), address(arg3), block.number, arg8, arg5 << 248, arg6 << 248, uint8(arg7)
}

function sub_90205c41(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg6.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if msg.sender == addAuthorityAddress:
        idx = 0
        while uint16(idx) < arg2:
            require uint16(idx) < arg3.length
            if uint16(var20004) >= mem[(32 * uint16(idx)) + 158 len 2]:
                idx = idx + 1
                continue 
            require uint16(var22001) < arg6.length
            require uint16(idx) < arg4.length
            require uint16(var22001) < arg5.length
            if not arg1:
                mem[0] = uint16(mem[(32 * uint16(var22001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 128
                mem[32] = sha3(mem[(32 * uint16(idx)) + (32 * arg3.length) + 172 len 20], 1)
                stor1[mem[(32 * uint16(idx)) + (32 * arg3.length) + 172 len 20]][uint16(mem[(32 * uint16(var22001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 128] = mem[(32 * uint16(var22001)) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
            else:
                mem[0] = uint16(mem[(32 * uint16(var22001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 8
                mem[32] = sha3(mem[(32 * uint16(idx)) + (32 * arg3.length) + 172 len 20], 2)
                stor2[mem[(32 * uint16(idx)) + (32 * arg3.length) + 172 len 20]][uint16(mem[(32 * uint16(var22001)) + (32 * arg3.length) + (32 * arg4.length) + 192]) / 8] = mem[(32 * uint16(var22001)) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224]
            require uint16(idx) < arg3.length
            if uint16(var22001 + 1) >= mem[(32 * uint16(idx)) + 158 len 2]:
                idx = idx + 1
                continue 
            var22001 = var22001 + 1
            continue 
}



}
