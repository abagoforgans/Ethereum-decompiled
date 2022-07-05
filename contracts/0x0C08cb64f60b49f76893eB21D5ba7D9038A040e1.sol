contract main {




// =====================  Runtime code  =====================


uint256 sub_72cf8e1b;
array of struct stor1;

function sub_72cf8e1b(?) {
    return sub_72cf8e1b
}

function _fallback() payable {
    revert
}

function getArticle(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_72cf8e1b
    if stor1[arg1].field_256:
        mem[256] = stor1[arg1][1].field_0
        idx = 256
        s = 0
        while (32 * stor1[arg1].field_256) + 224 > idx:
            mem[idx + 32] = stor1[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor1[arg1].field_256) + 352 len floor32(stor1[arg1].field_256)] = mem[256 len floor32(stor1[arg1].field_256)]
    return stor1[arg1].field_0, 
           Array(len=stor1[arg1].field_256, data=mem[256 len floor32(stor1[arg1].field_256)], mem[(32 * stor1[arg1].field_256) + floor32(stor1[arg1].field_256) + 352 len (32 * stor1[arg1].field_256) - floor32(stor1[arg1].field_256)])
}

function sub_1d393d08(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    sub_72cf8e1b++
    mem[192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 192] = 0
    stor1[stor0].field_0 = arg1
    stor1[stor0].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor1[stor0].field_256 > idx:
            stor1[stor0][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 192
        while (32 * arg2.length) + 192 > idx:
            stor1[stor0][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor1[stor0].field_256 > idx:
            stor1[stor0][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    return sub_72cf8e1b
}



}
