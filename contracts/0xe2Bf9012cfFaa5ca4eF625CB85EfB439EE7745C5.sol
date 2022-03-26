contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[61 len 7912]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct users;
mapping of struct stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;

function sub_84eee8f1(?) {
    return bool(stor2[arg1[all]].field_256)
}

function users(address arg1) {
    mem[256] = users[arg1].field_0
    idx = 256
    s = 0
    while users[arg1].length + 256 > idx + 32:
        mem[idx + 32] = users[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[users[arg1].length + (floor32(users[arg1].length - 1) + -users[arg1].length + 32 % 32) + 256] = users[arg1][1].length
    mem[users[arg1].length + (floor32(users[arg1].length - 1) + -users[arg1].length + 32 % 32) + 288] = users[arg1][1].field_0
    idx = users[arg1].length + (floor32(users[arg1].length - 1) + -users[arg1].length + 32 % 32) + 288
    s = 0
    while users[arg1].length + (floor32(users[arg1].length - 1) + -users[arg1].length + 32 % 32) + users[arg1][1].length + 288 > idx + 32:
        mem[idx + 32] = users[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=users[arg1].length, data=mem[256 len users[arg1].length + (floor32(users[arg1].length - 1) + -users[arg1].length + 32 % 32) + users[arg1][1].length + (floor32(users[arg1][1].length - 1) + -users[arg1][1].length + 32 % 32) + 32]), 
           users[arg1].length + (floor32(users[arg1].length - 1) + -users[arg1].length + 32 % 32) + 160,
           bool(users[arg1].field_512),
           bool(users[arg1].field_520)
}

function sub_f93edb9e(?) {
    return bool(users[address(arg1)].field_520)
}

function _fallback() payable {
    revert 
}

function changeAdmin(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
        return 0
    else:
        return 0
}

function sub_1dd7cecf(?) {
    if stor2[arg2[all]].field_256:
        return stor3[address(arg1)][arg2[all]]
    else:
        return 0
}

function sub_6d42eee2(?) {
    if not users[address(arg1)].field_520:
        return bool(users[address(arg1)].field_520)
    return bool(users[address(arg1)].field_512)
}

function sub_48725fd8(?) {
    if stor0 != msg.sender:
        return 0
    if users[address(arg1)].field_520:
        return 0
    users[address(arg1)].field_512 = 0
    users[address(arg1)].field_520 = 1
    users[address(arg1)].field_520 = 0
    emit 0x530a5f32: arg1
    return 1
}

function sub_76783ce7(?) {
    if stor0 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        return 0
    if not stor2[arg2[all]].field_256:
        return 0
    stor3[address(arg1)][arg2[all]] += arg3
    emit Deposited(Array(len=arg2.length, data=arg2[all]), arg3, arg1);
    return 1
}

function sub_c45b71de(?) {
    if stor0 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        return 0
    if not users[address(arg1)].field_512:
        return 0
    if not stor2[arg2[all]].field_256:
        return 0
    if stor4[address(arg1)][arg2[all]] < arg3:
        return 0
    stor4[address(arg1)][arg2[all]] -= arg3
    emit 0x809ecc34: Array(len=arg2.length, data=arg2[all]), arg3, arg1
    return 1
}

function sub_9cc67382(?) {
    if not users[address(msg.sender)].field_520:
        return 0
    if not users[address(msg.sender)].field_512:
        return 0
    if not stor2[arg1[all]].field_256:
        return 0
    if stor4[address(msg.sender)][arg1[all]] < arg2:
        return 0
    stor3[address(msg.sender)][arg1[all]] += arg2
    stor4[address(msg.sender)][arg1[all]] -= arg2
    emit 0xea0c1fd8: Array(len=arg1.length, data=arg1[all]), arg2, msg.sender
    return 1
}

function sub_c3e22643(?) {
    if not users[address(msg.sender)].field_520:
        return 0
    if not users[address(msg.sender)].field_512:
        return 0
    if not stor2[arg1[all]].field_256:
        return 0
    if stor3[address(msg.sender)][arg1[all]] < arg2:
        return 0
    stor3[address(msg.sender)][arg1[all]] -= arg2
    stor4[address(msg.sender)][arg1[all]] += arg2
    emit 0x7e1c14bb: Array(len=arg1.length, data=arg1[all]), arg2, msg.sender
    return 1
}

function transfer(address arg1, string arg2, uint256 arg3) {
    if not users[address(msg.sender)].field_520:
        return 0
    if not users[address(msg.sender)].field_512:
        return 0
    if not stor2[arg2[all]].field_256:
        return 0
    if stor3[address(msg.sender)][arg2[all]] < arg3:
        return 0
    if not users[address(arg1)].field_520:
        if stor0 == msg.sender:
            if not users[address(arg1)].field_520:
                users[address(arg1)].field_512 = 0
                users[address(arg1)].field_520 = 1
                users[address(arg1)].field_520 = 0
                emit 0x530a5f32: arg1
    stor3[address(msg.sender)][arg2[all]] -= arg3
    stor3[address(arg1)][arg2[all]] += arg3
    emit 0x7a8fe349: Array(len=arg2.length, data=arg2[all]), address(arg1), arg3, msg.sender
    return 1
}

function sub_9b7afeed(?) {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    if not stor2[arg1[all]].field_256:
        mem[ceil32(arg1.length) + 288] = mem[ceil32(arg1.length) + 306 len 14]
        return Array(len=14, data=mem[ceil32(arg1.length) + 288])
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    mem[ceil32(arg1.length) + 192] = stor2[arg1[all]].field_0
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor2[arg1[all]].length + 160 > idx:
        mem[idx + 32] = stor2[arg1[all]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1[all]].length, data=mem[ceil32(arg1.length) + 192 len stor2[arg1[all]].length])
}

