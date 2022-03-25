contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1613]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 sub_8661856b;
mapping of struct stor2;

function AddAuthority() payable {
    return addAuthorityAddress
}

function sub_8661856b(?) payable {
    return sub_8661856b[address(arg1)][arg2 / stor2[address(arg1)].field_672 << 240]
}

function destroy() payable {
    if addAuthorityAddress != msg.sender:
    selfdestruct(addAuthorityAddress)
}

function _fallback() payable {
    revert 
}

function sub_8d83a427(?) payable {
    if addAuthorityAddress == msg.sender:
        sub_8661856b[address(arg1)][arg2 / stor2[address(arg1)].field_672 << 240] = arg3
        if arg4:
            emit 0x4e1f25bc: address(arg1), arg2 << 240, arg3
}

function sub_4276c647(?) payable {
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if msg.sender == addAuthorityAddress:
        stor2[address(arg2)].field_0 = msg.sender or Mask(96, 160, stor2[address(arg2)].field_0)
        stor2[address(arg2)].field_256 = block.number
        stor2[address(arg2)].field_768 = arg2 or Mask(96, 160, stor2[address(arg2)].field_768)
        stor2[address(arg2)].field_512 = arg1
        stor2[address(arg2)].field_672 = arg3
        stor2[address(arg2)].field_680 = arg4
        stor2[address(arg2)].field_688 = Mask(80, 0, arg5)
        stor2[address(arg2)].field_704 = uint64(arg4)
        stor2[address(arg2)].field_704 = uint64(arg3)
        stor2[address(arg2)].field_704 = uint64(arg1)
        idx = 0
        while uint16(idx) < uint16(uint16(arg5) / arg3):
            require uint16(idx) < arg6.length
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg2), 1)
            sub_8661856b[address(arg2)][idx << 240] = mem[(32 * uint16(idx)) + 128]
            idx = idx + 1
            continue 
        emit 0xbe1ca2ef: address(arg2), block.number, arg5 << 240, arg3 << 248, arg4
}

function sub_7b2f4b73(?) payable {
    if stor2[address(arg1)].field_768 != arg1:
        if Mask(1, 1, arg5) > 0:
            emit 0x66be9a49: stor2[address(arg1)].field_256, address(arg1), arg3, arg4 << 248, 240, msg.sender
        return 240
    if arg2 != stor2[address(arg1)].field_256:
        if Mask(1, 1, arg5) > 0:
            emit 0x66be9a49: stor2[address(arg1)].field_256, address(arg1), arg3, arg4 << 248, 112, msg.sender
        return 112
    if stor2[address(arg1)].field_688 <= arg3:
        if Mask(1, 1, arg5) > 0:
            emit 0x66be9a49: stor2[address(arg1)].field_256, address(arg1), arg3, arg4 << 248, 48, msg.sender
        return 48
    if stor2[address(arg1)].field_680 != arg4:
        if Mask(1, 1, arg5) > 0:
            emit 0x66be9a49: stor2[address(arg1)].field_256, address(arg1), arg3, arg4 << 248, 16, msg.sender
        return 16
    if arg5 <= 0:
        if Mask(1, 1, arg5) > 0:
            emit 0x66be9a49: stor2[address(arg1)].field_256, address(arg1), arg3, arg4 << 248, uint8(2^(256 / stor2[address(arg1)].field_672) - 1 and sub_8661856b[address(arg1)][arg3 / stor2[address(arg1)].field_672] / 2^(arg3 % stor2[address(arg1)].field_672 * uint8(256 / stor2[address(arg1)].field_672))), msg.sender
    else:
        if uint8(2^(256 / stor2[address(arg1)].field_672) - 1 and sub_8661856b[address(arg1)][arg3 / stor2[address(arg1)].field_672] / 2^(arg3 % stor2[address(arg1)].field_672 * uint8(256 / stor2[address(arg1)].field_672))) > 0:
            emit 0xa18a6d3a: Array(len=arg6.length, data=arg6[all]), msg.sender
        if Mask(1, 1, arg5) > 0:
            emit 0x66be9a49: stor2[address(arg1)].field_256, address(arg1), arg3, arg4 << 248, uint8(2^(256 / stor2[address(arg1)].field_672) - 1 and sub_8661856b[address(arg1)][arg3 / stor2[address(arg1)].field_672] / 2^(arg3 % stor2[address(arg1)].field_672 * uint8(256 / stor2[address(arg1)].field_672))), msg.sender
    return uint8(2^(256 / stor2[address(arg1)].field_672) - 1 and sub_8661856b[address(arg1)][arg3 / stor2[address(arg1)].field_672] / 2^(arg3 % stor2[address(arg1)].field_672 * uint8(256 / stor2[address(arg1)].field_672)))
}



}
