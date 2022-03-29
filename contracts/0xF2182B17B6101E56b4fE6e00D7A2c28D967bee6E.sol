contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 542]




// =====================  Runtime code  =====================


mapping of uint256 sub_02a9543c;

function sub_02a9543c(?) {
    return sub_02a9543c[arg1]
}

function _fallback() payable {
    revert 
}

function sub_a1fcdd23(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.value >= arg1.length
    require arg1.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        sub_02a9543c[mem[(32 * idx) + 140 len 20]] += msg.value / arg1.length
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = msg.value
    mem[(32 * arg1.length) + 192] = msg.value / arg1.length
    mem[(32 * arg1.length) + 160] = 96
    mem[(32 * arg1.length) + 224] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg1.length) + 256] = mem[128]
        mem[(32 * arg1.length) + 288 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
    emit 0xe27cd1ea: msg.value, Array(len=arg1.length, data=mem[(32 * arg1.length) + 256 len 32 * arg1.length]), msg.value / arg1.length
}



}
