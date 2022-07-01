contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;

function _fallback() payable {
    revert
}

function devices(address arg1) {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256, bool(stor0[arg1].field_512)
}

function addDevice(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    stor0[address(arg1)].field_0 = 0
    stor0[address(arg1)].field_256 = 0
    stor0[address(arg1)].field_512 = 1
    return 1
}

function sub_fce31112(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == stor1
    require stor0[address(arg1)].field_512
    require arg2 <= 2
    stor0[address(arg1)].field_0++
    require arg2 <= 2
    stor0[address(arg1)][3][stor0[address(arg1)].field_0].field_0 = arg2
    stor0[address(arg1)][3][stor0[address(arg1)].field_0][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[address(arg1)][3][stor0[address(arg1)].field_0].field_512 = block.timestamp
    return 1
}

function sub_bf711e59(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.sender == stor1
    require stor0[address(arg1)].field_512
    require arg2 <= 2
    stor0[address(arg1)].field_256++
    require arg2 <= 2
    stor0[address(arg1)][4][stor0[address(arg1)].field_256].field_0 = arg2
    stor0[address(arg1)][4][stor0[address(arg1)].field_256].field_8 = arg3
    stor0[address(arg1)][4][stor0[address(arg1)].field_256][1][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor0[address(arg1)][4][stor0[address(arg1)].field_256].field_512 = block.timestamp
    return 1
}

function sub_85d056e8(?) {
    require calldata.size - 4 >= 64
    require stor0[address(arg1)].field_512
    mem[32] = sha3(address(arg1), 0) + 3
    mem[96] = stor0[address(arg1)][3][arg2][1].length
    mem[0] = sha3(arg2, sha3(address(arg1), 0) + 3) + 1
    mem[128] = stor0[address(arg1)][3][arg2][1].field_0
    idx = 128
    s = 0
    while stor0[address(arg1)][3][arg2][1].length + 96 > idx:
        mem[idx + 32] = stor0[address(arg1)][3][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg2 + 1 < stor0[address(arg1)].field_0:
        require stor0[address(arg1)][3][arg2].field_0 <= 2
        return Array(len=stor0[address(arg1)][3][arg2][1].length, data=mem[128 len stor0[address(arg1)][3][arg2][1].length]), 
               stor0[address(arg1)][3][arg2].field_0,
               stor0[address(arg1)][3][arg2].field_512,
               1
    require stor0[address(arg1)][3][arg2].field_0 <= 2
    mem[ceil32(stor0[address(arg1)][3][arg2][1].length) + 160] = stor0[address(arg1)][3][arg2].field_0
    mem[ceil32(stor0[address(arg1)][3][arg2][1].length) + 192] = stor0[address(arg1)][3][arg2].field_512
    mem[ceil32(stor0[address(arg1)][3][arg2][1].length) + 224] = 0
    mem[ceil32(stor0[address(arg1)][3][arg2][1].length) + 128] = 128
    mem[ceil32(stor0[address(arg1)][3][arg2][1].length) + 256] = stor0[address(arg1)][3][arg2][1].length
    mem[ceil32(stor0[address(arg1)][3][arg2][1].length) + 288 len ceil32(stor0[address(arg1)][3][arg2][1].length)] = mem[128 len ceil32(stor0[address(arg1)][3][arg2][1].length)]
    if not stor0[address(arg1)][3][arg2][1].length % 32:
        return 128, 
               stor0[address(arg1)][3][arg2].field_0,
               stor0[address(arg1)][3][arg2].field_512,
               0,
               stor0[address(arg1)][3][arg2][1].length,
               mem[128 len stor0[address(arg1)][3][arg2][1].length]
    mem[floor32(stor0[address(arg1)][3][arg2][1].length) + ceil32(stor0[address(arg1)][3][arg2][1].length) + 288] = mem[floor32(stor0[address(arg1)][3][arg2][1].length) + ceil32(stor0[address(arg1)][3][arg2][1].length) + -stor0[address(arg1)][3][arg2][1].length % 32 + 320 len stor0[address(arg1)][3][arg2][1].length % 32]
    return 128, 
           stor0[address(arg1)][3][arg2].field_0,
           stor0[address(arg1)][3][arg2].field_512,
           0,
           stor0[address(arg1)][3][arg2][1].length,
           mem[128 len ceil32(stor0[address(arg1)][3][arg2][1].length)],
           mem[(2 * ceil32(stor0[address(arg1)][3][arg2][1].length)) + 288 len floor32(stor0[address(arg1)][3][arg2][1].length) + -ceil32(stor0[address(arg1)][3][arg2][1].length) + 32]
}

function sub_4edd6a4f(?) {
    require calldata.size - 4 >= 64
    require stor0[address(arg1)].field_512
    mem[96] = stor0[address(arg1)][4][arg2][1].length
    mem[128] = stor0[address(arg1)][4][arg2][1].field_0
    idx = 128
    s = 0
    while stor0[address(arg1)][4][arg2][1].length + 96 > idx:
        mem[idx + 32] = stor0[address(arg1)][4][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 0) + 4
    if stor0[address(arg1)].field_256 > arg2 + 1:
        require stor0[address(arg1)][4][arg2].field_0 <= 2
        return Array(len=stor0[address(arg1)][4][arg2][1].length, data=mem[128 len stor0[address(arg1)][4][arg2][1].length]), 
               stor0[address(arg1)][4][arg2].field_0,
               stor0[address(arg1)][4][arg2].field_0,
               stor0[address(arg1)][4][arg2].field_512,
               1
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 160] = stor0[address(arg1)][4][arg2].field_8
    require stor0[address(arg1)][4][arg2].field_0 <= 2
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 192] = stor0[address(arg1)][4][arg2].field_0
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 224] = stor0[address(arg1)][4][arg2].field_512
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 256] = 0
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 128] = 160
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 288] = stor0[address(arg1)][4][arg2][1].length
    mem[ceil32(stor0[address(arg1)][4][arg2][1].length) + 320 len ceil32(stor0[address(arg1)][4][arg2][1].length)] = mem[128 len ceil32(stor0[address(arg1)][4][arg2][1].length)]
    if not stor0[address(arg1)][4][arg2][1].length % 32:
        return 160, 
               stor0[address(arg1)][4][arg2].field_0,
               stor0[address(arg1)][4][arg2].field_0,
               stor0[address(arg1)][4][arg2].field_512,
               0,
               stor0[address(arg1)][4][arg2][1].length,
               mem[128 len stor0[address(arg1)][4][arg2][1].length]
    mem[floor32(stor0[address(arg1)][4][arg2][1].length) + ceil32(stor0[address(arg1)][4][arg2][1].length) + 320] = mem[floor32(stor0[address(arg1)][4][arg2][1].length) + ceil32(stor0[address(arg1)][4][arg2][1].length) + -stor0[address(arg1)][4][arg2][1].length % 32 + 352 len stor0[address(arg1)][4][arg2][1].length % 32]
    return 160, 
           stor0[address(arg1)][4][arg2].field_0,
           stor0[address(arg1)][4][arg2].field_0,
           stor0[address(arg1)][4][arg2].field_512,
           0,
           stor0[address(arg1)][4][arg2][1].length,
           mem[128 len ceil32(stor0[address(arg1)][4][arg2][1].length)],
           mem[(2 * ceil32(stor0[address(arg1)][4][arg2][1].length)) + 320 len floor32(stor0[address(arg1)][4][arg2][1].length) + -ceil32(stor0[address(arg1)][4][arg2][1].length) + 32]
}



}
