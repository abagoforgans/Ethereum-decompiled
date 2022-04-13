contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'DinarCoin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'DNC' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 1
    require not msg.value
    stor3 = msg.sender
    return code.data[445 len 9359]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balance;
mapping of uint256 allowance;
address stor3;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of struct users;
mapping of uint256 sub_9a6a10a3;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balance[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function sub_f93edb9e(?) {
    return bool(users[address(arg1)].field_520)
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    if msg.sender == stor3:
        stor3 = arg1
        return 0
    else:
        return 0
}

function sub_6d42eee2(?) {
    if not users[address(arg1)].field_520:
        return bool(users[address(arg1)].field_520)
    return bool(users[address(arg1)].field_512)
}

function sub_48725fd8(?) {
    if stor3 != msg.sender:
        return 0
    if users[address(arg1)].field_520:
        return 0
    users[address(arg1)].field_520 = 1
    users[address(arg1)].field_512 = 0
    emit 0x530a5f32: arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if not users[address(msg.sender)].field_520:
        return 0
    if not users[address(msg.sender)].field_512:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    require balance[address(arg2)] + arg3 >= arg3
    balance[address(arg2)] += arg3
    require arg3 <= balance[address(arg1)]
    balance[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if msg.sender == stor3:
        if users[address(arg1)].field_520:
            if users[address(arg1)].field_512:
                if balance[address(arg1)] >= arg2:
                    balance[address(arg1)] -= arg2
                    totalSupply -= arg2
                    emit Burned(address(arg1), arg2);
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

function mintNewDNC(address arg1, uint256 arg2) {
    if stor3 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        if msg.sender == stor3:
            if not users[address(arg1)].field_520:
                users[address(arg1)].field_0 = 0
                users[address(arg1)].field_1 = 0
                users[address(arg1)].field_8 = 0
                idx = 0
                while users[address(arg1)].length + 31 / 32 > idx:
                    users[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                users[address(arg1)].field_256 = 0
                users[address(arg1)].field_257 = 0
                users[address(arg1)].field_264 = 0
                idx = 0
                while users[address(arg1)][1].length + 31 / 32 > idx:
                    users[address(arg1)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                users[address(arg1)].field_512 = 1
                users[address(arg1)].field_520 = 1
                emit 0xfc30328c: address(arg1), 96, 128, 0, 0
    balance[address(arg1)] += arg2
    totalSupply += arg2
    emit Minted(address(arg1), arg2);
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if stor3 != msg.sender:
        return 0
    if balance[address(arg1)] < arg3:
        return 0
    if not users[address(arg2)].field_520:
        if msg.sender == stor3:
            if not users[address(arg2)].field_520:
                users[address(arg2)].field_0 = 0
                users[address(arg2)].field_1 = 0
                users[address(arg2)].field_8 = 0
                idx = 0
                while users[address(arg2)].length + 31 / 32 > idx:
                    users[address(arg2)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                users[address(arg2)].field_256 = 0
                users[address(arg2)].field_257 = 0
                users[address(arg2)].field_264 = 0
                idx = 0
                while users[address(arg2)][1].length + 31 / 32 > idx:
                    users[address(arg2)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                users[address(arg2)].field_512 = 1
                users[address(arg2)].field_520 = 1
                emit 0xfc30328c: address(arg2), 96, 128, 0, 0
    require arg3 <= balance[address(arg1)]
    balance[address(arg1)] -= arg3
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    require balance[address(arg2)] + arg3 >= arg3
    balance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_78c188c5(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor3 != msg.sender:
        return 0
    if not users[address(arg1)].field_520:
        return 0
    if users[address(arg1)].field_512:
        return 0
    users[address(arg1)].field_512 = 1
    users[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    users[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = arg2.length
    if not arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                emit 0x5e94ea0b: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len arg3.length + arg2.length + 32]), arg2.length + 128
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
                emit 0x5e94ea0b: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len floor32(arg3.length) + arg2.length + 64]), arg2.length + 128
        else:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0x5e94ea0b: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len arg3.length + arg2.length + 32]), arg2.length + 128
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
                emit 0x5e94ea0b: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len floor32(arg3.length)]), arg2.length + 128
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg3.length
        if arg3.length:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            emit 0x5e94ea0b: address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len arg3.length + arg2.length]), arg2.length + 128
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
            emit 0x5e94ea0b: address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 128
    return 1
}

