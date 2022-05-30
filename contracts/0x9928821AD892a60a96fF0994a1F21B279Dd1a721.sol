contract main {




// =====================  Runtime code  =====================


#
#  - sendTransaction(address arg1, uint256 arg2, uint256 arg3, string arg4, bytes arg5)
#
const MAX_OWNER_COUNT = 50

const VERSION = 1


array of struct stor0;
array of struct stor1;
mapping of uint8 stor2;
array of struct ownerInfoByIndex;
uint256 total;
uint256 required;
uint256 transactionCount;
array of struct sub_260df40f;
uint256 sub_d5fbdbce;
address creatorAddress;
array of struct sub_d9d1dca0;
uint8 stor11;

function owners(uint256 arg1) {
    require arg1 < ownerInfoByIndex.length
    mem[128] = uint256(stor[sha3((3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(ownerInfoByIndex[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1].length]),
           uint256(ownerInfoByIndex[arg1].field_512)
}

function creator() {
    return creatorAddress
}

function sub_2057f172(?) {
    return bool(stor11)
}

function sub_260df40f(?) {
    return uint256(sub_260df40f[0 len sub_260df40f.length].field_0)
}

function total() {
    return total
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function getOwnerInfoByIndex(uint256 arg1) {
    require arg1 >= 0
    require arg1 < ownerInfoByIndex.length
    mem[128] = uint256(stor[sha3((3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(ownerInfoByIndex[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'ownerInfoByIndex', 3) + 1].length]),
           uint256(ownerInfoByIndex[arg1].field_512)
}

function getOwnersCount() {
    return ownerInfoByIndex.length
}

function transactionCount() {
    return transactionCount
}

function sub_d5fbdbce(?) {
    return sub_d5fbdbce
}

function sub_d9d1dca0(?) {
    return uint256(sub_d9d1dca0[0 len sub_d9d1dca0.length].field_0)
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit EventDeposit(msg.value, block.timestamp, msg.sender);
}

function cancelCreation() {
    require msg.sender == creatorAddress
    require ownerInfoByIndex.length < total
    require not stor11
    stor11 = 1
    emit EventCancelCreate(block.timestamp, 0, msg.sender);
}

function getTransactionApproveCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < ownerInfoByIndex.length:
        mem[0] = address(ownerInfoByIndex[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if uint256(stor1[arg1][address(stor3[idx].field_0)].field_512) != 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_1792):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_1792):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_1792):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_546f4030(?) {
    mem[128] = uint256(stor1[arg1][arg2].field_0)
    idx = 128
    s = 0
    while stor1[arg1][arg2].length + 96 > idx:
        mem[idx + 32] = uint256(stor1[arg1][arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][arg2].length) + 160] = uint256(stor1[arg1][arg2].field_256)
    mem[ceil32(stor1[arg1][arg2].length) + 192] = uint256(stor1[arg1][arg2].field_512)
    mem[ceil32(stor1[arg1][arg2].length) + 128] = 96
    mem[ceil32(stor1[arg1][arg2].length) + 224] = stor1[arg1][arg2].length
    if 0 < stor1[arg1][arg2].length:
        mem[ceil32(stor1[arg1][arg2].length) + 256] = mem[128]
        mem[ceil32(stor1[arg1][arg2].length) + 288 len floor32(stor1[arg1][arg2].length - 1)] = mem[160 len floor32(stor1[arg1][arg2].length - 1)]
    return Array(len=stor1[arg1][arg2].length, data=mem[ceil32(stor1[arg1][arg2].length) + 256 len stor1[arg1][arg2].length]), 
           uint256(stor1[arg1][arg2].field_256),
           uint256(stor1[arg1][arg2].field_512)
}

function getTransactionConfirmerInfo(uint256 arg1, address arg2) {
    mem[64] = 128
    mem[96] = 0
    mem[0] = arg2
    mem[32] = sha3(arg1, 1)
    idx = 0
    while idx < ownerInfoByIndex.length:
        mem[0] = 3
        if address(ownerInfoByIndex[idx].field_0) != arg2:
            idx = idx + 1
            continue 
        require idx < ownerInfoByIndex.length
        mem[64] = ceil32(stor[(3 * idx) + ('name', 'ownerInfoByIndex', 3) + 1].length) + 160
        mem[128] = stor[(3 * idx) + ('name', 'ownerInfoByIndex', 3) + 1].length
        mem[0] = (3 * idx) + sha3(3) + 1
        mem[160] = uint256(stor[sha3((3 * idx) + ('name', 'ownerInfoByIndex', 3) + 1)].field_0)
        s = 160
        t = sha3(mem[0])
        while stor[(3 * idx) + ('name', 'ownerInfoByIndex', 3) + 1].length + 128 > s:
            mem[s + 32] = uint256(stor1[t].field_0)
            s = s + 32
            t = t + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = arg2
        mem[mem[64] + 64] = uint256(stor1[arg1][address(arg2)].field_512)
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = mem[128]
        _82 = mem[128]
        idx = 0
        while idx < _82:
            mem[idx + mem[64] + 128] = mem[idx + 160]
            idx = idx + 32
            continue 
        if not _82 % 32:
            return memory
              from mem[64]
               len _82 + _80 + -mem[64] + 128
        mem[floor32(_82) + _80 + 128] = mem[floor32(_82) + _80 + -(_82 % 32) + 160 len _82 % 32]
        return memory
          from mem[64]
           len floor32(_82) + _80 + -mem[64] + 160
    return address(arg2), 96, uint256(stor1[arg1][address(arg2)].field_512), 0
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require 0 < arg2 - arg1
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[10433 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_1792):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_1792):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_1792):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if arg2 - arg1 > s:
        mem[(32 * transactionCount) + 128] = s
        if s:
            mem[(32 * transactionCount) + 160 len 32 * s] = code.data[10433 len 32 * s]
        t = 0
        while t < s:
            require t + arg1 < transactionCount
            require t + arg1 < s
            mem[(32 * transactionCount) + (32 * t + arg1) + 160] = mem[(32 * t + arg1) + 128]
            t = t + 1
            continue 
        mem[(32 * transactionCount) + (32 * s) + 224 len floor32(s)] = mem[(32 * transactionCount) + 160 len floor32(s)]
        return Array(len=s, data=mem[(32 * transactionCount) + 160 len floor32(s)], mem[(32 * transactionCount) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if not arg2 - arg1:
        s = 0
        while s < arg2 - arg1:
            require s + arg1 < transactionCount
            require s + arg1 < arg2 - arg1
            mem[(32 * transactionCount) + (32 * s + arg1) + 160] = mem[(32 * s + arg1) + 128]
            s = s + 1
            continue 
    else:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[10433 len 32 * arg2 - arg1]
        idx = 0
        while idx < arg2 - arg1:
            require idx + arg1 < transactionCount
            require idx + arg1 < arg2 - arg1
            mem[(32 * transactionCount) + (32 * idx + arg1) + 160] = mem[(32 * idx + arg1) + 128]
            idx = idx + 1
            continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = arg2 - arg1
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(arg2 - arg1)] = mem[(32 * transactionCount) + 160 len floor32(arg2 - arg1)]
    return Array(len=arg2 - arg1, data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * arg2 - arg1])
}

function getWalletInfo() {
    mem[96] = sub_260df40f.length
    mem[128] = uint256(sub_260df40f.field_0)
    idx = 128
    s = 0
    while sub_260df40f.length + 96 > idx:
        mem[idx + 32] = uint256(sub_260df40f[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 160
    mem[ceil32(sub_260df40f.length) + 128] = sub_d9d1dca0.length
    mem[0] = 10
    mem[ceil32(sub_260df40f.length) + 160] = uint256(sub_d9d1dca0.field_0)
    idx = ceil32(sub_260df40f.length) + 160
    s = 0
    while ceil32(sub_260df40f.length) + sub_d9d1dca0.length + 128 > idx:
        mem[idx + 32] = uint256(sub_d9d1dca0[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 160] = this.address
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 192] = ownerInfoByIndex.length
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 224] = total
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 256] = required
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 288] = sub_d5fbdbce
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 352] = creatorAddress
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 416] = bool(stor11)
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 320] = 288
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 448] = sub_260df40f.length
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 480 len ceil32(sub_260df40f.length)] = mem[128 len ceil32(sub_260df40f.length)]
    mem[ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 384] = sub_260df40f.length + 320
    mem[sub_260df40f.length + ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 480] = sub_d9d1dca0.length
    mem[sub_260df40f.length + ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 512 len ceil32(sub_d9d1dca0.length)] = mem[ceil32(sub_260df40f.length) + 160 len ceil32(sub_d9d1dca0.length)]
    if not sub_d9d1dca0.length % 32:
        return address(this.address), 
               ownerInfoByIndex.length,
               total,
               required,
               sub_d5fbdbce,
               Array(len=sub_260df40f.length, data=mem[128 len ceil32(sub_260df40f.length)], mem[(2 * ceil32(sub_260df40f.length)) + ceil32(sub_d9d1dca0.length) + 480 len sub_d9d1dca0.length + sub_260df40f.length + -ceil32(sub_260df40f.length) + 32]),
               creatorAddress,
               sub_260df40f.length + 320,
               bool(stor11)
    mem[floor32(sub_d9d1dca0.length) + sub_260df40f.length + ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + 512] = mem[floor32(sub_d9d1dca0.length) + sub_260df40f.length + ceil32(sub_260df40f.length) + ceil32(sub_d9d1dca0.length) + -sub_d9d1dca0.length % 32 + 544 len sub_d9d1dca0.length % 32]
    return address(this.address), 
           ownerInfoByIndex.length,
           total,
           required,
           sub_d5fbdbce,
           Array(len=sub_260df40f.length, data=mem[128 len ceil32(sub_260df40f.length)], mem[(2 * ceil32(sub_260df40f.length)) + ceil32(sub_d9d1dca0.length) + 480 len floor32(sub_d9d1dca0.length) + sub_260df40f.length + -ceil32(sub_260df40f.length) + 64]),
           creatorAddress,
           sub_260df40f.length + 320,
           bool(stor11)
}

