contract main {


// =======================  Init code  ======================


mapping of struct stor0;
address stor7;

function _fallback() {
    stor7 = code.data[6417 len 20]
    stor0[address(msg.sender)].field_0 = 0
    stor0[address(msg.sender)].field_1 = 4
    stor0[address(msg.sender)].field_8 = 'ROOT' / 256
    idx = 0
    while stor0[address(msg.sender)].length + 31 / 32 > idx:
        stor0[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0[address(msg.sender)].field_256 = 1000
    stor0[address(msg.sender)].field_512 = 0
    return code.data[595 len 5810]
}



// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 sub_0827dc9a;
mapping of uint256 sub_fba8bc12;
array of uint256 sub_f2145c4c;
mapping of address sub_8eafaf5d;
array of uint256 sub_d9f02b3f;
mapping of uint8 stor6;
address sub_6f0009bfAddress;

function sub_0827dc9a(?) {
    return sub_0827dc9a[arg1]
}

function sub_6f0009bf(?) {
    return sub_6f0009bfAddress
}

function sub_8eafaf5d(?) {
    return sub_8eafaf5d[arg1]
}

function sub_a2b7433a(?) {
    return bool(stor6[arg1])
}

function sub_d9f02b3f(?) {
    return sub_d9f02b3f[arg1][0 len sub_d9f02b3f[arg1].length]
}

function sub_f2145c4c(?) {
    return sub_f2145c4c[arg1][0 len sub_f2145c4c[arg1].length]
}

function sub_fba8bc12(?) {
    return sub_fba8bc12[arg1]
}

function sub_b3e29eee(?) {
    sub_fba8bc12[arg1] = arg2
}

function sub_b53f8acd(?) {
    sub_0827dc9a[arg1] = arg2
}

function sub_b852f525(?) {
    stor6[arg1] = uint8(arg2)
}

function sub_fbe55ddf(?) {
    sub_8eafaf5d[arg1] = arg2
}

function sub_0c585dbe(?) {
    sub_d9f02b3f[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_36c404d9(?) {
    sub_f2145c4c[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_3cf72cd7(?) {
    require stor0[address(msg.sender)].field_256 == 1000
    sub_6f0009bfAddress = arg1
}

function sub_38705be4(?) {
    require stor0[address(msg.sender)].field_256 == 1000
    stor0[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[address(arg1)].field_256 = arg3
    stor0[address(arg1)].field_512 = arg4
}

function _fallback() {
    delegate sub_6f0009bfAddress with:
       funct call.data[0 len 4]
         gas gas_remaining - 710 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    require delegate.return_data[0]
}

function sub_5fb84d67(?) {
    require stor0[address(msg.sender)].field_256 == 1000
    stor0[address(arg1)].field_256 = arg2
    mem[96] = stor0[address(arg1)].field_0
    idx = 96
    s = 0
    while stor0[address(arg1)].length + 96 > idx + 32:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xb2b28dcb: arg2, stor0[address(arg1)].field_512, arg1, sha3(mem[96 len stor0[address(arg1)].length])
}

function updatePoints(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)].field_256 == 1000
    stor0[address(arg1)].field_512 = arg2
    mem[96] = stor0[address(arg1)].field_0
    idx = 96
    s = 0
    while stor0[address(arg1)].length + 96 > idx + 32:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xb2b28dcb: stor0[address(arg1)].field_256, arg2, arg1, sha3(mem[96 len stor0[address(arg1)].length])
}

function sub_c5aa2130(?) {
    mem[128 len arg2.length] = arg2[all]
    require stor0[address(msg.sender)].field_256
    stor0[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    emit 0xb2b28dcb: stor0[address(arg1)].field_256, stor0[address(arg1)].field_512, arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
}

function getManager(address arg1) {
    mem[160] = stor0[address(arg1)].field_0
    idx = 160
    s = 0
    while stor0[address(arg1)].length + 128 > idx:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[address(arg1)].length) + 192] = stor0[address(arg1)].field_256
    mem[ceil32(stor0[address(arg1)].length) + 224] = stor0[address(arg1)].field_512
    mem[ceil32(stor0[address(arg1)].length) + 160] = 96
    mem[ceil32(stor0[address(arg1)].length) + 256] = stor0[address(arg1)].length
    if stor0[address(arg1)].length:
        mem[ceil32(stor0[address(arg1)].length) + 288] = mem[160]
        mem[ceil32(stor0[address(arg1)].length) + 320 len floor32(stor0[address(arg1)].length - 1)] = mem[192 len floor32(stor0[address(arg1)].length - 1)]
    return Array(len=stor0[address(arg1)].length, data=mem[ceil32(stor0[address(arg1)].length) + 288 len stor0[address(arg1)].length]), 
           stor0[address(arg1)].field_256,
           stor0[address(arg1)].field_512
}



}
