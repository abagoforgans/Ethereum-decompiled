contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 3854]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of struct stor3;

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

function sub_47ab79e1(?) {
    if msg.sender == addAuthorityAddress:
        emit 0x7cffb073: address(arg1), Array(len=arg2.length, data=arg2[all])
}

function sub_8661856b(?) {
    if msg.sender == addAuthorityAddress:
        return stor1[address(arg1)][Mask(9, 7, arg2) << 240]
    else:
        return 0
}

function sub_765a59e8(?) {
    if msg.sender == addAuthorityAddress:
        stor1[address(arg1)][Mask(9, 7, arg2) << 240] = arg3
        stor2[address(arg1)][Mask(13, 3, arg2) << 240] = arg4
}

function sub_e6309682(?) {
    mem[128 len arg5.length] = arg5[all]
    if stor3[address(arg1)].field_808 != arg1:
        return 0, 12
    if stor3[address(arg1)].field_792 <= arg2:
        return 0, 4
    require 2^(2 * arg2 % 128)
    if stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 > 1:
        require 2^(32 * arg2 % 8)
        return stor2[address(arg1)][Mask(253, 3, arg2)] / 2^(32 * arg2 % 8) << 224, 
               stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * stor3[address(arg1)].field_776 % 16
    if bool(stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128)) != stor3[address(arg1)].field_784:
        return 0
    if msg.sender == stor3[address(arg1)][2][arg4 << 240].field_0:
        if arg3:
            emit 0xa18a6d3a: Array(len=arg5.length, data=arg5[all]), mem[128 len 20]
    return 0, stor1[address(arg1)][Mask(249, 7, arg2)] / 2^(2 * arg2 % 128) % 4 or 16 * stor3[address(arg1)].field_776 % 16 or 1
}

function sub_a977ee85(?) {
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    if msg.sender == addAuthorityAddress:
        stor3[address(arg3)].field_0 = msg.sender or Mask(96, 160, stor3[address(arg3)].field_0)
        stor3[address(arg3)].field_256 = block.number
        stor3[address(arg3)][2][arg1 << 240].field_0 = arg2 or Mask(96, 160, stor3[address(arg3)][2][arg1 << 240].field_0)
        stor3[address(arg3)].field_808 = Mask(216, 0, arg3)
        stor3[address(arg3)].field_768 = arg4 or Mask(248, 8, stor3[address(arg3)].field_768)
        stor3[address(arg3)].field_776 = Mask(248, 0, arg5)
        stor3[address(arg3)].field_784 = Mask(240, 0, arg6)
        stor3[address(arg3)].field_792 = Mask(232, 0, arg7)
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



}
