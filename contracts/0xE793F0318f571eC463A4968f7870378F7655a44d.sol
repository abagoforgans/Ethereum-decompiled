contract main {




// =====================  Runtime code  =====================


#
#  - upgrade(uint256 arg1)
#  - getActiveTasks()
#
const haveCommonPrefixUntilZero(bytes32 arg1, bytes32 arg2) = 1

const MAX_PERCENT = 10^6


address owner;
uint8 stor1;
address stor1;
address stor1; offset 8
address stor2;
uint256 stor2;
address ecAddress;
uint256 nextTaskId;
uint256 totalReward;
uint256 serviceFee;
uint256 referrerFee;
array of struct allTasks;
array of uint256 taskIds;
array of uint256 completedTaskIds;
mapping of uint256 tasks;
mapping of uint256 indexOfActiveTaskId;
mapping of uint256 indexOfCompletedTaskId;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020073;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020074;

function indexOfActiveTaskId(uint256 arg1) {
    return indexOfActiveTaskId[arg1]
}

function taskIds(uint256 arg1) {
    require arg1 < taskIds.length
    return taskIds[arg1]
}

function allTasks(uint256 arg1) {
    require arg1 < allTasks.length
    return allTasks[arg1].field_0, 
           allTasks[arg1].field_256,
           allTasks[arg1].field_512,
           allTasks[arg1].field_768,
           allTasks[arg1].field_1024,
           allTasks[arg1].field_1280,
           allTasks[arg1].field_1536,
           allTasks[arg1].field_1792
}

function completedTasks(uint256 arg1) {
    require arg1 < completedTaskIds.length
    require 1 <= tasks[stor10[arg1]]
    require tasks[stor10[arg1]] - 1 < allTasks.length
    return allTasks[stor11[stor10[arg1]] - 1].field_0, 
           allTasks[stor11[stor10[arg1]] - 1].field_256,
           allTasks[stor11[stor10[arg1]] - 1].field_512,
           allTasks[stor11[stor10[arg1]] - 1].field_768,
           allTasks[stor11[stor10[arg1]] - 1].field_1024,
           allTasks[stor11[stor10[arg1]] - 1].field_1280,
           allTasks[stor11[stor10[arg1]] - 1].field_1536,
           allTasks[stor11[stor10[arg1]] - 1].field_1792
}

function completedTaskIds(uint256 arg1) {
    require arg1 < completedTaskIds.length
    return completedTaskIds[arg1]
}

function referrerFee() {
    return referrerFee
}

function totalReward() {
    return totalReward
}

function allTasksCount() {
    return allTasks.length
}

function completedTasksCount() {
    return completedTaskIds.length
}

function serviceFee() {
    return serviceFee
}

function tasks(uint256 arg1) {
    require arg1 < taskIds.length
    require 1 <= tasks[stor9[arg1]]
    require tasks[stor9[arg1]] - 1 < allTasks.length
    return allTasks[stor11[stor9[arg1]] - 1].field_0, 
           allTasks[stor11[stor9[arg1]] - 1].field_256,
           allTasks[stor11[stor9[arg1]] - 1].field_512,
           allTasks[stor11[stor9[arg1]] - 1].field_768,
           allTasks[stor11[stor9[arg1]] - 1].field_1024,
           allTasks[stor11[stor9[arg1]] - 1].field_1280,
           allTasks[stor11[stor9[arg1]] - 1].field_1536,
           allTasks[stor11[stor9[arg1]] - 1].field_1792
}

function owner() {
    return owner
}

function indexOfCompletedTaskId(uint256 arg1) {
    return indexOfCompletedTaskId[arg1]
}

function tasksCount() {
    return taskIds.length
}

function indexOfTaskId(uint256 arg1) {
    return tasks[arg1]
}

function ec() {
    return ecAddress
}

function nextTaskId() {
    return nextTaskId
}

function upgradableState() {
    return bool(uint8(stor1.field_0)), address(stor1.field_0), address(stor2)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function _fallback() payable {
    require msg.sender == address(stor1.field_8)
    require eth.balance(this.address) >= totalReward
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isValidPublicKey(uint256 arg1, uint256 arg2) {
    return (mulmod(arg2, arg2, -4294968273) == mulmod(mulmod(arg1, mulmod(arg1, arg1, -4294968273), -4294968273), 7, -4294968273))
}

function bytesToBytes32(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function startUpgrade() {
    require tx.origin == owner
    require owner != msg.sender
    require not uint8(stor1.field_0)
    require not address(stor2)
    uint8(stor1.field_0) = 1
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    emit Upgrading(msg.sender);
}

function setServiceFee(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 20000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setServiceFee: value should be less than 20000, which means 2% of miner reward'
    serviceFee = arg1
}

function setReferrerFee(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setReferrerFee: value should be less than 500000, which means 50% of service fee'
    referrerFee = arg1
}

function payForTask(uint256 arg1) payable {
    require not uint8(stor1.field_0)
    require not address(stor2)
    if msg.value > 0:
        require 1 <= tasks[arg1]
        require tasks[arg1] - 1 < allTasks.length
        if allTasks[stor11[arg1] - 1].field_1792 != 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'payForTask: you can't pay for the solved task'
        require msg.value + allTasks[stor11[arg1] - 1].field_768 >= allTasks[stor11[arg1] - 1].field_768
        allTasks[stor11[arg1] - 1].field_768 += msg.value
        require msg.value + totalReward >= totalReward
        totalReward += msg.value
        emit TaskPayed(msg.value, arg1);
}

function endUpgrade() {
    require tx.origin == owner
    require uint8(stor1.field_0)
    uint8(stor1.field_0) = 0
    if owner != msg.sender:
        require msg.sender == address(stor2)
        emit Upgraded(address(stor2));
    else:
        if address(stor1.field_8):
            require ext_code.size(address(stor1.field_8))
            call address(stor1.field_8).0x257e1f8f with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Initialized(address(stor1.field_8));
    if address(stor2):
        call address(stor2) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function claim(address arg1, address arg2) {
    require msg.sender == owner
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) - totalReward wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function createBtcAddressHex(uint256 arg1, uint256 arg2) {
    hash = sha256hash(0, arg1, arg2 / 256 >> 256, uint8(arg2)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = ripemd160hash(hash) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    hash = sha256hash(Mask(168, 0, 0, address(hash), 0)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = sha256hash(hash) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[406 len 1024] = code.data[14934 len 1024]
    idx = 0
    while idx < 7:
        require idx < 32
        mem[idx + 406 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    mem[413 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
    idx = 0
    while idx < 20:
        require idx + 8 < 32
        mem[idx + 414 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return mem[406 len 28], 0, 0, 0, 0
}

function isValidBicoinAddressPrefix(bytes arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 5:
        return 0
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3100000000000000000000000000000000000000000000000000000000000000:
        require 0 < arg1.length
        if Mask(8, 248, mem[128]) != '3':
            return 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) != '0':
            if Mask(8, 248, mem[idx + 128]) != 'O':
                if Mask(8, 248, mem[idx + 128]) != 'I':
                    if Mask(8, 248, mem[idx + 128]) != 'l':
                        if Mask(8, 248, mem[idx + 128]) >= 0x3100000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                s = Mask(8, 248, mem[idx + 128])
                                idx = idx + 1
                                continue 
                        if Mask(8, 248, mem[idx + 128]) >= 'a':
                            if Mask(8, 248, mem[idx + 128]) <= 'z':
                                s = Mask(8, 248, mem[idx + 128])
                                idx = idx + 1
                                continue 
                        if Mask(8, 248, mem[idx + 128]) >= 'A':
                            if Mask(8, 248, mem[idx + 128]) <= 'Z':
                                s = Mask(8, 248, mem[idx + 128])
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    return 1
}

function createBitcoinAddressPrefixTask(bytes arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 384
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = 0
    mem[ceil32(arg1.length) + 320] = 0
    mem[ceil32(arg1.length) + 352] = 0
    require not uint8(stor1.field_0)
    require not address(stor2)
    require 5 < arg1.length
    require 0 < arg1.length
    require 0x3100000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128])
    require 1 < arg1.length
    require Mask(8, 248, mem[129]) != 0x3100000000000000000000000000000000000000000000000000000000000000
    require arg1.length >= 5
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3100000000000000000000000000000000000000000000000000000000000000:
        require 0 < arg1.length
        require '3' == Mask(8, 248, mem[128])
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require Mask(8, 248, mem[idx + 128]) != '0'
        require Mask(8, 248, mem[idx + 128]) != 'O'
        require Mask(8, 248, mem[idx + 128]) != 'I'
        require Mask(8, 248, mem[idx + 128]) != 'l'
        if Mask(8, 248, mem[idx + 128]) < 0x3100000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) < 'a':
                require Mask(8, 248, mem[idx + 128]) >= 'A'
                require Mask(8, 248, mem[idx + 128]) <= 'Z'
            else:
                if Mask(8, 248, mem[idx + 128]) > 'z':
                    require Mask(8, 248, mem[idx + 128]) >= 'A'
                    require Mask(8, 248, mem[idx + 128]) <= 'Z'
        else:
            if Mask(8, 248, mem[idx + 128]) > '9':
                if Mask(8, 248, mem[idx + 128]) < 'a':
                    require Mask(8, 248, mem[idx + 128]) >= 'A'
                    require Mask(8, 248, mem[idx + 128]) <= 'Z'
                else:
                    if Mask(8, 248, mem[idx + 128]) > 'z':
                        require Mask(8, 248, mem[idx + 128]) >= 'A'
                        require Mask(8, 248, mem[idx + 128]) <= 'Z'
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        continue 
    require mulmod(arg3, arg3, -4294968273) == mulmod(mulmod(arg2, mulmod(arg2, arg2, -4294968273), -4294968273), 7, -4294968273)
    nextTaskId++
    allTasks.length++
    allTasks[allTasks.length].field_0 = nextTaskId
    storF3F7[stor8.length] = msg.sender
    storF3F7[stor8.length] = arg4
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = mem[128]
    storF3F7[stor8.length] = arg2
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = 0
    tasks[stor4] = allTasks.length + 1
    taskIds.length++
    taskIds[taskIds.length] = nextTaskId
    indexOfActiveTaskId[stor4] = taskIds.length + 1
    emit TaskCreated(nextTaskId);
    require not uint8(stor1.field_0)
    require not address(stor2)
    if msg.value > 0:
        require 1 <= tasks[stor4]
        require tasks[stor4] - 1 < allTasks.length
        if allTasks[stor11[stor4] - 1].field_1792 != 0:
            revert with 0, 'payForTask: you can't pay for the solved task'
        require msg.value + allTasks[stor11[stor4] - 1].field_768 >= allTasks[stor11[stor4] - 1].field_768
        allTasks[stor11[stor4] - 1].field_768 += msg.value
        require msg.value + totalReward >= totalReward
        totalReward += msg.value
        emit TaskPayed(msg.value, nextTaskId);
}

function toBase58Checked(uint256 arg1, bytes1 arg2) {
    mem[96] = 58
    mem[128] = '123456789ABCDEFGHJKLMNPQRSTUVWXY'
    mem[160] = 'Zabcdefghijkmnopqrstuvwxyz'
    mem[192] = 32
    mem[64] = 256
    mem[224 len 1024] = code.data[14934 len 1024]
    s = 0
    t = 0
    t = 0
    idx = arg1
    while idx >= 58:
        if uint8(t) != 32:
            require idx % 58 < mem[96]
            require uint8(t) < mem[192]
            mem[uint8(t) + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) - 256
            s = s + 1
            t = idx % 58
            t = t + 1
            idx = idx / 58
            continue 
        u = 0
        while u < uint8(t - 1):
            require u + 1 < mem[192]
            require u < mem[192]
            mem[u + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 225, ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 225, ('var', 3)), 32))), 0) - 256
            u = u + 1
            continue 
        require idx % 58 < mem[96]
        require uint8(t - 1) < mem[192]
        mem[uint8(t - 1) + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) - 256
        s = s + 1
        t = idx % 58
        t = t
        idx = idx / 58
        continue 
    if uint8(t) != 32:
        require idx % 58 < mem[96]
        require uint8(t) < mem[192]
        mem[uint8(t) + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) - 256
        _30 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_30 + 32 len 1024] = code.data[14934 len 1024]
        require 0 < mem[_30]
        mem[_30 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('param', 'arg2')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('param', 'arg2')), 0) - 256
        idx = 0
        while uint8(idx) < 31:
            require uint8(t - idx) < mem[192]
            require uint8(idx + 1) < mem[_30]
            mem[_30 + uint8(idx + 1) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[mem[64]] = mem[_30 + 32]
    else:
        s = 0
        while s < uint8(t - 1):
            require s + 1 < mem[192]
            require s < mem[192]
            mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 225, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 225, ('var', 1)), 32))), 0) - 256
            s = s + 1
            continue 
        require idx % 58 < mem[96]
        require uint8(t - 1) < mem[192]
        mem[uint8(t - 1) + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mod', ('var', 0), 58)), 32))), 0) - 256
        _60 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_60 + 32 len 1024] = code.data[14934 len 1024]
        require 0 < mem[_60]
        mem[_60 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('param', 'arg2')), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('param', 'arg2')), 0) - 256
        idx = 0
        while uint8(idx) < 31:
            require uint8(t + -idx - 1) < mem[192]
            require uint8(idx + 1) < mem[_60]
            mem[_60 + uint8(idx + 1) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 8, 0, 0, ('add', -1, ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 8, 0, 0, ('add', -1, ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[mem[64]] = mem[_60 + 32]
    return memory
      from mem[64]
       len 32
}

function createBtcAddress(uint256 arg1, uint256 arg2) {
    mem[128] = 0x400000000000000000000000000000000000000000000000000000000000000
    mem[129] = arg1
    mem[161] = arg2
    mem[96] = 65
    hash = sha256hash(0, arg1, arg2 / 256 >> 256, uint8(arg2)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[225] = hash
    mem[193] = 32
    hash = ripemd160hash(hash) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[289] = 0
    mem[290] = address(hash)
    mem[257] = 21
    mem[310 len 0] = None
    hash = sha256hash(Mask(168, 0, 0, address(hash), 0)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[342] = hash
    mem[310] = 32
    hash = sha256hash(hash) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[374] = 32
    mem[406 len 1024] = code.data[14934 len 1024]
    idx = 0
    while idx < 7:
        require idx < 32
        mem[idx + 406 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    mem[413 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
    idx = 0
    while idx < 20:
        require idx + 8 < 32
        mem[idx + 414 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    mem[434 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
    mem[435 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 1), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 1), 0) - 256
    mem[436 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 2), 0) - 256
    mem[437 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 3), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 3), 0) - 256
    mem[438] = 58
    mem[470] = '123456789ABCDEFGHJKLMNPQRSTUVWXY'
    mem[502] = 'Zabcdefghijkmnopqrstuvwxyz'
    mem[534] = 32
    mem[64] = 598
    mem[566 len 1024] = code.data[14934 len 1024]
    s = 0
    t = 0
    t = 0
    idx = mem[406 len 28], 0, 0, 0, 0
    while idx >= 58:
        if uint8(t) != 32:
            require idx % 58 < mem[438]
            require uint8(t) < mem[534]
            mem[uint8(t) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
            s = s + 1
            t = idx % 58
            t = t + 1
            idx = idx / 58
            continue 
        u = 0
        while u < uint8(t - 1):
            require u + 1 < mem[534]
            require u < mem[534]
            mem[u + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 3)), 32))), 0) - 256
            u = u + 1
            continue 
        require idx % 58 < mem[438]
        require uint8(t - 1) < mem[534]
        mem[uint8(t - 1) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
        s = s + 1
        t = idx % 58
        t = t
        idx = idx / 58
        continue 
    if uint8(t) != 32:
        require idx % 58 < mem[438]
        require uint8(t) < mem[534]
        mem[uint8(t) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
        _161 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_161 + 32 len 1024] = code.data[14934 len 1024]
        require 0 < mem[_161]
        mem[_161 + 32 len 8] = Mask(8, -(2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) + 256, 0) << (2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) - 256
        idx = 0
        while uint8(idx) < 31:
            require uint8(t - idx) < mem[534]
            require uint8(idx + 1) < mem[_161]
            mem[_161 + uint8(idx + 1) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[mem[64]] = mem[_161 + 32]
    else:
        s = 0
        while s < uint8(t - 1):
            require s + 1 < mem[534]
            require s < mem[534]
            mem[s + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 1)), 32))), 0) - 256
            s = s + 1
            continue 
        require idx % 58 < mem[438]
        require uint8(t - 1) < mem[534]
        mem[uint8(t - 1) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
        _191 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_191 + 32 len 1024] = code.data[14934 len 1024]
        require 0 < mem[_191]
        mem[_191 + 32 len 8] = Mask(8, -(2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) + 256, 0) << (2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) - 256
        idx = 0
        while uint8(idx) < 31:
            require uint8(t + -idx - 1) < mem[534]
            require uint8(idx + 1) < mem[_191]
            mem[_191 + uint8(idx + 1) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', -1, ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', -1, ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[mem[64]] = mem[_191 + 32]
    return memory
      from mem[64]
       len 32
}

