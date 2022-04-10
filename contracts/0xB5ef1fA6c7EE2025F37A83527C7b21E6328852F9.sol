contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 830]




// =====================  Runtime code  =====================


uint256 sub_b7b82495;
array of struct stor1;

function sub_b7b82495(?) {
    return sub_b7b82495
}

function _fallback() payable {
    revert
}

function sub_76145e2a(?) {
    sub_b7b82495++
    stor1[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor1[arg2].field_256 = arg2
}

function sub_79b692c3(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _27 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[0] = sha3(arg2, 1)
    mem[ceil32(arg1.length) + 128] = stor1[arg2].field_0
    idx = mem[64]
    s = 0
    while ceil32(arg1.length) + stor1[arg2].length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[mem[64] len ceil32(arg1.length) + stor1[arg2].length + -mem[64] + 128]) != _27:
        return 0
    return 1
}



}
