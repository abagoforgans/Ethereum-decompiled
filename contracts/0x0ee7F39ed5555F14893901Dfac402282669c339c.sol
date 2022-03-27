contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 313]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function sub_c3f50d9a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 32
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    return Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
}



}
