contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor5;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    stor5 = 1
    stor3 = 1
    stor1 = 1
    return code.data[50 len 2648]
}



// =====================  Runtime code  =====================


address mediatorAddress;
uint256 sub_1468d6ea;
mapping of struct sub_a8f408be;
uint256 sub_2249ff31;
mapping of struct sub_873214c5;
uint256 sub_30dd6227;
mapping of struct sub_0780a20f;

function sub_0780a20f(?) payable {
    mem[224] = sub_0780a20f[arg1].field_0
    idx = 224
    s = 0
    while sub_0780a20f[arg1].length + 224 > idx + 32:
        mem[idx + 32] = sub_0780a20f[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_0780a20f[arg1].length, data=mem[224 len sub_0780a20f[arg1].length + (floor32(sub_0780a20f[arg1].length - 1) + -sub_0780a20f[arg1].length + 32 % 32)]), 
           sub_0780a20f[arg1].field_256,
           sub_0780a20f[arg1].field_512
}

function sub_1468d6ea(?) payable {
    return sub_1468d6ea
}

function sub_2249ff31(?) payable {
    return sub_2249ff31
}

function sub_30dd6227(?) payable {
    return sub_30dd6227
}

function mediator() payable {
    return mediatorAddress
}

function sub_873214c5(?) payable {
    mem[320] = sub_873214c5[arg1][1].field_0
    idx = 320
    s = 0
    while sub_873214c5[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = sub_873214c5[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_873214c5[arg1].field_0, 
           Array(len=sub_873214c5[arg1][1].length, data=mem[320 len sub_873214c5[arg1][1].length + (floor32(sub_873214c5[arg1][1].length - 1) + -sub_873214c5[arg1][1].length + 32 % 32)]),
           sub_873214c5[arg1].field_512,
           sub_873214c5[arg1].field_768,
           sub_873214c5[arg1].field_1024,
           sub_873214c5[arg1].field_1280
}

function sub_a8f408be(?) payable {
    mem[288] = sub_a8f408be[arg1][2].field_0
    idx = 288
    s = 0
    while sub_a8f408be[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_a8f408be[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_a8f408be[arg1][2].length + (floor32(sub_a8f408be[arg1][2].length - 1) + -sub_a8f408be[arg1][2].length + 32 % 32) + 288] = sub_a8f408be[arg1][3].length
    mem[sub_a8f408be[arg1][2].length + (floor32(sub_a8f408be[arg1][2].length - 1) + -sub_a8f408be[arg1][2].length + 32 % 32) + 320] = sub_a8f408be[arg1][3].field_0
    idx = sub_a8f408be[arg1][2].length + (floor32(sub_a8f408be[arg1][2].length - 1) + -sub_a8f408be[arg1][2].length + 32 % 32) + 320
    s = 0
    while sub_a8f408be[arg1][2].length + (floor32(sub_a8f408be[arg1][2].length - 1) + -sub_a8f408be[arg1][2].length + 32 % 32) + sub_a8f408be[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = sub_a8f408be[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_a8f408be[arg1].field_0, 
           sub_a8f408be[arg1].field_256,
           Array(len=sub_a8f408be[arg1][2].length, data=mem[288 len sub_a8f408be[arg1][2].length + (floor32(sub_a8f408be[arg1][2].length - 1) + -sub_a8f408be[arg1][2].length + 32 % 32) + sub_a8f408be[arg1][3].length + (floor32(sub_a8f408be[arg1][3].length - 1) + -sub_a8f408be[arg1][3].length + 32 % 32) + 32]),
           sub_a8f408be[arg1][2].length + (floor32(sub_a8f408be[arg1][2].length - 1) + -sub_a8f408be[arg1][2].length + 32 % 32) + 192,
           sub_a8f408be[arg1].field_1024
}

function withdraw() payable {
    if mediatorAddress != tx.origin:
    selfdestruct(mediatorAddress)
}

function _fallback() payable {
    revert 
}

function sub_414d564a(?) payable {
    if mediatorAddress != tx.origin:
        return 0
    sub_1468d6ea++
    sub_a8f408be[stor1].field_0 = 0
    sub_a8f408be[stor1].field_256 = arg1 or Mask(96, 160, sub_a8f408be[stor1].field_256)
    sub_a8f408be[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_a8f408be[stor1][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_a8f408be[stor1].field_1024 = block.timestamp or Mask(192, 64, sub_a8f408be[stor1].field_1024)
    return sub_1468d6ea
}

function sub_b53a031a(?) payable {
    if mediatorAddress != tx.origin:
        return 0
    if 0 == sub_a8f408be[arg1].field_0:
        sub_2249ff31++
        sub_873214c5[stor3].field_0 = arg1
        sub_873214c5[stor3][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_873214c5[stor3].field_512 = 0
        sub_873214c5[stor3].field_768 = 0
    else:
        require sha3(arg2[all]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_873214c5[stor2[arg1].field_0].field_512 != 0
        sub_2249ff31++
        sub_873214c5[stor3].field_0 = arg1
        sub_873214c5[stor3][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_873214c5[stor3].field_512 = 0
        if sub_a8f408be[arg1].field_0 != 0:
            sub_873214c5[stor3].field_768 = sub_873214c5[stor2[arg1].field_0].field_768 + 1
        else:
            sub_873214c5[stor3].field_768 = 0
    sub_873214c5[stor3].field_1024 = sub_a8f408be[arg1].field_0
    sub_873214c5[stor3].field_1280 = block.timestamp or Mask(192, 64, sub_873214c5[stor3].field_1280)
    sub_a8f408be[arg1].field_0 = sub_2249ff31
    return sub_2249ff31
}

function sub_2218fe40(?) payable {
    if mediatorAddress != tx.origin:
        return 0
    sub_30dd6227++
    sub_0780a20f[stor5][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_0780a20f[stor5].field_256 = arg3 or Mask(96, 160, sub_0780a20f[stor5].field_256)
    sub_0780a20f[stor5].field_512 = arg4
    if mediatorAddress != tx.origin:
        sub_873214c5[0].field_512 = sub_30dd6227
        return 0
    if 0 == sub_a8f408be[arg1].field_0:
        sub_2249ff31++
        sub_873214c5[stor3].field_0 = arg1
        sub_873214c5[stor3].field_256 = 0
        sub_873214c5[stor3].field_257 = 0
        sub_873214c5[stor3].field_264 = arg1 / 256
        idx = 0
        while sub_873214c5[stor3][1].length + 31 / 32 > idx:
            sub_873214c5[stor3][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_873214c5[stor3].field_512 = 0
        sub_873214c5[stor3].field_768 = 0
    else:
        require sha3(None) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_873214c5[stor2[arg1].field_0].field_512 != 0
        sub_2249ff31++
        sub_873214c5[stor3].field_0 = arg1
        sub_873214c5[stor3].field_256 = 0
        sub_873214c5[stor3].field_257 = 0
        sub_873214c5[stor3].field_264 = arg1 / 256
        idx = 0
        while sub_873214c5[stor3][1].length + 31 / 32 > idx:
            sub_873214c5[stor3][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_873214c5[stor3].field_512 = 0
        if sub_a8f408be[arg1].field_0 != 0:
            sub_873214c5[stor3].field_768 = sub_873214c5[stor2[arg1].field_0].field_768 + 1
        else:
            sub_873214c5[stor3].field_768 = 0
    sub_873214c5[stor3].field_1024 = sub_a8f408be[arg1].field_0
    sub_873214c5[stor3].field_1280 = block.timestamp or Mask(192, 64, sub_873214c5[stor3].field_1280)
    sub_a8f408be[arg1].field_0 = sub_2249ff31
    sub_873214c5[stor3].field_512 = sub_30dd6227
    return sub_2249ff31
}



}
