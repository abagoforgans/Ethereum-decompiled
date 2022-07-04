contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
mapping of struct transactions;
mapping of uint8 stor52;
mapping of uint8 stor53;
array of struct owners;
uint256 required;
uint256 transactionCount;
uint256 stor57;
mapping of uint8 stor58;
address superOwner;
uint256 stor59;
array of address stor33502907836418749244169045844382937189522934634747984393157770024170991419832;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    return bool(stor53[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor52[arg1][arg2])
}

function superOwner() {
    return address(superOwner)
}

function requireFinalization(uint256 arg1) {
    return bool(stor58[arg1])
}

function transactions(uint256 arg1) {
    mem[128] = transactions[arg1][2].field_0
    idx = 128
    s = 0
    while transactions[arg1][2].length + 96 > idx:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(transactions[arg1].field_0), 
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[128 len transactions[arg1][2].length]),
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

function setPrintLimit(uint256 arg1) {
    require msg.sender == address(superOwner)
    emit PrintLimitChanged(stor57, arg1);
    stor57 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == address(superOwner)
    require arg1
    address(superOwner) = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function revokeConfirmation(uint256 arg1) {
    require stor53[msg.sender]
    require stor52[arg1][msg.sender]
    require not uint8(transactions[arg1].field_768)
    stor52[arg1][msg.sender] = 0
    emit Revocation(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) {
    require this.address == msg.sender
    require owners.length <= 50
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit RequirementChange(arg1);
}

function addOwner(address arg1) {
    require this.address == msg.sender
    require not stor53[address(arg1)]
    require arg1
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor53[address(arg1)] = 1
    owners.length++
    stor4A11[stor54.length] = arg1
    emit OwnerAddition(arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 52)
        if not stor52[arg1][address(stor54[idx].field_0)]:
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
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 52)
        if not stor52[arg1][address(stor54[idx].field_0)]:
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

function replaceOwner(address arg1, address arg2) {
    require this.address == msg.sender
    require stor53[address(arg1)]
    require not stor53[address(arg2)]
    idx = 0
    while idx < owners.length:
        mem[0] = 54
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor53[address(arg1)] = 0
        stor53[arg2] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor53[address(arg1)] = 0
    stor53[arg2] = 1
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
            mem[32] = 51
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 51
            if uint8(transactions[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 51
                if not uint8(transactions[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmations(uint256 arg1) {
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[9752 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 52)
        if not stor52[arg1][address(stor54[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 54
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[9752 len 32 * s]
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

function finalizeTransaction(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == address(superOwner)
    require not uint8(transactions[arg1].field_768)
    require stor58[arg1]
    require var14001 < owners.length
    mem[0] = address(owners[var14001].field_0)
    mem[32] = sha3(arg1, 52)
    if not stor52[arg1][address(stor54[var14001].field_0)]:
        if var14002 != required:
            var14001 = var14001 + 1
            var14002 = var14002
            continue 
    else:
        if var14002 + 1 != required:
            var14001 = var14001 + 1
            var14002 = var14002 + 1
            continue 
    uint8(transactions[arg1].field_768) = 1
    mem[128] = transactions[arg1][2].field_0
    idx = 128
    s = 0
    while transactions[arg1][2].length + 96 > idx:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(transactions[arg1].field_0).mem[128 len 4] with:
       value transactions[arg1].field_256 wei
         gas gas_remaining - 34710 wei
        args mem[132 len transactions[arg1][2].length - 4]
    if not ext_call.success:
        emit ExecutionFailure(arg1);
        uint8(transactions[arg1].field_768) = 0
    else:
        emit Execution(arg1);
        emit Finalized(arg1);
}

function removeOwner(address arg1) {
    require this.address == msg.sender
    require stor53[address(arg1)]
    stor53[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 54
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = owners.length + sha3(54) - 1
            while sha3(54) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require this.address == msg.sender
            require owners.length <= 50
            require owners.length <= owners.length
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
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function initialize(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= 50
    require arg2 <= arg1.length
    require arg2
    require arg1.length
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not stor53[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] != 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 53
        stor53[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    owners.length = arg1.length
    if not arg1.length:
        idx = 0
        while owners.length > idx:
            address(owners[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(owners[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while owners.length > idx:
            address(owners[idx].field_0) = 0
            idx = idx + 1
            continue 
    required = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function executeTransaction(uint256 arg1) {
    require stor53[msg.sender]
    require stor52[arg1][msg.sender]
    require not uint8(transactions[arg1].field_768)
    if stor58[arg1]:
        emit RequireFinalization(arg1);
    else:
        require stor53[msg.sender]
        require stor52[arg1][msg.sender]
        require not uint8(transactions[arg1].field_768)
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = address(owners[idx].field_0)
            mem[32] = sha3(arg1, 52)
            if not stor52[arg1][address(stor54[idx].field_0)]:
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
            mem[128] = transactions[arg1][2].field_0
            idx = 128
            s = sha3(sha3(arg1, 51) + 2)
            while transactions[arg1][2].length + 96 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            call address(transactions[arg1].field_0).mem[128 len 4] with:
               value transactions[arg1].field_256 wei
                 gas gas_remaining - 34710 wei
                args mem[132 len transactions[arg1][2].length - 4]
            if ext_call.success:
                emit Execution(arg1);
            else:
                emit ExecutionFailure(arg1);
                uint8(transactions[arg1].field_768) = 0
}

function confirmTransaction(uint256 arg1) {
    require stor53[msg.sender]
    require address(transactions[arg1].field_0)
    require not stor52[arg1][msg.sender]
    stor52[arg1][msg.sender] = 1
    emit Confirmation(msg.sender, arg1);
    require stor53[msg.sender]
    require stor52[arg1][msg.sender]
    require not uint8(transactions[arg1].field_768)
    if stor58[arg1]:
        emit RequireFinalization(arg1);
    else:
        require stor53[msg.sender]
        require stor52[arg1][msg.sender]
        require not uint8(transactions[arg1].field_768)
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = address(owners[idx].field_0)
            mem[32] = sha3(arg1, 52)
            if not stor52[arg1][address(stor54[idx].field_0)]:
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
            mem[128] = transactions[arg1][2].field_0
            idx = 128
            s = sha3(sha3(arg1, 51) + 2)
            while transactions[arg1][2].length + 96 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            call address(transactions[arg1].field_0).mem[128 len 4] with:
               value transactions[arg1].field_256 wei
                 gas gas_remaining - 34710 wei
                args mem[132 len transactions[arg1][2].length - 4]
            if ext_call.success:
                emit Execution(arg1);
            else:
                emit ExecutionFailure(arg1);
                uint8(transactions[arg1].field_768) = 0
}

function initialize(address[] arg1, uint256 arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require arg1.length <= 50
    require arg2 <= arg1.length
    require arg2
    require arg1.length
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not stor53[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] != 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 53
        stor53[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    owners.length = arg1.length
    if not arg1.length:
        idx = 0
        while owners.length > idx:
            address(owners[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(owners[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while owners.length > idx:
            address(owners[idx].field_0) = 0
            idx = idx + 1
            continue 
    required = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    uint256(stor59) = msg.sender or Mask(96, 160, uint256(stor59))
    stor57 = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    require arg1 < arg2
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[9752 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 51
            if not uint8(transactions[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 51
            if uint8(transactions[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 51
                if not uint8(transactions[idx].field_768):
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
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[9752 len 32 * arg2 - arg1]
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
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    mem[ceil32(arg3.length) + 192] = 96
    address(transactions[stor56].field_0) = arg1
    transactions[stor56].field_256 = arg2
    transactions[stor56][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(transactions[stor56].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    if Mask(32, 224, mem[128]) == 0x99a88ec400000000000000000000000000000000000000000000000000000000:
        stor58[stor56] = 1
        emit RequireFinalization(transactionCount);
    else:
        if Mask(32, 224, mem[128]) == 0x9623609d00000000000000000000000000000000000000000000000000000000:
            stor58[stor56] = 1
            emit RequireFinalization(transactionCount);
        else:
            if Mask(32, 224, mem[128]) == 0xe20056e600000000000000000000000000000000000000000000000000000000:
                stor58[stor56] = 1
                emit RequireFinalization(transactionCount);
            else:
                if Mask(32, 224, mem[128]) == 0x7065cb4800000000000000000000000000000000000000000000000000000000:
                    stor58[stor56] = 1
                    emit RequireFinalization(transactionCount);
                else:
                    if Mask(32, 224, mem[128]) == 0x173825d900000000000000000000000000000000000000000000000000000000:
                        stor58[stor56] = 1
                        emit RequireFinalization(transactionCount);
                    else:
                        if Mask(32, 224, mem[128]) == 0x715018a600000000000000000000000000000000000000000000000000000000:
                            stor58[stor56] = 1
                            emit RequireFinalization(transactionCount);
                        else:
                            if Mask(32, 224, mem[128]) == 0xf2fde38b00000000000000000000000000000000000000000000000000000000:
                                stor58[stor56] = 1
                                emit RequireFinalization(transactionCount);
                            else:
                                if Mask(32, 224, mem[128]) == 0x40c10f1900000000000000000000000000000000000000000000000000000000:
                                    if mem[164] > stor57:
                                        stor58[stor56] = 1
                                        emit RequireFinalization(transactionCount);
    require stor53[msg.sender]
    require address(transactions[stor56].field_0)
    require not stor52[stor56][msg.sender]
    stor52[stor56][msg.sender] = 1
    emit Confirmation(msg.sender, transactionCount);
    require stor53[msg.sender]
    require stor52[stor56][msg.sender]
    require not uint8(transactions[stor56].field_768)
    if stor58[stor56]:
        emit RequireFinalization(transactionCount);
    else:
        require stor53[msg.sender]
        require stor52[stor56][msg.sender]
        require not uint8(transactions[stor56].field_768)
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = address(owners[idx].field_0)
            mem[32] = sha3(transactionCount, 52)
            if not stor52[stor56][address(stor54[idx].field_0)]:
                if s != required:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if s + 1 != required:
                    idx = idx + 1
                    s = s + 1
                    continue 
            uint8(transactions[stor56].field_768) = 1
            mem[ceil32(arg3.length) + 288] = transactions[stor56][2].field_0
            idx = ceil32(arg3.length) + 288
            s = sha3(sha3(transactionCount, 51) + 2)
            while ceil32(arg3.length) + transactions[stor56][2].length + 256 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            call address(transactions[stor56].field_0).mem[ceil32(arg3.length) + 288 len 4] with:
               value transactions[stor56].field_256 wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg3.length) + 292 len transactions[stor56][2].length - 4]
            if ext_call.success:
                emit Execution(transactionCount);
            else:
                emit ExecutionFailure(transactionCount);
                uint8(transactions[stor56].field_768) = 0
            return transactionCount
    return transactionCount
}



}