function sub_4ceb48fd(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor3 != msg.sender:
        return 0
    if users[address(arg1)].field_520:
        return 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = ceil32(arg2.length) + 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 1
    users[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    users[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    users[address(arg1)].field_512 = 1
    users[address(arg1)].field_520 = 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = arg2.length
    if not arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                emit 0xfc30328c: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg3.length + arg2.length + 32]), arg2.length + 128
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
                emit 0xfc30328c: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len floor32(arg3.length) + arg2.length + 64]), arg2.length + 128
        else:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0xfc30328c: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg3.length + arg2.length + 32]), arg2.length + 128
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
                emit 0xfc30328c: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 416 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 480 len floor32(arg3.length)]), arg2.length + 128
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg3.length
        if arg3.length:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            emit 0xfc30328c: address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length + arg2.length]), arg2.length + 128
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit 0xfc30328c: address(arg1), Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 128
    return 1
}

function getUserInfo(address arg1) {
    mem[96] = 0
    mem[128] = 0
    if not users[address(arg1)].field_520:
        return 96, 160, 0, 5, 'false' % 1099511627776, 0, 5, 'false' % 1099511627776
    mem[32] = 7
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
    mem[0] = sha3(address(arg1), 7) + 1
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
    if not users[address(arg1)].length:
        mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 256] = users[address(arg1)].length + 128
        mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352] = users[address(arg1)][1].length
        if not users[address(arg1)][1].length:
            if not users[address(arg1)][1].length % 32:
                return Array(len=users[address(arg1)].length, data=mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352 len users[address(arg1)][1].length + users[address(arg1)].length + 32]), 
                       users[address(arg1)].length + 128,
                       bool(users[address(arg1)].field_512)
            mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384] = mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + -users[address(arg1)][1].length % 32 + 416 len users[address(arg1)][1].length % 32]
            return Array(len=users[address(arg1)].length, data=mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352 len floor32(users[address(arg1)][1].length) + users[address(arg1)].length + 64]), 
                   users[address(arg1)].length + 128,
                   bool(users[address(arg1)].field_512)
        mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384] = mem[ceil32(users[address(arg1)].length) + 224]
        mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 416 len floor32(users[address(arg1)][1].length - 1)] = mem[ceil32(users[address(arg1)].length) + 256 len floor32(users[address(arg1)][1].length - 1)]
        if not users[address(arg1)][1].length % 32:
            return Array(len=users[address(arg1)].length, data=mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352 len users[address(arg1)][1].length + users[address(arg1)].length + 32]), 
                   users[address(arg1)].length + 128,
                   bool(users[address(arg1)].field_512)
        mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384] = mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + -users[address(arg1)][1].length % 32 + 416 len users[address(arg1)][1].length % 32]
        return Array(len=users[address(arg1)].length, data=mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352 len users[address(arg1)].length + 32], mem[ceil32(users[address(arg1)].length) + 224], mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + users[address(arg1)].length + 416 len floor32(users[address(arg1)][1].length)]), 
               users[address(arg1)].length + 128,
               bool(users[address(arg1)].field_512)
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352] = mem[192]
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384 len floor32(users[address(arg1)].length - 1)] = mem[224 len floor32(users[address(arg1)].length - 1)]
    mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 256] = users[address(arg1)].length + 128
    mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 352] = users[address(arg1)][1].length
    if users[address(arg1)][1].length:
        mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384] = mem[ceil32(users[address(arg1)].length) + 224]
        mem[users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 416 len floor32(users[address(arg1)][1].length - 1)] = mem[ceil32(users[address(arg1)].length) + 256 len floor32(users[address(arg1)][1].length - 1)]
    if not users[address(arg1)][1].length % 32:
        return Array(len=users[address(arg1)].length, data=mem[192], mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384 len users[address(arg1)][1].length + users[address(arg1)].length]), 
               users[address(arg1)].length + 128,
               bool(users[address(arg1)].field_512)
    mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384] = mem[floor32(users[address(arg1)][1].length) + users[address(arg1)].length + ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + -users[address(arg1)][1].length % 32 + 416 len users[address(arg1)][1].length % 32]
    return Array(len=users[address(arg1)].length, data=mem[192], mem[ceil32(users[address(arg1)].length) + ceil32(users[address(arg1)][1].length) + 384 len floor32(users[address(arg1)][1].length) + users[address(arg1)].length + 32]), 
           users[address(arg1)].length + 128,
           bool(users[address(arg1)].field_512)
}



}
