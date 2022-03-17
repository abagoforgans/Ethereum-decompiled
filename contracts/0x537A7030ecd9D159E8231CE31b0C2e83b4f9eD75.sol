contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 1573]
}



// =====================  Runtime code  =====================


uint256 sub_a29092ed;
mapping of struct stor2;

function sub_a29092ed(?) payable {
    return sub_a29092ed
}

function _fallback() payable {
  stop
}

function sub_67432b5e(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    sub_a29092ed++
    stor2[stor1].field_768 = arg1.length
    if not arg1.length:
        idx = 0
        while stor2[stor1].field_768 + 31 / 32 > idx:
            stor2[stor1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor2[stor1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor2[stor1].field_768 + 31 / 32 > idx:
            stor2[stor1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor2[stor1].field_1024 = arg2.length
    if not arg2.length:
        idx = 0
        while stor2[stor1].field_1024 + 31 / 32 > idx:
            stor2[stor1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor2[stor1][s + 4].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor2[stor1].field_1024 + 31 / 32 > idx:
            stor2[stor1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    stor2[stor1].field_512 = msg.sender or Mask(96, 160, stor2[stor1].field_512)
    return sub_a29092ed
}

function sub_27b90bc8(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor2[arg3].field_0++
    stor2[arg3][1][stor2[arg3].field_0].field_512 = arg1.length
    if not arg1.length:
        idx = 0
        while stor2[arg3][1][stor2[arg3].field_0].field_512 + 31 / 32 > idx:
            stor2[arg3][1][stor2[arg3].field_0][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor2[arg3][1][stor2[arg3].field_0][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor2[arg3][1][stor2[arg3].field_0].field_512 + 31 / 32 > idx:
            stor2[arg3][1][stor2[arg3].field_0][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor2[arg3][1][stor2[arg3].field_0].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor2[arg3][1][stor2[arg3].field_0].field_256 + 31 / 32 > idx:
            stor2[arg3][1][stor2[arg3].field_0][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor2[arg3][1][stor2[arg3].field_0][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor2[arg3][1][stor2[arg3].field_0].field_256 + 31 / 32 > idx:
            stor2[arg3][1][stor2[arg3].field_0][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor2[arg3][1][stor2[arg3].field_0].field_0 = msg.sender or Mask(96, 160, stor2[arg3][1][stor2[arg3].field_0].field_0)
    return stor2[arg3].field_0
}

function sub_18d9adab(?) payable {
    if not stor2[arg1].field_768:
        if not stor2[arg1].field_1024:
            return stor2[arg1].field_0, stor2[arg1].field_512, 128, 160, stor2[arg1].field_768, stor2[arg1].field_1024
        mem[288] = stor2[arg1][4].field_0
        idx = 288
        s = 0
        while stor2[arg1].field_1024 + 288 > idx + 32:
            mem[idx + 32] = stor2[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return stor2[arg1].field_0, 
               stor2[arg1].field_512,
               128,
               160,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               mem[288 len stor2[arg1].field_1024 + (floor32(stor2[arg1].field_1024 - 1) + -stor2[arg1].field_1024 + 32 % 32)]
    mem[256] = stor2[arg1][3].field_0
    idx = 256
    s = 0
    while stor2[arg1].field_768 + 256 > idx + 32:
        mem[idx + 32] = stor2[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor2[arg1].field_1024:
        return stor2[arg1].field_0, 
               stor2[arg1].field_512,
               Array(len=stor2[arg1].field_768, data=mem[256 len stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32)], stor2[arg1].field_1024),
               stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32) + 160
    mem[stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32) + 288] = stor2[arg1][4].field_0
    idx = stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32) + 288
    s = 0
    while stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32) + stor2[arg1].field_1024 + 288 > idx + 32:
        mem[idx + 32] = stor2[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor2[arg1].field_0, 
           stor2[arg1].field_512,
           Array(len=stor2[arg1].field_768, data=mem[256 len stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32)], stor2[arg1].field_1024, mem[stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32) + 288 len stor2[arg1].field_1024 + (floor32(stor2[arg1].field_1024 - 1) + -stor2[arg1].field_1024 + 32 % 32)]),
           stor2[arg1].field_768 + (floor32(stor2[arg1].field_768 - 1) + -stor2[arg1].field_768 + 32 % 32) + 160
}



}
