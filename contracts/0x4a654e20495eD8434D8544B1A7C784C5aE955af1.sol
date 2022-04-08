contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 798]
}



// =====================  Runtime code  =====================


address stor0;

function destroy() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function post(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require arg1.length > 0
    require arg2.length > 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                emit Post(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + 32]), arg1.length + 96, msg.sender);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                emit Post(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 96, msg.sender);
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit Post(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + 32]), arg1.length + 96, msg.sender);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                emit Post(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 320 len floor32(arg2.length)]), arg1.length + 96, msg.sender);
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit Post(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length]), arg1.length + 96, msg.sender);
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
            emit Post(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 96, msg.sender);
}



}