function transactions(uint256 arg1) {
    mem[32] = 0
    mem[96] = stor0[arg1][4].length
    mem[128] = uint256(stor0[arg1][4].field_0)
    idx = 128
    s = 0
    while stor0[arg1][4].length + 96 > idx:
        mem[idx + 32] = uint256(stor0[arg1][s + 4].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 160
    mem[ceil32(stor0[arg1][4].length) + 128] = stor0[arg1][6].length
    mem[0] = sha3(arg1, 0) + 6
    mem[ceil32(stor0[arg1][4].length) + 160] = uint256(stor0[arg1][6].field_0)
    idx = ceil32(stor0[arg1][4].length) + 160
    s = 0
    while ceil32(stor0[arg1][4].length) + stor0[arg1][6].length + 128 > idx:
        mem[idx + 32] = uint256(stor0[arg1][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 160] = address(stor0[arg1].field_0)
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 192] = address(stor0[arg1].field_256)
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 224] = uint256(stor0[arg1].field_512)
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 256] = uint256(stor0[arg1].field_768)
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 320] = uint256(stor0[arg1].field_1280)
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 384] = bool(uint8(stor0[arg1].field_1792))
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 288] = 256
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 416] = stor0[arg1][4].length
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 448 len ceil32(stor0[arg1][4].length)] = mem[128 len ceil32(stor0[arg1][4].length)]
    mem[ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 352] = stor0[arg1][4].length + 288
    mem[stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 448] = stor0[arg1][6].length
    mem[stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 480 len ceil32(stor0[arg1][6].length)] = mem[ceil32(stor0[arg1][4].length) + 160 len ceil32(stor0[arg1][6].length)]
    if not stor0[arg1][6].length % 32:
        return address(stor0[arg1].field_0), 
               address(stor0[arg1].field_256),
               uint256(stor0[arg1].field_512),
               uint256(stor0[arg1].field_768),
               Array(len=stor0[arg1][4].length, data=mem[128 len ceil32(stor0[arg1][4].length)], mem[(2 * ceil32(stor0[arg1][4].length)) + ceil32(stor0[arg1][6].length) + 448 len stor0[arg1][6].length + stor0[arg1][4].length + -ceil32(stor0[arg1][4].length) + 32]),
               uint256(stor0[arg1].field_1280),
               stor0[arg1][4].length + 288,
               bool(uint8(stor0[arg1].field_1792))
    mem[floor32(stor0[arg1][6].length) + stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + 480] = mem[floor32(stor0[arg1][6].length) + stor0[arg1][4].length + ceil32(stor0[arg1][4].length) + ceil32(stor0[arg1][6].length) + -stor0[arg1][6].length % 32 + 512 len stor0[arg1][6].length % 32]
    return address(stor0[arg1].field_0), 
           address(stor0[arg1].field_256),
           uint256(stor0[arg1].field_512),
           uint256(stor0[arg1].field_768),
           Array(len=stor0[arg1][4].length, data=mem[128 len ceil32(stor0[arg1][4].length)], mem[(2 * ceil32(stor0[arg1][4].length)) + ceil32(stor0[arg1][6].length) + 448 len floor32(stor0[arg1][6].length) + stor0[arg1][4].length + -ceil32(stor0[arg1][4].length) + 64]),
           uint256(stor0[arg1].field_1280),
           stor0[arg1][4].length + 288,
           bool(uint8(stor0[arg1].field_1792))
}

