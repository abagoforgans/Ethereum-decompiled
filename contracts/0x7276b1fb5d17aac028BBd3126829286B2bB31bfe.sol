contract main {




// =====================  Runtime code  =====================


#
#  - sub_fcda3269(?)
#
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
address stor6;
array of uint256 stor7;
array of uint256 stor8;

function _fallback() payable {
    revert
}

function sub_215cf29b(?) {
    stor4[] = Array(len=arg1.length, data=arg1[all])
    emit 0x4d88ae53: Array(len=arg1.length, data=arg1[all])
}

function sub_738a7c32(?) {
    stor6 = arg1
    stor4[] = Array(len=arg2.length, data=arg2[all])
    emit 0x28d0eb09: Array(len=arg2.length, data=arg2[all])
}

function sub_69bba363(?) {
    stor7[] = Array(len=arg1.length, data=arg1[all])
    stor8[] = Array(len=arg2.length, data=arg2[all])
    stor4[] = Array(len=arg3.length, data=arg3[all])
    emit 0x28d0eb09: Array(len=arg3.length, data=arg3[all])
}

function sub_aada549e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor1[] = Array(len=arg1.length, data=arg1[all])
    stor2[] = Array(len=arg2.length, data=arg2[all])
    stor3 = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x8ef1cec1: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128, arg3
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit 0x8ef1cec1: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, arg3
}



}
