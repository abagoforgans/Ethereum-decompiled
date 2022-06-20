contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 sub_4dc7d14a;

function sub_4dc7d14a(?) payable {
    require calldata.size - 4 >= 32
    return sub_4dc7d14a[address(arg1)]
}

function sub_db27efd3(?) payable {
    require calldata.size - 4 >= 32
    return sub_4dc7d14a[arg1]
}

function _fallback() payable {
  stop
}

function sub_d6609cdd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg2
    require arg3.length
    mem[ceil32(arg1.length) + 288] = arg3.length
    mem[ceil32(arg1.length) + 320 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 320] = 0
    stor0[address(arg4)].field_0++
    stor0[address(arg4)][stor0[address(arg4)].field_0].field_0 = msg.sender
    stor[sha3((5 * stor0[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor0', 0)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[address(arg4)][stor0[address(arg4)].field_0].field_512 = arg2
    stor[sha3((5 * stor0[address(arg4)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'stor0', 0)) + 3)][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 320 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 320 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 320 len -arg1.length + ceil32(arg1.length)]])
    stor0[address(arg4)][stor0[address(arg4)].field_0].field_1024 = block.timestamp
    sub_4dc7d14a[address(arg4)]++
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 320] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg3.length + 352 len -arg3.length + ceil32(arg3.length)]
}

function sub_bad02c7e(?) payable {
    require calldata.size - 4 >= 64
    mem[32] = 0
    require arg2 < stor0[arg1].field_0
    mem[96] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length
    mem[128] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 160
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 128] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length
    mem[0] = (5 * arg2) + sha3(sha3(arg1, 0)) + 3
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 160] = stor[sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3)].field_0
    idx = ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 160
    s = 0
    while ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 160] = stor0[arg1][arg2].field_0
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 224] = stor0[arg1][arg2].field_512
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 288] = stor0[arg1][arg2].field_1024
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 192] = 160
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 320] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 352 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)] = mem[128 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)]
    mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 256] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + 192
    mem[stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 352] = stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length
    mem[stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 384 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length)] = mem[ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 160 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length)]
    if not stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length % 32:
        return stor0[arg1][arg2].field_0, 
               Array(len=stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length, data=mem[128 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)], mem[(2 * ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 352 len stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + -ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 32]),
               stor0[arg1][arg2].field_512,
               stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + 192,
               stor0[arg1][arg2].field_1024
    mem[floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 384] = mem[floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + -stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length % 32 + 416 len stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length % 32]
    return stor0[arg1][arg2].field_0, 
           Array(len=stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length, data=mem[128 len ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)], mem[(2 * ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)) + ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + 352 len floor32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length) + stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + -ceil32(stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 64]),
           stor0[arg1][arg2].field_512,
           stor[(5 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + 192,
           stor0[arg1][arg2].field_1024
}



}
