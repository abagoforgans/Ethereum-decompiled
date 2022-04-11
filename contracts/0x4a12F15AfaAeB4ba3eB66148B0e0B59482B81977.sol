contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 830]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw() {
    if stor0 != msg.sender:
    # nil
}

function SendEmail(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.value <= 9999999999999999:
        # nil
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
        if not arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    emit EmailSent(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + 32]), arg1.length + 128);
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                    emit EmailSent(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 128);
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    emit EmailSent(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + 32]), arg1.length + 128);
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                    emit EmailSent(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 352 len floor32(arg2.length)]), arg1.length + 128);
        else:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[128]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length + 128
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit EmailSent(msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length]), arg1.length + 128);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
                emit EmailSent(msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 128);
        return 1
}



}
