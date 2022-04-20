contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;

function _fallback() {
    mem[96 len -8029] = code.data[8729 len -8029]
    mem[64] = -7933
    require mem[mem[96] + 96] <= 50
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor2[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
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
    return code.data[700 len 8029]
}



// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct transactionDescription;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;

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

function getTransactionDescription(uint256 arg1) {
    return transactionDescription[arg1].field_1024
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
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(transactionDescription[arg1].field_768)
    uint8(stor1[arg1][address(msg.sender)]) = 0
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

function isConfirmed(uint256 arg1) {
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
    require msg.sender == this.address
    require not stor2[address(arg1)]
    require arg1
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor2[address(arg1)] = 1
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

function replaceOwner(address arg1, address arg2) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    idx = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[address(arg2)] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor2[address(arg1)] = 0
    stor2[address(arg2)] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function transactions(uint256 arg1) {
    mem[288] = transactionDescription[arg1][2].field_0
    idx = 288
    s = 0
    while transactionDescription[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = transactionDescription[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(transactionDescription[arg1].field_0), 
           transactionDescription[arg1].field_256,
           Array(len=transactionDescription[arg1][2].length, data=mem[288 len transactionDescription[arg1][2].length + (floor32(transactionDescription[arg1][2].length - 1) + -transactionDescription[arg1][2].length + 32 % 32)]),
           bool(uint8(transactionDescription[arg1].field_768)),
           transactionDescription[arg1].field_1024
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 160] = 32
        mem[(32 * owners.length) + 192] = owners.length
        mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 160
           len (96 * owners.length) + 64
    mem[160] = address(owners.field_0)
    idx = 160
    s = 0
    while (32 * owners.length) + 128 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
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
            if not uint8(transactionDescription[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(transactionDescription[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(transactionDescription[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function executeTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(transactionDescription[arg1].field_768)
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
        uint8(transactionDescription[arg1].field_768) = 1
        mem[96] = transactionDescription[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while transactionDescription[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactionDescription[arg1].field_0).mem[96 len 4] with:
           value transactionDescription[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len transactionDescription[arg1][2].length + (floor32(transactionDescription[arg1][2].length - 1) + -transactionDescription[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(transactionDescription[arg1].field_768) = 0
}

function getConfirmations(uint256 arg1) {
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
        mem[(32 * owners.length) + (32 * s) + 288 len floor32(s)] = mem[(32 * owners.length) + 224 len floor32(s)]
        return Array(len=s, data=mem[(32 * owners.length) + 224 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 288 len (32 * s) - floor32(s)]), 
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
    mem[(64 * s) + 320 len floor32(s)] = mem[(32 * s) + 256 len floor32(s)]
    return memory
      from (64 * s) + 256
       len (32 * s, None) + 64
}

function removeOwner(address arg1) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if not owners.length <= owners.length - 1:
            idx = sha3(3) + owners.length - 1
            while sha3(3) + owners.length > idx:
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

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require address(transactionDescription[arg1].field_0)
    require not uint8(stor1[arg1][address(msg.sender)])
    uint8(stor1[arg1][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, arg1);
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(transactionDescription[arg1].field_768)
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
        uint8(transactionDescription[arg1].field_768) = 1
        mem[96] = transactionDescription[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while transactionDescription[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactionDescription[arg1].field_0).mem[96 len 4] with:
           value transactionDescription[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len transactionDescription[arg1][2].length + (floor32(transactionDescription[arg1][2].length - 1) + -transactionDescription[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(transactionDescription[arg1].field_768) = 0
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3, bytes32 arg4) {
    require arg1
    address(transactionDescription[stor5].field_0) = arg1
    transactionDescription[stor5].field_256 = arg2
    transactionDescription[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(transactionDescription[stor5].field_768) = 0
    transactionDescription[stor5].field_1024 = arg4
    transactionCount++
    emit Submission(transactionCount);
    require stor2[address(msg.sender)]
    require address(transactionDescription[stor5].field_0)
    require not uint8(stor1[stor5][address(msg.sender)])
    uint8(stor1[stor5][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, transactionCount);
    require stor2[address(msg.sender)]
    require uint8(stor1[stor5][address(msg.sender)])
    require not uint8(transactionDescription[stor5].field_768)
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
        uint8(transactionDescription[stor5].field_768) = 1
        mem[ceil32(arg3.length) + 288] = transactionDescription[stor5][2].field_0
        idx = ceil32(arg3.length) + 288
        s = sha3(sha3(transactionCount, 0) + 2)
        while ceil32(arg3.length) + transactionDescription[stor5][2].length + 288 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactionDescription[stor5].field_0).mem[ceil32(arg3.length) + 288 len 4] with:
           value transactionDescription[stor5].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 292 len transactionDescription[stor5][2].length + (floor32(transactionDescription[stor5][2].length - 1) + -transactionDescription[stor5][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(transactionDescription[stor5].field_768) = 0
        return transactionCount
    return transactionCount
}



}