function join(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require not stor11
    require not stor2[msg.sender]
    if ownerInfoByIndex.length + 1 > total:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit EventJoin(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160, block.timestamp, 3, msg.sender);
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
            emit EventJoin(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160, block.timestamp, 3, msg.sender);
    else:
        stor2[msg.sender] = 1
        ownerInfoByIndex.length++
        if ownerInfoByIndex.length > ownerInfoByIndex.length + 1:
            mem[0] = 3
            idx = (3 * ownerInfoByIndex.length) + 3
            while sha3(3) + (3 * ownerInfoByIndex.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require ownerInfoByIndex.length - 1 < ownerInfoByIndex.length
        address(ownerInfoByIndex[ownerInfoByIndex.length].field_0) = msg.sender
        uint256(stor[sha3((3 * ownerInfoByIndex.length) + ('name', 'ownerInfoByIndex', 3) - 2)][].field_0) = Array(len=arg1.length, data=arg1[all])
        require ownerInfoByIndex.length - 1 < ownerInfoByIndex.length
        uint256(ownerInfoByIndex[ownerInfoByIndex.length].field_0) = block.timestamp
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit EventJoin(address arg1, string arg2, string arg3, uint256 arg4, uint256 arg5):
                               128,
                               arg1.length + 160,
                               block.timestamp,
                               0,
                               arg1.length,
                               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                               mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg2.length + arg1.length + -ceil32(arg1.length) + 32],
                               msg.sender,
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                emit EventJoin(address arg1, string arg2, string arg3, uint256 arg4, uint256 arg5):
                               128,
                               arg1.length + 160,
                               block.timestamp,
                               0,
                               arg1.length,
                               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                               mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64],
                               msg.sender,
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit EventJoin(address arg1, string arg2, string arg3, uint256 arg4, uint256 arg5):
                               128,
                               floor32(arg1.length) + 192,
                               block.timestamp,
                               0,
                               arg1.length,
                               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                               mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64],
                               msg.sender,
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                emit EventJoin(address arg1, string arg2, string arg3, uint256 arg4, uint256 arg5):
                               128,
                               floor32(arg1.length) + 192,
                               block.timestamp,
                               0,
                               arg1.length,
                               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                               mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96],
                               msg.sender,
}

