contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 120
    require not msg.value
    stor0 = msg.sender
    return code.data[100 len 5963]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 stor1;
mapping of address sub_989226ae;
mapping of struct sub_3063ca94;

function sub_3063ca94(?) {
    return sub_3063ca94[address(arg1)].field_512
}

function getAdmin() {
    return adminAddress
}

function sub_989226ae(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length
    require arg1.length <= 15
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    return sub_989226ae[s]
}

function sub_dd2e4134(?) {
    return sub_3063ca94[address(arg1)][0 len sub_3063ca94[address(arg1)].length].field_0
}

function _fallback() payable {
    revert
}

function setWait(uint256 arg1) {
    require msg.sender == adminAddress
    stor1 = arg1
    return 1
}

function setAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
    return 1
}

function reserve(uint256 arg1) {
    sub_3063ca94[address(msg.sender)].field_256 = arg1
    sub_3063ca94[address(msg.sender)].field_512 = block.timestamp
    emit Reserve(block.timestamp, msg.sender, arg1);
    return 1
}

function sub_c0d238a5(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = arg2
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32], arg3)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_d9515fa6(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function sub_401ec7bf(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length
    require arg1.length <= 15
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    return s
}

function authorize(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length
    require arg1.length <= 15
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    sub_3063ca94[address(msg.sender)].field_768 = s
    mem[ceil32(arg1.length) + 160] = 32
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xfa50770a: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), msg.sender, s
    return 1
}

function sub_1885f763(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[0] = msg.sender
    mem[32] = 3
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length
    require arg1.length <= 15
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    mem[ceil32(arg1.length) + 192] = sub_3063ca94[address(msg.sender)].field_0
    idx = ceil32(arg1.length) + 192
    t = 0
    while ceil32(arg1.length) + sub_3063ca94[address(msg.sender)].length + 160 > idx:
        mem[idx + 32] = sub_3063ca94[address(msg.sender)][t].field_256
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 192] = 0
    require sub_3063ca94[address(msg.sender)].length
    require sub_3063ca94[address(msg.sender)].length <= 15
    t = 0
    idx = 0
    t = 0
    while idx < sub_3063ca94[address(msg.sender)].length:
        require idx < sub_3063ca94[address(msg.sender)].length
        if mem[ceil32(arg1.length) + idx + 192 len 1] >= 48:
            if mem[ceil32(arg1.length) + idx + 192 len 1] <= 57:
                t = mem[ceil32(arg1.length) + idx + 192 len 1]
                idx = idx + 1
                t = (256 * t) + mem[ceil32(arg1.length) + idx + 192 len 1]
                continue 
            if mem[ceil32(arg1.length) + idx + 192 len 1] >= 97:
                if mem[ceil32(arg1.length) + idx + 192 len 1] <= 122:
                    t = mem[ceil32(arg1.length) + idx + 192 len 1]
                    idx = idx + 1
                    t = (256 * t) + mem[ceil32(arg1.length) + idx + 192 len 1]
                    continue 
        if mem[ceil32(arg1.length) + idx + 192 len 1] == 95:
            t = mem[ceil32(arg1.length) + idx + 192 len 1]
            idx = idx + 1
            t = (256 * t) + mem[ceil32(arg1.length) + idx + 192 len 1]
            continue 
        require mem[ceil32(arg1.length) + idx + 192 len 1] >= 65
        require mem[ceil32(arg1.length) + idx + 192 len 1] <= 90
        t = mem[ceil32(arg1.length) + idx + 192 len 1]
        idx = idx + 1
        t = (256 * t) + uint8(mem[ceil32(arg1.length) + idx + 192 len 1] + 32)
        continue 
    require t == s
    sub_3063ca94[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}

