contract main {




// =====================  Runtime code  =====================


#
#  - getContract(string arg1)
#  - sub_fe46a2ca(?)
#
function _fallback() payable {
    revert
}

function sub_c00df47f(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg3.length
        mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg4.length
            mem[arg3.length + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len arg4.length + arg3.length + arg2.length + arg1.length + -ceil32(arg1.length) + 96]), arg1.length + 160, arg2.length + arg1.length + 192, arg3.length + arg2.length + arg1.length + 224
            else:
                mem[floor32(arg4.length) + arg3.length + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg4.length) + arg3.length + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 512 len arg4.length % 32]
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len floor32(arg4.length) + arg3.length + arg2.length + arg1.length + -ceil32(arg1.length) + 128]), arg1.length + 160, arg2.length + arg1.length + 192, arg3.length + arg2.length + arg1.length + 224
        else:
            mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg4.length
            mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len arg4.length + floor32(arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 128]), arg1.length + 160, arg2.length + arg1.length + 192, floor32(arg3.length) + arg2.length + arg1.length + 256
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 160]), arg1.length + 160, arg2.length + arg1.length + 192, floor32(arg3.length) + arg2.length + arg1.length + 256
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg3.length
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg4.length
            mem[arg3.length + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len arg4.length + arg3.length + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 128]), arg1.length + 160, floor32(arg2.length) + arg1.length + 224, arg3.length + floor32(arg2.length) + arg1.length + 256
            else:
                mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len floor32(arg4.length) + arg3.length + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 160]), arg1.length + 160, floor32(arg2.length) + arg1.length + 224, arg3.length + floor32(arg2.length) + arg1.length + 256
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg4.length
            mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len arg4.length + floor32(arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 160]), arg1.length + 160, floor32(arg2.length) + arg1.length + 224, floor32(arg3.length) + floor32(arg2.length) + arg1.length + 288
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 576 len arg4.length % 32]
                emit 0xfb80241e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 384 len floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 192]), arg1.length + 160, floor32(arg2.length) + arg1.length + 224, floor32(arg3.length) + floor32(arg2.length) + arg1.length + 288
}



}