function approveTransaction(uint256 arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not stor11
    require stor2[msg.sender]
    if not address(stor0[arg1].field_256):
        emit EventConfirmation(address(stor0[arg1].field_256), arg2, Array(len=arg3.length, data=arg3[all]), block.timestamp, 4, msg.sender, arg1);
    else:
        if uint256(stor1[arg1][msg.sender].field_512) == 1:
            mem[ceil32(arg3.length) + 128] = address(stor0[arg1].field_256)
            mem[ceil32(arg3.length) + 160] = arg2
            mem[ceil32(arg3.length) + 224] = block.timestamp
            mem[ceil32(arg3.length) + 256] = 5
            mem[ceil32(arg3.length) + 192] = 160
            mem[ceil32(arg3.length) + 288] = arg3.length
            if 0 < arg3.length:
                mem[ceil32(arg3.length) + 320] = mem[128]
                mem[ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            emit EventConfirmation(address(stor0[arg1].field_256), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 320 len arg3.length]), block.timestamp, 5, msg.sender, arg1);
        else:
            if uint256(stor1[arg1][msg.sender].field_512) == 2:
                mem[ceil32(arg3.length) + 128] = address(stor0[arg1].field_256)
                mem[ceil32(arg3.length) + 160] = arg2
                mem[ceil32(arg3.length) + 224] = block.timestamp
                mem[ceil32(arg3.length) + 256] = 5
                mem[ceil32(arg3.length) + 192] = 160
                mem[ceil32(arg3.length) + 288] = arg3.length
                if 0 < arg3.length:
                    mem[ceil32(arg3.length) + 320] = mem[128]
                    mem[ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                emit EventConfirmation(address(stor0[arg1].field_256), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 320 len arg3.length]), block.timestamp, 5, msg.sender, arg1);
            else:
                if uint256(stor0[arg1].field_768) <= block.timestamp:
                    mem[ceil32(arg3.length) + 128] = address(stor0[arg1].field_256)
                    mem[ceil32(arg3.length) + 160] = arg2
                    mem[ceil32(arg3.length) + 224] = block.timestamp
                    mem[ceil32(arg3.length) + 256] = 7
                    mem[ceil32(arg3.length) + 192] = 160
                    mem[ceil32(arg3.length) + 288] = arg3.length
                    if 0 < arg3.length:
                        mem[ceil32(arg3.length) + 320] = mem[128]
                        mem[ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    emit EventConfirmation(address(stor0[arg1].field_256), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 320 len arg3.length]), block.timestamp, 7, msg.sender, arg1);
                else:
                    uint256(stor1[arg1][msg.sender].field_512) = arg2
                    uint256(stor1[arg1][msg.sender].field_256) = block.timestamp
                    uint256(stor1[arg1][msg.sender][].field_0) = Array(len=arg3.length, data=arg3[all])
                    mem[ceil32(arg3.length) + 128] = address(stor0[arg1].field_256)
                    mem[ceil32(arg3.length) + 160] = arg2
                    mem[ceil32(arg3.length) + 224] = block.timestamp
                    mem[ceil32(arg3.length) + 256] = 0
                    mem[ceil32(arg3.length) + 192] = 160
                    mem[ceil32(arg3.length) + 288] = arg3.length
                    mem[ceil32(arg3.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        emit EventConfirmation(address arg1, uint256 arg2, address arg3, uint256 arg4, string arg5, uint256 arg6, uint256 arg7):
                                               address(stor0[arg1].field_256),
                                               arg2,
                                               160,
                                               block.timestamp,
                                               0,
                                               arg3.length,
                                               Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                                               msg.sender,
                                               arg1,
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
                        emit EventConfirmation(address arg1, uint256 arg2, address arg3, uint256 arg4, string arg5, uint256 arg6, uint256 arg7):
                                               address(stor0[arg1].field_256),
                                               arg2,
                                               160,
                                               block.timestamp,
                                               0,
                                               arg3.length,
                                               Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                               mem[(2 * ceil32(arg3.length)) + 320 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                                               msg.sender,
                                               arg1,
                    require stor2[msg.sender]
                    if not uint8(stor0[arg1].field_1792):
                        idx = 0
                        s = 0
                        while idx < ownerInfoByIndex.length:
                            mem[0] = address(ownerInfoByIndex[idx].field_0)
                            mem[32] = sha3(arg1, 1)
                            if uint256(stor1[arg1][address(stor3[idx].field_0)].field_512) != 1:
                                if s < required:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                if s + 1 < required:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                            uint8(stor0[arg1].field_1792) = 1
                            mem[ceil32(arg3.length) + 128] = uint256(stor0[arg1][6].field_0)
                            idx = ceil32(arg3.length) + 128
                            s = sha3(sha3(arg1, 0) + 6)
                            while ceil32(arg3.length) + stor0[arg1][6].length + 128 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor0[arg1].field_256).mem[ceil32(arg3.length) + 128 len 4] with:
                               value uint256(stor0[arg1].field_512) wei
                                 gas gas_remaining wei
                                args mem[ceil32(arg3.length) + 132 len stor0[arg1][6].length + (floor32(stor0[arg1][6].length - 1) + -stor0[arg1][6].length + 32 % 32) - 4]
                            if not ext_call.success:
                                emit EventExecution(address(stor0[arg1].field_256), uint256(stor0[arg1].field_512), block.timestamp, 1, msg.sender, arg1);
                                uint8(stor0[arg1].field_1792) = 0
                            else:
                                emit EventExecution(address(stor0[arg1].field_256), uint256(stor0[arg1].field_512), block.timestamp, 0, msg.sender, arg1);
                                emit Transfer(uint256(stor0[arg1].field_512), this.address, address(stor0[arg1].field_256));
                    else:
                        emit EventExecution(address(stor0[arg1].field_256), uint256(stor0[arg1].field_512), block.timestamp, 6, msg.sender, arg1);
}

function getTransactionInfo(uint256 arg1) {
    mem[96] = ownerInfoByIndex.length
    if not ownerInfoByIndex.length:
        idx = 0
        s = 0
        while idx < ownerInfoByIndex.length:
            mem[32] = sha3(arg1, 1)
            require idx < ownerInfoByIndex.length
            if uint256(stor1[arg1][address(stor3[idx].field_0)].field_512) != 1:
                mem[0] = address(ownerInfoByIndex[idx].field_0)
                mem[32] = sha3(arg1, 1)
                if uint256(stor1[arg1][address(stor3[idx].field_0)].field_512) != 2:
                    idx = idx + 1
                    s = s
                    continue 
            mem[0] = 3
            require s < ownerInfoByIndex.length
            mem[(32 * s) + 128] = address(ownerInfoByIndex[idx].field_0)
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * ownerInfoByIndex.length) + 128] = s
        if not s:
            t = 0
            while t < s:
                require t < ownerInfoByIndex.length
                require t < s
                mem[(32 * ownerInfoByIndex.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
                t = t + 1
                continue 
            mem[64] = (32 * ownerInfoByIndex.length) + (32 * s) + ceil32(stor0[arg1][4].length) + 192
            mem[(32 * ownerInfoByIndex.length) + (32 * s) + 160] = stor0[arg1][4].length
            mem[(32 * ownerInfoByIndex.length) + (32 * s) + 192] = uint256(stor0[arg1][4].field_0)
            t = (32 * ownerInfoByIndex.length) + (32 * u) + 192
            u = 0
            while (32 * ownerInfoByIndex.length) + (32 * u) + stor0[arg1][4].length + 160 > t:
                mem[t + 32] = uint256(stor0[arg1][u + 4].field_256)
                t = t + 32
                u = u + 1
                continue 
            mem[0] = arg1
            mem[32] = 0
            _628 = mem[64]
            mem[mem[64] + 32] = address(stor0[arg1].field_0)
            mem[mem[64] + 64] = address(stor0[arg1].field_256)
            mem[mem[64] + 96] = uint256(stor0[arg1].field_512)
            mem[mem[64] + 128] = uint256(stor0[arg1].field_768)
            mem[mem[64] + 192] = uint256(stor0[arg1].field_1280)
            mem[mem[64] + 224] = bool(uint8(stor0[arg1].field_1792))
            mem[mem[64]] = 256
            mem[_628 + 256] = mem[(32 * ownerInfoByIndex.length) + 128]
            _630 = mem[(32 * ownerInfoByIndex.length) + 128]
            mem[_628 + 288 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])] = mem[(32 * ownerInfoByIndex.length) + 160 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])]
            mem[_628 + 160] = (32 * _630) + 288
            mem[(32 * _630) + _628 + 288] = stor0[arg1][4].length
            if 0 < stor0[arg1][4].length:
                mem[(32 * _630) + _628 + 320] = mem[(32 * ownerInfoByIndex.length) + (32 * u) + 192]
                mem[(32 * _630) + _628 + 352 len floor32(stor0[arg1][4].length - 1)] = mem[(32 * ownerInfoByIndex.length) + (32 * u) + 224 len floor32(stor0[arg1][4].length - 1)]
            if not stor0[arg1][4].length % 32:
                return memory
                  from mem[64]
                   len stor0[arg1][4].length + (32 * _630) + _628 + -mem[64] + 320
            mem[floor32(stor0[arg1][4].length) + (32 * _630) + _628 + 320] = mem[floor32(stor0[arg1][4].length) + (32 * _630) + _628 + -stor0[arg1][4].length % 32 + 352 len stor0[arg1][4].length % 32]
            return memory
              from mem[64]
               len floor32(stor0[arg1][4].length) + (32 * _630) + _628 + -mem[64] + 352
        mem[(32 * ownerInfoByIndex.length) + 160 len 32 * s] = code.data[10433 len 32 * s]
        t = 0
        while t < s:
            require t < ownerInfoByIndex.length
            require t < s
            mem[(32 * ownerInfoByIndex.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        mem[64] = (32 * ownerInfoByIndex.length) + (32 * s) + ceil32(stor0[arg1][4].length) + 192
        mem[(32 * ownerInfoByIndex.length) + (32 * s) + 160] = stor0[arg1][4].length
        mem[(32 * ownerInfoByIndex.length) + (32 * s) + 192] = uint256(stor0[arg1][4].field_0)
        t = (32 * ownerInfoByIndex.length) + (32 * s) + 192
        u = 0
        while (32 * ownerInfoByIndex.length) + (32 * s) + stor0[arg1][4].length + 160 > t:
            mem[t + 32] = uint256(stor0[arg1][u + 4].field_256)
            t = t + 32
            u = u + 1
            continue 
        mem[0] = arg1
        mem[32] = 0
        _635 = mem[64]
        mem[mem[64] + 32] = address(stor0[arg1].field_0)
        mem[mem[64] + 64] = address(stor0[arg1].field_256)
        mem[mem[64] + 96] = uint256(stor0[arg1].field_512)
        mem[mem[64] + 128] = uint256(stor0[arg1].field_768)
        mem[mem[64] + 192] = uint256(stor0[arg1].field_1280)
        mem[mem[64] + 224] = bool(uint8(stor0[arg1].field_1792))
        mem[mem[64]] = 256
        mem[_635 + 256] = mem[(32 * ownerInfoByIndex.length) + 128]
        _637 = mem[(32 * ownerInfoByIndex.length) + 128]
        mem[_635 + 288 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])] = mem[(32 * ownerInfoByIndex.length) + 160 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])]
        mem[_635 + 160] = (32 * _637) + 288
        mem[(32 * _637) + _635 + 288] = stor0[arg1][4].length
        if 0 < stor0[arg1][4].length:
            mem[(32 * _637) + _635 + 320] = mem[(32 * ownerInfoByIndex.length) + (32 * s) + 192]
            mem[(32 * _637) + _635 + 352 len floor32(stor0[arg1][4].length - 1)] = mem[(32 * ownerInfoByIndex.length) + (32 * s) + 224 len floor32(stor0[arg1][4].length - 1)]
        if not stor0[arg1][4].length % 32:
            return memory
              from mem[64]
               len stor0[arg1][4].length + (32 * _637) + _635 + -mem[64] + 320
        mem[floor32(stor0[arg1][4].length) + (32 * _637) + _635 + 320] = mem[floor32(stor0[arg1][4].length) + (32 * _637) + _635 + -stor0[arg1][4].length % 32 + 352 len stor0[arg1][4].length % 32]
        return memory
          from mem[64]
           len floor32(stor0[arg1][4].length) + (32 * _637) + _635 + -mem[64] + 352
    mem[128 len 32 * ownerInfoByIndex.length] = code.data[10433 len 32 * ownerInfoByIndex.length]
    idx = 0
    s = 0
    while idx < ownerInfoByIndex.length:
        mem[32] = sha3(arg1, 1)
        require idx < ownerInfoByIndex.length
        if uint256(stor1[arg1][address(stor3[idx].field_0)].field_512) != 1:
            mem[0] = address(ownerInfoByIndex[idx].field_0)
            mem[32] = sha3(arg1, 1)
            if uint256(stor1[arg1][address(stor3[idx].field_0)].field_512) != 2:
                idx = idx + 1
                s = s
                continue 
        mem[0] = 3
        require s < ownerInfoByIndex.length
        mem[(32 * s) + 128] = address(ownerInfoByIndex[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * ownerInfoByIndex.length) + 128] = s
    if not s:
        t = 0
        while t < s:
            require t < ownerInfoByIndex.length
            require t < s
            mem[(32 * ownerInfoByIndex.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
            t = t + 1
            continue 
        mem[64] = (32 * ownerInfoByIndex.length) + (32 * s) + ceil32(stor0[arg1][4].length) + 192
        mem[(32 * ownerInfoByIndex.length) + (32 * s) + 160] = stor0[arg1][4].length
        mem[(32 * ownerInfoByIndex.length) + (32 * s) + 192] = uint256(stor0[arg1][4].field_0)
        t = (32 * ownerInfoByIndex.length) + (32 * u) + 192
        u = 0
        while (32 * ownerInfoByIndex.length) + (32 * u) + stor0[arg1][4].length + 160 > t:
            mem[t + 32] = uint256(stor0[arg1][u + 4].field_256)
            t = t + 32
            u = u + 1
            continue 
        mem[0] = arg1
        mem[32] = 0
        _642 = mem[64]
        mem[mem[64] + 32] = address(stor0[arg1].field_0)
        mem[mem[64] + 64] = address(stor0[arg1].field_256)
        mem[mem[64] + 96] = uint256(stor0[arg1].field_512)
        mem[mem[64] + 128] = uint256(stor0[arg1].field_768)
        mem[mem[64] + 192] = uint256(stor0[arg1].field_1280)
        mem[mem[64] + 224] = bool(uint8(stor0[arg1].field_1792))
        mem[mem[64]] = 256
        mem[_642 + 256] = mem[(32 * ownerInfoByIndex.length) + 128]
        _644 = mem[(32 * ownerInfoByIndex.length) + 128]
        mem[_642 + 288 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])] = mem[(32 * ownerInfoByIndex.length) + 160 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])]
        mem[_642 + 160] = (32 * _644) + 288
        mem[(32 * _644) + _642 + 288] = stor0[arg1][4].length
        if 0 < stor0[arg1][4].length:
            mem[(32 * _644) + _642 + 320] = mem[(32 * ownerInfoByIndex.length) + (32 * u) + 192]
            mem[(32 * _644) + _642 + 352 len floor32(stor0[arg1][4].length - 1)] = mem[(32 * ownerInfoByIndex.length) + (32 * u) + 224 len floor32(stor0[arg1][4].length - 1)]
        if not stor0[arg1][4].length % 32:
            return memory
              from mem[64]
               len stor0[arg1][4].length + (32 * _644) + _642 + -mem[64] + 320
        mem[floor32(stor0[arg1][4].length) + (32 * _644) + _642 + 320] = mem[floor32(stor0[arg1][4].length) + (32 * _644) + _642 + -stor0[arg1][4].length % 32 + 352 len stor0[arg1][4].length % 32]
        return memory
          from mem[64]
           len floor32(stor0[arg1][4].length) + (32 * _644) + _642 + -mem[64] + 352
    mem[(32 * ownerInfoByIndex.length) + 160 len 32 * s] = code.data[10433 len 32 * s]
    t = 0
    while t < s:
        require t < ownerInfoByIndex.length
        require t < s
        mem[(32 * ownerInfoByIndex.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[64] = (32 * ownerInfoByIndex.length) + (32 * s) + ceil32(stor0[arg1][4].length) + 192
    mem[(32 * ownerInfoByIndex.length) + (32 * s) + 160] = stor0[arg1][4].length
    mem[(32 * ownerInfoByIndex.length) + (32 * s) + 192] = uint256(stor0[arg1][4].field_0)
    t = (32 * ownerInfoByIndex.length) + (32 * s) + 192
    u = 0
    while (32 * ownerInfoByIndex.length) + (32 * s) + stor0[arg1][4].length + 160 > t:
        mem[t + 32] = uint256(stor0[arg1][u + 4].field_256)
        t = t + 32
        u = u + 1
        continue 
    mem[0] = arg1
    mem[32] = 0
    _649 = mem[64]
    mem[mem[64] + 32] = address(stor0[arg1].field_0)
    mem[mem[64] + 64] = address(stor0[arg1].field_256)
    mem[mem[64] + 96] = uint256(stor0[arg1].field_512)
    mem[mem[64] + 128] = uint256(stor0[arg1].field_768)
    mem[mem[64] + 192] = uint256(stor0[arg1].field_1280)
    mem[mem[64] + 224] = bool(uint8(stor0[arg1].field_1792))
    mem[mem[64]] = 256
    mem[_649 + 256] = mem[(32 * ownerInfoByIndex.length) + 128]
    _651 = mem[(32 * ownerInfoByIndex.length) + 128]
    mem[_649 + 288 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])] = mem[(32 * ownerInfoByIndex.length) + 160 len floor32(mem[(32 * ownerInfoByIndex.length) + 128])]
    mem[_649 + 160] = (32 * _651) + 288
    mem[(32 * _651) + _649 + 288] = stor0[arg1][4].length
    if 0 < stor0[arg1][4].length:
        mem[(32 * _651) + _649 + 320] = mem[(32 * ownerInfoByIndex.length) + (32 * s) + 192]
        mem[(32 * _651) + _649 + 352 len floor32(stor0[arg1][4].length - 1)] = mem[(32 * ownerInfoByIndex.length) + (32 * s) + 224 len floor32(stor0[arg1][4].length - 1)]
    if not stor0[arg1][4].length % 32:
        return memory
          from mem[64]
           len stor0[arg1][4].length + (32 * _651) + _649 + -mem[64] + 320
    mem[floor32(stor0[arg1][4].length) + (32 * _651) + _649 + 320] = mem[floor32(stor0[arg1][4].length) + (32 * _651) + _649 + -stor0[arg1][4].length % 32 + 352 len stor0[arg1][4].length % 32]
    return memory
      from mem[64]
       len floor32(stor0[arg1][4].length) + (32 * _651) + _649 + -mem[64] + 352
}



}
