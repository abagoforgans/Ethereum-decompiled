contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[80 len 2572]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_4b95d5fa;
uint256 sub_a08b8ce6;
mapping of struct stor3;
array of struct stor4;

function sub_4b95d5fa(?) payable {
    return sub_4b95d5fa
}

function sub_a08b8ce6(?) payable {
    return sub_a08b8ce6
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function vote(bool arg1, uint256 arg2) payable {
    if arg2 < sub_4b95d5fa:
        if not arg1:
            stor3[stor1].field_256++
        else:
            stor3[stor1].field_0++
    return 1
}

function sub_c1e6adfd(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor4[stor2].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor4[stor2].field_0 + 31 / 32 > idx:
            stor4[stor2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor4[stor2][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor4[stor2].field_0 + 31 / 32 > idx:
            stor4[stor2][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor2].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor4[stor2].field_256 + 31 / 32 > idx:
            stor4[stor2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor4[stor2][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor4[stor2].field_256 + 31 / 32 > idx:
            stor4[stor2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor2].field_512 = block.timestamp
    sub_a08b8ce6++
    return 1
}

function sub_2afb2b9b(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if arg1 > 0:
        if arg1 >= sub_4b95d5fa:
            return 0
        if not stor3[stor1].field_1024:
            return 0
    stor3[stor1].field_512 = arg2.length
    if not arg2.length:
        idx = 0
        while stor3[stor1].field_512 + 31 / 32 > idx:
            stor3[stor1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            stor3[stor1][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor3[stor1].field_512 + 31 / 32 > idx:
            stor3[stor1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor3[stor1].field_1280 = arg1
    stor3[stor1].field_1024 = block.timestamp
    stor3[stor1].field_1536 = msg.sender or Mask(96, 160, stor3[stor1].field_1536)
    stor3[stor1].field_768 = arg3.length
    if not arg3.length:
        idx = 0
        while stor3[stor1].field_768 + 31 / 32 > idx:
            stor3[stor1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg2.length) + 160
        while ceil32(arg2.length) + arg3.length + 160 > idx:
            stor3[stor1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg3.length + 31) >> 5
        while stor3[stor1].field_768 + 31 / 32 > idx:
            stor3[stor1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    if not arg1:
        stor3[stor1].field_1792 = arg4
    sub_4b95d5fa++
    return 1
}

function sub_18d9adab(?) payable {
    if not stor4[arg1].field_0:
        if not stor4[arg1].field_256:
            return 96, 128, stor4[arg1].field_512, stor4[arg1].field_0, stor4[arg1].field_256
        mem[256] = stor4[arg1][1].field_0
        idx = 256
        s = 0
        while stor4[arg1].field_256 + 256 > idx + 32:
            mem[idx + 32] = stor4[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return 96, 
               128,
               stor4[arg1].field_512,
               stor4[arg1].field_0,
               stor4[arg1].field_256,
               mem[256 len stor4[arg1].field_256 + (floor32(stor4[arg1].field_256 - 1) + -stor4[arg1].field_256 + 32 % 32)]
    mem[224] = stor4[arg1].field_0
    idx = 224
    s = 0
    while stor4[arg1].field_0 + 224 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor4[arg1].field_256:
        return Array(len=stor4[arg1].field_0, data=mem[224 len stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32)], stor4[arg1].field_256), 
               stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32) + 128,
               stor4[arg1].field_512
    mem[stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32) + 256] = stor4[arg1][1].field_0
    idx = stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32) + 256
    s = 0
    while stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32) + stor4[arg1].field_256 + 256 > idx + 32:
        mem[idx + 32] = stor4[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor4[arg1].field_0, data=mem[224 len stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32)], stor4[arg1].field_256, mem[stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32) + 256 len stor4[arg1].field_256 + (floor32(stor4[arg1].field_256 - 1) + -stor4[arg1].field_256 + 32 % 32)]), 
           stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32) + 128,
           stor4[arg1].field_512
}

function comments(uint256 arg1) payable {
    if not stor3[arg1].field_512:
        if not stor3[arg1].field_768:
            return stor3[arg1].field_0, 
                   stor3[arg1].field_256,
                   256,
                   288,
                   stor3[arg1].field_1024,
                   stor3[arg1].field_1280,
                   stor3[arg1].field_1536,
                   stor3[arg1].field_1792,
                   stor3[arg1].field_512,
                   stor3[arg1].field_768
        mem[416] = stor3[arg1][3].field_0
        idx = 416
        s = 0
        while stor3[arg1].field_768 + 416 > idx + 32:
            mem[idx + 32] = stor3[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return stor3[arg1].field_0, 
               stor3[arg1].field_256,
               256,
               288,
               stor3[arg1].field_1024,
               stor3[arg1].field_1280,
               stor3[arg1].field_1536,
               stor3[arg1].field_1792,
               stor3[arg1].field_512,
               stor3[arg1].field_768,
               mem[416 len stor3[arg1].field_768 + (floor32(stor3[arg1].field_768 - 1) + -stor3[arg1].field_768 + 32 % 32)]
    mem[384] = stor3[arg1][2].field_0
    idx = 384
    s = 0
    while stor3[arg1].field_512 + 384 > idx + 32:
        mem[idx + 32] = stor3[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + 384] = stor3[arg1].field_768
    if not stor3[arg1].field_768:
        return stor3[arg1].field_0, 
               stor3[arg1].field_256,
               Array(len=stor3[arg1].field_512, data=mem[384 len stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + 32]),
               stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + 288,
               stor3[arg1].field_1024,
               stor3[arg1].field_1280,
               stor3[arg1].field_1536,
               stor3[arg1].field_1792
    mem[stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + 416] = stor3[arg1][3].field_0
    idx = stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + 416
    s = 0
    while stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + stor3[arg1].field_768 + 416 > idx + 32:
        mem[idx + 32] = stor3[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor3[arg1].field_0, 
           stor3[arg1].field_256,
           Array(len=stor3[arg1].field_512, data=mem[384 len stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + stor3[arg1].field_768 + (floor32(stor3[arg1].field_768 - 1) + -stor3[arg1].field_768 + 32 % 32) + 32]),
           stor3[arg1].field_512 + (floor32(stor3[arg1].field_512 - 1) + -stor3[arg1].field_512 + 32 % 32) + 288,
           stor3[arg1].field_1024,
           stor3[arg1].field_1280,
           stor3[arg1].field_1536,
           stor3[arg1].field_1792
}



}
