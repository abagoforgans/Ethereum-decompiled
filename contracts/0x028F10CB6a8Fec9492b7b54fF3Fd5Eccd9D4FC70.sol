contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
address stor3;
array of address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    mem[96 len -11483] = code.data[12289 len -11483]
    mem[64] = -11387
    require mem[108 len 20]
    require mem[mem[128] + 96] <= 10
    require mem[160] <= mem[mem[128] + 96]
    require mem[160]
    require mem[mem[128] + 96]
    stor3 = mem[108 len 20]
    idx = 0
    while idx < mem[mem[128] + 96]:
        require idx < mem[mem[128] + 96]
        require not stor2[mem[(32 * idx) + mem[128] + 140 len 20]]
        require idx < mem[mem[128] + 96]
        require mem[(32 * idx) + mem[128] + 140 len 20]
        require idx < mem[mem[128] + 96]
        mem[0] = mem[(32 * idx) + mem[128] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[128] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor4.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor4[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor5 = mem[160]
    stor6 = 0
    return code.data[806 len 11483]
}



// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 10


mapping of struct stor0;
mapping of uint8 sub_0c5291f4;
mapping of uint8 stor2;
address tokenaddress;
array of struct owners;
uint256 required;
uint256 transactionCount;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function sub_0c5291f4(?) {
    require sub_0c5291f4[arg1][arg2] <= 2
    return sub_0c5291f4[arg1][arg2]
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function sub_a1dbbc28(?) {
    require stor2[address(arg1)]
    require sub_0c5291f4[arg2][address(arg1)] <= 2
    return sub_0c5291f4[arg2][address(arg1)]
}

function getTokenaddress() {
    return tokenaddress
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function transactions(uint256 arg1) {
    require uint8(stor0[arg1].field_512) <= 3
    return address(stor0[arg1].field_0), stor0[arg1].field_256, uint8(stor0[arg1].field_512)
}

function revokeConfirmation(uint256 arg1) {
    require stor2[address(msg.sender)]
    require sub_0c5291f4[arg1][address(msg.sender)] <= 2
    require sub_0c5291f4[arg1][address(msg.sender)] != 1
    require uint8(stor0[arg1].field_512) <= 3
    require not uint8(stor0[arg1].field_512)
    sub_0c5291f4[arg1][address(msg.sender)] = 2
    uint8(stor0[arg1].field_512) = 3
    emit Revoke(msg.sender, arg1);
}

function changeRequirement(uint256 arg1) {
    require stor2[address(msg.sender)]
    require owners.length <= 10
    require arg1 <= owners.length
    require arg1
    require owners.length
    idx = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 0
        require uint8(stor0[idx].field_512) <= 3
        idx = idx + 1
        continue 
    required = arg1
    emit RequirementChange(arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        require idx < owners.length
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        require sub_0c5291f4[arg1][address(stor4[idx].field_0)] <= 2
        if sub_0c5291f4[arg1][address(stor4[idx].field_0)] != 1:
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
        require idx < owners.length
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        require sub_0c5291f4[arg1][address(stor4[idx].field_0)] <= 2
        if sub_0c5291f4[arg1][address(stor4[idx].field_0)] != 1:
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

function sub_41424869(?) {
    if 0 == arg1:
        return 0
    if not stor2[address(arg1)]:
        return 0
    idx = 0
    s = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 0
        require uint8(stor0[idx].field_512) <= 3
        if uint8(stor0[idx].field_512):
            idx = idx + 1
            s = s
            continue 
        mem[0] = arg1
        mem[32] = sha3(idx, 1)
        require sub_0c5291f4[idx][address(arg1)] <= 2
        if sub_0c5291f4[idx][address(arg1)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function replaceOwner(address arg1, address arg2) {
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    idx = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 0
        require uint8(stor0[idx].field_512) <= 3
        idx = idx + 1
        continue 
    idx = 0
    while idx < owners.length:
        mem[0] = 4
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[address(arg2)] = 1
        emit OwnerChanged(address(arg1), arg2);
    stor2[address(arg1)] = 0
    stor2[address(arg2)] = 1
    emit OwnerChanged(address(arg1), arg2);
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

function executeTransaction(uint256 arg1) {
    require uint8(stor0[arg1].field_512) <= 3
    require not uint8(stor0[arg1].field_512)
    idx = 0
    s = 0
    while idx < owners.length:
        require idx < owners.length
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        require sub_0c5291f4[arg1][address(stor4[idx].field_0)] <= 2
        if sub_0c5291f4[arg1][address(stor4[idx].field_0)] != 1:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_512) = 1
        call tokenaddress with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args address(stor0[arg1].field_0), stor0[arg1].field_256
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_512) = 2
}

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require address(stor0[arg1].field_0)
    require sub_0c5291f4[arg1][address(msg.sender)] <= 2
    require not sub_0c5291f4[arg1][address(msg.sender)]
    sub_0c5291f4[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1);
    require uint8(stor0[arg1].field_512) <= 3
    require not uint8(stor0[arg1].field_512)
    idx = 0
    s = 0
    while idx < owners.length:
        require idx < owners.length
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        require sub_0c5291f4[arg1][address(stor4[idx].field_0)] <= 2
        if sub_0c5291f4[arg1][address(stor4[idx].field_0)] != 1:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_512) = 1
        call tokenaddress with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args address(stor0[arg1].field_0), stor0[arg1].field_256
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_512) = 2
}

function getConfirmations(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        require idx < owners.length
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        require sub_0c5291f4[arg1][address(stor4[idx].field_0)] <= 2
        if sub_0c5291f4[arg1][address(stor4[idx].field_0)] != 1:
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

function submitTransaction(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require arg1
    address(stor0[stor6].field_0) = arg1
    stor0[stor6].field_256 = arg2
    uint8(stor0[stor6].field_512) = 0
    stor0[stor6].field_768 % 1 = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor2[address(msg.sender)]
    require address(stor0[stor6].field_0)
    require sub_0c5291f4[stor6][address(msg.sender)] <= 2
    require not sub_0c5291f4[stor6][address(msg.sender)]
    sub_0c5291f4[stor6][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount);
    require uint8(stor0[stor6].field_512) <= 3
    require not uint8(stor0[stor6].field_512)
    idx = 0
    s = 0
    while idx < owners.length:
        require idx < owners.length
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        require sub_0c5291f4[stor6][address(stor4[idx].field_0)] <= 2
        if sub_0c5291f4[stor6][address(stor4[idx].field_0)] != 1:
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[stor6].field_512) = 1
        call tokenaddress with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args address(stor0[stor6].field_0), stor0[stor6].field_256
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(stor0[stor6].field_512) = 2
}

function addOwners(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 0
        require uint8(stor0[idx].field_512) <= 3
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not stor2[mem[(32 * idx) + 140 len 20]]
        require mem[(32 * idx) + 140 len 20]
        require owners.length + 1 <= 10
        require required <= owners.length + 1
        require required
        require owners.length + 1
        mem[32] = 2
        stor2[address(mem[(32 * idx) + 128])] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            s = sha3(4) + owners.length + 1
            while sha3(4) + owners.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 4
        address(owners[owners.length].field_0) = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit OwnerAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        continue 
    if not owners.length:
        mem[(32 * arg1.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + 288] = 4
        mem[(64 * arg1.length) + 320] = 'true'
        emit 0x68036b62: 96, 128, (32 * arg1.length) + 160, owners.length, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + -floor32(arg1.length) + 64]
    else:
        mem[(32 * arg1.length) + 256] = address(owners.field_0)
        idx = (32 * arg1.length) + 256
        s = 0
        while (32 * arg1.length) + (32 * owners.length) + 256 > idx + 32:
            mem[idx + 32] = address(owners[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * arg1.length) + (32 * owners.length) + 256] = arg1.length
        mem[(32 * arg1.length) + (32 * owners.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * owners.length) + 288] = 4
        mem[(64 * arg1.length) + (32 * owners.length) + 320] = 'true'
        emit 0x68036b62: Array(len=owners.length, data=mem[(32 * arg1.length) + 256 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * owners.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + -floor32(arg1.length) + 64]), (32 * owners.length) + 128, (32 * arg1.length) + (32 * owners.length) + 160
}

function sub_577c9070(?) {
    mem[160] = transactionCount
    if 0 == arg1:
        return ''
    if not stor2[address(arg1)]:
        return ''
    if arg2 > arg3:
        return ''
    if arg2 <= 0:
        return ''
    if arg3 <= 0:
        return ''
    idx = 0
    s = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 0
        require uint8(stor0[idx].field_512) <= 3
        if uint8(stor0[idx].field_512):
            idx = idx + 1
            s = s
            continue 
        mem[0] = arg1
        mem[32] = sha3(idx, 1)
        require sub_0c5291f4[idx][address(arg1)] <= 2
        if sub_0c5291f4[idx][address(arg1)]:
            idx = idx + 1
            s = s
            continue 
        require s < transactionCount
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        return ''
    if s < arg2:
        return ''
    if s <= arg3:
        if (32 * s) + 224 < (32 * transactionCount) + 192:
            mem[(32 * transactionCount) + 192] = s + -arg2 + 1
            t = arg2 - 1
            while t < s:
                require t < transactionCount
                require t + -arg2 + 1 < mem[(32 * transactionCount) + 192]
                mem[(32 * t + -arg2 + 1) + (32 * transactionCount) + 224] = mem[(32 * t) + 192]
                t = t + 1
                continue 
            mem[(32 * transactionCount) + (32 * s + -arg2 + 1) + 224] = 32
            mem[(32 * transactionCount) + (32 * s + -arg2 + 1) + 256] = mem[(32 * transactionCount) + 192]
            mem[(32 * transactionCount) + (32 * s + -arg2 + 1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
            return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * s + -arg2 + 1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
        mem[(32 * s) + 224] = s + -arg2 + 1
        t = arg2 - 1
        while t < s:
            require t < transactionCount
            require t + -arg2 + 1 < s + -arg2 + 1, None
            mem[(32 * t + -arg2 + 1) + (32 * s) + 256] = mem[(32 * t) + 192]
            t = t + 1
            continue 
        mem[(32 * s) + (32 * s + -arg2 + 1) + 256] = 32
        mem[(32 * s) + (32 * s + -arg2 + 1) + 288] = s + -arg2 + 1, None
        mem[(32 * s) + (32 * s + -arg2 + 1) + 320 len floor32(s + -arg2 + 1)] = mem[(32 * s) + 256 len floor32(s + -arg2 + 1)]
        return memory
          from (32 * s) + (32 * s + -arg2 + 1) + 256
           len (32 * s + -arg2 + 1, None) + 64
    if (32 * s) + 224 < (32 * transactionCount) + 192:
        mem[(32 * transactionCount) + 192] = arg3 + -arg2 + 1
        idx = arg2 - 1
        while idx < arg3:
            require idx < transactionCount
            require idx + -arg2 + 1 < mem[(32 * transactionCount) + 192]
            mem[(32 * idx + -arg2 + 1) + (32 * transactionCount) + 224] = mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
        mem[(32 * transactionCount) + (32 * arg3 + -arg2 + 1) + 224] = 32
        mem[(32 * transactionCount) + (32 * arg3 + -arg2 + 1) + 256] = mem[(32 * transactionCount) + 192]
        mem[(32 * transactionCount) + (32 * arg3 + -arg2 + 1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
        return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * arg3 + -arg2 + 1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
    mem[(32 * s) + 224] = arg3 + -arg2 + 1
    idx = arg2 - 1
    while idx < arg3:
        require idx < transactionCount
        require idx + -arg2 + 1 < arg3 + -arg2 + 1, None
        mem[(32 * idx + -arg2 + 1) + (32 * s) + 256] = mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    mem[(32 * s) + (32 * arg3 + -arg2 + 1) + 256] = 32
    mem[(32 * s) + (32 * arg3 + -arg2 + 1) + 288] = arg3 + -arg2 + 1, None
    mem[(32 * s) + (32 * arg3 + -arg2 + 1) + 320 len floor32(arg3 + -arg2 + 1)] = mem[(32 * s) + 256 len floor32(arg3 + -arg2 + 1)]
    return memory
      from (32 * s) + (32 * arg3 + -arg2 + 1) + 256
       len (32 * arg3 + -arg2 + 1, None) + 64
}

function removeOwners(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 0
        require uint8(stor0[idx].field_512) <= 3
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _106 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        require stor2[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[address(mem[(32 * idx) + 128])] = 0
        s = 0
        while s < owners.length - 1:
            mem[0] = 4
            if address(owners[s].field_0) != address(_106):
                s = s + 1
                continue 
            require owners.length - 1 < owners.length
            require s < owners.length
            mem[0] = 4
            address(owners[s].field_0) = address(owners[owners.length].field_0)
            owners.length--
            if not owners.length <= owners.length - 1:
                mem[0] = 4
                s = sha3(4) + owners.length - 1
                while sha3(4) + owners.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            if required > owners.length:
                mem[0] = msg.sender
                mem[32] = 2
                require stor2[address(msg.sender)]
                require owners.length <= 10
                require owners.length <= owners.length
                require owners.length
                s = 0
                while s < transactionCount:
                    mem[0] = s
                    mem[32] = 0
                    require uint8(stor0[s].field_512) <= 3
                    s = s + 1
                    continue 
                required = owners.length
                emit RequirementChange(owners.length);
            mem[(32 * arg1.length) + 128] = address(_106)
            emit OwnerRemoved(address(_106));
            idx = idx + 1
            continue 
        owners.length--
        if not owners.length > owners.length - 1:
            if required <= owners.length:
                mem[(32 * arg1.length) + 128] = address(_106)
                emit OwnerRemoved(address(_106));
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            require stor2[address(msg.sender)]
            require owners.length <= 10
            require owners.length <= owners.length
            require owners.length
            s = 0
            while s < transactionCount:
                mem[0] = s
                mem[32] = 0
                require uint8(stor0[s].field_512) <= 3
                s = s + 1
                continue 
            required = owners.length
            emit RequirementChange(owners.length);
            mem[(32 * arg1.length) + 128] = address(_106)
            emit OwnerRemoved(address(_106));
            s = s + 1
            continue 
        mem[0] = 4
        s = sha3(4) + owners.length - 1
        while sha3(4) + owners.length > s:
            stor[s] = 0
            s = s + 1
            continue 
        if required > owners.length:
            mem[0] = msg.sender
            mem[32] = 2
            require stor2[address(msg.sender)]
            require owners.length <= 10
            require owners.length <= owners.length
            require owners.length
            s = 0
            while s < transactionCount:
                mem[0] = s
                mem[32] = 0
                require uint8(stor0[s].field_512) <= 3
                s = s + 1
                continue 
            required = owners.length
            emit RequirementChange(owners.length);
        mem[(32 * arg1.length) + 128] = address(_106)
        emit OwnerRemoved(address(_106));
        idx = idx + 1
        continue 
    if not owners.length:
        mem[(32 * arg1.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + 288] = 4
        mem[(64 * arg1.length) + 320] = 'true'
        emit 0xf31ed1b1: 96, 128, (32 * arg1.length) + 160, owners.length, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + -floor32(arg1.length) + 64]
    else:
        mem[(32 * arg1.length) + 256] = address(owners.field_0)
        idx = (32 * arg1.length) + 256
        s = 0
        while (32 * arg1.length) + (32 * owners.length) + 256 > idx + 32:
            mem[idx + 32] = address(owners[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * arg1.length) + (32 * owners.length) + 256] = arg1.length
        mem[(32 * arg1.length) + (32 * owners.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * owners.length) + 288] = 4
        mem[(64 * arg1.length) + (32 * owners.length) + 320] = 'true'
        emit 0xf31ed1b1: Array(len=owners.length, data=mem[(32 * arg1.length) + 256 len (32 * owners.length) + 32], call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * owners.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + -floor32(arg1.length) + 64]), (32 * owners.length) + 128, (32 * arg1.length) + (32 * owners.length) + 160
}

function sub_0bc44291(?) {
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                if not arg3:
                    if not arg4:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = idx
                    mem[32] = 0
                    require uint8(stor0[idx].field_512) <= 3
                    if uint8(stor0[idx].field_512) != 3:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[0] = idx
                    mem[32] = 0
                    require uint8(stor0[idx].field_512) <= 3
                    if uint8(stor0[idx].field_512) != 2:
                        if not arg4:
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 3:
                            idx = idx + 1
                            s = s
                            continue 
            else:
                mem[0] = idx
                mem[32] = 0
                require uint8(stor0[idx].field_512) <= 3
                if uint8(stor0[idx].field_512) != 1:
                    if not arg3:
                        if not arg4:
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 3:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 2:
                            if not arg4:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 3:
                                idx = idx + 1
                                s = s
                                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            require uint8(stor0[idx].field_512) <= 3
            if uint8(stor0[idx].field_512):
                if not arg2:
                    if not arg3:
                        if not arg4:
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 3:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 2:
                            if not arg4:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 3:
                                idx = idx + 1
                                s = s
                                continue 
                else:
                    mem[0] = idx
                    mem[32] = 0
                    require uint8(stor0[idx].field_512) <= 3
                    if uint8(stor0[idx].field_512) != 1:
                        if not arg3:
                            if not arg4:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 3:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 2:
                                if not arg4:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                mem[0] = idx
                                mem[32] = 0
                                require uint8(stor0[idx].field_512) <= 3
                                if uint8(stor0[idx].field_512) != 3:
                                    idx = idx + 1
                                    s = s
                                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_b0ac259f(?) {
    mem[160] = transactionCount
    if arg1 > arg2:
        return ''
    if arg1 <= 0:
        return ''
    if arg2 <= 0:
        return ''
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                if not arg5:
                    if not arg6:
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = idx
                    mem[32] = 0
                    require uint8(stor0[idx].field_512) <= 3
                    if uint8(stor0[idx].field_512) != 3:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[0] = idx
                    mem[32] = 0
                    require uint8(stor0[idx].field_512) <= 3
                    if uint8(stor0[idx].field_512) != 2:
                        if not arg6:
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 3:
                            idx = idx + 1
                            s = s
                            continue 
            else:
                mem[0] = idx
                mem[32] = 0
                require uint8(stor0[idx].field_512) <= 3
                if uint8(stor0[idx].field_512) != 1:
                    if not arg5:
                        if not arg6:
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 3:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 2:
                            if not arg6:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 3:
                                idx = idx + 1
                                s = s
                                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            require uint8(stor0[idx].field_512) <= 3
            if uint8(stor0[idx].field_512):
                if not arg4:
                    if not arg5:
                        if not arg6:
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 3:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        mem[0] = idx
                        mem[32] = 0
                        require uint8(stor0[idx].field_512) <= 3
                        if uint8(stor0[idx].field_512) != 2:
                            if not arg6:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 3:
                                idx = idx + 1
                                s = s
                                continue 
                else:
                    mem[0] = idx
                    mem[32] = 0
                    require uint8(stor0[idx].field_512) <= 3
                    if uint8(stor0[idx].field_512) != 1:
                        if not arg5:
                            if not arg6:
                                idx = idx + 1
                                s = s
                                continue 
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 3:
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            mem[0] = idx
                            mem[32] = 0
                            require uint8(stor0[idx].field_512) <= 3
                            if uint8(stor0[idx].field_512) != 2:
                                if not arg6:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                mem[0] = idx
                                mem[32] = 0
                                require uint8(stor0[idx].field_512) <= 3
                                if uint8(stor0[idx].field_512) != 3:
                                    idx = idx + 1
                                    s = s
                                    continue 
        require s < transactionCount
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        return ''
    if s < arg1:
        return ''
    if s <= arg2:
        if (32 * s) + 224 < (32 * transactionCount) + 192:
            mem[(32 * transactionCount) + 192] = s + -arg1 + 1
            t = arg1 - 1
            while t < s:
                require t < transactionCount
                require t + -arg1 + 1 < mem[(32 * transactionCount) + 192]
                mem[(32 * t + -arg1 + 1) + (32 * transactionCount) + 224] = mem[(32 * t) + 192]
                t = t + 1
                continue 
            mem[(32 * transactionCount) + (32 * s + -arg1 + 1) + 224] = 32
            mem[(32 * transactionCount) + (32 * s + -arg1 + 1) + 256] = mem[(32 * transactionCount) + 192]
            mem[(32 * transactionCount) + (32 * s + -arg1 + 1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
            return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * s + -arg1 + 1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
        mem[(32 * s) + 224] = s + -arg1 + 1
        t = arg1 - 1
        while t < s:
            require t < transactionCount
            require t + -arg1 + 1 < s + -arg1 + 1, None
            mem[(32 * t + -arg1 + 1) + (32 * s) + 256] = mem[(32 * t) + 192]
            t = t + 1
            continue 
        mem[(32 * s) + (32 * s + -arg1 + 1) + 256] = 32
        mem[(32 * s) + (32 * s + -arg1 + 1) + 288] = s + -arg1 + 1, None
        mem[(32 * s) + (32 * s + -arg1 + 1) + 320 len floor32(s + -arg1 + 1)] = mem[(32 * s) + 256 len floor32(s + -arg1 + 1)]
        return memory
          from (32 * s) + (32 * s + -arg1 + 1) + 256
           len (32 * s + -arg1 + 1, None) + 64
    if (32 * s) + 224 < (32 * transactionCount) + 192:
        mem[(32 * transactionCount) + 192] = arg2 + -arg1 + 1
        idx = arg1 - 1
        while idx < arg2:
            require idx < transactionCount
            require idx + -arg1 + 1 < mem[(32 * transactionCount) + 192]
            mem[(32 * idx + -arg1 + 1) + (32 * transactionCount) + 224] = mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
        mem[(32 * transactionCount) + (32 * arg2 + -arg1 + 1) + 224] = 32
        mem[(32 * transactionCount) + (32 * arg2 + -arg1 + 1) + 256] = mem[(32 * transactionCount) + 192]
        mem[(32 * transactionCount) + (32 * arg2 + -arg1 + 1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
        return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * arg2 + -arg1 + 1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
    mem[(32 * s) + 224] = arg2 + -arg1 + 1
    idx = arg1 - 1
    while idx < arg2:
        require idx < transactionCount
        require idx + -arg1 + 1 < arg2 + -arg1 + 1, None
        mem[(32 * idx + -arg1 + 1) + (32 * s) + 256] = mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    mem[(32 * s) + (32 * arg2 + -arg1 + 1) + 256] = 32
    mem[(32 * s) + (32 * arg2 + -arg1 + 1) + 288] = arg2 + -arg1 + 1, None
    mem[(32 * s) + (32 * arg2 + -arg1 + 1) + 320 len floor32(arg2 + -arg1 + 1)] = mem[(32 * s) + 256 len floor32(arg2 + -arg1 + 1)]
    return memory
      from (32 * s) + (32 * arg2 + -arg1 + 1) + 256
       len (32 * arg2 + -arg1 + 1, None) + 64
}



}
