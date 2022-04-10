contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;
address stor6;

function _fallback() {
    mem[96 len -4081] = code.data[4640 len -4081]
    mem[64] = -3985
    require mem[mem[96] + 96] <= 50
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor2[mem[mem[96] + (32 * idx) + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20] != 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor3.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4 = mem[128]
    stor6 = mem[172 len 20]
    return code.data[559 len 4081]
}



// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
address tokenFactoryAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function tokenFactory() {
    return tokenFactoryAddress
}

function _fallback() {
    revert
}

function revokeConfirmation(uint256 arg1) {
    require stor2[address(msg.sender)]
    require stor1[arg1][address(msg.sender)]
    require not stor0[arg1].field_768
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][stor3[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][stor3[idx].field_0]:
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

function transactions(uint256 arg1) {
    mem[256] = stor0[arg1][2].field_0
    idx = 256
    s = 0
    while stor0[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[256 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32)]),
           bool(stor0[arg1].field_768)
}

function getOwners() {
    if owners.length:
        mem[160] = address(owners.field_0)
        idx = 160
        s = 0
        while (32 * owners.length) + 128 > idx:
            mem[idx + 32] = owners[s].field_256
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
            mem[32] = 0
            if not stor0[idx].field_768:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_768:
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_768:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function executeTransaction(uint256 arg1) {
    require not stor0[arg1].field_768
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][stor3[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        require ext_code.size(tokenFactoryAddress)
        call tokenFactoryAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor0[arg1].field_0, stor0[arg1].field_256
        require ext_call.success
        if not ext_call.return_data[0]:
            stor0[arg1].field_768 = 0
            emit ExecutionFailure(arg1);
        else:
            stor0[arg1].field_768 = 1
            emit Execution(arg1);
}

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require stor0[arg1].field_0
    require not stor1[arg1][address(msg.sender)]
    stor1[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1);
    require not stor0[arg1].field_768
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][stor3[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        require ext_code.size(tokenFactoryAddress)
        call tokenFactoryAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor0[arg1].field_0, stor0[arg1].field_256
        require ext_call.success
        if not ext_call.return_data[0]:
            stor0[arg1].field_768 = 0
            emit ExecutionFailure(arg1);
        else:
            stor0[arg1].field_768 = 1
            emit Execution(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    stor0[stor5].field_0 = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[stor5].field_768 = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor2[address(msg.sender)]
    require stor0[stor5].field_0
    require not stor1[stor5][address(msg.sender)]
    stor1[stor5][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount);
    require not stor0[stor5].field_768
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(transactionCount, 1)
        if not stor1[stor5][stor3[idx].field_0]:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        require ext_code.size(tokenFactoryAddress)
        call tokenFactoryAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor0[stor5].field_0, stor0[stor5].field_256
        require ext_call.success
        if not ext_call.return_data[0]:
            stor0[stor5].field_768 = 0
            emit ExecutionFailure(transactionCount);
        else:
            stor0[stor5].field_768 = 1
            emit Execution(transactionCount);
        return transactionCount
    return transactionCount
}

function getConfirmations(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][stor3[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 3
        require s < owners.length
        mem[(32 * s) + 192] = owners[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * owners.length) + 192:
        mem[(32 * owners.length) + 192] = s
        t = 0
        while t < s:
            require t < owners.length
            require t < s
            mem[(32 * owners.length) + (32 * t) + 224] = mem[(32 * t) + 204 len 20]
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
        mem[(32 * s) + (32 * t) + 256] = mem[(32 * t) + 204 len 20]
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
            mem[32] = 0
            if not stor0[idx].field_768:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_768:
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_768:
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
            mem[(32 * s) + (32 * idx - arg1) + 256] = mem[(32 * idx) + 192]
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
        mem[(32 * transactionCount) + (32 * idx - arg1) + 224] = mem[(32 * idx) + 192]
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