function transfer(address arg1) {
    mem[32] = 3
    mem[96] = sub_3063ca94[address(msg.sender)].length
    mem[0] = sha3(address(msg.sender), 3)
    mem[128] = sub_3063ca94[address(msg.sender)].field_0
    idx = 128
    s = 0
    while sub_3063ca94[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = sub_3063ca94[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_3063ca94[address(msg.sender)].length) + 160
    mem[ceil32(sub_3063ca94[address(msg.sender)].length) + 128] = 0
    require sub_3063ca94[address(msg.sender)].length
    require sub_3063ca94[address(msg.sender)].length <= 15
    s = 0
    idx = 0
    s = 0
    while idx < sub_3063ca94[address(msg.sender)].length:
        require idx < sub_3063ca94[address(msg.sender)].length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    require s == sub_3063ca94[address(arg1)].field_768
    if 31 >= sub_3063ca94[address(msg.sender)].length:
        sub_3063ca94[address(arg1)].field_0 = sub_3063ca94[address(msg.sender)].field_0
        idx = 0
        while sub_3063ca94[address(arg1)].length + 31 / 32 > idx:
            sub_3063ca94[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_989226ae[s] = arg1
        sub_3063ca94[address(arg1)].field_768 = 0
        sub_3063ca94[address(msg.sender)].field_0 = 0
        if 31 < sub_3063ca94[address(msg.sender)].length:
            idx = 0
            while sub_3063ca94[address(msg.sender)].length + 31 / 32 > idx:
                sub_3063ca94[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        sub_3063ca94[address(arg1)].field_0 = Mask(255, 1, (256 * not sub_3063ca94[address(msg.sender)].field_0) - 1 and sub_3063ca94[address(msg.sender)].field_0) + 1
        if not Mask(255, 1, (256 * not sub_3063ca94[address(msg.sender)].field_0) - 1 and sub_3063ca94[address(msg.sender)].field_0):
            idx = 0
            while sub_3063ca94[address(arg1)].length + 31 / 32 > idx:
                sub_3063ca94[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            t = 0
            idx = 0
            while sub_3063ca94[address(msg.sender)].length + 31 / 32 > idx:
                sub_3063ca94[address(arg1)][t].field_0 = sub_3063ca94[address(msg.sender)][idx].field_0
                t = t + 1
                idx = idx + 1
                continue 
            idx = sub_3063ca94[address(msg.sender)].length + 31 / 32
            while sub_3063ca94[address(arg1)].length + 31 / 32 > idx:
                sub_3063ca94[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_989226ae[s] = arg1
        sub_3063ca94[address(arg1)].field_768 = 0
        sub_3063ca94[address(msg.sender)].field_0 = 0
        if 31 < sub_3063ca94[address(msg.sender)].length:
            idx = 0
            while sub_3063ca94[address(msg.sender)].length + 31 / 32 > idx:
                sub_3063ca94[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(sub_3063ca94[address(msg.sender)].length) + 224] = sub_3063ca94[address(arg1)].field_0
    idx = ceil32(sub_3063ca94[address(msg.sender)].length) + 224
    t = 0
    while ceil32(sub_3063ca94[address(msg.sender)].length) + sub_3063ca94[address(arg1)].length + 224 > idx + 32:
        mem[idx + 32] = sub_3063ca94[address(arg1)][t].field_256
        idx = idx + 32
        t = t + 1
        continue 
    emit Transfer(Array(len=sub_3063ca94[address(arg1)].length, data=mem[ceil32(sub_3063ca94[address(msg.sender)].length) + 224 len sub_3063ca94[address(arg1)].length + (floor32(sub_3063ca94[address(arg1)].length - 1) + -sub_3063ca94[address(arg1)].length + 32 % 32)]), arg1, msg.sender, s);
    return 1
}

function register(uint256 arg1, string arg2, uint256 arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[0] = msg.sender
    mem[32] = 3
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    require arg2.length
    require arg2.length <= 15
    s = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160] = arg3
    mem[arg2.length + ceil32(arg2.length) + 192] = address(msg.sender)
    require arg1 == sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32], msg.sender)
    require sub_3063ca94[address(msg.sender)].field_512 + stor1 >= block.timestamp
    require not sub_989226ae[s]
    if sub_3063ca94[address(msg.sender)].length <= 0:
        sub_3063ca94[address(msg.sender)][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_989226ae[s] = msg.sender
        sub_3063ca94[address(msg.sender)].field_256 = 0
        sub_3063ca94[address(msg.sender)].field_512 = 0
        mem[ceil32(arg2.length) + 160] = 32
        mem[ceil32(arg2.length) + 192] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 224] = mem[128]
            mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0xfd7cce4a: Array(len=mem[ceil32(arg2.length) + 192 len arg2.length], data=address(msg.sender)), msg.sender, s
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
            emit 0xfd7cce4a: Array(len=mem[ceil32(arg2.length) + 192 len arg2.length], data=Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, address(msg.sender)) << (8 * -(arg2.length % 32) + 32) - 256, mem[ceil32(arg2.length) + floor32(arg2.length) + 224]), msg.sender, s
    else:
        mem[ceil32(arg2.length) + 160] = sub_3063ca94[address(msg.sender)].length
        mem[ceil32(arg2.length) + 192] = sub_3063ca94[address(msg.sender)].field_0
        idx = ceil32(arg2.length) + 192
        t = 0
        while ceil32(arg2.length) + sub_3063ca94[address(msg.sender)].length + 160 > idx:
            mem[idx + 32] = sub_3063ca94[address(msg.sender)][t].field_256
            idx = idx + 32
            t = t + 1
            continue 
        mem[ceil32(arg2.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 192] = 0
        require sub_3063ca94[address(msg.sender)].length
        require sub_3063ca94[address(msg.sender)].length <= 15
        t = 0
        idx = 0
        t = 0
        while idx < sub_3063ca94[address(msg.sender)].length:
            require idx < sub_3063ca94[address(msg.sender)].length
            if mem[ceil32(arg2.length) + idx + 192 len 1] >= 48:
                if mem[ceil32(arg2.length) + idx + 192 len 1] <= 57:
                    t = mem[ceil32(arg2.length) + idx + 192 len 1]
                    idx = idx + 1
                    t = (256 * t) + mem[ceil32(arg2.length) + idx + 192 len 1]
                    continue 
                if mem[ceil32(arg2.length) + idx + 192 len 1] >= 97:
                    if mem[ceil32(arg2.length) + idx + 192 len 1] <= 122:
                        t = mem[ceil32(arg2.length) + idx + 192 len 1]
                        idx = idx + 1
                        t = (256 * t) + mem[ceil32(arg2.length) + idx + 192 len 1]
                        continue 
            if mem[ceil32(arg2.length) + idx + 192 len 1] == 95:
                t = mem[ceil32(arg2.length) + idx + 192 len 1]
                idx = idx + 1
                t = (256 * t) + mem[ceil32(arg2.length) + idx + 192 len 1]
                continue 
            require mem[ceil32(arg2.length) + idx + 192 len 1] >= 65
            require mem[ceil32(arg2.length) + idx + 192 len 1] <= 90
            t = mem[ceil32(arg2.length) + idx + 192 len 1]
            idx = idx + 1
            t = (256 * t) + uint8(mem[ceil32(arg2.length) + idx + 192 len 1] + 32)
            continue 
        sub_989226ae[t] = 0
        sub_3063ca94[address(msg.sender)][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_989226ae[s] = msg.sender
        sub_3063ca94[address(msg.sender)].field_256 = 0
        sub_3063ca94[address(msg.sender)].field_512 = 0
        mem[ceil32(arg2.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 224] = 32
        mem[ceil32(arg2.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 256] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 288] = mem[128]
            mem[ceil32(arg2.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit 0xfd7cce4a: Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(sub_3063ca94[address(msg.sender)].length) + 288 len arg2.length]), msg.sender, s
    return 1
}



}