function getCompletedTasks() {
    if not allTasks.length:
        mem[(32 * allTasks.length) + 128] = allTasks.length
        mem[(64 * allTasks.length) + 160] = allTasks.length
        mem[(98 * allTasks.length) + 192] = allTasks.length
        mem[(131 * allTasks.length) + 224] = allTasks.length
        mem[(164 * allTasks.length) + 256] = allTasks.length
        mem[(197 * allTasks.length) + 288] = allTasks.length
        s = 0
        idx = 0
        while idx < completedTaskIds.length:
            mem[32] = 13
            require indexOfCompletedTaskId[stor10[idx]] < allTasks.length
            mem[0] = 8
            require idx < allTasks.length
            require idx < mem[(32 * allTasks.length) + 128]
            require idx < mem[(64 * allTasks.length) + 160]
            require idx < mem[(98 * allTasks.length) + 192]
            require idx < mem[(131 * allTasks.length) + 224]
            require idx < mem[(164 * allTasks.length) + 256]
            require idx < mem[(197 * allTasks.length) + 288]
            mem[(197 * allTasks.length) + (32 * idx) + 320] = allTasks[stor13[stor10[idx]]].field_1792
            mem[(32 * idx) + (164 * allTasks.length) + 288] = allTasks[stor13[stor10[idx]]].field_1536
            mem[(32 * idx) + (131 * allTasks.length) + 256] = allTasks[stor13[stor10[idx]]].field_1280
            mem[(32 * idx) + (98 * allTasks.length) + 224] = allTasks[stor13[stor10[idx]]].field_1024
            mem[(32 * idx) + (64 * allTasks.length) + 192] = allTasks[stor13[stor10[idx]]].field_768
            mem[(32 * idx) + (32 * allTasks.length) + 160] = allTasks[stor13[stor10[idx]]].field_256
            mem[(32 * idx) + 128] = allTasks[stor13[stor10[idx]]].field_0
            s = indexOfCompletedTaskId[stor10[idx]]
            idx = idx + 1
            continue 
        mem[(230 * allTasks.length) + 320] = 224
        mem[(230 * allTasks.length) + 544] = allTasks.length
        mem[(230 * allTasks.length) + 576 len floor32(allTasks.length)] = mem[128 len floor32(allTasks.length)]
        mem[(230 * allTasks.length) + 352] = (32 * allTasks.length) + 256
        mem[(263 * allTasks.length) + 576] = mem[(32 * allTasks.length) + 128]
        mem[(263 * allTasks.length) + 608 len floor32(mem[(32 * allTasks.length) + 128])] = mem[(32 * allTasks.length) + 160 len floor32(mem[(32 * allTasks.length) + 128])]
        mem[(230 * allTasks.length) + 384] = (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 288
        mem[(32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 608] = mem[(64 * allTasks.length) + 160]
        _211 = mem[(64 * allTasks.length) + 160]
        mem[(32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 640 len floor32(mem[(64 * allTasks.length) + 160])] = mem[(64 * allTasks.length) + 192 len floor32(mem[(64 * allTasks.length) + 160])]
        mem[(230 * allTasks.length) + 416] = (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 320
        mem[(32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 640] = mem[(98 * allTasks.length) + 192]
        _245 = mem[(98 * allTasks.length) + 192]
        mem[(32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 672 len floor32(mem[(98 * allTasks.length) + 192])] = mem[(98 * allTasks.length) + 224 len floor32(mem[(98 * allTasks.length) + 192])]
        mem[(230 * allTasks.length) + 448] = (32 * _245) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 352
        mem[(32 * _245) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 672] = mem[(131 * allTasks.length) + 224]
        _273 = mem[(131 * allTasks.length) + 224]
        mem[(32 * _245) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 704 len floor32(mem[(131 * allTasks.length) + 224])] = mem[(131 * allTasks.length) + 256 len floor32(mem[(131 * allTasks.length) + 224])]
        mem[(230 * allTasks.length) + 480] = (32 * _273) + (32 * _245) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 384
        mem[(32 * _273) + (32 * _245) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 704] = mem[(164 * allTasks.length) + 256]
        _295 = mem[(164 * allTasks.length) + 256]
        mem[(32 * _273) + (32 * _245) + (32 * _211) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 736 len floor32(mem[(164 * allTasks.length) + 256])] = mem[(164 * allTasks.length) + 288 len floor32(mem[(164 * allTasks.length) + 256])]
        mem[(230 * allTasks.length) + 512] = (32 * _295) + (32 * _273) + (32 * _245) + (32 * _211) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 416
        mem[(32 * _295) + (32 * _273) + (32 * _245) + (32 * _211) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 736] = mem[(197 * allTasks.length) + 288]
        _311 = mem[(197 * allTasks.length) + 288]
        mem[(32 * _295) + (32 * _273) + (32 * _245) + (32 * _211) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 768 len floor32(mem[(197 * allTasks.length) + 288])] = mem[(197 * allTasks.length) + 320 len floor32(mem[(197 * allTasks.length) + 288])]
        return memory
          from (230 * allTasks.length) + 320
           len (32 * _311) + (32 * _295) + (32 * _273) + (32 * _245) + (32 * _211) + (32 * mem[(32 * allTasks.length) + 128]) + (33 * allTasks.length) + 448
    mem[128 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    mem[(32 * allTasks.length) + 128] = allTasks.length
    mem[(32 * allTasks.length) + 160 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    mem[(64 * allTasks.length) + 160] = allTasks.length
    mem[(64 * allTasks.length) + 192 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    mem[(98 * allTasks.length) + 192] = allTasks.length
    mem[(98 * allTasks.length) + 224 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    mem[(131 * allTasks.length) + 224] = allTasks.length
    mem[(131 * allTasks.length) + 256 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    mem[(164 * allTasks.length) + 256] = allTasks.length
    mem[(164 * allTasks.length) + 288 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    mem[(197 * allTasks.length) + 288] = allTasks.length
    mem[(197 * allTasks.length) + 320 len 32 * allTasks.length] = code.data[14934 len 32 * allTasks.length]
    s = 0
    idx = 0
    while idx < completedTaskIds.length:
        mem[32] = 13
        require indexOfCompletedTaskId[stor10[idx]] < allTasks.length
        mem[0] = 8
        require idx < allTasks.length
        require idx < mem[(32 * allTasks.length) + 128]
        require idx < mem[(64 * allTasks.length) + 160]
        require idx < mem[(98 * allTasks.length) + 192]
        require idx < mem[(131 * allTasks.length) + 224]
        require idx < mem[(164 * allTasks.length) + 256]
        require idx < mem[(197 * allTasks.length) + 288]
        mem[(197 * allTasks.length) + (32 * idx) + 320] = allTasks[stor13[stor10[idx]]].field_1792
        mem[(32 * idx) + (164 * allTasks.length) + 288] = allTasks[stor13[stor10[idx]]].field_1536
        mem[(32 * idx) + (131 * allTasks.length) + 256] = allTasks[stor13[stor10[idx]]].field_1280
        mem[(32 * idx) + (98 * allTasks.length) + 224] = allTasks[stor13[stor10[idx]]].field_1024
        mem[(32 * idx) + (64 * allTasks.length) + 192] = allTasks[stor13[stor10[idx]]].field_768
        mem[(32 * idx) + (32 * allTasks.length) + 160] = allTasks[stor13[stor10[idx]]].field_256
        mem[(32 * idx) + 128] = allTasks[stor13[stor10[idx]]].field_0
        s = indexOfCompletedTaskId[stor10[idx]]
        idx = idx + 1
        continue 
    mem[(230 * allTasks.length) + 320] = 224
    mem[(230 * allTasks.length) + 544] = allTasks.length
    mem[(230 * allTasks.length) + 576 len floor32(allTasks.length)] = mem[128 len floor32(allTasks.length)]
    mem[(230 * allTasks.length) + 352] = (32 * allTasks.length) + 256
    mem[(263 * allTasks.length) + 576] = mem[(32 * allTasks.length) + 128]
    mem[(263 * allTasks.length) + 608 len floor32(mem[(32 * allTasks.length) + 128])] = mem[(32 * allTasks.length) + 160 len floor32(mem[(32 * allTasks.length) + 128])]
    mem[(230 * allTasks.length) + 384] = (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 288
    mem[(32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 608] = mem[(64 * allTasks.length) + 160]
    _214 = mem[(64 * allTasks.length) + 160]
    mem[(32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 640 len floor32(mem[(64 * allTasks.length) + 160])] = mem[(64 * allTasks.length) + 192 len floor32(mem[(64 * allTasks.length) + 160])]
    mem[(230 * allTasks.length) + 416] = (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 320
    mem[(32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 640] = mem[(98 * allTasks.length) + 192]
    _248 = mem[(98 * allTasks.length) + 192]
    mem[(32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 672 len floor32(mem[(98 * allTasks.length) + 192])] = mem[(98 * allTasks.length) + 224 len floor32(mem[(98 * allTasks.length) + 192])]
    mem[(230 * allTasks.length) + 448] = (32 * _248) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 352
    mem[(32 * _248) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 672] = mem[(131 * allTasks.length) + 224]
    _276 = mem[(131 * allTasks.length) + 224]
    mem[(32 * _248) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 704 len floor32(mem[(131 * allTasks.length) + 224])] = mem[(131 * allTasks.length) + 256 len floor32(mem[(131 * allTasks.length) + 224])]
    mem[(230 * allTasks.length) + 480] = (32 * mem[(131 * allTasks.length) + 224]) + (32 * _248) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 384
    mem[(32 * mem[(131 * allTasks.length) + 224]) + (32 * _248) + (32 * mem[(64 * allTasks.length) + 160]) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 704] = mem[(164 * allTasks.length) + 256]
    _298 = mem[(164 * allTasks.length) + 256]
    mem[(32 * _276) + (32 * _248) + (32 * _214) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 736 len floor32(mem[(164 * allTasks.length) + 256])] = mem[(164 * allTasks.length) + 288 len floor32(mem[(164 * allTasks.length) + 256])]
    mem[(230 * allTasks.length) + 512] = (32 * _298) + (32 * _276) + (32 * _248) + (32 * _214) + (32 * mem[(32 * allTasks.length) + 128]) + (32 * allTasks.length) + 416
    mem[(32 * _298) + (32 * _276) + (32 * _248) + (32 * _214) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 736] = mem[(197 * allTasks.length) + 288]
    _314 = mem[(197 * allTasks.length) + 288]
    mem[(32 * _298) + (32 * _276) + (32 * _248) + (32 * _214) + (32 * mem[(32 * allTasks.length) + 128]) + (263 * allTasks.length) + 768 len floor32(mem[(197 * allTasks.length) + 288])] = mem[(197 * allTasks.length) + 320 len floor32(mem[(197 * allTasks.length) + 288])]
    return memory
      from (230 * allTasks.length) + 320
       len (32 * _314) + (32 * _298) + (32 * _276) + (32 * _248) + (32 * _214) + (32 * mem[(32 * allTasks.length) + 128]) + (33 * allTasks.length) + 448
}

function solveTask(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor1.field_0)
    require not address(stor2)
    mem[32] = 11
    require 1 <= tasks[arg1]
    require tasks[arg1] - 1 < allTasks.length
    mem[0] = 8
    if allTasks[stor11[arg1] - 1].field_1792 != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'solveTask: task is already solved'
    if Mask(224, 32, msg.sender) >> 32 != uint128(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'solveTask: this solution does not match miner address'
    require allTasks[stor11[arg1] - 1].field_128 <= 0
    require not allTasks[stor11[arg1] - 1].field_128
    require ext_code.size(ecAddress)
    call ecAddress.publicKeyVerify(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(ecAddress)
    call ecAddress.ecadd(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, allTasks[stor11[arg1] - 1].field_1280, allTasks[stor11[arg1] - 1].field_1536, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[128] = 0x400000000000000000000000000000000000000000000000000000000000000
    mem[129] = ext_call.return_data[0]
    mem[161] = ext_call.return_data[32]
    mem[96] = 65
    hash = sha256hash(ext_call.return_data[0], ext_call.return_data[32 len 31] >> 256, ext_call.return_data[63 len 1]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[225] = hash
    mem[193] = 32
    hash = ripemd160hash(hash) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[289] = 0
    mem[290] = address(hash)
    mem[257] = 21
    mem[310 len 0] = None
    hash = sha256hash(Mask(168, 0, 0, address(hash), 0)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[342] = hash
    mem[310] = 32
    hash = sha256hash(hash) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[374] = 32
    mem[406 len 1024] = code.data[14934 len 1024]
    idx = 0
    while idx < 7:
        require idx < 32
        mem[idx + 406 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    mem[413 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
    idx = 0
    while idx < 20:
        require idx + 8 < 32
        mem[idx + 414 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 160, 0, 93, ('var', 'hash')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    mem[434 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
    mem[435 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 1), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 1), 0) - 256
    mem[436 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 2), 0) - 256
    mem[437 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 3), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), 3), 0) - 256
    mem[438] = 58
    mem[470] = '123456789ABCDEFGHJKLMNPQRSTUVWXY'
    mem[502] = 'Zabcdefghijkmnopqrstuvwxyz'
    mem[534] = 32
    mem[64] = 598
    mem[566 len 1024] = code.data[14934 len 1024]
    s = 0
    t = 0
    t = 0
    idx = mem[406 len 28], 0, 0, 0, 0
    while idx >= 58:
        if uint8(t) != 32:
            require idx % 58 < mem[438]
            require uint8(t) < mem[534]
            mem[uint8(t) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
            s = s + 1
            t = idx % 58
            t = t + 1
            idx = idx / 58
            continue 
        u = 0
        while u < uint8(t - 1):
            require u + 1 < mem[534]
            require u < mem[534]
            mem[u + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 3)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 3)), 32))), 0) - 256
            u = u + 1
            continue 
        require idx % 58 < mem[438]
        require uint8(t - 1) < mem[534]
        mem[uint8(t - 1) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
        s = s + 1
        t = idx % 58
        t = t
        idx = idx / 58
        continue 
    if uint8(t) != 32:
        require idx % 58 < mem[438]
        require uint8(t) < mem[534]
        mem[uint8(t) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
        _176 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_176 + 32 len 1024] = code.data[14934 len 1024]
        require 0 < mem[_176]
        mem[_176 + 32 len 8] = Mask(8, -(2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) + 256, 0) << (2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) - 256
        idx = 0
        while uint8(idx) < 31:
            require uint8(t - idx) < mem[534]
            require uint8(idx + 1) < mem[_176]
            mem[_176 + uint8(idx + 1) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) - 256
            idx = idx + 1
            continue 
    else:
        s = 0
        while s < uint8(t - 1):
            require s + 1 < mem[534]
            require s < mem[534]
            mem[s + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 567, ('var', 1)), 32))), 0) - 256
            s = s + 1
            continue 
        require idx % 58 < mem[438]
        require uint8(t - 1) < mem[534]
        mem[uint8(t - 1) + 566 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 470, ('mod', ('var', 0), 58)), 32))), 0) - 256
        _204 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_204 + 32 len 1024] = code.data[14934 len 1024]
        require 0 < mem[_204]
        mem[_204 + 32 len 8] = Mask(8, -(2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) + 256, 0) << (2770416197572506628786610481164896232817494750300970526334678523626827808768, 0) - 256
        idx = 0
        while uint8(idx) < 31:
            require uint8(t + -idx - 1) < mem[534]
            require uint8(idx + 1) < mem[_204]
            mem[_204 + uint8(idx + 1) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', -1, ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 566, ('mask_shl', 8, 0, 0, ('add', -1, ('var', 2), ('mul', -1, ('var', 0))))), 32))), 0) - 256
            idx = idx + 1
            continue 
    allTasks[stor11[arg1] - 1].field_1792 = arg2
    if not allTasks[stor11[arg1] - 1].field_768:
        call msg.sender with:
           value allTasks[stor11[arg1] - 1].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalReward -= allTasks[stor11[arg1] - 1].field_768
        completedTaskIds.length++
        completedTaskIds[completedTaskIds.length] = arg1
        indexOfCompletedTaskId[arg1] = completedTaskIds.length + 1
        indexOfActiveTaskId[arg1] = 0
        if tasks[arg1] < taskIds.length:
            require taskIds.length - 1 < taskIds.length
            require tasks[arg1] - 1 < taskIds.length
            taskIds[stor11[arg1]] = taskIds[taskIds.length]
            indexOfActiveTaskId[stor9[stor9.length]] = tasks[arg1]
        taskIds.length--
        if taskIds.length > taskIds.length - 1:
            idx = taskIds.length - 1
            while taskIds.length > idx:
                taskIds[idx] = 0
                idx = idx + 1
                continue 
        emit TaskSolved(allTasks[stor11[arg1] - 1].field_768, arg1);
    else:
        require serviceFee * allTasks[stor11[arg1] - 1].field_768 / allTasks[stor11[arg1] - 1].field_768 == serviceFee
        if not serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6:
            call msg.sender with:
               value allTasks[stor11[arg1] - 1].field_768 - (serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not allTasks[stor11[arg1] - 1].field_512:
                call msg.sender with:
                   value allTasks[stor11[arg1] - 1].field_768 - (serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6:
                    call allTasks[stor11[arg1] - 1].field_512 with:
                         gas 2300 wei
                else:
                    require referrerFee * serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6 / serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6 == referrerFee
                    call allTasks[stor11[arg1] - 1].field_512 with:
                       value referrerFee * serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6 / 10^6 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value allTasks[stor11[arg1] - 1].field_768 - (serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6) wei
                     gas 2300 * is_zero(value) wei
        totalReward -= allTasks[stor11[arg1] - 1].field_768
        completedTaskIds.length++
        completedTaskIds[completedTaskIds.length] = arg1
        indexOfCompletedTaskId[arg1] = completedTaskIds.length + 1
        indexOfActiveTaskId[arg1] = 0
        if tasks[arg1] < taskIds.length:
            require taskIds.length - 1 < taskIds.length
            require tasks[arg1] - 1 < taskIds.length
            taskIds[stor11[arg1]] = taskIds[taskIds.length]
            indexOfActiveTaskId[stor9[stor9.length]] = tasks[arg1]
        taskIds.length--
        if taskIds.length > taskIds.length - 1:
            idx = taskIds.length - 1
            while taskIds.length > idx:
                taskIds[idx] = 0
                idx = idx + 1
                continue 
        emit TaskSolved((allTasks[stor11[arg1] - 1].field_768 - (serviceFee * allTasks[stor11[arg1] - 1].field_768 / 10^6)), arg1);
}



}
