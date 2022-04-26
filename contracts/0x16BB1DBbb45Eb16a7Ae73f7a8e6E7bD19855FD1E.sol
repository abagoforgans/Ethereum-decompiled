contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1282]




// =====================  Runtime code  =====================


array of uint256 verify;

function verify(address arg1) {
    return verify[address(arg1)][0 len verify[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function sub_81d14ffc(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    verify[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x39b5d180: msg.sender, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 288 len arg1.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
    else:
        mem[floor32(arg1.length) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit 0x39b5d180: msg.sender, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 288 len floor32(arg1.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
}



}
