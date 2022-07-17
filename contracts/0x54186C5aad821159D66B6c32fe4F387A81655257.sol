contract main {




// =====================  Runtime code  =====================


#
#  - sub_b26a7669(?)
#
address stor0;
mapping of uint256 sub_25b17002;

function sub_25b17002(?) {
    return sub_25b17002[arg1]
}

function sub_2f0e9340(?) {
    return sub_25b17002[arg1 << 192]
}

function _fallback() payable {
    revert
}

function sub_d6be6be7(?) {
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    emit 0xed4f6534: arg1 << 192, address(arg2), address(arg3), arg4, arg5, arg1
}

function sub_05204994(?) {
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    if arg2 > sub_25b17002[arg1 << 192]:
        revert with 0, 'Insufficent funds'
    sub_25b17002[arg1 << 192] -= arg2
    emit 0xec3fc2a9: arg1 << 192, arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg1
}

function sub_c59d28f4(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    _53 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len arg2.length % 32])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg6
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg2.length + 224
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length + arg2.length + 256
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg4.length
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 192], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 448 len arg4.length + arg3.length + -ceil32(arg3.length) + 32], arg1, _53
            else:
                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 512 len arg4.length % 32]
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 192], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 448 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64], arg1, _53
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = floor32(arg3.length) + arg2.length + 288
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg4.length
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 192], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 448 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64], arg1, _53
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 192], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg2.length + 448 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96], arg1, _53
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = floor32(arg2.length) + 256
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length + floor32(arg2.length) + 288
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg4.length
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len 224], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 480 len arg4.length + arg3.length + -ceil32(arg3.length) + 32], arg1, _53
            else:
                mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len 224], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 480 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64], arg1, _53
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = floor32(arg3.length) + floor32(arg2.length) + 320
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg4.length
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len 224], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 480 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64], arg1, _53
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 576 len arg4.length % 32]
                emit 0xa7dbef57: arg1 << 192, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg2.length) - (arg2.length % 32)], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 224 len 224], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + floor32(arg2.length) + 480 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96], arg1, _53
}



}
