contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[87 len 6715]
}



// =====================  Runtime code  =====================


address stor0;
array of struct users;
mapping of uint256 sub_966bd54e;
mapping of uint256 sub_9a6a10a3;

function sub_966bd54e(?) {
    return sub_966bd54e[arg1]
}

function sub_9a6a10a3(?) {
    return sub_9a6a10a3[arg1]
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

function getBalance(address arg1) {
    return sub_966bd54e[address(arg1)]
}

function sub_f93edb9e(?) {
    return bool(users[address(arg1)].field_520)
}

function _fallback() payable {
    revert 
}

function changeAdmin(address arg1) {
    if msg.sender == stor0:
        stor0 = arg1
        return 0
    else:
        return 0
}

function sub_6d42eee2(?) {
    if not users[address(arg1)].field_520:
        return bool(users[address(arg1)].field_520)
    return bool(users[address(arg1)].field_512)
}

function mintNewDNC(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        return 0
    sub_966bd54e[address(arg1)] += arg2
    emit Minted(arg2, arg1);
    return 1
}

function sub_48725fd8(?) {
    if stor0 != msg.sender:
        return 0
    if users[address(arg1)].field_520:
        return 0
    users[address(arg1)].field_520 = 1
    users[address(arg1)].field_512 = 0
    emit 0x530a5f32: arg1
    return 1
}

function sub_4ceb48fd(?) {
    if stor0 != msg.sender:
        return 0
    if users[address(arg1)].field_520:
        return 0
    users[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    users[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    users[address(arg1)].field_512 = 1
    users[address(arg1)].field_520 = 1
    emit 0xfc30328c: Array(len=arg2.length, data=arg2[all]), arg2.length + 96, arg1
    return 1
}

function sub_91110d70(?) {
    if users[address(msg.sender)].field_520:
        if users[address(msg.sender)].field_512:
            if sub_9a6a10a3[address(msg.sender)] >= arg1:
                sub_966bd54e[address(msg.sender)] += arg1
                sub_9a6a10a3[address(msg.sender)] -= arg1
                emit 0x9b241491: arg1, msg.sender
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_78c188c5(?) {
    if stor0 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        return 0
    if users[address(arg1)].field_512:
        return 0
    users[address(arg1)].field_512 = 1
    users[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    users[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit 0x5e94ea0b: Array(len=arg2.length, data=arg2[all]), arg2.length + 96, arg1
    return 1
}

function sub_e844a457(?) {
    if users[address(msg.sender)].field_520:
        if users[address(msg.sender)].field_512:
            if sub_966bd54e[address(msg.sender)] >= arg1:
                emit BurnRequested(arg1, msg.sender);
                sub_966bd54e[address(msg.sender)] -= arg1
                sub_9a6a10a3[address(msg.sender)] += arg1
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function burn(address arg1, uint256 arg2) {
    if msg.sender == stor0:
        if users[address(arg1)].field_520:
            if users[address(arg1)].field_512:
                if sub_9a6a10a3[address(arg1)] >= arg2:
                    emit Burned(arg2, arg1);
                    sub_9a6a10a3[address(arg1)] -= arg2
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) {
    if not users[address(msg.sender)].field_520:
        return 0
    if not users[address(msg.sender)].field_512:
        return 0
    if sub_966bd54e[address(msg.sender)] < arg2:
        return 0
    if not users[address(arg1)].field_520:
        if msg.sender == stor0:
            if not users[address(arg1)].field_520:
                users[address(arg1)].field_520 = 1
                users[address(arg1)].field_512 = 0
                emit 0x530a5f32: arg1
    sub_966bd54e[address(msg.sender)] -= arg2
    sub_966bd54e[address(arg1)] += arg2
    emit Transfered(address(arg1), arg2, msg.sender);
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
