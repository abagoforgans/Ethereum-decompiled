contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() {
    mem[96 len -6380] = code.data[6845 len -6380]
    mem[64] = -6284
    require mem[160] > block.timestamp
    stor2 = mem[128]
    stor4 = mem[160]
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor7 = mem[192]
    stor6 = mem[224]
    stor5 = mem[256]
    stor1 = msg.sender
    stor8 = 0
    return code.data[465 len 6380]
}



// =====================  Runtime code  =====================


array of struct symbol;
array of uint256 stor1;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 starttime;
uint256 sub_97b10f2e;
uint256 sub_345556c1;
uint8 ret;
array of struct records;
array of address sub_be7a0f61;

function ret() {
    return ret
}

function deadline() {
    return deadline
}

function sub_345556c1(?) {
    return sub_345556c1
}

function sub_5e0a7f61(?) {
    return sub_be7a0f61.length
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function records(address arg1, uint256 arg2) {
    require arg2 < records[arg1].field_0
    return records[arg1][arg2].field_0, records[arg1][arg2].field_256
}

function starttime() {
    return starttime
}

function owner() {
    return address(stor1.length)
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function sub_97b10f2e(?) {
    return sub_97b10f2e
}

function sub_be7a0f61(?) {
    require arg1 < sub_be7a0f61.length
    return address(sub_be7a0f61[arg1])
}

function getLeft() {
    return (fundingGoal - amountRaised)
}

function sub_8861d4fc(?) {
    idx = 0
    while idx < sub_be7a0f61.length:
        mem[0] = 10
        if address(sub_be7a0f61[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_728965ee(?) {
    idx = 0
    while idx < sub_be7a0f61.length:
        mem[0] = 10
        if address(sub_be7a0f61[idx]) != arg1:
            idx = idx + 1
            continue 
        return records[address(arg1)].field_0
    return 0
}

function sub_0ac56e47(?) {
    require block.timestamp >= deadline
    require msg.sender == address(stor1.length)
    emit 0x8d2f010d: msg.sender, eth.balance(this.address), 0
    call address(stor1.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_8a60c4c1(?) {
    require block.timestamp >= deadline
    require msg.sender == address(stor1.length)
    require eth.balance(this.address) >= arg1
    emit 0x8d2f010d: msg.sender, arg1, 0
    call address(stor1.length) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_3c35a0c1(?) {
    if block.timestamp <= starttime:
        emit 0x80515402: block.timestamp, starttime, 0, 128, 9, 'starttime'
    else:
        emit 0x80515402: block.timestamp, starttime, 1, Array(len=9, data='starttime')
    if block.timestamp <= deadline:
        emit 0x80515402: block.timestamp, deadline, 0, 128, 8, 'deadline'
    else:
        emit 0x80515402: block.timestamp, deadline, 1, Array(len=8, data='deadline')
}

function onSuccess() {
    require block.timestamp >= deadline
    require msg.sender == address(stor1.length)
    require not ret
    require block.timestamp >= deadline
    require msg.sender == address(stor1.length)
    emit 0x8d2f010d: msg.sender, eth.balance(this.address), 0
    call address(stor1.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    ret = 1
    return 1
}

function getRecord(address arg1, uint256 arg2) {
    idx = 0
    while idx < sub_be7a0f61.length:
        mem[0] = 10
        if address(sub_be7a0f61[idx]) != arg1:
            idx = idx + 1
            continue 
        require arg2 < records[address(arg1)].field_0
        require arg2 < records[address(arg1)].field_0
        return address(arg1), records[address(arg1)][arg2].field_0, records[address(arg1)][arg2].field_256
    return address(arg1), 0, 0
}

function getBasicInfo() {
    mem[160] = uint256(symbol.field_0)
    idx = 160
    s = 0
    while symbol.length + 128 > idx:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=symbol.length, data=mem[160 len symbol.length]), 
           address(stor1.length),
           fundingGoal,
           amountRaised,
           deadline,
           sub_97b10f2e,
           sub_345556c1,
           starttime
}

function sub_d7cc5c16(?) payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp >= deadline
    emit MyLog(Array(len=15, data='[bbex onFailed]'));
    require msg.sender == address(stor1.length)
    require not ret
    emit 0x8d2f010d: 0, 11, 0
    idx = 0
    while idx < sub_be7a0f61.length:
        mem[32] = 9
        s = 0
        t = 0
        while s < records[address(stor10[idx])].field_0:
            mem[0] = sha3(address(sub_be7a0f61[idx]), 9)
            s = s + 1
            t = t + records[address(stor10[idx])][s].field_0
            continue 
        require idx < sub_be7a0f61.length
        call address(sub_be7a0f61[idx]) with:
           value t * records[address(stor10[idx])].field_0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_be7a0f61.length
        mem[0] = 10
        mem[mem[64]] = address(sub_be7a0f61[idx])
        mem[mem[64] + 32] = t * records[address(stor10[idx])].field_0
        mem[mem[64] + 64] = 0
        emit 0x8d2f010d: address(sub_be7a0f61[idx]), t * records[address(stor10[idx])].field_0, 0
        idx = idx + 1
        continue 
    ret = 2
    return 1
}

function sub_02fe2b41(?) {
    idx = 0
    s = 0
    while idx < records[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 9)
        idx = idx + 1
        s = s + records[address(arg1)][idx].field_0
        continue 
    return (s * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0 * records[address(arg1)].field_0)
}

function _fallback() payable {
    require block.timestamp > starttime
    require block.timestamp < deadline
    require msg.value >= sub_345556c1
    if sub_97b10f2e > 0:
        require msg.value <= sub_97b10f2e
    require amountRaised + msg.value <= fundingGoal
    amountRaised += msg.value
    idx = 0
    while idx < sub_be7a0f61.length:
        mem[0] = 10
        if address(sub_be7a0f61[idx]) != msg.sender:
            idx = idx + 1
            continue 
        records[address(msg.sender)].field_0++
        if not records[address(msg.sender)].field_0 <= records[address(msg.sender)].field_0 + 1:
            idx = sha3(sha3(address(msg.sender), 9)) + (2 * records[address(msg.sender)].field_0 + 1)
            while sha3(sha3(address(msg.sender), 9)) + (2 * records[address(msg.sender)].field_0) > idx:
                stor[idx] = 0
                uint256(stor1[idx]) = 0
                idx = idx + 2
                continue 
        records[address(msg.sender)][records[address(msg.sender)].field_0].field_0 = msg.value
        records[address(msg.sender)][records[address(msg.sender)].field_0].field_256 = block.timestamp
        emit 0x80515402: block.timestamp, starttime, 1, Array(len=9, data='starttime')
        if block.timestamp <= starttime:
            emit 0x80515402: block.timestamp, starttime, 0, 128, 9, 'starttime'
        else:
            emit 0x80515402: block.timestamp, starttime, 1, Array(len=9, data='starttime')
        if block.timestamp <= deadline:
            emit 0x80515402: block.timestamp, deadline, 0, 128, 8, 'deadline'
        else:
            emit 0x80515402: block.timestamp, deadline, 1, Array(len=8, data='deadline')
        emit 0x8d2f010d: msg.sender, msg.value, 1
    sub_be7a0f61.length++
    if not sub_be7a0f61.length <= sub_be7a0f61.length + 1:
        idx = sub_be7a0f61.length + 1
        while sub_be7a0f61.length > idx:
            uint256(sub_be7a0f61[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_be7a0f61[sub_be7a0f61.length]) = msg.sender
    records[address(msg.sender)].field_0++
    if not records[address(msg.sender)].field_0 <= records[address(msg.sender)].field_0 + 1:
        idx = 2 * records[address(msg.sender)].field_0 + 1
        while 2 * records[address(msg.sender)].field_0 > idx:
            records[address(msg.sender)][idx].field_0 = 0
            records[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    records[address(msg.sender)][records[address(msg.sender)].field_0].field_0 = msg.value
    records[address(msg.sender)][records[address(msg.sender)].field_0].field_256 = block.timestamp
    emit 0x80515402: block.timestamp, starttime, 1, Array(len=9, data='starttime')
    if block.timestamp <= starttime:
        emit 0x80515402: block.timestamp, starttime, 0, 128, 9, 'starttime'
    else:
        emit 0x80515402: block.timestamp, starttime, 1, Array(len=9, data='starttime')
    if block.timestamp <= deadline:
        emit 0x80515402: block.timestamp, deadline, 0, 128, 8, 'deadline'
    else:
        emit 0x80515402: block.timestamp, deadline, 1, Array(len=8, data='deadline')
    emit 0x8d2f010d: msg.sender, msg.value, 1
}



}
