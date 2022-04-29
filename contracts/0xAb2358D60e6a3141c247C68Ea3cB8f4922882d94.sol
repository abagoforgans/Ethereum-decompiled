contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor13;
address stor14;

function _fallback() {
    require code.data[4189 len 32]
    require code.data[4169 len 20]
    require code.data[4221 len 32] < code.data[4285 len 32]
    require code.data[4253 len 32] < code.data[4317 len 32]
    require code.data[4253 len 32] < code.data[4221 len 32]
    stor0 = code.data[4169 len 20]
    stor1 = code.data[4189 len 32]
    stor3 = code.data[4221 len 32]
    stor4 = code.data[4253 len 32]
    stor5 = code.data[4285 len 32]
    stor6 = code.data[4317 len 32]
    stor7 = code.data[4349 len 32]
    stor8 = code.data[4381 len 32]
    stor13 = 1
    stor14 = msg.sender
    return code.data[258 len 3899]
}



// =====================  Runtime code  =====================


const sub_6605568b(?) = 2000

const sub_ed1cb557(?) = 2200


address safeAddress;
uint256 target;
uint256 subscription;
uint256 sub_2ce0cd86;
uint256 sub_1bc377f6;
uint256 sub_1b76dd0f;
uint256 sub_acd32261;
uint256 sub_db4e9fd4;
uint256 sub_75825842;
mapping of address participants;
mapping of uint256 deposits;
mapping of uint256 indexes;
mapping of uint8 stor12;
uint256 counter;
address owner;

function safe() {
    return safeAddress
}

function sub_1b76dd0f(?) {
    return sub_1b76dd0f
}

function sub_1bc377f6(?) {
    return sub_1bc377f6
}

function sub_2ce0cd86(?) {
    return sub_2ce0cd86
}

function indexes(address arg1) {
    return indexes[arg1]
}

function participants(uint256 arg1) {
    return participants[arg1]
}

function subscription() {
    return subscription
}

function counter() {
    return counter
}

function sub_75825842(?) {
    return sub_75825842
}

function owner() {
    return owner
}

function sub_acd32261(?) {
    return sub_acd32261
}

function deposits(uint256 arg1) {
    return deposits[arg1]
}

function privileges(address arg1) {
    return bool(stor12[arg1])
}

function target() {
    return target
}

function sub_db4e9fd4(?) {
    return sub_db4e9fd4
}

function getDeposit(address arg1) {
    return deposits[stor11[address(arg1)]]
}

function setTarget(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp <= sub_1bc377f6
    require arg1
    target = arg1
}

function setQuota(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp <= sub_1bc377f6
    sub_db4e9fd4 = arg1
    sub_75825842 = arg2
}

function sub_8b6bbc26(?) {
    require owner == msg.sender
    require block.timestamp <= sub_1bc377f6
    require indexes[address(arg1)]
    stor12[address(arg1)] = uint8(arg2)
}

function sub_5a9ff18c(?) {
    require owner == msg.sender
    require indexes[address(arg1)] <= 0
    participants[stor13] = arg1
    indexes[address(arg1)] = counter
    stor12[address(arg1)] = uint8(arg2)
    counter++
    emit 0x9dac3529: arg1
}

function sub_17aeb5f7(?) {
    require owner == msg.sender
    require block.timestamp <= sub_1bc377f6
    require arg1 < arg3
    require arg2 < arg4
    require arg2 < arg1
    sub_2ce0cd86 = arg1
    sub_1bc377f6 = arg2
    sub_1b76dd0f = arg3
    sub_acd32261 = arg4
}