function sub_6cf787ed(?) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor0 != msg.sender:
        return 0
    if stor2[arg1[all]].field_256:
        return 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    stor2[arg1[all]].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        stor2[arg1[all]][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor2[arg1[all]].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor2[arg1[all]][Mask(251, 0, arg2.length + 31) >> 5].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor2[arg1[all]].length + 31 / 32 > idx:
            stor2[arg1[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[arg1[all]].field_256 = 1
    return 1
}

function sub_4ceb48fd(?) {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor0 != msg.sender:
        return 0
    if users[address(arg1)].field_520:
        return 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 96
    users[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    users[address(arg1)].field_256 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        users[address(arg1)][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if users[address(arg1)][1].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 1))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while users[address(arg1)][1].length + 31 / 32 > idx:
            users[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    users[address(arg1)].field_512 = 1
    users[address(arg1)].field_520 = 1
    emit 0xfc30328c: Array(len=arg2.length, data=arg2[all]), arg2.length + 96, arg1
    return 1
}

function sub_78c188c5(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor0 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        return 0
    if users[address(arg1)].field_512:
        return 0
    users[address(arg1)].field_512 = 1
    users[address(arg1)].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        users[address(arg1)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if users[address(arg1)].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        users[address(arg1)][Mask(251, 0, arg2.length + 31) >> 5].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while users[address(arg1)].length + 31 / 32 > idx:
            users[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    users[address(arg1)].field_256 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        users[address(arg1)][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if users[address(arg1)][1].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'users', 1))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while users[address(arg1)][1].length + 31 / 32 > idx:
            users[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x5e94ea0b: Array(len=arg2.length, data=arg2[all]), arg2.length + 96, arg1
    return 1
}

function getUserInfo(address arg1) {
    mem[96] = 0
    mem[128] = 0
    if not users[address(arg1)].field_520:
        mem[416] = mem[443 len 5]
        mem[480] = mem[507 len 5]
        return 96, 160, 0, 5, mem[416], 5, mem[480]
    mem[32] = 1
    mem[160] = users[address(arg1)].length
    mem[192] = users[address(arg1)].field_0
    idx = 192
    s = 0
    while users[address(arg1)].length + 160 > idx:
        mem[idx + 32] = users[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 224
    mem[ceil32(users[address(arg1)].length) + 192] = users[address(arg1)][1].length
    mem[0] = sha3(address(arg1), 1) + 1
    mem[ceil32(users[address(arg1)].length) + 224] = users[address(arg1)][1].field_0
    idx = ceil32(users[address(arg1)].length) + 224
    s = 0
    while ceil32(users[address(arg1)].length) + users[address(arg1)][1].length + 192 > idx:
        mem[idx + 32] = users[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 288] = bool(users[address(arg1)].field_512)
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 224] = 96
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 320] = users[address(arg1)].length
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352 len users[address(arg1)].length] = mem[192 len users[address(arg1)].length]
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 256] = users[address(arg1)].length + 128
    mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352] = users[address(arg1)][1].length
    mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384 len users[address(arg1)][1].length] = mem[ceil32(users[address(arg1)].length) + 224 len users[address(arg1)][1].length]
    if not users[address(arg1)][1].length % 32:
        return Array(len=users[address(arg1)].length, data=mem[192 len users[address(arg1)].length], users[address(arg1)][1].length, mem[ceil32(users[address(arg1)].length) + 224 len users[address(arg1)][1].length]), 
               users[address(arg1)].length + 128,
               bool(users[address(arg1)].field_512)
    mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384] = mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + -users[address(arg1)][1].length % 32 + 416 len users[address(arg1)][1].length % 32]
    return Array(len=users[address(arg1)].length, data=mem[192 len users[address(arg1)].length], users[address(arg1)][1].length, mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + users[address(arg1)].length + 384 len floor32(users[address(arg1)][1].length) + 32]), 
           users[address(arg1)].length + 128,
           bool(users[address(arg1)].field_512)
}



}
