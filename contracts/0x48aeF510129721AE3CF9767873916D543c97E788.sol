contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 5666]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of struct stor3;
mapping of uint256 stor99;

function AddAuthority() {
    return addAuthorityAddress
}

function destroy() {
    if addAuthorityAddress != msg.sender:
    selfdestruct(addAuthorityAddress)
}

function _fallback() {
    revert 
}

function sub_e7ec6795(?) {
    if msg.sender == addAuthorityAddress:
        emit 0x12f1932c: Array(len=arg1.length, data=arg1[all])
}

function sub_8661856b(?) {
    if msg.sender == addAuthorityAddress:
        return stor1[address(arg1)][Mask(9, 7, arg2) << 240], stor2[address(arg1)][Mask(13, 3, arg2) << 240]
    else:
        return 0
}

function sub_f11badc0(?) {
    if msg.sender == addAuthorityAddress:
        return stor3[address(arg1)].field_256, 
               uint8(stor3[address(arg1)].field_768),
               uint8(stor3[address(arg1)].field_768),
               uint8(stor3[address(arg1)].field_768),
               uint16(stor3[address(arg1)].field_792),
               address(stor3[address(arg1)][2][arg2 << 240].field_0)
    else:
        return 0
}

function sub_e6309682(?) {
    mem[128 len arg5.length] = arg5[all]
    if address(stor3[address(arg1)].field_808) != arg1:
        return 0, 12
    if uint16(stor3[address(arg1)].field_792) <= arg2:
        return 0, 4
    require 2^(2 * arg2 % 128)
    if stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 > 1:
        require 2^(32 * arg2 % 8)
        return stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 224, 
               stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * uint8(stor3[address(arg1)].field_776) % 16
    if bool(stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128)) != uint8(stor3[address(arg1)].field_784):
        return 0
    if msg.sender == address(stor3[address(arg1)][2][arg4 << 240].field_0):
        if arg3:
            emit 0xa18a6d3a: Array(len=arg5.length, data=arg5[all]), mem[128 len 20]
    return 0, 
           stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * uint8(stor3[address(arg1)].field_776) % 16 or 1
}

function sub_a977ee85(?) {
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    if msg.sender == addAuthorityAddress:
        stor3[address(arg3)].field_0 = msg.sender or Mask(96, 160, stor3[address(arg3)].field_0)
        stor3[address(arg3)].field_256 = block.number
        stor3[address(arg3)][2][arg1 << 240].field_0 = arg2 or Mask(96, 160, stor3[address(arg3)][2][arg1 << 240].field_0)
        Mask(216, 0, stor3[address(arg3)].field_808) = Mask(216, 0, arg3)
        stor3[address(arg3)].field_768 = arg4 or Mask(248, 8, stor3[address(arg3)].field_768)
        Mask(248, 0, stor3[address(arg3)].field_776) = Mask(248, 0, arg5)
        Mask(240, 0, stor3[address(arg3)].field_784) = Mask(240, 0, arg6)
        Mask(232, 0, stor3[address(arg3)].field_792) = Mask(232, 0, arg7)
        if uint8(arg6) > 0:
            require uint8(arg4)
            if uint16(var13003) < uint16(uint16(arg7) / uint8(arg4)):
                require uint16(var15001) < arg8.length
                stor1[address(arg3)][var17003 << 240] = mem[(32 * var17001) + 128]
                require uint8(arg4)
                idx = var17003
                while uint16(idx + 1) < uint16(uint16(arg7) / uint8(arg4)):
                    require uint16(idx + 1) < arg8.length
                    mem[0] = uint16(idx + 1)
                    mem[32] = sha3(address(arg3), 1)
                    stor1[address(arg3)][idx + 1 << 240] = mem[(32 * uint16(idx + 1)) + 128]
                    require uint8(arg4)
                    idx = idx + 1
                    continue 
        emit 0x3b06453a: address(arg2), address(arg3), block.number, arg7 << 240, arg4 << 248, arg5 << 248, uint8(arg6)
}

function sub_c2fd05a5(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == addAuthorityAddress:
        idx = 0
        while uint16(idx) < arg1:
            require uint16(idx) < arg2.length
            if uint16(var18004) < mem[(32 * uint16(idx)) + 158 len 2]:
                require uint16(var20001) < arg5.length
                require uint16(idx) < arg3.length
                require uint16(var24006) < arg4.length
                mem[0] = Mask(16, 3, var28001) >> 3
                mem[32] = var28004
                stor[var28004][Mask(16, 3, var28001) << 237] = var28005
                require uint16(idx) < arg2.length
                s = var28006
                while uint16(s + 1) < mem[(32 * uint16(idx)) + 158 len 2]:
                    require uint16(s + 1) < arg5.length
                    require uint16(idx) < arg3.length
                    require uint16(s + 1) < arg4.length
                    mem[0] = uint16(mem[(32 * uint16(s + 1)) + (32 * arg2.length) + (32 * arg3.length) + 192]) / 8
                    mem[32] = sha3(mem[(32 * uint16(idx)) + (32 * arg2.length) + 172 len 20], 2)
                    stor2[mem[(32 * uint16(idx)) + (32 * arg2.length) + 172 len 20]][uint16(mem[(32 * uint16(s + 1)) + (32 * arg2.length) + (32 * arg3.length) + 192]) / 8] = mem[(32 * uint16(s + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                    require uint16(idx) < arg2.length
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
}

function sub_b3881cf7(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == addAuthorityAddress:
        idx = 0
        while uint16(idx) < arg1:
            require uint16(idx) < arg2.length
            if uint16(var18004) < mem[(32 * uint16(idx)) + 158 len 2]:
                require uint16(var20001) < arg5.length
                require uint16(idx) < arg3.length
                require uint16(var24006) < arg4.length
                mem[0] = Mask(16, 7, var28001) >> 7
                mem[32] = var28004
                stor[var28004][Mask(16, 7, var28001) << 233] = var28005
                require uint16(idx) < arg2.length
                s = var28006
                while uint16(s + 1) < mem[(32 * uint16(idx)) + 158 len 2]:
                    require uint16(s + 1) < arg5.length
                    require uint16(idx) < arg3.length
                    require uint16(s + 1) < arg4.length
                    mem[0] = uint16(mem[(32 * uint16(s + 1)) + (32 * arg2.length) + (32 * arg3.length) + 192]) / 128
                    mem[32] = sha3(mem[(32 * uint16(idx)) + (32 * arg2.length) + 172 len 20], 1)
                    stor1[mem[(32 * uint16(idx)) + (32 * arg2.length) + 172 len 20]][uint16(mem[(32 * uint16(s + 1)) + (32 * arg2.length) + (32 * arg3.length) + 192]) / 128] = mem[(32 * uint16(s + 1)) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                    require uint16(idx) < arg2.length
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
}



}
