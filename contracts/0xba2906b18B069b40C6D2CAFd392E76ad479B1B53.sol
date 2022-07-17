contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
uint32 secondsTimeLocked;
mapping of uint256 confirmationTimes;
mapping of uint8 stor8;

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

function instantData(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor8[arg1][Mask(32, 224, arg2)])
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

function changeTimeLock(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require this.address == msg.sender
    secondsTimeLocked = arg1
    emit TimeLockChange(arg1);
}

function setSelector(address arg1, bytes4 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require this.address == msg.sender
    stor8[address(arg1)][Mask(32, 224, arg2)] = uint8(arg3)
    emit SelectorSet(address(arg1), Mask(32, 224, arg2), arg3);
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

function getConfirmations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = owners.length
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[9221 len 32 * owners.length]
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
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[9221 len 32 * s]
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
        mem[128 len 32 * transactionCount] = code.data[9221 len 32 * transactionCount]
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
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[9221 len 32 * arg2 - arg1]
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
        if block.timestamp >= secondsTimeLocked + confirmationTimes[arg1]:
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
        else:
            mem[384] = stor0[arg1][2].field_0
            idx = 384
            s = sha3(sha3(arg1, 0) + 2)
            while stor0[arg1][2].length + 352 > idx:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            if not stor0[arg1][2].length:
                if not stor8[address(stor0[arg1].field_0)][0]:
                    if not stor8[0][0]:
                        revert with 0, 'TIME_LOCK_INCOMPLETE'
            else:
                if stor0[arg1][2].length < 4:
                    revert with 0, 'TIME_LOCK_INCOMPLETE'
                if not stor8[address(stor0[arg1].field_0)][Mask(32, 224, mem[384])]:
                    if not stor8[0][Mask(32, 224, mem[384])]:
                        revert with 0, 'TIME_LOCK_INCOMPLETE'
            uint8(stor0[arg1].field_768) = 1
            mem[ceil32(stor0[arg1][2].length) + 416] = stor0[arg1][2].field_0
            idx = ceil32(stor0[arg1][2].length) + 416
            s = sha3(sha3(arg1, 0) + 2)
            while ceil32(stor0[arg1][2].length) + stor0[arg1][2].length + 384 > idx:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            call address(stor0[arg1].field_0).mem[ceil32(stor0[arg1][2].length) + 416 len 4] with:
               value stor0[arg1].field_256 wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(stor0[arg1][2].length) + 420 len stor0[arg1][2].length - 4]
        if not ext_call.success:
            revert with 0, 'TX_REVERTED'
        emit Execution(arg1);
    revert with 0, 'TX_NOT_FULLY_CONFIRMED'
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
        _1034 = mem[(32 * idx) + 128]
        require stor2[msg.sender]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        require not uint8(stor0[mem[(32 * idx) + 128]].field_768)
        s = 0
        t = 0
        while s < owners.length:
            mem[0] = address(owners[s].field_0)
            mem[32] = sha3(_1034, 1)
            if not uint8(stor1[_1034][address(stor3[s].field_0)]):
                if t != required:
                    s = s + 1
                    t = t
                    continue 
                mem[0] = _1034
                mem[32] = 7
                if block.timestamp >= secondsTimeLocked + confirmationTimes[_1034]:
                    mem[0] = _1034
                    mem[32] = 0
                    uint8(stor0[_1034].field_768) = 1
                    _1553 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                    mem[_1553] = stor0[_1034][2].length
                    mem[0] = sha3(_1034, 0) + 2
                    mem[_1553 + 32] = stor0[_1034][2].field_0
                    s = _1553 + 32
                    t = sha3(sha3(_1034, 0) + 2)
                    while _1553 + stor0[_1034][2].length > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(stor0[_1034].field_0).mem[_1553 + 32 len 4] with:
                       value stor0[_1034].field_256 wei
                         gas gas_remaining - 34710 wei
                        args mem[_1553 + 36 len stor0[_1034][2].length - 4]
                    if not ext_call.success:
                        revert with 0, 'TX_REVERTED'
                    emit Execution(_1034);
                    idx = idx + 1
                    continue 
                _1555 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1555] = 0
                mem[_1555 + 32] = 0
                mem[_1555 + 64] = 96
                mem[_1555 + 96] = 0
                mem[0] = _1034
                mem[32] = 0
                _1561 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1561] = address(stor0[_1034].field_0)
                mem[_1561 + 32] = stor0[_1034].field_256
                _1562 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                mem[_1562] = stor0[_1034][2].length
                mem[0] = sha3(_1034, 0) + 2
                mem[_1562 + 32] = stor0[_1034][2].field_0
                s = _1562 + 32
                t = sha3(sha3(_1034, 0) + 2)
                while _1562 + stor0[_1034][2].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1561 + 64] = _1562
                mem[_1561 + 96] = bool(uint8(stor0[_1034].field_768))
                if not stor0[_1034][2].length:
                    mem[0] = mem[_1561 + 12 len 20]
                    if stor8[mem[0]][0]:
                        mem[0] = _1034
                        mem[32] = 0
                        uint8(stor0[_1034].field_768) = 1
                        _2136 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                        mem[_2136] = stor0[_1034][2].length
                        mem[0] = sha3(_1034, 0) + 2
                        mem[_2136 + 32] = stor0[_1034][2].field_0
                        s = _2136 + 32
                        t = sha3(sha3(_1034, 0) + 2)
                        while _2136 + stor0[_1034][2].length > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(stor0[_1034].field_0).mem[_2136 + 32 len 4] with:
                           value stor0[_1034].field_256 wei
                             gas gas_remaining - 34710 wei
                            args mem[_2136 + 36 len stor0[_1034][2].length - 4]
                        if not ext_call.success:
                            revert with 0, 'TX_REVERTED'
                        emit Execution(_1034);
                        idx = idx + 1
                        continue 
                    if not stor8[0][0]:
                        revert with 0, 'TIME_LOCK_INCOMPLETE'
                    mem[0] = _1034
                    mem[32] = 0
                    uint8(stor0[_1034].field_768) = 1
                    _2145 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                    mem[_2145] = stor0[_1034][2].length
                    mem[0] = sha3(_1034, 0) + 2
                    mem[_2145 + 32] = stor0[_1034][2].field_0
                    s = _2145 + 32
                    t = sha3(sha3(_1034, 0) + 2)
                    while _2145 + stor0[_1034][2].length > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(stor0[_1034].field_0).mem[_2145 + 32 len 4] with:
                       value stor0[_1034].field_256 wei
                         gas gas_remaining - 34710 wei
                        args mem[_2145 + 36 len stor0[_1034][2].length - 4]
                    if not ext_call.success:
                        revert with 0, 'TX_REVERTED'
                    emit Execution(_1034);
                    s = _2145 + floor32(stor0[_1034][2].length - 1) + 33
                    continue 
                if stor0[_1034][2].length < 4:
                    revert with 0, 'TIME_LOCK_INCOMPLETE'
                _2081 = mem[_1562 + 32]
                mem[0] = mem[_1561 + 12 len 20]
                if stor8[mem[0]][Mask(32, 224, _2081)]:
                    mem[0] = _1034
                    mem[32] = 0
                    uint8(stor0[_1034].field_768) = 1
                    _2134 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                    mem[_2134] = stor0[_1034][2].length
                    mem[0] = sha3(_1034, 0) + 2
                    mem[_2134 + 32] = stor0[_1034][2].field_0
                    s = _2134 + 32
                    t = sha3(sha3(_1034, 0) + 2)
                    while _2134 + stor0[_1034][2].length > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(stor0[_1034].field_0).mem[_2134 + 32 len 4] with:
                       value stor0[_1034].field_256 wei
                         gas gas_remaining - 34710 wei
                        args mem[_2134 + 36 len stor0[_1034][2].length - 4]
                    if not ext_call.success:
                        revert with 0, 'TX_REVERTED'
                    emit Execution(_1034);
                    idx = idx + 1
                    continue 
                if not stor8[0][Mask(32, 224, _2081)]:
                    revert with 0, 'TIME_LOCK_INCOMPLETE'
                mem[0] = _1034
                mem[32] = 0
                uint8(stor0[_1034].field_768) = 1
                _2142 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                mem[_2142] = stor0[_1034][2].length
                mem[0] = sha3(_1034, 0) + 2
                mem[_2142 + 32] = stor0[_1034][2].field_0
                s = _2142 + 32
                t = sha3(sha3(_1034, 0) + 2)
                while _2142 + stor0[_1034][2].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                call address(stor0[_1034].field_0).mem[_2142 + 32 len 4] with:
                   value stor0[_1034].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[_2142 + 36 len stor0[_1034][2].length - 4]
                if not ext_call.success:
                    revert with 0, 'TX_REVERTED'
                emit Execution(_1034);
                s = _2142 + floor32(stor0[_1034][2].length - 1) + 33
                continue 
            if t + 1 != required:
                s = s + 1
                t = t + 1
                continue 
            mem[0] = _1034
            mem[32] = 7
            if block.timestamp >= secondsTimeLocked + confirmationTimes[_1034]:
                mem[0] = _1034
                mem[32] = 0
                uint8(stor0[_1034].field_768) = 1
                _1557 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                mem[_1557] = stor0[_1034][2].length
                mem[0] = sha3(_1034, 0) + 2
                mem[_1557 + 32] = stor0[_1034][2].field_0
                s = _1557 + 32
                t = sha3(sha3(_1034, 0) + 2)
                while _1557 + stor0[_1034][2].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                call address(stor0[_1034].field_0).mem[_1557 + 32 len 4] with:
                   value stor0[_1034].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[_1557 + 36 len stor0[_1034][2].length - 4]
            else:
                _1563 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1563] = 0
                mem[_1563 + 32] = 0
                mem[_1563 + 64] = 96
                mem[_1563 + 96] = 0
                mem[0] = _1034
                mem[32] = 0
                _1570 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1570] = address(stor0[_1034].field_0)
                mem[_1570 + 32] = stor0[_1034].field_256
                _1571 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                mem[_1571] = stor0[_1034][2].length
                mem[0] = sha3(_1034, 0) + 2
                mem[_1571 + 32] = stor0[_1034][2].field_0
                s = _1571 + 32
                t = sha3(sha3(_1034, 0) + 2)
                while _1571 + stor0[_1034][2].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1570 + 64] = _1571
                mem[_1570 + 96] = bool(uint8(stor0[_1034].field_768))
                if not stor0[_1034][2].length:
                    mem[0] = mem[_1570 + 12 len 20]
                    if stor8[mem[0]][0]:
                        mem[0] = _1034
                        mem[32] = 0
                        uint8(stor0[_1034].field_768) = 1
                        _2140 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                        mem[_2140] = stor0[_1034][2].length
                        mem[0] = sha3(_1034, 0) + 2
                        mem[_2140 + 32] = stor0[_1034][2].field_0
                        s = _2140 + 32
                        t = sha3(sha3(_1034, 0) + 2)
                        while _2140 + stor0[_1034][2].length > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(stor0[_1034].field_0).mem[_2140 + 32 len 4] with:
                           value stor0[_1034].field_256 wei
                             gas gas_remaining - 34710 wei
                            args mem[_2140 + 36 len stor0[_1034][2].length - 4]
                        if not ext_call.success:
                            revert with 0, 'TX_REVERTED'
                        emit Execution(_1034);
                        s = _2140 + floor32(stor0[_1034][2].length - 1) + 33
                        continue 
                    if not stor8[0][0]:
                        revert with 0, 'TIME_LOCK_INCOMPLETE'
                    mem[0] = _1034
                    mem[32] = 0
                    uint8(stor0[_1034].field_768) = 1
                    _2151 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                    mem[_2151] = stor0[_1034][2].length
                    mem[0] = sha3(_1034, 0) + 2
                    mem[_2151 + 32] = stor0[_1034][2].field_0
                    s = _2151 + 32
                    t = sha3(sha3(_1034, 0) + 2)
                    while _2151 + stor0[_1034][2].length > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(stor0[_1034].field_0).mem[_2151 + 32 len 4] with:
                       value stor0[_1034].field_256 wei
                         gas gas_remaining - 34710 wei
                        args mem[_2151 + 36 len stor0[_1034][2].length - 4]
                else:
                    if stor0[_1034][2].length < 4:
                        revert with 0, 'TIME_LOCK_INCOMPLETE'
                    _2084 = mem[_1571 + 32]
                    mem[0] = mem[_1570 + 12 len 20]
                    if stor8[mem[0]][Mask(32, 224, _2084)]:
                        mem[0] = _1034
                        mem[32] = 0
                        uint8(stor0[_1034].field_768) = 1
                        _2138 = mem[64]
                        mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                        mem[_2138] = stor0[_1034][2].length
                        mem[0] = sha3(_1034, 0) + 2
                        mem[_2138 + 32] = stor0[_1034][2].field_0
                        s = _2138 + 32
                        t = sha3(sha3(_1034, 0) + 2)
                        while _2138 + stor0[_1034][2].length > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        call address(stor0[_1034].field_0).mem[_2138 + 32 len 4] with:
                           value stor0[_1034].field_256 wei
                             gas gas_remaining - 34710 wei
                            args mem[_2138 + 36 len stor0[_1034][2].length - 4]
                        if not ext_call.success:
                            revert with 0, 'TX_REVERTED'
                        emit Execution(_1034);
                        s = _2138 + floor32(stor0[_1034][2].length - 1) + 33
                        continue 
                    if not stor8[0][Mask(32, 224, _2084)]:
                        revert with 0, 'TIME_LOCK_INCOMPLETE'
                    mem[0] = _1034
                    mem[32] = 0
                    uint8(stor0[_1034].field_768) = 1
                    _2148 = mem[64]
                    mem[64] = mem[64] + ceil32(stor0[_1034][2].length) + 32
                    mem[_2148] = stor0[_1034][2].length
                    mem[0] = sha3(_1034, 0) + 2
                    mem[_2148 + 32] = stor0[_1034][2].field_0
                    s = _2148 + 32
                    t = sha3(sha3(_1034, 0) + 2)
                    while _2148 + stor0[_1034][2].length > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(stor0[_1034].field_0).mem[_2148 + 32 len 4] with:
                       value stor0[_1034].field_256 wei
                         gas gas_remaining - 34710 wei
                        args mem[_2148 + 36 len stor0[_1034][2].length - 4]
            if not ext_call.success:
                revert with 0, 'TX_REVERTED'
            emit Execution(_1034);
            idx = idx + 1
            continue 
        revert with 0, 'TX_NOT_FULLY_CONFIRMED'
}



}
