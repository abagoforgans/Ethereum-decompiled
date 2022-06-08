contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
uint256 lockSeconds;
mapping of uint256 unlockTimes;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(uint8(stor1[arg1][arg2]))
}

function unlockTimes(uint256 arg1) {
    return unlockTimes[arg1]
}

function transactionCount() {
    return transactionCount
}

function lockSeconds() {
    return lockSeconds
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function changeLockSeconds(uint256 arg1) {
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    lockSeconds = arg1
    emit 0x884d6758: arg1
}

function revokeConfirmation(uint256 arg1) {
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not uint8(stor1[arg1][msg.sender]):
        revert with 0, 'CONFIRMED_ERROR'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'NOT_EXECUTED_ERROR'
    uint8(stor1[arg1][msg.sender]) = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function transactions(uint256 arg1) {
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length]),
           bool(uint8(stor0[arg1].field_768))
}

function changeRequirement(uint256 arg1) {
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if owners.length > 50:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if arg1 > owners.length:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not arg1:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not owners.length:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    required = arg1
    emit RequirementChange(arg1);
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s < required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function addOwner(address arg1) {
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if stor2[address(arg1)]:
        revert with 0, 'OWNER_DOES_NOT_EXIST_ERROR'
    if not arg1:
        revert with 0, 'NOT_NULL_ERROR'
    if owners.length + 1 > 50:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if required > owners.length + 1:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not required:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not owners.length + 1:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    stor2[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function replaceOwner(address arg1, address arg2) {
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if not stor2[address(arg1)]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if stor2[address(arg2)]:
        revert with 0, 'OWNER_DOES_NOT_EXIST_ERROR'
    idx = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[arg2] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor2[address(arg1)] = 0
    stor2[arg2] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
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
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
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
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function confirmTransaction(uint256 arg1) {
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not address(stor0[arg1].field_0):
        revert with 0, 'TRANSACTION_EXISTS_ERROR'
    if uint8(stor1[arg1][msg.sender]):
        revert with 0, 'NOT_CONFIRMED_ERROR'
    uint8(stor1[arg1][msg.sender]) = 1
    emit Confirmation(msg.sender, arg1);
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s < required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
        if not unlockTimes[arg1]:
            unlockTimes[arg1] = block.timestamp + lockSeconds
            emit 0x280af6a3: (block.timestamp + lockSeconds), arg1
}

function getConfirmations(uint256 arg1) {
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[8746 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 3
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[8746 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * owners.length) + (32 * t) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * owners.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * owners.length) + 160 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    if not arg1:
        revert with 0, 'NOT_NULL_ERROR'
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not address(stor0[stor5].field_0):
        revert with 0, 'TRANSACTION_EXISTS_ERROR'
    if uint8(stor1[stor5][msg.sender]):
        revert with 0, 'NOT_CONFIRMED_ERROR'
    uint8(stor1[stor5][msg.sender]) = 1
    emit Confirmation(msg.sender, transactionCount);
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s < required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
        if not unlockTimes[stor5]:
            unlockTimes[stor5] = block.timestamp + lockSeconds
            emit 0x280af6a3: (block.timestamp + lockSeconds), transactionCount
        return transactionCount
    return transactionCount
}

function executeTransaction(uint256 arg1) {
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'NOT_EXECUTED_ERROR'
    if block.timestamp < unlockTimes[arg1]:
        revert with 0, 'TRANSACTION_NEED_TO_UNLOCK'
    if not stor2[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'NOT_EXECUTED_ERROR'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s < required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_768) = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
}

function removeOwner(address arg1) {
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if not stor2[address(arg1)]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    stor2[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = owners.length + sha3(3) - 1
            while sha3(3) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            if msg.sender != this.address:
                revert with 0, 'ONLY_WALLET_ERROR'
            if owners.length > 50:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            if owners.length > owners.length:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            if not owners.length:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            if not owners.length:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        if msg.sender != this.address:
            revert with 0, 'ONLY_WALLET_ERROR'
        if owners.length > 50:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        if owners.length > owners.length:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        if not owners.length:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        if not owners.length:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}



}
