contract main {




// =====================  Runtime code  =====================


address owner;
array of struct operators;
mapping of uint8 stor2;
array of struct affiliates;
array of struct subscribers;
mapping of address sub_a7858ba3;
array of struct sub_631437dc;
mapping of struct sub_7b80642b;
mapping of struct sub_c55c2ff7;
array of struct sub_11cdb895;
uint256 sub_4beced78;

function permissions(address arg1) {
    return bool(stor2[arg1])
}

function sub_11cdb895(?) {
    require arg2 < sub_11cdb895[arg1].field_0
    return sub_11cdb895[arg1][arg2].field_0, sub_11cdb895[arg1][arg2].field_256
}

function affiliates(uint256 arg1) {
    require arg1 < affiliates.length
    return address(affiliates[arg1].field_0)
}

function sub_4beced78(?) {
    return sub_4beced78
}

function subscribers(uint256 arg1) {
    require arg1 < subscribers.length
    return address(subscribers[arg1].field_0)
}

function sub_631437dc(?) {
    require arg2 < sub_631437dc[arg1].field_0
    return address(sub_631437dc[arg1][arg2].field_0)
}

function sub_7b80642b(?) {
    return sub_7b80642b[arg1].field_0, 
           sub_7b80642b[arg1].field_256,
           sub_7b80642b[arg1].field_512,
           sub_7b80642b[arg1].field_768,
           sub_7b80642b[arg1].field_1024,
           bool(uint8(sub_7b80642b[arg1].field_1280))
}

function owner() {
    return owner
}

function sub_a7858ba3(?) {
    return sub_a7858ba3[arg1]
}

function sub_c55c2ff7(?) {
    return sub_c55c2ff7[arg1].field_0, sub_c55c2ff7[arg1].field_256
}

function operators(uint256 arg1) {
    require arg1 < operators.length
    return address(operators[arg1].field_0)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_5ff5d8bb(?) {
    if not sub_a7858ba3[address(arg1)]:
        return 0
    return sub_7b80642b[stor5[address(arg1)]].field_768, 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addOperator(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    operators.length++
    address(operators[operators.length].field_0) = arg1
    stor2[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function withdraw() {
    sub_7b80642b[msg.sender].field_0 = 0
    call msg.sender with:
       value sub_7b80642b[msg.sender].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(sub_7b80642b[msg.sender].field_0, msg.sender);
}

function sub_236b9370(?) {
    require arg1
    require uint8(sub_7b80642b[address(arg1)].field_1280)
    require not sub_a7858ba3[msg.sender]
    subscribers.length++
    subscribers[subscribers.length].field_0 = msg.sender or Mask(96, 160, subscribers[subscribers.length].field_0)
    sub_a7858ba3[msg.sender] = arg1
    sub_631437dc[address(arg1)].field_0++
    sub_631437dc[address(arg1)][sub_631437dc[address(arg1)].field_0].field_0 = msg.sender or Mask(96, 160, sub_631437dc[address(arg1)][sub_631437dc[address(arg1)].field_0].field_0)
    emit 0xb7d932a4: msg.sender, arg1
}

function sub_5009859c(?) {
    if affiliates.length:
        mem[128] = address(affiliates.field_0)
        if (32 * affiliates.length) + 32 > 64:
            mem[160] = address(affiliates.field_256)
            idx = 160
            s = 1
            while (32 * affiliates.length) + 96 > idx:
                mem[idx + 32] = address(affiliates[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * affiliates.length) + 128] = 32
    mem[(32 * affiliates.length) + 160] = affiliates.length
    mem[(32 * affiliates.length) + 192 len floor32(affiliates.length)] = mem[128 len floor32(affiliates.length)]
    return memory
      from (32 * affiliates.length) + 128
       len (96 * affiliates.length) + 64
}

function getAllSubscribers() {
    if subscribers.length:
        mem[128] = address(subscribers.field_0)
        if (32 * subscribers.length) + 32 > 64:
            mem[160] = address(subscribers.field_256)
            idx = 160
            s = 1
            while (32 * subscribers.length) + 96 > idx:
                mem[idx + 32] = address(subscribers[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * subscribers.length) + 128] = 32
    mem[(32 * subscribers.length) + 160] = subscribers.length
    mem[(32 * subscribers.length) + 192 len floor32(subscribers.length)] = mem[128 len floor32(subscribers.length)]
    return memory
      from (32 * subscribers.length) + 128
       len (96 * subscribers.length) + 64
}

function getOperators() {
    if not operators.length:
        mem[(32 * operators.length) + 128] = 32
        mem[(32 * operators.length) + 160] = operators.length
        mem[(32 * operators.length) + 192 len floor32(operators.length)] = mem[128 len floor32(operators.length)]
        return memory
          from (32 * operators.length) + 128
           len (96 * operators.length) + 64
    mem[128] = address(operators.field_0)
    idx = 128
    s = 0
    while (32 * operators.length) + 96 > idx:
        mem[idx + 32] = address(operators[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * operators.length) + 192 len floor32(operators.length)] = mem[128 len floor32(operators.length)]
    return Array(len=operators.length, data=mem[128 len floor32(operators.length)], mem[(32 * operators.length) + floor32(operators.length) + 192 len (32 * operators.length) - floor32(operators.length)]), 
}

function sub_49274ca0(?) {
    if not sub_631437dc[address(arg1)].field_0:
        mem[(32 * sub_631437dc[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_631437dc[address(arg1)].field_0) + 160] = sub_631437dc[address(arg1)].field_0
        mem[(32 * sub_631437dc[address(arg1)].field_0) + 192 len floor32(sub_631437dc[address(arg1)].field_0)] = mem[128 len floor32(sub_631437dc[address(arg1)].field_0)]
        return memory
          from (32 * sub_631437dc[address(arg1)].field_0) + 128
           len (96 * sub_631437dc[address(arg1)].field_0) + 64
    mem[128] = address(sub_631437dc[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * sub_631437dc[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = address(sub_631437dc[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_631437dc[address(arg1)].field_0) + 192 len floor32(sub_631437dc[address(arg1)].field_0)] = mem[128 len floor32(sub_631437dc[address(arg1)].field_0)]
    return Array(len=sub_631437dc[address(arg1)].field_0, data=mem[128 len floor32(sub_631437dc[address(arg1)].field_0)], mem[(32 * sub_631437dc[address(arg1)].field_0) + floor32(sub_631437dc[address(arg1)].field_0) + 192 len (32 * sub_631437dc[address(arg1)].field_0) - floor32(sub_631437dc[address(arg1)].field_0)]), 
}

function removeOperator(address arg1) {
    require msg.sender == owner
    require arg1
    require stor2[address(arg1)]
    idx = 0
    while idx <= operators.length - 1:
        require idx < operators.length
        mem[0] = 1
        if address(operators[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require operators.length - 1 < operators.length
        if idx < operators.length - 1:
            require idx < operators.length
            address(operators[idx].field_0) = address(operators[operators.length].field_0)
        address(operators[operators.length].field_0) = 0
        operators.length--
        if operators.length > operators.length - 1:
            idx = operators.length + sha3(1) - 1
            while sha3(1) + operators.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor2[address(arg1)] = 0
        emit OperatorRemoved(arg1);
    require operators.length - 1 < operators.length
    if 0 < operators.length - 1:
        require 0 < operators.length
        address(operators.field_0) = address(operators[operators.length].field_0)
    address(operators[operators.length].field_0) = 0
    operators.length--
    if operators.length > operators.length - 1:
        idx = operators.length - 1
        while operators.length > idx:
            operators[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}

function sub_f7e03f04(?) {
    if uint8(sub_7b80642b[msg.sender].field_1280):
        require sub_7b80642b[msg.sender].field_512 != sub_4beced78
        sub_7b80642b[msg.sender].field_512 = sub_4beced78
        idx = 0
        while idx < sub_11cdb895[stor7[msg.sender].field_512].field_0:
            mem[0] = sha3(sub_7b80642b[msg.sender].field_512, 9)
            if sub_7b80642b[msg.sender].field_256 >= sub_11cdb895[stor7[msg.sender].field_512][idx].field_0:
                idx = idx + 1
                continue 
            require idx < sub_11cdb895[stor7[msg.sender].field_512].field_0
            sub_7b80642b[msg.sender].field_768 = sub_11cdb895[stor7[msg.sender].field_512][idx].field_256
            sub_7b80642b[msg.sender].field_1024 = sub_11cdb895[stor7[msg.sender].field_512][idx].field_0
            emit 0xee66dc7d: msg.sender, sub_7b80642b[msg.sender].field_512
        sub_7b80642b[msg.sender].field_1024 = -1
    else:
        affiliates.length++
        affiliates[affiliates.length].field_0 = msg.sender or Mask(96, 160, affiliates[affiliates.length].field_0)
        sub_7b80642b[msg.sender].field_512 = sub_4beced78
        require 0 < sub_11cdb895[stor10].field_0
        sub_7b80642b[msg.sender].field_768 = sub_11cdb895[stor10].field_256
        require 0 < sub_11cdb895[stor10].field_0
        sub_7b80642b[msg.sender].field_1024 = sub_11cdb895[stor10].field_0
        uint8(sub_7b80642b[msg.sender].field_1280) = 1
    emit 0xee66dc7d: msg.sender, sub_7b80642b[msg.sender].field_512
}

function sub_f53d254f(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require ('cd', 4).length > 0
    require ('cd', 36).length == ('cd', 4).length
    sub_4beced78++
    mem[0] = sub_4beced78 + 1
    mem[32] = 9
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] <= 10^18
        _10 = mem[64]
        mem[64] = mem[64] + 64
        require idx < ('cd', 4).length
        mem[_10] = cd[((32 * idx) + cd[4] + 36)]
        require idx < ('cd', 36).length
        mem[_10 + 32] = cd[((32 * idx) + cd[36] + 36)]
        sub_11cdb895[stor10 + 1].field_0++
        mem[0] = sha3(sub_4beced78 + 1, 9)
        sub_11cdb895[stor10 + 1][sub_11cdb895[stor10 + 1].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
        sub_11cdb895[stor10 + 1][sub_11cdb895[stor10 + 1].field_0].field_256 = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
    _8 = mem[64]
    mem[mem[64] + 64] = sub_4beced78
    mem[mem[64]] = 96
    mem[mem[64] + 96] = ('cd', 4).length
    mem[mem[64] + 128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[mem[64] + 32] = (32 * ('cd', 4).length) + 128
    mem[_8 + (32 * ('cd', 4).length) + 128] = ('cd', 36).length
    mem[_8 + (32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    emit 0xf572c7a4: mem[mem[64] len _8 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + -mem[64] + 160]
}

function sub_0540a65c(?) payable {
    require stor2[msg.sender]
    require msg.value > 0
    require arg1
    require sub_a7858ba3[address(arg1)]
    sub_7b80642b[stor5[address(arg1)]].field_0 += msg.value
    sub_7b80642b[stor5[address(arg1)]].field_256 += msg.value
    if msg.value + sub_7b80642b[stor5[address(arg1)]].field_256 >= sub_7b80642b[stor5[address(arg1)]].field_1024:
        idx = 0
        while idx < sub_11cdb895[stor7[stor5[address(arg1)]].field_512].field_0:
            mem[0] = sha3(sub_7b80642b[stor5[address(arg1)]].field_512, 9)
            if sub_7b80642b[stor5[address(arg1)]].field_256 >= sub_11cdb895[stor7[stor5[address(arg1)]].field_512][idx].field_0:
                idx = idx + 1
                continue 
            require idx < sub_11cdb895[stor7[stor5[address(arg1)]].field_512].field_0
            sub_7b80642b[stor5[address(arg1)]].field_768 = sub_11cdb895[stor7[stor5[address(arg1)]].field_512][idx].field_256
            sub_7b80642b[stor5[address(arg1)]].field_1024 = sub_11cdb895[stor7[stor5[address(arg1)]].field_512][idx].field_0
            sub_c55c2ff7[address(arg1)].field_0 += msg.value
            sub_c55c2ff7[address(arg1)].field_256++
            emit 0x615d0215: sub_7b80642b[stor5[address(arg1)]].field_0, msg.value, sub_a7858ba3[address(arg1)], arg1
        sub_7b80642b[stor5[address(arg1)]].field_1024 = -1
    sub_c55c2ff7[address(arg1)].field_0 += msg.value
    sub_c55c2ff7[address(arg1)].field_256++
    emit 0x615d0215: sub_7b80642b[stor5[address(arg1)]].field_0, msg.value, sub_a7858ba3[address(arg1)], arg1
}

function sub_24d1dfc8(?) {
    if not sub_11cdb895[arg1].field_0:
        mem[(32 * sub_11cdb895[arg1].field_0) + 128] = sub_11cdb895[arg1].field_0
    else:
        mem[128 len 32 * sub_11cdb895[arg1].field_0] = code.data[5279 len 32 * sub_11cdb895[arg1].field_0]
        mem[(32 * sub_11cdb895[arg1].field_0) + 128] = sub_11cdb895[arg1].field_0
        mem[(32 * sub_11cdb895[arg1].field_0) + 160 len 32 * sub_11cdb895[arg1].field_0] = code.data[5279 len 32 * sub_11cdb895[arg1].field_0]
    idx = 0
    while idx < sub_11cdb895[arg1].field_0:
        require idx < mem[(32 * sub_11cdb895[arg1].field_0) + 128]
        mem[(32 * sub_11cdb895[arg1].field_0) + (32 * idx) + 160] = sub_11cdb895[arg1][idx].field_256
        require idx < sub_11cdb895[arg1].field_0
        mem[0] = sha3(arg1, 9)
        require idx < sub_11cdb895[arg1].field_0
        mem[(32 * idx) + 128] = sub_11cdb895[arg1][idx].field_0
        idx = idx + 1
        continue 
    mem[(64 * sub_11cdb895[arg1].field_0) + 160] = 64
    mem[(64 * sub_11cdb895[arg1].field_0) + 224] = sub_11cdb895[arg1].field_0
    s = 0
    while sub_11cdb895[arg1].field_0 < 32 * sub_11cdb895[arg1].field_0:
        mem[(66 * sub_11cdb895[arg1].field_0) + 256] = mem[sub_11cdb895[arg1].field_0 + 128]
        s = sub_11cdb895[arg1].field_0 + 32
        continue 
    mem[(64 * sub_11cdb895[arg1].field_0) + 192] = (32 * sub_11cdb895[arg1].field_0) + 96
    mem[(98 * sub_11cdb895[arg1].field_0) + 256] = mem[(32 * sub_11cdb895[arg1].field_0) + 128]
    mem[(98 * sub_11cdb895[arg1].field_0) + 288 len floor32(mem[(32 * sub_11cdb895[arg1].field_0) + 128])] = mem[(32 * sub_11cdb895[arg1].field_0) + 160 len floor32(mem[(32 * sub_11cdb895[arg1].field_0) + 128])]
    return memory
      from (64 * sub_11cdb895[arg1].field_0) + 160
       len (32 * mem[(32 * sub_11cdb895[arg1].field_0) + 128]) + (161 * sub_11cdb895[arg1].field_0) + 128
}



}
