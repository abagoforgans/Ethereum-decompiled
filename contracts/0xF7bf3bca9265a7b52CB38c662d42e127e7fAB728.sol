contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
uint256 secondsTimeLocked;
mapping of uint256 confirmationTimes;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(uint8(stor1[arg1][arg2]))
}

function secondsTimeLocked() payable {
    return secondsTimeLocked
}

function transactionCount() payable {
    return transactionCount
}

function confirmationTimes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return confirmationTimes[arg1]
}

function required() payable {
    return required
}

function _fallback() payable {
    revert
}

function changeTimeLock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require this.address == msg.sender
    secondsTimeLocked = arg1
    emit TimeLockChange(arg1);
}

function revokeConfirmation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[msg.sender]
    require uint8(stor1[arg1][msg.sender])
    require not uint8(stor0[arg1].field_768)
    uint8(stor1[arg1][msg.sender]) = 0
    emit Revocation(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require this.address == msg.sender
    require owners.length <= 50
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit RequirementChange(arg1);
}

function getConfirmationCount(uint256 arg1) payable {
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

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require this.address == msg.sender
    require not stor2[address(arg1)]
    require arg1
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor2[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function transactions(uint256 arg1) payable {
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
           Array(len=stor0[arg1][2].length, data=mem[128 len ceil32(stor0[arg1][2].length)]),
           bool(uint8(stor0[arg1].field_768))
}

function isConfirmed(uint256 arg1) payable {
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

function replaceOwner(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require this.address == msg.sender
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    require arg2
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

function getTransactionCount(bool arg1, bool arg2) payable {
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

function getOwners() payable {
    mem[64] = (32 * owners.length) + 128
    mem[96] = owners.length
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        idx = 0
        s = 128
        t = (32 * owners.length) + 192
        while idx < owners.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
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
    mem[(32 * owners.length) + 128] = 32
    mem[(32 * owners.length) + 160] = owners.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < owners.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * owners.length) + -mem[64] + 192
}

function confirmTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[msg.sender]
    require address(stor0[arg1].field_0)
    require not uint8(stor1[arg1][msg.sender])
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s == required:
                revert with 0, 'TX_FULLY_CONFIRMED'
            idx = idx + 1
            s = s
            continue 
        if s + 1 == required:
            revert with 0, 'TX_FULLY_CONFIRMED'
        idx = idx + 1
        s = s + 1
        continue 
    uint8(stor1[arg1][msg.sender]) = 1
    emit Confirmation(msg.sender, arg1);
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
        confirmationTimes[arg1] = block.timestamp
        emit ConfirmationTimeSet(block.timestamp, arg1);
}

function executeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[msg.sender]
    require not uint8(stor0[arg1].field_768)
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
        if block.timestamp < secondsTimeLocked + confirmationTimes[arg1]:
            revert with 0, 'TIME_LOCK_INCOMPLETE'
        uint8(stor0[arg1].field_768) = 1
        mem[128] = stor0[arg1][2].field_0
        idx = 128
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[128 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[132 len stor0[arg1][2].length - 4]
        if not ext_call.success:
            revert with 0, 'TX_REVERTED'
        emit Execution(arg1);
    revert with 0, 'TX_NOT_FULLY_CONFIRMED'
}

function getConfirmations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = owners.length
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[7936 len 32 * owners.length]
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
    mem[64] = (32 * owners.length) + (32 * s) + 160
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[7936 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * t) + (32 * owners.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 160] = 32
    mem[(32 * owners.length) + (32 * s) + 192] = s
    t = 0
    u = (32 * owners.length) + 160
    v = mem[64] + 64
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len (32 * owners.length) + (64 * s) + -mem[64] + 224
}

function removeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require this.address == msg.sender
    require stor2[address(arg1)]
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
            require this.address == msg.sender
            require owners.length <= 50
            require owners.length <= owners.length
            require owners.length
            require owners.length
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
        require this.address == msg.sender
        require owners.length <= 50
        require owners.length <= owners.length
        require owners.length
        require owners.length
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg1
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor2[msg.sender]
    require address(stor0[stor5].field_0)
    require not uint8(stor1[stor5][msg.sender])
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s == required:
                revert with 0, 'TX_FULLY_CONFIRMED'
            idx = idx + 1
            s = s
            continue 
        if s + 1 == required:
            revert with 0, 'TX_FULLY_CONFIRMED'
        idx = idx + 1
        s = s + 1
        continue 
    uint8(stor1[stor5][msg.sender]) = 1
    emit Confirmation(msg.sender, transactionCount);
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
        confirmationTimes[stor5] = block.timestamp
        emit ConfirmationTimeSet(block.timestamp, transactionCount);
        return transactionCount
    return transactionCount
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[7936 len 32 * transactionCount]
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
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[7936 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]] = mem[(32 * transactionCount) + 160 len 32 * mem[(32 * transactionCount) + 128]]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function executeMultipleTransactions(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    require stor2[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _98 = mem[(32 * idx) + 128]
        require stor2[msg.sender]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        require not uint8(stor0[mem[(32 * idx) + 128]].field_768)
        s = 0
        t = 0
        while s < owners.length:
            mem[0] = address(owners[s].field_0)
            mem[32] = sha3(_98, 1)
            if not uint8(stor1[_98][address(stor3[s].field_0)]):
                if t != required:
                    s = s + 1
                    t = t
                    continue 
                if block.timestamp < secondsTimeLocked + confirmationTimes[_98]:
                    revert with 0, 'TIME_LOCK_INCOMPLETE'
                mem[0] = _98
                mem[32] = 0
                uint8(stor0[_98].field_768) = 1
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_98][2].length) + 32
                mem[_148] = stor0[_98][2].length
                mem[0] = sha3(_98, 0) + 2
                mem[_148 + 32] = stor0[_98][2].field_0
                s = _148 + 32
                t = sha3(sha3(_98, 0) + 2)
                while _148 + stor0[_98][2].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                call address(stor0[_98].field_0).mem[_148 + 32 len 4] with:
                   value stor0[_98].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[_148 + 36 len stor0[_98][2].length - 4]
            else:
                if t + 1 != required:
                    s = s + 1
                    t = t + 1
                    continue 
                if block.timestamp < secondsTimeLocked + confirmationTimes[_98]:
                    revert with 0, 'TIME_LOCK_INCOMPLETE'
                mem[0] = _98
                mem[32] = 0
                uint8(stor0[_98].field_768) = 1
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_98][2].length) + 32
                mem[_152] = stor0[_98][2].length
                mem[0] = sha3(_98, 0) + 2
                mem[_152 + 32] = stor0[_98][2].field_0
                s = _152 + 32
                t = sha3(sha3(_98, 0) + 2)
                while _152 + stor0[_98][2].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                call address(stor0[_98].field_0).mem[_152 + 32 len 4] with:
                   value stor0[_98].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[_152 + 36 len stor0[_98][2].length - 4]
            if not ext_call.success:
                revert with 0, 'TX_REVERTED'
            emit Execution(_98);
            idx = idx + 1
            continue 
        revert with 0, 'TX_NOT_FULLY_CONFIRMED'
}



}
