contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 610]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_5b7b0c14(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + 32]), arg1.length + 128
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 128
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + 32]), arg1.length + 128
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len floor32(arg2.length)]), arg1.length + 128
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length]), arg1.length + 128
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
            emit 0x732e6944: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 128
}



}
