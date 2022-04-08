contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 412]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function login(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit LoginAttempt(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]));
}



}
