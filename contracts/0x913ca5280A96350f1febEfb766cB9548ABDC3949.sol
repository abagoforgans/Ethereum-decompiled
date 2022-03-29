contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[54 len 887]
}



// =====================  Runtime code  =====================


array of struct stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert 
}

function sub_f896082d(?) {
    mem[192] = stor0[arg1].field_0
    idx = 192
    s = 0
    while stor0[arg1].length + 192 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[192 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor0[arg1].field_256
}

function sub_792c3521(?) {
    mem[128 len arg2.length] = arg2[all]
    require stor0[arg1].field_256 <= arg3
    mem[ceil32(arg2.length) + 128] = 96
    mem[ceil32(arg2.length) + 160] = arg3
    stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1].field_256 = arg3
    mem[ceil32(arg2.length) + 192] = arg1
    mem[ceil32(arg2.length) + 256] = arg3
    mem[ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg2.length) + 288] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 320] = mem[128]
        mem[ceil32(arg2.length) + 352 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0x9a4f945a: arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 320 len arg2.length]), arg3
}



}
