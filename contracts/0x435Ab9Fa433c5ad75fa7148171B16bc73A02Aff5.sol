contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 3


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1].field_0
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor1[arg1][arg2])
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

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256, bool(stor0[arg1].field_512)
}

function getConfirmationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    require calldata.size - 4 >= 32
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

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'Vault:sender should be owner'
    if not stor1[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction should be confirmed'
    if stor0[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction has already executed'
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function getTransactionCount(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
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
            if not stor0[idx].field_512:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_512:
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_512:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmations(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[7143 len 32 * owners.length]
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
        mem[(32 * s) + 128] = owners[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[7143 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * t) + (32 * owners.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * owners.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * owners.length) + 160 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'Vault:sender should be owner'
    if not stor1[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction should be confirmed'
    if stor0[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction has already executed'
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
        stor0[arg1].field_512 = 1
        call stor0[arg1].field_0 with:
           value stor0[arg1].field_256 wei
             gas gas_remaining wei
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            stor0[arg1].field_512 = 0
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'Vault:sender should be owner'
    if not stor0[arg1].field_0:
        revert with 0, 'Vault:transaction should exist'
    if stor1[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction is already confirmed'
    stor1[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1);
    if not stor2[address(msg.sender)]:
        revert with 0, 'Vault:sender should be owner'
    if not stor1[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction should be confirmed'
    if stor0[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault:transaction has already executed'
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
        stor0[arg1].field_512 = 1
        call stor0[arg1].field_0 with:
           value stor0[arg1].field_256 wei
             gas gas_remaining wei
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            stor0[arg1].field_512 = 0
}

function submitTransaction(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Vault:address shouldn't be null'
    stor0[stor5].field_0 = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5].field_512 = 0
    transactionCount++
    emit Submission(transactionCount);
    if not stor2[address(msg.sender)]:
        revert with 0, 'Vault:sender should be owner'
    if not stor0[stor5].field_0:
        revert with 0, 'Vault:transaction should exist'
    if stor1[stor5][address(msg.sender)]:
        revert with 0, 'Vault:transaction is already confirmed'
    stor1[stor5][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount);
    if not stor2[address(msg.sender)]:
        revert with 0, 'Vault:sender should be owner'
    if not stor1[stor5][address(msg.sender)]:
        revert with 0, 'Vault:transaction should be confirmed'
    if stor0[stor5].field_512:
        revert with 0, 'Vault:transaction has already executed'
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
        stor0[stor5].field_512 = 1
        call stor0[stor5].field_0 with:
           value stor0[stor5].field_256 wei
             gas gas_remaining wei
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            stor0[stor5].field_512 = 0
        return transactionCount
    return transactionCount
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[7143 len 32 * transactionCount]
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
            if not stor0[idx].field_512:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_512:
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_512:
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[7143 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}



}
