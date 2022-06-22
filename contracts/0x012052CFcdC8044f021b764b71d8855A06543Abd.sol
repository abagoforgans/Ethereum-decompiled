contract main {




// =====================  Runtime code  =====================


address owner;
address leadAddress;
uint256 stor1;
address sub_258a0af8Address;
address sub_ebc955beAddress;
uint256 sub_5b35d057;
uint256 stor5; offset 1
uint256 totalStake;
uint256 day;
uint256 roundId;
uint256 roundEndTime;
uint256 sub_378bb68d;
uint256 sub_d50caed1;
uint256 sub_b6649ecd;
array of uint256 sub_1f10788a;
array of uint256 name;
mapping of uint256 sub_dfd0cfa4;
mapping of uint256 stor15;
mapping of uint256 sub_e13f48da;
mapping of struct sub_67b9b003;

function sub_1f10788a(?) {
    return sub_1f10788a[arg1][0 len sub_1f10788a[arg1].length]
}

function sub_258a0af8(?) {
    return sub_258a0af8Address
}

function sub_378bb68d(?) {
    return sub_378bb68d
}

function leadAddress() {
    return address(leadAddress)
}

function getMessage(address arg1) {
    return sub_1f10788a[address(arg1)][0 len sub_1f10788a[address(arg1)].length]
}

function sub_5b35d057(?) {
    return sub_5b35d057
}

function getName(address arg1) {
    return name[address(arg1)][0 len name[address(arg1)].length]
}

function sub_669f702c(?) {
    return name[arg1][0 len name[arg1].length]
}

function sub_67b9b003(?) {
    require calldata.size - 4 >= 96
    return sub_67b9b003[arg1][arg2][address(arg3)].field_0
}

function sub_73c0d37a(?) {
    require calldata.size - 4 >= 64
    return sub_67b9b003[arg1][arg2].field_256, sub_67b9b003[arg1][arg2].field_512
}

function day() {
    return day
}

function totalStake() {
    return totalStake
}

function roundId() {
    return roundId
}

function owner() {
    return owner
}

function sub_b6649ecd(?) {
    return sub_b6649ecd
}

function sub_d50caed1(?) {
    return sub_d50caed1
}

function sub_dfd0cfa4(?) {
    require calldata.size - 4 >= 32
    return sub_dfd0cfa4[arg1]
}

function sub_e13f48da(?) {
    require calldata.size - 4 >= 32
    return sub_e13f48da[arg1]
}

function roundEndTime() {
    return roundEndTime
}

function sub_ebc955be(?) {
    return sub_ebc955beAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_f365ab7a(?) {
    return (sub_dfd0cfa4[stor7] + stor5 - (totalStake / 10))
}

function sub_76feabd1(?) {
    require block.timestamp <= sub_378bb68d
    return (sub_378bb68d - block.timestamp)
}

function returnTimeLeft() {
    require block.timestamp <= roundEndTime
    return (roundEndTime - block.timestamp)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWithdrawalAndReinvestmentContracts(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_ebc955beAddress = arg1
    sub_258a0af8Address = arg2
}

function sub_6f81598b(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx <= day:
        mem[0] = arg1
        mem[32] = sha3(idx, sha3(roundId, 17))
        idx = idx + 1
        continue 
    return 0
}

function addName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if 1 > arg1.length:
        revert with 0, 'Too short'
    if 64 < arg1.length:
        revert with 0, 'Too long'
    name[msg.sender][] = Array(len=arg1.length, data=arg1[all])
}

function addMessage(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if 1 > arg1.length:
        revert with 0, 'Too short'
    if 64 < arg1.length:
        revert with 0, 'Too long'
    sub_1f10788a[msg.sender][] = Array(len=arg1.length, data=arg1[all])
}

function sub_73b794c1(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < day:
        mem[0] = arg1
        mem[32] = sha3(idx, sha3(roundId, 17))
        if not sub_67b9b003[stor7][idx][address(arg1)].field_0:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(roundId, 17)
        require sub_67b9b003[stor7][idx].field_512 * sub_67b9b003[stor7][idx][address(arg1)].field_0 / sub_67b9b003[stor7][idx][address(arg1)].field_0 == sub_67b9b003[stor7][idx].field_512
        require sub_67b9b003[stor7][idx].field_256
        idx = idx + 1
        continue 
    return 0
}

function sub_216ca85c(?) {
    require calldata.size - 4 >= 32
    idx = 1
    while idx < roundId:
        mem[0] = idx
        mem[32] = 15
        s = 0
        while s < stor15[idx]:
            mem[0] = arg1
            mem[32] = sha3(s, sha3(idx, 17))
            if not sub_67b9b003[idx][s][address(arg1)].field_0:
                s = s + 1
                continue 
            mem[0] = s
            mem[32] = sha3(idx, 17)
            require sub_67b9b003[idx][s].field_512 * sub_67b9b003[idx][s][address(arg1)].field_0 / sub_67b9b003[idx][s][address(arg1)].field_0 == sub_67b9b003[idx][s].field_512
            require sub_67b9b003[idx][s].field_256
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    return 0
}

function sub_4eff3b02(?) {
    require calldata.size - 4 >= 32
    idx = 1
    while idx < roundId:
        mem[0] = idx
        mem[32] = 15
        s = 0
        while s < stor15[idx]:
            mem[0] = arg1
            mem[32] = sha3(s, sha3(idx, 17))
            if not sub_67b9b003[idx][s][address(arg1)].field_0:
                s = s + 1
                continue 
            mem[0] = s
            mem[32] = sha3(idx, 17)
            require sub_67b9b003[idx][s].field_512 * sub_67b9b003[idx][s][address(arg1)].field_0 / sub_67b9b003[idx][s][address(arg1)].field_0 == sub_67b9b003[idx][s].field_512
            require sub_67b9b003[idx][s].field_256
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < day:
        mem[0] = arg1
        mem[32] = sha3(idx, sha3(roundId, 17))
        if not sub_67b9b003[stor7][idx][address(arg1)].field_0:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(roundId, 17)
        require sub_67b9b003[stor7][idx].field_512 * sub_67b9b003[stor7][idx][address(arg1)].field_0 / sub_67b9b003[stor7][idx][address(arg1)].field_0 == sub_67b9b003[stor7][idx].field_512
        require sub_67b9b003[stor7][idx].field_256
        idx = idx + 1
        continue 
    return 0
}

function withdrawDivsWithContract(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ebc955beAddress
    idx = 1
    while idx < roundId:
        mem[0] = idx
        mem[32] = 15
        s = 0
        while s < stor15[idx]:
            mem[0] = arg1
            mem[32] = sha3(s, sha3(idx, 17))
            if not sub_67b9b003[idx][s][address(arg1)].field_0:
                s = s + 1
                continue 
            mem[0] = s
            mem[32] = sha3(idx, 17)
            require sub_67b9b003[idx][s].field_512 * sub_67b9b003[idx][s][address(arg1)].field_0 / sub_67b9b003[idx][s][address(arg1)].field_0 == sub_67b9b003[idx][s].field_512
            require sub_67b9b003[idx][s].field_256
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < day:
        mem[0] = arg1
        mem[32] = sha3(idx, sha3(roundId, 17))
        if not sub_67b9b003[stor7][idx][address(arg1)].field_0:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(roundId, 17)
        require sub_67b9b003[stor7][idx].field_512 * sub_67b9b003[stor7][idx][address(arg1)].field_0 / sub_67b9b003[stor7][idx][address(arg1)].field_0 == sub_67b9b003[stor7][idx].field_512
        require sub_67b9b003[stor7][idx].field_256
        idx = idx + 1
        continue 
    require sub_e13f48da[address(arg1)] <= 0
    sub_e13f48da[address(arg1)] = 0
    require -sub_e13f48da[address(arg1)] >= 0
    call arg1 with:
       value -sub_e13f48da[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe06967e7: address(arg1), -sub_e13f48da[address(arg1)]
}

function withdrawDivs(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe596f75206e656564206174206c6561737420302e30312045544820696e206469766964656e6473,
                    mem[204 len 24]
    idx = 1
    while idx < roundId:
        mem[0] = idx
        mem[32] = 15
        s = 0
        while s < stor15[idx]:
            mem[0] = msg.sender
            mem[32] = sha3(s, sha3(idx, 17))
            if not sub_67b9b003[idx][s][address(msg.sender)].field_0:
                s = s + 1
                continue 
            mem[0] = s
            mem[32] = sha3(idx, 17)
            require sub_67b9b003[idx][s].field_512 * sub_67b9b003[idx][s][address(msg.sender)].field_0 / sub_67b9b003[idx][s][address(msg.sender)].field_0 == sub_67b9b003[idx][s].field_512
            require sub_67b9b003[idx][s].field_256
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < day:
        mem[0] = msg.sender
        mem[32] = sha3(idx, sha3(roundId, 17))
        if not sub_67b9b003[stor7][idx][address(msg.sender)].field_0:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(roundId, 17)
        require sub_67b9b003[stor7][idx].field_512 * sub_67b9b003[stor7][idx][address(msg.sender)].field_0 / sub_67b9b003[stor7][idx][address(msg.sender)].field_0 == sub_67b9b003[stor7][idx].field_512
        require sub_67b9b003[stor7][idx].field_256
        idx = idx + 1
        continue 
    sub_e13f48da[msg.sender] += arg1
    require arg1 + sub_e13f48da[msg.sender] <= 0
    require -arg1 - sub_e13f48da[msg.sender] >= 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe06967e7: msg.sender, arg1
}

function _fallback() payable {
    if msg.value < 10^16:
        revert with 0, '0.01 ETH minimum.'
    if msg.value >= 1000 * 10^18:
        revert with 0, '0.01 ETH minimum.'
    if block.timestamp > roundEndTime:
        sub_67b9b003[stor7][stor6].field_256 = totalStake
        sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
        stor15[stor7] = day
        sub_dfd0cfa4[stor7 + 1] = totalStake / 10
        call address(leadAddress) with:
           value sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xe06967e7: address(leadAddress), sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1]
        roundId++
        roundEndTime = block.timestamp + sub_b6649ecd
        sub_378bb68d = block.timestamp
        day = 0
        sub_5b35d057 = 1100
        totalStake = 10 * 10^6
    if not msg.value:
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        if 0 >= sub_d50caed1:
            roundEndTime += sub_d50caed1
        if block.timestamp > sub_378bb68d:
            sub_67b9b003[stor7][stor6].field_256 = totalStake
            sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
            if 1000 < sub_5b35d057:
                sub_5b35d057--
            sub_378bb68d = block.timestamp + sub_d50caed1
            day++
        emit 0x2ee8f19d: msg.sender, 0
    else:
        require sub_5b35d057 * msg.value / msg.value == sub_5b35d057
        sub_67b9b003[stor7][stor6][msg.sender].field_0 += sub_5b35d057 * msg.value / 1000
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        totalStake += sub_5b35d057 * msg.value / 1000
        if sub_5b35d057 * msg.value / 1000 / 10^12 >= sub_d50caed1:
            roundEndTime += sub_d50caed1
        else:
            roundEndTime += sub_5b35d057 * msg.value / 1000 / 10^12
        if block.timestamp > sub_378bb68d:
            sub_67b9b003[stor7][stor6].field_256 = totalStake
            sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
            if 1000 < sub_5b35d057:
                sub_5b35d057--
            sub_378bb68d = block.timestamp + sub_d50caed1
            day++
        emit 0x2ee8f19d: msg.sender, sub_5b35d057 * msg.value / 1000
}

function sub_783f7de0(?) payable {
    require calldata.size - 4 >= 32
    if msg.value < 10^16:
        revert with 0, '0.01 ETH minimum.'
    if arg1:
        if arg1 != msg.sender:
            sub_67b9b003[stor7][stor6][address(arg1)].field_0 += msg.value / 50
        else:
            sub_67b9b003[stor7][stor6][0x93d43eefcfbe8f9e479e172ee5d92dddd2600e3b].field_0 += msg.value / 50
    if block.timestamp > roundEndTime:
        sub_67b9b003[stor7][stor6].field_256 = totalStake
        sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
        stor15[stor7] = day
        sub_dfd0cfa4[stor7 + 1] = totalStake / 10
        call address(leadAddress) with:
           value sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xe06967e7: address(leadAddress), sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1]
        roundId++
        roundEndTime = block.timestamp + sub_b6649ecd
        sub_378bb68d = block.timestamp
        day = 0
        sub_5b35d057 = 1100
        totalStake = 10 * 10^6
    if not msg.value:
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        if 0 >= sub_d50caed1:
            roundEndTime += sub_d50caed1
        if block.timestamp > sub_378bb68d:
            sub_67b9b003[stor7][stor6].field_256 = totalStake
            sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
            if 1000 < sub_5b35d057:
                sub_5b35d057--
            sub_378bb68d = block.timestamp + sub_d50caed1
            day++
        emit 0x2ee8f19d: msg.sender, 0
    else:
        require sub_5b35d057 * msg.value / msg.value == sub_5b35d057
        sub_67b9b003[stor7][stor6][msg.sender].field_0 += sub_5b35d057 * msg.value / 1000
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        totalStake += sub_5b35d057 * msg.value / 1000
        if sub_5b35d057 * msg.value / 1000 / 10^12 >= sub_d50caed1:
            roundEndTime += sub_d50caed1
        else:
            roundEndTime += sub_5b35d057 * msg.value / 1000 / 10^12
        if block.timestamp > sub_378bb68d:
            sub_67b9b003[stor7][stor6].field_256 = totalStake
            sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
            if 1000 < sub_5b35d057:
                sub_5b35d057--
            sub_378bb68d = block.timestamp + sub_d50caed1
            day++
        emit 0x2ee8f19d: msg.sender, sub_5b35d057 * msg.value / 1000
}

function reinvestDivs(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe596f75206e656564206174206c6561737420302e30312045544820696e206469766964656e6473,
                    mem[204 len 24]
    idx = 1
    while idx < roundId:
        mem[0] = idx
        mem[32] = 15
        s = 0
        while s < stor15[idx]:
            mem[0] = msg.sender
            mem[32] = sha3(s, sha3(idx, 17))
            if not sub_67b9b003[idx][s][address(msg.sender)].field_0:
                s = s + 1
                continue 
            mem[0] = s
            mem[32] = sha3(idx, 17)
            require sub_67b9b003[idx][s].field_512 * sub_67b9b003[idx][s][address(msg.sender)].field_0 / sub_67b9b003[idx][s][address(msg.sender)].field_0 == sub_67b9b003[idx][s].field_512
            require sub_67b9b003[idx][s].field_256
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < day:
        mem[0] = msg.sender
        mem[32] = sha3(idx, sha3(roundId, 17))
        if not sub_67b9b003[stor7][idx][address(msg.sender)].field_0:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(roundId, 17)
        require sub_67b9b003[stor7][idx].field_512 * sub_67b9b003[stor7][idx][address(msg.sender)].field_0 / sub_67b9b003[stor7][idx][address(msg.sender)].field_0 == sub_67b9b003[stor7][idx].field_512
        require sub_67b9b003[stor7][idx].field_256
        idx = idx + 1
        continue 
    sub_e13f48da[msg.sender] += arg1
    require arg1 + sub_e13f48da[msg.sender] <= 0
    require -arg1 - sub_e13f48da[msg.sender] >= 0
    if block.timestamp > roundEndTime:
        sub_67b9b003[stor7][stor6].field_256 = totalStake
        sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
        stor15[stor7] = day
        sub_dfd0cfa4[stor7 + 1] = totalStake / 10
        call address(leadAddress) with:
           value sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xe06967e7: address(leadAddress), sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1]
        roundId++
        roundEndTime = block.timestamp + sub_b6649ecd
        sub_378bb68d = block.timestamp
        day = 0
        sub_5b35d057 = 1100
        totalStake = 10 * 10^6
    sub_67b9b003[stor7][stor6][msg.sender].field_0 += arg1
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    totalStake += arg1
    if arg1 / 10^12 >= sub_d50caed1:
        roundEndTime += sub_d50caed1
    else:
        roundEndTime += arg1 / 10^12
    if block.timestamp > sub_378bb68d:
        sub_67b9b003[stor7][stor6].field_256 = totalStake
        sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
        if 1000 < sub_5b35d057:
            sub_5b35d057--
        sub_378bb68d = block.timestamp + sub_d50caed1
        day++
    emit 0x2ee8f19d: msg.sender, arg1
}

