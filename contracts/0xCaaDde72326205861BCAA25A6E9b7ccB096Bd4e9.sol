contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_f23612c3(?) payable {
    stor0[arg1].field_0 = arg1
    stor0[arg1].field_256 = msg.sender
    stor0[arg1].field_512 = arg2
    stor0[arg1][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[arg1][4][].field_0 = Array(len=arg4.length, data=arg4[all])
    emit 0x838e4b6b: msg.sender, arg1
    return arg1
}

function sub_9a6b2087(?) {
    mem[32] = 0
    mem[96] = stor0[arg1][3].length
    mem[128] = stor0[arg1][3].field_0
    idx = 128
    s = 0
    while stor0[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 160
    mem[ceil32(stor0[arg1][3].length) + 128] = stor0[arg1][4].length
    mem[0] = sha3(arg1, 0) + 4
    mem[ceil32(stor0[arg1][3].length) + 160] = stor0[arg1][4].field_0
    idx = ceil32(stor0[arg1][3].length) + 160
    s = 0
    while ceil32(stor0[arg1][3].length) + stor0[arg1][4].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 160] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 192] = stor0[arg1].field_256
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 224] = stor0[arg1].field_512
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 256] = 160
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 320] = stor0[arg1][3].length
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 352 len ceil32(stor0[arg1][3].length)] = mem[128 len ceil32(stor0[arg1][3].length)]
    mem[ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 288] = stor0[arg1][3].length + 192
    mem[stor0[arg1][3].length + ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 352] = stor0[arg1][4].length
    mem[stor0[arg1][3].length + ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 384 len ceil32(stor0[arg1][4].length)] = mem[ceil32(stor0[arg1][3].length) + 160 len ceil32(stor0[arg1][4].length)]
    if not stor0[arg1][4].length % 32:
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               stor0[arg1].field_512,
               Array(len=stor0[arg1][3].length, data=mem[128 len ceil32(stor0[arg1][3].length)], mem[(2 * ceil32(stor0[arg1][3].length)) + ceil32(stor0[arg1][4].length) + 352 len stor0[arg1][4].length + stor0[arg1][3].length + -ceil32(stor0[arg1][3].length) + 32]),
               stor0[arg1][3].length + 192
    mem[floor32(stor0[arg1][4].length) + stor0[arg1][3].length + ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + 384] = mem[floor32(stor0[arg1][4].length) + stor0[arg1][3].length + ceil32(stor0[arg1][3].length) + ceil32(stor0[arg1][4].length) + -stor0[arg1][4].length % 32 + 416 len stor0[arg1][4].length % 32]
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           Array(len=stor0[arg1][3].length, data=mem[128 len ceil32(stor0[arg1][3].length)], mem[(2 * ceil32(stor0[arg1][3].length)) + ceil32(stor0[arg1][4].length) + 352 len floor32(stor0[arg1][4].length) + stor0[arg1][3].length + -ceil32(stor0[arg1][3].length) + 64]),
           stor0[arg1][3].length + 192
}



}
