contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1201]




// =====================  Runtime code  =====================


uint256 stor0;
array of struct stor1;

function _fallback() payable {
  stop
}

function sub_67432b5e(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor0++
    stor1[stor0].field_768 = arg1.length
    if not arg1.length:
        idx = 0
        while stor1[stor0].field_768 + 31 / 32 > idx:
            stor1[stor0][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[stor0][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1[stor0].field_768 + 31 / 32 > idx:
            stor1[stor0][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor0].field_1024 = arg2.length
    if not arg2.length:
        idx = 0
        while stor1[stor0].field_1024 + 31 / 32 > idx:
            stor1[stor0][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor1[stor0][s + 4].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor1[stor0].field_1024 + 31 / 32 > idx:
            stor1[stor0][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor0].field_512 = msg.sender or Mask(96, 160, stor1[stor0].field_512)
    return stor0
}

function sub_27b90bc8(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor1[arg3].field_0++
    stor1[arg3][1][stor1[arg3].field_0].field_512 = arg1.length
    if not arg1.length:
        idx = 0
        while stor1[arg3][1][stor1[arg3].field_0].field_512 + 31 / 32 > idx:
            stor1[arg3][1][stor1[arg3].field_0][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[arg3][1][stor1[arg3].field_0][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1[arg3][1][stor1[arg3].field_0].field_512 + 31 / 32 > idx:
            stor1[arg3][1][stor1[arg3].field_0][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg3][1][stor1[arg3].field_0].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor1[arg3][1][stor1[arg3].field_0].field_256 + 31 / 32 > idx:
            stor1[arg3][1][stor1[arg3].field_0][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor1[arg3][1][stor1[arg3].field_0][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor1[arg3][1][stor1[arg3].field_0].field_256 + 31 / 32 > idx:
            stor1[arg3][1][stor1[arg3].field_0][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg3][1][stor1[arg3].field_0].field_0 = msg.sender or Mask(96, 160, stor1[arg3][1][stor1[arg3].field_0].field_0)
    return stor1[arg3].field_0
}



}