function reinvestDivsWithContract(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_258a0af8Address
    idx = 1
    while idx < roundId:
        mem[0] = idx
        mem[32] = 15
        s = 0
        while s < stor15[idx]:
            mem[0] = arg1
            mem[32] = sha3(s, sha3(idx, 17))
            if not sub_67b9b003[idx][s][address(arg1)].field_0:
                s = s + 1
                continue 
            mem[0] = s
            mem[32] = sha3(idx, 17)
            require sub_67b9b003[idx][s].field_512 * sub_67b9b003[idx][s][address(arg1)].field_0 / sub_67b9b003[idx][s][address(arg1)].field_0 == sub_67b9b003[idx][s].field_512
            require sub_67b9b003[idx][s].field_256
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < day:
        mem[0] = arg1
        mem[32] = sha3(idx, sha3(roundId, 17))
        if not sub_67b9b003[stor7][idx][address(arg1)].field_0:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(roundId, 17)
        require sub_67b9b003[stor7][idx].field_512 * sub_67b9b003[stor7][idx][address(arg1)].field_0 / sub_67b9b003[stor7][idx][address(arg1)].field_0 == sub_67b9b003[stor7][idx].field_512
        require sub_67b9b003[stor7][idx].field_256
        idx = idx + 1
        continue 
    require sub_e13f48da[address(arg1)] <= 0
    if -sub_e13f48da[address(arg1)] < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe596f75206e656564206174206c6561737420302e30312045544820696e206469766964656e6473,
                    mem[204 len 24]
    if block.timestamp > roundEndTime:
        sub_67b9b003[stor7][stor6].field_256 = totalStake
        sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
        stor15[stor7] = day
        sub_dfd0cfa4[stor7 + 1] = totalStake / 10
        call address(leadAddress) with:
           value sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xe06967e7: address(leadAddress), sub_dfd0cfa4[stor7] + sub_67b9b003[stor7][stor6].field_257 - sub_dfd0cfa4[stor7 + 1]
        roundId++
        roundEndTime = block.timestamp + sub_b6649ecd
        sub_378bb68d = block.timestamp
        day = 0
        sub_5b35d057 = 1100
        totalStake = 10 * 10^6
    sub_67b9b003[stor7][stor6][address(arg1)].field_0 -= sub_e13f48da[address(arg1)]
    address(leadAddress) = arg1
    totalStake -= sub_e13f48da[address(arg1)]
    if -sub_e13f48da[address(arg1)] / 10^12 >= sub_d50caed1:
        roundEndTime += sub_d50caed1
    else:
        roundEndTime += -sub_e13f48da[address(arg1)] / 10^12
    if block.timestamp > sub_378bb68d:
        sub_67b9b003[stor7][stor6].field_256 = totalStake
        sub_67b9b003[stor7][stor6].field_512 = totalStake - sub_67b9b003[stor7][stor6 - 1].field_256
        if 1000 < sub_5b35d057:
            sub_5b35d057--
        sub_378bb68d = block.timestamp + sub_d50caed1
        day++
    emit 0x2ee8f19d: msg.sender, -sub_e13f48da[address(arg1)]
}



}
