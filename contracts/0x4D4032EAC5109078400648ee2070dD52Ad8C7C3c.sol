contract main {


// =======================  Init code  ======================


mapping of struct stor0;
address stor1;
uint256 storAD32;

function _fallback() {
    stor1 = msg.sender
    bool(stor0[0].field_0) = 0
    uint255(stor0[0].field_1) = 0
    Mask(248, 0, stor0[0].field_8) = mem[192 len 31]
    idx = 0xf0df3dcda05b4fbd9c655cde3d5ceb211e019e72ec816e127a59e7195f2cd7f5
    while (stor('map', 0, ('name', 'stor0', 0)).length + 31 / 32) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    storAD32 = 0
    return code.data[324 len 887]
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