function sub_e85062b9(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = indexes[mem[(32 * idx) + 140 len 20]]
        mem[32] = 10
        require idx < arg1.length
        mem[(32 * arg1.length) + (32 * idx) + 192] = deposits[stor11[mem[(32 * idx) + 140 len 20]]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 192] = 32
    mem[(64 * arg1.length) + 224] = arg1.length
    mem[(64 * arg1.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 192
       len (161 * arg1.length) + 64
}

function sub_0a7ead81(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require block.timestamp <= sub_1bc377f6
    require arg1.length == arg2.length
    require arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require indexes[mem[(32 * idx) + 140 len 20]] > 0
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
}

function sub_4194e775(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    require arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not indexes[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        participants[stor13] = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        indexes[mem[(32 * idx) + 140 len 20]] = counter
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        counter++
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0x3ae9c605: mem[(32 * arg1.length) + (32 * arg2.length) + 160 len (96 * arg1.length) + 64]
}

function _fallback() payable {
    if not stor12[address(msg.sender)]:
        require block.timestamp >= sub_2ce0cd86
        require block.timestamp <= sub_1b76dd0f
        require subscription + 2000 <= target
        require indexes[address(msg.sender)]
        require deposits[stor11[address(msg.sender)]] < sub_db4e9fd4
        require msg.value
        require not msg.value % 10^18
        if sub_db4e9fd4 - deposits[stor11[address(msg.sender)]] > 10^18 * target - subscription - (target - subscription % 2000) / 2000:
            if msg.value <= 10^18 * target - subscription - (target - subscription % 2000) / 2000:
                call safeAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] += msg.value
                subscription += 2000 * msg.value / 10^18
                emit Transfer(msg.sender, msg.value);
            else:
                call safeAddress with:
                   value 10^18 * target - subscription - (target - subscription % 2000) / 2000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] += 10^18 * target - subscription - (target - subscription % 2000) / 2000
                subscription += 2000 * 10^18 * target - subscription - (target - subscription % 2000) / 2000 / 10^18
                emit Transfer(msg.sender, 10^18 * target - subscription - (target - subscription % 2000) / 2000);
                call msg.sender with:
                   value msg.value - (10^18 * target - subscription - (target - subscription % 2000) / 2000) wei
                     gas 2300 * is_zero(value) wei
        else:
            if msg.value <= sub_db4e9fd4 - deposits[stor11[address(msg.sender)]]:
                call safeAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] += msg.value
                subscription += 2000 * msg.value / 10^18
                emit Transfer(msg.sender, msg.value);
            else:
                call safeAddress with:
                   value sub_db4e9fd4 - deposits[stor11[address(msg.sender)]] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] = sub_db4e9fd4
                subscription += 2000 * sub_db4e9fd4 - deposits[stor11[address(msg.sender)]] / 10^18
                emit Transfer(msg.sender, sub_db4e9fd4 - deposits[stor11[address(msg.sender)]]);
                call msg.sender with:
                   value msg.value - sub_db4e9fd4 + deposits[stor11[address(msg.sender)]] wei
                     gas 2300 * is_zero(value) wei
    else:
        require block.timestamp >= sub_1bc377f6
        require block.timestamp <= sub_acd32261
        require subscription + 2200 <= target
        require indexes[address(msg.sender)]
        require deposits[stor11[address(msg.sender)]] < sub_75825842
        require msg.value
        require not msg.value % 10^18
        if sub_75825842 - deposits[stor11[address(msg.sender)]] > 10^18 * target - subscription - (target - subscription % 2200) / 2200:
            if msg.value <= 10^18 * target - subscription - (target - subscription % 2200) / 2200:
                call safeAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] += msg.value
                subscription += 2200 * msg.value / 10^18
                emit Transfer(msg.sender, msg.value);
            else:
                call safeAddress with:
                   value 10^18 * target - subscription - (target - subscription % 2200) / 2200 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] += 10^18 * target - subscription - (target - subscription % 2200) / 2200
                subscription += 2200 * 10^18 * target - subscription - (target - subscription % 2200) / 2200 / 10^18
                emit Transfer(msg.sender, 10^18 * target - subscription - (target - subscription % 2200) / 2200);
                call msg.sender with:
                   value msg.value - (10^18 * target - subscription - (target - subscription % 2200) / 2200) wei
                     gas 2300 * is_zero(value) wei
        else:
            if msg.value <= sub_75825842 - deposits[stor11[address(msg.sender)]]:
                call safeAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] += msg.value
                subscription += 2200 * msg.value / 10^18
                emit Transfer(msg.sender, msg.value);
            else:
                call safeAddress with:
                   value sub_75825842 - deposits[stor11[address(msg.sender)]] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                deposits[stor11[address(msg.sender)]] = sub_75825842
                subscription += 2200 * sub_75825842 - deposits[stor11[address(msg.sender)]] / 10^18
                emit Transfer(msg.sender, sub_75825842 - deposits[stor11[address(msg.sender)]]);
                call msg.sender with:
                   value msg.value - sub_75825842 + deposits[stor11[address(msg.sender)]] wei
                     gas 2300 * is_zero(value) wei
}



}
