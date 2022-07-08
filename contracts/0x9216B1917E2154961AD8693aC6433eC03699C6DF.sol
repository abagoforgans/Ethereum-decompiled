contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(uint8(stor1[arg1][arg2]))
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

function getConfirmationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if not uint8(stor1[arg1][msg.sender]):
        revert with 0, 'Not confirmed yet'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'Already executed'
    uint8(stor1[arg1][msg.sender]) = 0
    emit Revocation(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'Bad call'
    if owners.length > 50:
        revert with 0, 'Bad parameters'
    if arg1 > owners.length:
        revert with 0, 'Bad parameters'
    if not arg1:
        revert with 0, 'Bad parameters'
    if not owners.length:
        revert with 0, 'Bad parameters'
    required = arg1
    emit RequirementChange(arg1);
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function isConfirmed(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
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
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'Bad call'
    if stor2[address(arg1)]:
        revert with 0, 'Duplicated owner'
    if not arg1:
        revert with 0, 'Address cannot be null'
    if owners.length + 1 > 50:
        revert with 0, 'Bad parameters'
    if required > owners.length + 1:
        revert with 0, 'Bad parameters'
    if not required:
        revert with 0, 'Bad parameters'
    if not owners.length + 1:
        revert with 0, 'Bad parameters'
    stor2[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function replaceOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0, 'Bad call'
    if not stor2[address(arg1)]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if stor2[address(arg2)]:
        revert with 0, 'Duplicated owner'
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

function getConfirmations(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[7355 len 32 * owners.length]
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
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[7355 len 32 * s]
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

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if not uint8(stor1[arg1][msg.sender]):
        revert with 0, 'Not confirmed yet'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'Already executed'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
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
            args mem[100 len stor0[arg1][2].length - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if not address(stor0[arg1].field_0):
        revert with 0, 'Unknown txId'
    if uint8(stor1[arg1][msg.sender]):
        revert with 0, 'Already confirmed'
    uint8(stor1[arg1][msg.sender]) = 1
    emit Confirmation(msg.sender, arg1);
    if not stor2[msg.sender]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if not uint8(stor1[arg1][msg.sender]):
        revert with 0, 'Not confirmed yet'
    if uint8(stor0[arg1].field_768):
        revert with 0, 'Already executed'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
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
            args mem[100 len stor0[arg1][2].length - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'Bad call'
    if not stor2[address(arg1)]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
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
                revert with 0, 'Bad call'
            if owners.length > 50:
                revert with 0, 'Bad parameters'
            if owners.length > owners.length:
                revert with 0, 'Bad parameters'
            if not owners.length:
                revert with 0, 'Bad parameters'
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
            revert with 0, 'Bad call'
        if owners.length > 50:
            revert with 0, 'Bad parameters'
        if owners.length > owners.length:
            revert with 0, 'Bad parameters'
        if not owners.length:
            revert with 0, 'Bad parameters'
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[7355 len 32 * transactionCount]
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
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
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
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[7355 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * transactionCount) + (32 * idx - arg1) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'Address cannot be null'
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    if not stor2[msg.sender]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if not address(stor0[stor5].field_0):
        revert with 0, 'Unknown txId'
    if uint8(stor1[stor5][msg.sender]):
        revert with 0, 'Already confirmed'
    uint8(stor1[stor5][msg.sender]) = 1
    emit Confirmation(msg.sender, transactionCount);
    if not stor2[msg.sender]:
        revert with 0, 32, 12, 0xfe556e617574686f72697a656400000000000000000000000000000000000000
    if not uint8(stor1[stor5][msg.sender]):
        revert with 0, 'Not confirmed yet'
    if uint8(stor0[stor5].field_768):
        revert with 0, 'Already executed'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[stor5].field_768) = 1
        mem[ceil32(arg3.length) + 256] = stor0[stor5][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 0) + 2)
        while ceil32(arg3.length) + stor0[stor5][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[stor5].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value stor0[stor5].field_256 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 260 len stor0[stor5][2].length - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(stor0[stor5].field_768) = 0
        return transactionCount
    return transactionCount
}



}
