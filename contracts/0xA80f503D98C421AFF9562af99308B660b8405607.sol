contract main {


// =======================  Init code  ======================


uint8 stor0;
mapping of uint8 stor3;
array of address stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    mem[96 len -8133] = code.data[8850 len -8133]
    mem[64] = -8037
    require mem[mem[96] + 96] <= 50
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor3[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor0 = 1
    stor4.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor4[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor5 = mem[128]
    return code.data[717 len 8133]
}



// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


uint8 stor0;
mapping of struct transactions;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct owners;
uint256 required;
uint256 transactionCount;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    return bool(stor3[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor2[arg1][arg2])
}

function isMultiSigWallet() {
    return bool(stor0)
}

function transactions(uint256 arg1) {
    mem[256] = transactions[arg1][2].field_0
    idx = 256
    s = 0
    while transactions[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(transactions[arg1].field_0), 
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[256 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32)]),
           bool(uint8(transactions[arg1].field_768))
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function changeRequirement(uint256 arg1) {
    require msg.sender == this.address
    require owners.length <= 50
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit RequirementChange(arg1);
}

function revokeConfirmation(uint256 arg1) {
    require stor3[address(msg.sender)]
    require stor2[arg1][address(msg.sender)]
    require not uint8(transactions[arg1].field_768)
    stor2[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor4[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function replaceOwnerIndexed(address arg1, address arg2, uint256 arg3) {
    require msg.sender == this.address
    require stor3[address(arg1)]
    require not stor3[address(arg2)]
    require arg3 < owners.length
    require address(owners[arg3].field_0) == arg1
    require arg3 < owners.length
    address(owners[arg3].field_0) = arg2
    stor3[address(arg1)] = 0
    stor3[address(arg2)] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor4[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function addOwner(address arg1) {
    require msg.sender == this.address
    require not stor3[address(arg1)]
    require arg1
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor3[address(arg1)] = 1
    owners.length++
    if not owners.length <= owners.length + 1:
        idx = owners.length + 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function getOwners() {
    if owners.length:
        mem[160] = address(owners.field_0)
        idx = 160
        s = 0
        while (32 * owners.length) + 128 > idx:
            mem[idx + 32] = address(owners[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * owners.length) + 160] = 32
    mem[(32 * owners.length) + 192] = owners.length
    if Mask(251, 0, owners.length):
        mem[(32 * owners.length) + 224] = mem[160]
        mem[(32 * owners.length) + 256 len floor32((32 * owners.length) - 1)] = mem[192 len floor32((32 * owners.length) - 1)]
    return Array(len=owners.length, data=mem[(32 * owners.length) + 224 len 32 * owners.length])
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
            mem[32] = 1
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 1
            if uint8(transactions[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 1
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function confirmTransaction(uint256 arg1) {
    require stor3[address(msg.sender)]
    require address(transactions[arg1].field_0)
    require not stor2[arg1][address(msg.sender)]
    stor2[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1);
    require not uint8(transactions[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor4[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 1) + 2)
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = transactions[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[100 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(transactions[arg1].field_768) = 0
}

function removeOwner(address arg1) {
    require msg.sender == this.address
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if not owners.length <= owners.length - 1:
            idx = sha3(4) + owners.length - 1
            while sha3(4) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require msg.sender == this.address
            require owners.length <= 50
            require owners.length <= owners.length
            require owners.length
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if not owners.length <= owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        require msg.sender == this.address
        require owners.length <= 50
        require owners.length <= owners.length
        require owners.length
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function getConfirmations(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor4[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 4
        require s < owners.length
        mem[(32 * s) + 192] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * owners.length) + 192:
        mem[(32 * owners.length) + 192] = s
        t = 0
        while t < s:
            require t < owners.length
            require t < s
            mem[(32 * t) + (32 * owners.length) + 224] = mem[(32 * t) + 204 len 20]
            t = t + 1
            continue 
        mem[(32 * owners.length) + (32 * s) + 224] = 32
        mem[(32 * owners.length) + (32 * s) + 256] = s
        if Mask(251, 0, s):
            mem[(32 * owners.length) + (32 * s) + 288] = mem[(32 * owners.length) + 224]
            mem[(32 * owners.length) + (32 * s) + 320 len floor32((32 * s) - 1)] = mem[(32 * owners.length) + 256 len floor32((32 * s) - 1)]
        return Array(len=s, data=mem[(32 * owners.length) + (32 * s) + 288 len 32 * s])
    mem[(32 * s) + 224] = s
    t = 0
    while t < s:
        require t < owners.length
        require t < s, None
        mem[(32 * t) + (32 * s) + 256] = mem[(32 * t) + 204 len 20]
        t = t + 1
        continue 
    mem[(64 * s) + 256] = 32
    mem[(64 * s) + 288] = s, None
    if not Mask(251, 0, s):
        return memory
          from (64 * s) + 256
           len (32 * s) + 64
    mem[(64 * s) + 320] = mem[(32 * s) + 256]
    mem[(64 * s) + 352 len floor32((32 * s, None) - 1)] = mem[(32 * s) + 288 len floor32((32 * s, None) - 1)]
    return memory
      from (64 * s) + 256
       len (32 * s, None) + 64
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    address(transactions[stor6].field_0) = arg1
    transactions[stor6].field_256 = arg2
    transactions[stor6][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(transactions[stor6].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor3[address(msg.sender)]
    require address(transactions[stor6].field_0)
    require not stor2[stor6][address(msg.sender)]
    stor2[stor6][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount);
    require not uint8(transactions[stor6].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 2)
        if not stor2[stor6][address(stor4[idx].field_0)]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(transactions[stor6].field_768) = 1
        mem[ceil32(arg3.length) + 256] = transactions[stor6][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 1) + 2)
        while ceil32(arg3.length) + transactions[stor6][2].length + 256 > idx + 32:
            mem[idx + 32] = transactions[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[stor6].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value transactions[stor6].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 260 len transactions[stor6][2].length + (floor32(transactions[stor6][2].length - 1) + -transactions[stor6][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(transactions[stor6].field_768) = 0
        return transactionCount
    return transactionCount
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = transactionCount
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 1
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 1
            if uint8(transactions[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 1
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 >= (32 * transactionCount) + 192:
        mem[(32 * s) + 224] = arg2 - arg1
        mem[64] = (32 * s) + (32 * arg2 - arg1) + 256
        idx = arg1
        while idx < arg2:
            require idx < transactionCount
            require idx - arg1 < arg2 - arg1, None
            mem[(32 * idx - arg1) + (32 * s) + 256] = mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
        mem[(32 * s) + (32 * arg2 - arg1) + 256] = 32
        mem[(32 * s) + (32 * arg2 - arg1) + 288] = arg2 - arg1, None
        if not Mask(251, 0, arg2 - arg1):
            return 32, mem[(32 * s) + (32 * arg2 - arg1) + 288 len (32 * arg2 - arg1) + 32]
        mem[(32 * s) + (32 * arg2 - arg1) + 320] = mem[(32 * s) + 256]
        t = (32 * s) + 256
        u = (32 * s) + (32 * arg2 - arg1) + 320
        t = 32 * arg2 - arg1, None
        while t > 32:
            mem[u + 32] = mem[arg2 + 32]
            t = arg2 + 32
            u = u + 32
            t = t - 32
            continue 
        return memory
          from (32 * s) + (32 * arg2 - arg1) + 256
           len (32 * arg2 - arg1, None) + 64
    mem[(32 * transactionCount) + 192] = arg2 - arg1
    mem[64] = (32 * transactionCount) + (32 * arg2 - arg1) + 224
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 192]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 224] = mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 256] = mem[(32 * transactionCount) + 192]
    _118 = mem[(32 * transactionCount) + 192]
    if not Mask(251, 0, mem[(32 * transactionCount) + 192]):
        return 32, mem[(32 * transactionCount) + (32 * arg2 - arg1) + 256 len (32 * mem[(32 * transactionCount) + 192]) + 32]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 288] = mem[(32 * transactionCount) + 224]
    s = (32 * transactionCount) + 224
    t = mem[64] + 64
    s = 32 * mem[(32 * transactionCount) + 192]
    while s > 32:
        mem[t + 32] = mem[arg2 + 32]
        s = arg2 + 32
        t = t + 32
        s = s - 32
        continue 
    return memory
      from mem[64]
       len (32 * _118) + (32 * transactionCount) + (32 * arg2 - arg1) + -mem[64] + 288
}



}
