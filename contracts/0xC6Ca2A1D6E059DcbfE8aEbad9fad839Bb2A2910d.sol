contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_f4f6a6f6;
mapping of uint256 sub_8ec129bf;

function sub_1ff7c73d(?) {
    return sub_8ec129bf[arg1]
}

function owner() {
    return owner
}

function sub_8ec129bf(?) {
    return sub_8ec129bf[arg1]
}

function sub_f4f6a6f6(?) {
    return sub_f4f6a6f6[arg1]
}

function _fallback() payable {
    revert
}

function sub_3cf6c12d(?) {
    return not not sub_8ec129bf[arg1]
}

function sub_abb863c8(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit arg1: arg3, arg2
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    owner = arg1
}

function sub_2fedceb9(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit arg1: arg4, arg2, arg3
}

function sub_35149993(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit arg1: arg5, arg2, arg3, arg4
}

function sub_4f56f4f4(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit 0xdb983b95: arg4, arg1, arg2, arg3
}

function sub_334cc4ad(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit 0xccc16b9e: arg4, arg5, arg1, arg2, arg3
}

function sub_05952641(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    sub_8ec129bf[arg1] = arg4
    emit 0xe9cefdc9: arg4, arg5, arg1, arg2, arg3
}

function sub_a7727d1b(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    sub_8ec129bf[arg1] = arg4
    emit 0xc9b9aab9: arg4, arg5, arg1, arg2, arg3
}

function sub_06075a36(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit 0x2e9c54d1: arg3, Array(len=arg4.length, data=arg4[all]), arg5, arg1, arg2
}

function sub_0b01f001(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit 0xeb6e0ddf: Array(len=arg4.length, data=arg4[all]), arg5, arg1, arg2, arg3
}

function sub_622a89ab(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    emit 0xf6751784: Array(len=arg4.length, data=arg4[all]), arg5, arg1, arg2, arg3
}

function sub_7faa6f8c(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    sub_8ec129bf[arg1] = arg3
    emit 0x8be307c8: arg3, Array(len=arg4.length, data=arg4[all]), arg5, arg1, arg2
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not arg1.length:
        return 0
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_cde7dd76(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg5.length
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        emit 0xe3b8f0db: arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 320 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 160, arg6, arg1, arg2
    else:
        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 352] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 384 len arg5.length % 32]
        emit 0xe3b8f0db: arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 320 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 160, arg6, arg1, arg2
}

function sub_88e2713f(?) {
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg7.length
    mem[ceil32(arg6.length) + 160 len arg7.length] = arg7[all]
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    sub_f4f6a6f6[arg3] = arg1
    sub_8ec129bf[arg1] = 'NO_OWNER'
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 160] = arg4
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 320 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg6.length) + arg7.length + 160 len ceil32(arg7.length) - arg7.length]
    mem[arg7.length + ceil32(arg6.length) + ceil32(arg7.length) + 320] = arg6.length
    mem[arg7.length + ceil32(arg6.length) + ceil32(arg7.length) + 352 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        emit 0x9ea5d10d: arg4, Array(len=arg7.length, data=Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[ceil32(arg6.length) + arg7.length + 160 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[ceil32(arg6.length) + (2 * ceil32(arg7.length)) + 320 len arg6.length + arg7.length + -ceil32(arg7.length) + 32]), arg5, arg7.length + 160, arg1, arg2, arg3
    else:
        mem[floor32(arg6.length) + arg7.length + ceil32(arg6.length) + ceil32(arg7.length) + 352] = mem[floor32(arg6.length) + arg7.length + ceil32(arg6.length) + ceil32(arg7.length) + -(arg6.length % 32) + 384 len arg6.length % 32]
        emit 0x9ea5d10d: arg4, Array(len=arg7.length, data=Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[ceil32(arg6.length) + arg7.length + 160 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[ceil32(arg6.length) + (2 * ceil32(arg7.length)) + 320 len floor32(arg6.length) + arg7.length + -ceil32(arg7.length) + 64]), arg5, arg7.length + 160, arg1, arg2, arg3
}



}
