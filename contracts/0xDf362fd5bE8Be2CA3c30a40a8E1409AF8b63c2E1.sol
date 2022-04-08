contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 724]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit 0x481007a7: msg.value, msg.sender
}

function sub_66260787(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg6
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 352] = arg7
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = 224
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 384] = arg4.length
    if not arg4.length:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg4.length + 256
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
        if not arg5.length:
            if not arg5.length % 32:
                emit 0x2de39885: arg1, address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + 32]), arg4.length + 256, address(arg6), arg7
            else:
                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                emit 0x2de39885: arg1, address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len floor32(arg5.length) + arg4.length + 64]), arg4.length + 256, address(arg6), arg7
        else:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[ceil32(arg4.length) + 160]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 480 len floor32(arg5.length - 1)] = mem[ceil32(arg4.length) + 192 len floor32(arg5.length - 1)]
            if not arg5.length % 32:
                emit 0x2de39885: arg1, address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + 32]), arg4.length + 256, address(arg6), arg7
            else:
                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
                emit 0x2de39885: arg1, address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 416 len arg4.length + 32], mem[ceil32(arg4.length) + 160], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 480 len floor32(arg5.length)]), arg4.length + 256, address(arg6), arg7
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 416] = mem[128]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 448 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg4.length + 256
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg5.length
        if arg5.length:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[ceil32(arg4.length) + 160]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 480 len floor32(arg5.length - 1)] = mem[ceil32(arg4.length) + 192 len floor32(arg5.length - 1)]
        if not arg5.length % 32:
            emit 0x2de39885: arg1, address(arg2), arg3, Array(len=arg4.length, data=mem[128], mem[ceil32(arg4.length) + ceil32(arg5.length) + 448 len arg5.length + arg4.length]), arg4.length + 256, address(arg6), arg7
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 480 len arg5.length % 32]
            emit 0x2de39885: arg1, address(arg2), arg3, Array(len=arg4.length, data=mem[128], mem[ceil32(arg4.length) + ceil32(arg5.length) + 448 len floor32(arg5.length) + arg4.length + 32]), arg4.length + 256, address(arg6), arg7
}



}
