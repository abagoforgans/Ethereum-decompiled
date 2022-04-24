contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;

function _fallback() {
    mem[96 len -15504] = code.data[16238 len -15504]
    mem[64] = -15408
    require mem[mem[96] + 96] <= 5
    require mem[128] <= mem[mem[96] + 96]
    require mem[128] > 1
    require mem[mem[96] + 96] > 1
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
    require mem[128] <= stor3.length
    stor4 = mem[128]
    return code.data[734 len 15504]
}



// =====================  Runtime code  =====================


#
#  - removeOwner(address arg1)
#
const tokenFallback(address arg1, uint256 arg2, bytes arg3) = 1

const MAX_OWNER_COUNT = 5


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
array of struct stor6;
mapping of struct stor7;

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

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, block.timestamp, msg.sender);
}

function transactions(uint256 arg1) {
    require stor0[arg1].field_768 <= 3
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768, bool(stor0[arg1].field_776)
}

function tokenBalance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function revokeConfirmation(uint256 arg1) {
    require stor2[address(msg.sender)]
    require stor1[arg1][address(msg.sender)]
    require arg1 >= 0
    require arg1 < transactionCount
    require not stor0[arg1].field_776
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1, block.timestamp);
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
        mem[idx + 32] = owners[s].field_256
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
            if not stor0[idx].field_776:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_776:
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_776:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_82a5fe8b(?) {
    require stor2[address(msg.sender)]
    if not stor6[address(arg1)].field_0:
        mem[(32 * stor6[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor6[address(arg1)].field_0) + 192] = stor6[address(arg1)].field_0
        mem[(32 * stor6[address(arg1)].field_0) + 224 len floor32(stor6[address(arg1)].field_0)] = mem[160 len floor32(stor6[address(arg1)].field_0)]
        return memory
          from (32 * stor6[address(arg1)].field_0) + 160
           len (96 * stor6[address(arg1)].field_0) + 64
    mem[160] = stor6[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor6[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor6[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6[address(arg1)].field_0) + 224 len floor32(stor6[address(arg1)].field_0)] = mem[160 len floor32(stor6[address(arg1)].field_0)]
    return Array(len=stor6[address(arg1)].field_0, data=mem[160 len floor32(stor6[address(arg1)].field_0)], mem[(32 * stor6[address(arg1)].field_0) + floor32(stor6[address(arg1)].field_0) + 224 len (32 * stor6[address(arg1)].field_0) - floor32(stor6[address(arg1)].field_0)]), 
}

function sub_c19a2431(?) {
    require stor2[address(msg.sender)]
    if not stor7[address(arg1)].field_0:
        mem[(32 * stor7[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor7[address(arg1)].field_0) + 192] = stor7[address(arg1)].field_0
        mem[(32 * stor7[address(arg1)].field_0) + 224 len floor32(stor7[address(arg1)].field_0)] = mem[160 len floor32(stor7[address(arg1)].field_0)]
        return memory
          from (32 * stor7[address(arg1)].field_0) + 160
           len (96 * stor7[address(arg1)].field_0) + 64
    mem[160] = stor7[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor7[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7[address(arg1)].field_0) + 224 len floor32(stor7[address(arg1)].field_0)] = mem[160 len floor32(stor7[address(arg1)].field_0)]
    return Array(len=stor7[address(arg1)].field_0, data=mem[160 len floor32(stor7[address(arg1)].field_0)], mem[(32 * stor7[address(arg1)].field_0) + floor32(stor7[address(arg1)].field_0) + 224 len (32 * stor7[address(arg1)].field_0) - floor32(stor7[address(arg1)].field_0)]), 
}

function ownersConfirmedTransactions(address arg1) {
    require stor2[address(msg.sender)]
    idx = 0
    s = 0
    while idx < transactionCount:
        mem[0] = arg1
        mem[32] = sha3(idx, 1)
        if not stor1[idx][address(arg1)]:
            idx = idx + 1
            s = s
            continue 
        require s < transactionCount
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * transactionCount) + 192:
        mem[(32 * transactionCount) + 192] = s
        t = 0
        while t < s:
            require t < transactionCount
            require t < s
            mem[(32 * t) + (32 * transactionCount) + 224] = mem[(32 * t) + 192]
            t = t + 1
            continue 
        mem[(32 * transactionCount) + (32 * s) + 288 len floor32(s)] = mem[(32 * transactionCount) + 224 len floor32(s)]
        return Array(len=s, data=mem[(32 * transactionCount) + 224 len floor32(s)], mem[(32 * transactionCount) + (32 * s) + floor32(s) + 288 len (32 * s) - floor32(s)]), 
    mem[(32 * s) + 224] = s
    t = 0
    while t < s:
        require t < transactionCount
        require t < s, None
        mem[(32 * t) + (32 * s) + 256] = mem[(32 * t) + 192]
        t = t + 1
        continue 
    mem[(64 * s) + 256] = 32
    mem[(64 * s) + 288] = s, None
    mem[(64 * s) + 320 len floor32(s)] = mem[(32 * s) + 256 len floor32(s)]
    return memory
      from (64 * s) + 256
       len (32 * s, None) + 64
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

function addOwner(address arg1) {
    require stor2[address(msg.sender)]
    require not stor2[address(arg1)]
    require arg1
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        require idx < stor6[address(arg1)].field_0
        require stor6[address(arg1)][idx].field_0 != msg.sender
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    require owners.length + 1 <= 5
    require required <= owners.length + 1
    require required > 1
    require owners.length + 1 > 1
    stor6[address(arg1)].field_0++
    if not stor6[address(arg1)].field_0 <= stor6[address(arg1)].field_0 + 1:
        idx = stor6[address(arg1)].field_0 + 1
        while stor6[address(arg1)].field_0 > idx:
            stor6[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = msg.sender
    if stor6[address(arg1)].field_0 >= required:
        stor2[address(arg1)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        owners[owners.length].field_0 = arg1
        stor6[address(arg1)].field_0 = 0
        idx = 0
        while stor6[address(arg1)].field_0 > idx:
            stor6[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
        emit OwnerAddition(block.timestamp, arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
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
            if not stor0[idx].field_776:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_776:
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_776:
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if arg2 <= s:
        if (32 * s) + 224 < (32 * transactionCount) + 192:
            mem[(32 * transactionCount) + 192] = arg2 - arg1
            idx = arg1
            while idx < arg2:
                require idx < transactionCount
                require idx - arg1 < mem[(32 * transactionCount) + 192]
                mem[(32 * idx - arg1) + (32 * transactionCount) + 224] = mem[(32 * idx) + 192]
                idx = idx + 1
                continue 
            mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224] = 32
            mem[(32 * transactionCount) + (32 * arg2 - arg1) + 256] = mem[(32 * transactionCount) + 192]
            mem[(32 * transactionCount) + (32 * arg2 - arg1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
            return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
        mem[(32 * s) + 224] = arg2 - arg1
        idx = arg1
        while idx < arg2:
            require idx < transactionCount
            require idx - arg1 < arg2 - arg1, None
            mem[(32 * idx - arg1) + (32 * s) + 256] = mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
        mem[(32 * s) + (32 * arg2 - arg1) + 256] = 32
        mem[(32 * s) + (32 * arg2 - arg1) + 288] = arg2 - arg1, None
        mem[(32 * s) + (32 * arg2 - arg1) + 320 len floor32(arg2 - arg1)] = mem[(32 * s) + 256 len floor32(arg2 - arg1)]
        return memory
          from (32 * s) + (32 * arg2 - arg1) + 256
           len (32 * arg2 - arg1, None) + 64
    if (32 * s) + 224 < (32 * transactionCount) + 192:
        mem[(32 * transactionCount) + 192] = s - arg1
        t = arg1
        while t < s:
            require t < transactionCount
            require t - arg1 < mem[(32 * transactionCount) + 192]
            mem[(32 * t - arg1) + (32 * transactionCount) + 224] = mem[(32 * t) + 192]
            t = t + 1
            continue 
        mem[(32 * transactionCount) + (32 * s - arg1) + 224] = 32
        mem[(32 * transactionCount) + (32 * s - arg1) + 256] = mem[(32 * transactionCount) + 192]
        mem[(32 * transactionCount) + (32 * s - arg1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
        return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * s - arg1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
    mem[(32 * s) + 224] = s - arg1
    t = arg1
    while t < s:
        require t < transactionCount
        require t - arg1 < s - arg1, None
        mem[(32 * t - arg1) + (32 * s) + 256] = mem[(32 * t) + 192]
        t = t + 1
        continue 
    mem[(32 * s) + (32 * s - arg1) + 256] = 32
    mem[(32 * s) + (32 * s - arg1) + 288] = s - arg1, None
    mem[(32 * s) + (32 * s - arg1) + 320 len floor32(s - arg1)] = mem[(32 * s) + 256 len floor32(s - arg1)]
    return memory
      from (32 * s) + (32 * s - arg1) + 256
       len (32 * s - arg1, None) + 64
}

function executeTransaction(uint256 arg1) {
    require arg1 >= 0
    require arg1 < transactionCount
    require not stor0[arg1].field_776
    require stor0[arg1].field_768 <= 3
    if not stor0[arg1].field_768:
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
            if eth.balance(this.address) >= stor0[arg1].field_512:
                stor0[arg1].field_776 = 1
                call stor0[arg1].field_256 with:
                   value stor0[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Execution(block.timestamp, arg1);
                return 1
            require stor0[arg1].field_768 <= 3
            if stor0[arg1].field_768 == 1:
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
                    require ext_code.size(stor0[arg1].field_0)
                    call stor0[arg1].field_0.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= stor0[arg1].field_512:
                        stor0[arg1].field_776 = 1
                        require ext_code.size(stor0[arg1].field_0)
                        call stor0[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args stor0[arg1].field_256, stor0[arg1].field_512
                        require ext_call.success
                        emit Execution(block.timestamp, arg1);
                        return 1
                    require stor0[arg1].field_768 <= 3
                    if stor0[arg1].field_768 == 2:
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
                            stor0[arg1].field_776 = 1
                            require ext_code.size(stor0[arg1].field_0)
                            call stor0[arg1].field_0.unfreeze() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            emit Execution(block.timestamp, arg1);
                            return 1
                    require stor0[arg1].field_768 <= 3
                    if stor0[arg1].field_768 == 3:
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
                            stor0[arg1].field_776 = 1
                            require ext_code.size(stor0[arg1].field_0)
                            call stor0[arg1].field_0.0xf2fde38b with:
                                 gas gas_remaining - 710 wei
                                args stor0[arg1].field_256
                            require ext_call.success
                            emit Execution(block.timestamp, arg1);
                            return 1
                        return 0
                    else:
                        return 0
            require stor0[arg1].field_768 <= 3
            if stor0[arg1].field_768 == 2:
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
                    stor0[arg1].field_776 = 1
                    require ext_code.size(stor0[arg1].field_0)
                    call stor0[arg1].field_0.unfreeze() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    emit Execution(block.timestamp, arg1);
                    return 1
            require stor0[arg1].field_768 <= 3
            if stor0[arg1].field_768 == 3:
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
                    stor0[arg1].field_776 = 1
                    require ext_code.size(stor0[arg1].field_0)
                    call stor0[arg1].field_0.0xf2fde38b with:
                         gas gas_remaining - 710 wei
                        args stor0[arg1].field_256
                    require ext_call.success
                    emit Execution(block.timestamp, arg1);
                    return 1
                return 0
            else:
                return 0
    require stor0[arg1].field_768 <= 3
    if stor0[arg1].field_768 == 1:
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
            require ext_code.size(stor0[arg1].field_0)
            call stor0[arg1].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor0[arg1].field_512:
                stor0[arg1].field_776 = 1
                require ext_code.size(stor0[arg1].field_0)
                call stor0[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor0[arg1].field_256, stor0[arg1].field_512
                require ext_call.success
                emit Execution(block.timestamp, arg1);
                return 1
            require stor0[arg1].field_768 <= 3
            if stor0[arg1].field_768 == 2:
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
                    stor0[arg1].field_776 = 1
                    require ext_code.size(stor0[arg1].field_0)
                    call stor0[arg1].field_0.unfreeze() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    emit Execution(block.timestamp, arg1);
                    return 1
            require stor0[arg1].field_768 <= 3
            if stor0[arg1].field_768 == 3:
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
                    stor0[arg1].field_776 = 1
                    require ext_code.size(stor0[arg1].field_0)
                    call stor0[arg1].field_0.0xf2fde38b with:
                         gas gas_remaining - 710 wei
                        args stor0[arg1].field_256
                    require ext_call.success
                    emit Execution(block.timestamp, arg1);
                    return 1
                return 0
            else:
                return 0
    require stor0[arg1].field_768 <= 3
    if stor0[arg1].field_768 == 2:
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
            stor0[arg1].field_776 = 1
            require ext_code.size(stor0[arg1].field_0)
            call stor0[arg1].field_0.unfreeze() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Execution(block.timestamp, arg1);
            return 1
    require stor0[arg1].field_768 <= 3
    if stor0[arg1].field_768 == 3:
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
            stor0[arg1].field_776 = 1
            require ext_code.size(stor0[arg1].field_0)
            call stor0[arg1].field_0.0xf2fde38b with:
                 gas gas_remaining - 710 wei
                args stor0[arg1].field_256
            require ext_call.success
            emit Execution(block.timestamp, arg1);
            return 1
        return 0
    else:
        return 0
}

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    if not stor0[arg1].field_256:
        require stor0[arg1].field_0
    require arg1 >= 0
    require arg1 < transactionCount
    require not stor1[arg1][address(msg.sender)]
    stor1[arg1][address(msg.sender)] = 1
    emit Confirmation(msg.sender, arg1, block.timestamp);
    require arg1 >= 0
    require arg1 < transactionCount
    require not stor0[arg1].field_776
    require stor0[arg1].field_768 <= 3
    if not stor0[arg1].field_768:
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
            if eth.balance(this.address) >= stor0[arg1].field_512:
                stor0[arg1].field_776 = 1
                call stor0[arg1].field_256 with:
                   value stor0[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Execution(block.timestamp, arg1);
            else:
                require stor0[arg1].field_768 <= 3
                if stor0[arg1].field_768 == 1:
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
                        require ext_code.size(stor0[arg1].field_0)
                        call stor0[arg1].field_0.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= stor0[arg1].field_512:
                            stor0[arg1].field_776 = 1
                            require ext_code.size(stor0[arg1].field_0)
                            call stor0[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor0[arg1].field_256, stor0[arg1].field_512
                            require ext_call.success
                            emit Execution(block.timestamp, arg1);
                        else:
                            require stor0[arg1].field_768 <= 3
                            if stor0[arg1].field_768 == 2:
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
                                    stor0[arg1].field_776 = 1
                                    require ext_code.size(stor0[arg1].field_0)
                                    call stor0[arg1].field_0.unfreeze() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    emit Execution(block.timestamp, arg1);
                                    return 1
                            require stor0[arg1].field_768 <= 3
                            if stor0[arg1].field_768 == 3:
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
                                    stor0[arg1].field_776 = 1
                                    require ext_code.size(stor0[arg1].field_0)
                                    call stor0[arg1].field_0.0xf2fde38b with:
                                         gas gas_remaining - 710 wei
                                        args stor0[arg1].field_256
                                    require ext_call.success
                                    emit Execution(block.timestamp, arg1);
                                    return 1
                        return 1
                require stor0[arg1].field_768 <= 3
                if stor0[arg1].field_768 == 2:
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
                        stor0[arg1].field_776 = 1
                        require ext_code.size(stor0[arg1].field_0)
                        call stor0[arg1].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, arg1);
                        return 1
                require stor0[arg1].field_768 <= 3
                if stor0[arg1].field_768 == 3:
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
                        stor0[arg1].field_776 = 1
                        require ext_code.size(stor0[arg1].field_0)
                        call stor0[arg1].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[arg1].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, arg1);
                        return 1
            return 1
    require stor0[arg1].field_768 <= 3
    if stor0[arg1].field_768 == 1:
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
            require ext_code.size(stor0[arg1].field_0)
            call stor0[arg1].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor0[arg1].field_512:
                stor0[arg1].field_776 = 1
                require ext_code.size(stor0[arg1].field_0)
                call stor0[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor0[arg1].field_256, stor0[arg1].field_512
                require ext_call.success
                emit Execution(block.timestamp, arg1);
            else:
                require stor0[arg1].field_768 <= 3
                if stor0[arg1].field_768 == 2:
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
                        stor0[arg1].field_776 = 1
                        require ext_code.size(stor0[arg1].field_0)
                        call stor0[arg1].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, arg1);
                        return 1
                require stor0[arg1].field_768 <= 3
                if stor0[arg1].field_768 == 3:
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
                        stor0[arg1].field_776 = 1
                        require ext_code.size(stor0[arg1].field_0)
                        call stor0[arg1].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[arg1].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, arg1);
                        return 1
            return 1
    require stor0[arg1].field_768 <= 3
    if stor0[arg1].field_768 == 2:
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
            stor0[arg1].field_776 = 1
            require ext_code.size(stor0[arg1].field_0)
            call stor0[arg1].field_0.unfreeze() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Execution(block.timestamp, arg1);
            return 1
    require stor0[arg1].field_768 <= 3
    if stor0[arg1].field_768 == 3:
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
            stor0[arg1].field_776 = 1
            require ext_code.size(stor0[arg1].field_0)
            call stor0[arg1].field_0.0xf2fde38b with:
                 gas gas_remaining - 710 wei
                args stor0[arg1].field_256
            require ext_call.success
            emit Execution(block.timestamp, arg1);
            return 1
    return 1
}

function submitTransaction(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require arg1
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    require arg1
    stor0[stor5].field_0 = 0
    stor0[stor5].field_256 = 0
    stor0[stor5].field_256 = arg1
    stor0[stor5].field_512 = arg2
    stor0[stor5].field_768 = 0
    stor0[stor5].field_1024 = 0
    stor0[stor5].field_776 = 0
    transactionCount++
    emit 0xb8a26153: 0, block.timestamp, transactionCount, 0, 0
    require stor2[address(msg.sender)]
    if not stor0[stor5].field_256:
        require stor0[stor5].field_0
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor1[stor5][address(msg.sender)]
    stor1[stor5][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount, block.timestamp);
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor0[stor5].field_776
    require stor0[stor5].field_768 <= 3
    if not stor0[stor5].field_768:
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
            if eth.balance(this.address) >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                call stor0[stor5].field_256 with:
                   value stor0[stor5].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 1:
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
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= stor0[stor5].field_512:
                            stor0[stor5].field_776 = 1
                            require ext_code.size(stor0[stor5].field_0)
                            call stor0[stor5].field_0.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor0[stor5].field_256, stor0[stor5].field_512
                            require ext_call.success
                            emit Execution(block.timestamp, transactionCount);
                        else:
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 2:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.unfreeze() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 3:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.0xf2fde38b with:
                                         gas gas_remaining - 710 wei
                                        args stor0[stor5].field_256
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 1:
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
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                require ext_code.size(stor0[stor5].field_0)
                call stor0[stor5].field_0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor0[stor5].field_256, stor0[stor5].field_512
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 2:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.unfreeze() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 3:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0xf2fde38b with:
                 gas gas_remaining - 710 wei
                args stor0[stor5].field_256
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    return transactionCount
}

function sub_ef8f5e10(?) {
    require stor2[address(msg.sender)]
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require arg1
    require arg2
    stor0[stor5].field_0 = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5].field_512 = 0
    stor0[stor5].field_768 = 3
    stor0[stor5].field_776 = 0
    transactionCount++
    emit 0xb8a26153: 2, block.timestamp, transactionCount, arg1, arg2
    require stor2[address(msg.sender)]
    if not stor0[stor5].field_256:
        require stor0[stor5].field_0
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor1[stor5][address(msg.sender)]
    stor1[stor5][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount, block.timestamp);
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor0[stor5].field_776
    require stor0[stor5].field_768 <= 3
    if not stor0[stor5].field_768:
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
            if eth.balance(this.address) >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                call stor0[stor5].field_256 with:
                   value stor0[stor5].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 1:
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
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= stor0[stor5].field_512:
                            stor0[stor5].field_776 = 1
                            require ext_code.size(stor0[stor5].field_0)
                            call stor0[stor5].field_0.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor0[stor5].field_256, stor0[stor5].field_512
                            require ext_call.success
                            emit Execution(block.timestamp, transactionCount);
                        else:
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 2:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.unfreeze() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 3:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.0xf2fde38b with:
                                         gas gas_remaining - 710 wei
                                        args stor0[stor5].field_256
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 1:
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
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                require ext_code.size(stor0[stor5].field_0)
                call stor0[stor5].field_0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor0[stor5].field_256, stor0[stor5].field_512
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 2:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.unfreeze() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 3:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0xf2fde38b with:
                 gas gas_remaining - 710 wei
                args stor0[stor5].field_256
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    return transactionCount
}

function submitTokenTransaction(address arg1, address arg2, uint256 arg3) {
    require stor2[address(msg.sender)]
    require arg1
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require arg2
    stor0[stor5].field_0 = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5].field_512 = arg3
    stor0[stor5].field_768 = 1
    stor0[stor5].field_776 = 0
    transactionCount++
    emit 0xb8a26153: 1, block.timestamp, transactionCount, arg1, 0
    require stor2[address(msg.sender)]
    if not stor0[stor5].field_256:
        require stor0[stor5].field_0
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor1[stor5][address(msg.sender)]
    stor1[stor5][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount, block.timestamp);
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor0[stor5].field_776
    require stor0[stor5].field_768 <= 3
    if not stor0[stor5].field_768:
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
            if eth.balance(this.address) >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                call stor0[stor5].field_256 with:
                   value stor0[stor5].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 1:
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
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= stor0[stor5].field_512:
                            stor0[stor5].field_776 = 1
                            require ext_code.size(stor0[stor5].field_0)
                            call stor0[stor5].field_0.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor0[stor5].field_256, stor0[stor5].field_512
                            require ext_call.success
                            emit Execution(block.timestamp, transactionCount);
                        else:
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 2:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.unfreeze() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 3:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.0xf2fde38b with:
                                         gas gas_remaining - 710 wei
                                        args stor0[stor5].field_256
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 1:
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
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                require ext_code.size(stor0[stor5].field_0)
                call stor0[stor5].field_0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor0[stor5].field_256, stor0[stor5].field_512
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 2:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.unfreeze() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 3:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0xf2fde38b with:
                 gas gas_remaining - 710 wei
                args stor0[stor5].field_256
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    return transactionCount
}

function sub_2b47a450(?) {
    require stor2[address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.freezed() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require arg1
    stor0[stor5].field_0 = arg1
    stor0[stor5].field_256 = 0
    stor0[stor5].field_512 = 0
    stor0[stor5].field_512 = 0
    stor0[stor5].field_768 = 2
    stor0[stor5].field_776 = 0
    transactionCount++
    emit 0xb8a26153: 2, block.timestamp, transactionCount, arg1, 0
    require stor2[address(msg.sender)]
    if not stor0[stor5].field_256:
        require stor0[stor5].field_0
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor1[stor5][address(msg.sender)]
    stor1[stor5][address(msg.sender)] = 1
    emit Confirmation(msg.sender, transactionCount, block.timestamp);
    require transactionCount >= 0
    require transactionCount < transactionCount
    require not stor0[stor5].field_776
    require stor0[stor5].field_768 <= 3
    if not stor0[stor5].field_768:
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
            if eth.balance(this.address) >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                call stor0[stor5].field_256 with:
                   value stor0[stor5].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 1:
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
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= stor0[stor5].field_512:
                            stor0[stor5].field_776 = 1
                            require ext_code.size(stor0[stor5].field_0)
                            call stor0[stor5].field_0.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor0[stor5].field_256, stor0[stor5].field_512
                            require ext_call.success
                            emit Execution(block.timestamp, transactionCount);
                        else:
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 2:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.unfreeze() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                            require stor0[stor5].field_768 <= 3
                            if stor0[stor5].field_768 == 3:
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
                                    stor0[stor5].field_776 = 1
                                    require ext_code.size(stor0[stor5].field_0)
                                    call stor0[stor5].field_0.0xf2fde38b with:
                                         gas gas_remaining - 710 wei
                                        args stor0[stor5].field_256
                                    require ext_call.success
                                    emit Execution(block.timestamp, transactionCount);
                                    return transactionCount
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 1:
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
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor0[stor5].field_512:
                stor0[stor5].field_776 = 1
                require ext_code.size(stor0[stor5].field_0)
                call stor0[stor5].field_0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor0[stor5].field_256, stor0[stor5].field_512
                require ext_call.success
                emit Execution(block.timestamp, transactionCount);
            else:
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 2:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.unfreeze() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
                require stor0[stor5].field_768 <= 3
                if stor0[stor5].field_768 == 3:
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
                        stor0[stor5].field_776 = 1
                        require ext_code.size(stor0[stor5].field_0)
                        call stor0[stor5].field_0.0xf2fde38b with:
                             gas gas_remaining - 710 wei
                            args stor0[stor5].field_256
                        require ext_call.success
                        emit Execution(block.timestamp, transactionCount);
                        return transactionCount
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 2:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.unfreeze() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    require stor0[stor5].field_768 <= 3
    if stor0[stor5].field_768 == 3:
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
            stor0[stor5].field_776 = 1
            require ext_code.size(stor0[stor5].field_0)
            call stor0[stor5].field_0.0xf2fde38b with:
                 gas gas_remaining - 710 wei
                args stor0[stor5].field_256
            require ext_call.success
            emit Execution(block.timestamp, transactionCount);
            return transactionCount
    return transactionCount
}



}
