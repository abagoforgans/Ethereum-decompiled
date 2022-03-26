contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
address stor4;
address stor5;

function _fallback() {
    stor0[tx.origin] = 1
    stor4 = code.data[3570 len 20]
    stor5 = code.data[3602 len 20]
    return code.data[153 len 3405]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 sub_7203ff71;
uint256 sub_bc684246;
address sub_8116db9aAddress;
address rewardsContractAddress;
uint256 sub_f3c070f7;
uint256 liquidityPercentage;
uint256 sub_4098a2a6;
uint256 sub_502b82c9;
array of struct sub_343828d2;
mapping of struct sub_ad5f2d38;

function liquidityPercentage() {
    return liquidityPercentage
}

function sub_0865099a(?) {
    return bool(stor1[arg1])
}

function rewardsContract() {
    return rewardsContractAddress
}

function sub_343828d2(?) {
    mem[192] = sub_343828d2[arg1].field_0
    idx = 192
    s = 0
    while sub_343828d2[arg1].length + 192 > idx + 32:
        mem[idx + 32] = sub_343828d2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_343828d2[arg1].length, data=mem[192 len sub_343828d2[arg1].length + (floor32(sub_343828d2[arg1].length - 1) + -sub_343828d2[arg1].length + 32 % 32)]), 
           sub_343828d2[arg1].field_256
}

function sub_3a0daf37(?) {
    return bool(stor0[arg1])
}

function sub_4098a2a6(?) {
    return sub_4098a2a6
}

function sub_502b82c9(?) {
    return sub_502b82c9
}

function sub_7203ff71(?) {
    return sub_7203ff71
}

function sub_8116db9a(?) {
    return sub_8116db9aAddress
}

function sub_ad5f2d38(?) {
    require sub_ad5f2d38[arg1].field_768 <= 2
    mem[384] = sub_ad5f2d38[arg1][1].field_0
    idx = 384
    s = 0
    while sub_ad5f2d38[arg1][1].length + 384 > idx + 32:
        mem[idx + 32] = sub_ad5f2d38[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + 384] = sub_ad5f2d38[arg1][2].length
    mem[sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + 416] = sub_ad5f2d38[arg1][2].field_0
    idx = sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + 416
    s = 0
    while sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + 416 > idx + 32:
        mem[idx + 32] = sub_ad5f2d38[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + (floor32(sub_ad5f2d38[arg1][2].length - 1) + -sub_ad5f2d38[arg1][2].length + 32 % 32) + 448] = sub_ad5f2d38[arg1][6].field_0
    idx = sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + (floor32(sub_ad5f2d38[arg1][2].length - 1) + -sub_ad5f2d38[arg1][2].length + 32 % 32) + 448
    s = 0
    while sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + (floor32(sub_ad5f2d38[arg1][2].length - 1) + -sub_ad5f2d38[arg1][2].length + 32 % 32) + sub_ad5f2d38[arg1][6].length + 448 > idx + 32:
        mem[idx + 32] = sub_ad5f2d38[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_ad5f2d38[arg1].field_0, 
           Array(len=sub_ad5f2d38[arg1][1].length, data=mem[384 len sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + (floor32(sub_ad5f2d38[arg1][2].length - 1) + -sub_ad5f2d38[arg1][2].length + 32 % 32) + 32], sub_ad5f2d38[arg1][6].length, mem[sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + (floor32(sub_ad5f2d38[arg1][2].length - 1) + -sub_ad5f2d38[arg1][2].length + 32 % 32) + 448 len sub_ad5f2d38[arg1][6].length + (floor32(sub_ad5f2d38[arg1][6].length - 1) + -sub_ad5f2d38[arg1][6].length + 32 % 32)]),
           sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + 288,
           sub_ad5f2d38[arg1].field_768,
           sub_ad5f2d38[arg1].field_768,
           sub_ad5f2d38[arg1].field_1024,
           sub_ad5f2d38[arg1].field_1280,
           sub_ad5f2d38[arg1][1].length + (floor32(sub_ad5f2d38[arg1][1].length - 1) + -sub_ad5f2d38[arg1][1].length + 32 % 32) + sub_ad5f2d38[arg1][2].length + (floor32(sub_ad5f2d38[arg1][2].length - 1) + -sub_ad5f2d38[arg1][2].length + 32 % 32) + 320
}

function sub_bc684246(?) {
    return sub_bc684246
}

function sub_f3c070f7(?) {
    return sub_f3c070f7
}

function _fallback() {
    revert 
}

function sub_3d466288(?) {
    sub_8116db9aAddress = arg1
    return arg1
}

function setRewardsContract(address arg1) {
    rewardsContractAddress = arg1
    return 1
}

function isAuthorized(address arg1) {
    if bool(stor0[address(arg1)]) != 1:
        stor1[address(arg1)] = 1
    return 1
}

function sub_3fc192ac(?) {
    if bool(stor1[address(msg.sender)]) != 1:
        return 0
    stor0[address(msg.sender)] = 1
    stor1[address(msg.sender)] = 0
    return 1
}

function addKey(address arg1) {
    if bool(stor0[address(msg.sender)]) != 1:
        stor1[address(msg.sender)] = 1
    if bool(stor0[address(msg.sender)]) != 1:
        stor1[address(msg.sender)] = 1
        return 0
    else:
        return 0
}

function revokeAuthorization(address arg1) {
    if bool(stor0[address(msg.sender)]) != 1:
        stor1[address(msg.sender)] = 1
    if bool(stor0[address(arg1)]) != 1:
        return 0
    if arg1 == msg.sender:
        return 0
    stor0[address(arg1)] = 0
    return 1
}

function forwardCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if bool(stor0[address(msg.sender)]) != 1:
        stor1[address(msg.sender)] = 1
    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function sub_c167b7df(?) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg7.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg7.length] = arg7[all]
    if bool(stor0[address(msg.sender)]) != 1:
        stor1[address(msg.sender)] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg7.length) + 192] = sub_bc684246
    sub_ad5f2d38[stor3].field_0 = sub_bc684246
    sub_ad5f2d38[stor3][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_ad5f2d38[stor3].field_512 = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        sub_ad5f2d38[stor3][s + 2].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if sub_ad5f2d38[stor3][2].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[('array', 2, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'sub_ad5f2d38', 11))) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while sub_ad5f2d38[stor3][2].length + 31 / 32 > idx:
            sub_ad5f2d38[stor3][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_ad5f2d38[stor3].field_768 = arg3
    sub_ad5f2d38[stor3].field_776 = arg4
    sub_ad5f2d38[stor3].field_1024 = arg5
    sub_ad5f2d38[stor3].field_1280 = arg6
    sub_ad5f2d38[stor3].field_1536 = (2 * arg7.length) + 1
    s = 0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
    while ceil32(arg1.length) + ceil32(arg2.length) + arg7.length + 192 > idx:
        sub_ad5f2d38[stor3][s + 6].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if sub_ad5f2d38[stor3][6].length + 31 / 32 > Mask(251, 0, arg7.length + 31) >> 5:
        stor[('array', 6, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'sub_ad5f2d38', 11))) + (Mask(251, 0, arg7.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg7.length + 31) >> 5) + 1
        while sub_ad5f2d38[stor3][6].length + 31 / 32 > idx:
            sub_ad5f2d38[stor3][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    sub_bc684246++
}



}
