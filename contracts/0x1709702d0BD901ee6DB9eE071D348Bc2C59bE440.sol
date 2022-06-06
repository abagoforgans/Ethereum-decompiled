contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_2acf65ed(?) payable {
    stor0[arg1].field_0 = arg1
    stor0[arg1].field_256 = msg.sender
    stor0[arg1].field_512 = arg2
    stor0[arg1].field_768 = arg3
    stor0[arg1][4][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor0[arg1].field_1280 = arg5
    stor0[arg1][6][].field_0 = Array(len=arg6.length, data=arg6[all])
    emit 0x5cac9437: msg.sender, arg1
    return arg1
}

function sub_cbf01292(?) {
    mem[32] = 0
    mem[96] = stor0[arg1][4].length
    mem[128] = stor0[arg1][4].field_0
    idx = 128
    s = 0
    while stor0[arg1][4].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 160
    mem[ceil32(stor0[arg1][4].length) + 128] = stor0[arg1][6].length
    mem[0] = sha3(arg1, 0) + 6
    mem[ceil32(stor0[arg1][4].length) + 160] = stor0[arg1][6].field_0
    idx = ceil32(stor0[arg1][4].length) + 160
    s = 0
    while ceil32(stor0[arg1][4].length) + stor0[arg1][6].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 160] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 192] = stor0[arg1].field_256
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 224] = stor0[arg1].field_512
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 256] = stor0[arg1].field_768
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 320] = stor0[arg1].field_1280
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 288] = 224
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 384] = stor0[arg1][4].length
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 416 len ceil32(stor0[arg1][4].length)] = mem[128 len ceil32(stor0[arg1][4].length)]
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 352] = stor0[arg1][4].length + 256
    mem[stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 416] = stor0[arg1][6].length
    mem[stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 448 len ceil32(stor0[arg1][6].length)] = mem[ceil32(stor0[arg1][4].length) + 160 len ceil32(stor0[arg1][6].length)]
    if not stor0[arg1][6].length % 32:
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               stor0[arg1].field_512,
               stor0[arg1].field_768,
               Array(len=stor0[arg1][4].length, data=mem[128 len ceil32(stor0[arg1][4].length)], mem[(2 * ceil32(stor0[arg1][4].length)) + ceil32(stor0[arg1][6].length) + 416 len stor0[arg1][6].length + stor0[arg1][4].length + -ceil32(stor0[arg1][4].length) + 32]),
               stor0[arg1].field_1280,
               stor0[arg1][4].length + 256
    mem[floor32(stor0[arg1][6].length) + stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 448] = mem[floor32(stor0[arg1][6].length) + stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + -stor0[arg1][6].length % 32 + 480 len stor0[arg1][6].length % 32]
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           Array(len=stor0[arg1][4].length, data=mem[128 len ceil32(stor0[arg1][4].length)], mem[(2 * ceil32(stor0[arg1][4].length)) + ceil32(stor0[arg1][6].length) + 416 len floor32(stor0[arg1][6].length) + stor0[arg1][4].length + -ceil32(stor0[arg1][4].length) + 64]),
           stor0[arg1].field_1280,
           stor0[arg1][4].length + 256
}



}
