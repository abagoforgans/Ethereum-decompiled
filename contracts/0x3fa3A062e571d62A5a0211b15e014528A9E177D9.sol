contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor5;

function _fallback() payable {
    mem[96 len -5421] = code.data[5908 len -5421]
    mem[64] = -5325
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    require stor5 >= mem[128]
    idx = 0
    while idx < mem[mem[96] + 96]:
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
    stor5 = mem[128]
    return code.data[487 len 5421]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of address stor3;
array of uint256 stor4;
uint256 required;

function confirmations(bytes32 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function updateRequired(uint256 arg1) {
    require msg.sender == this.address
    require arg1 <= stor3.length
    require arg1
    require stor3.length
    require required >= arg1
    required = arg1
    emit RequiredUpdate(arg1);
}

function revokeConfirmation(bytes32 arg1) {
    require stor2[address(msg.sender)]
    require stor1[arg1][address(msg.sender)]
    require not stor0[arg1].field_1024
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function confirmationCount(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function isConfirmed(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s != required:
        return 0
    return 1
}

function addOwner(address arg1) {
    require msg.sender == this.address
    require not stor2[address(arg1)]
    if stor3.length < 14:
        stor2[address(arg1)] = 1
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
        address(stor3[stor3.length]) = arg1
        emit OwnerAddition(arg1);
}

function transactions(bytes32 arg1) {
    mem[288] = stor0[arg1][2].field_0
    idx = 288
    s = 0
    while stor0[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[288 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32)]),
           stor0[arg1].field_768,
           bool(stor0[arg1].field_1024)
}

function getPendingTransactions() {
    idx = 0
    while idx < stor4.length:
        require idx < stor4.length
        mem[0] = stor4[idx]
        mem[32] = 0
        if not stor0[stor4[idx]].field_1024:
            require idx < stor4.length
            mem[0] = 4
            require 0 < stor4.length
            mem[224] = stor4[idx]
        idx = idx + 1
        continue 
    if 256 >= (32 * stor4.length) + 224:
        return ''
    mem[(32 * stor4.length) + 256] = 32
    mem[(32 * stor4.length) + 288] = mem[(32 * stor4.length) + 224]
    mem[(32 * stor4.length) + 320 len 32 * mem[(32 * stor4.length) + 224]] = mem[(32 * stor4.length) + 256 len 32 * mem[(32 * stor4.length) + 224]]
    return 32, mem[(32 * stor4.length) + 288 len (32 * mem[(32 * stor4.length) + 224]) + 32]
}

function executeTransaction(bytes32 arg1) {
    require not stor0[arg1].field_1024
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == required:
        stor0[arg1].field_1024 = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = 0
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = stor0[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor0[arg1].field_0.mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        emit Execution(arg1);
}

function confirmTransaction(bytes32 arg1) {
    require stor2[address(msg.sender)]
    require not stor1[arg1][address(msg.sender)]
    stor1[arg1][address(msg.sender)] = 1
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    require not stor0[arg1].field_1024
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == required:
        stor0[arg1].field_1024 = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = 0
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = stor0[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call stor0[arg1].field_0.mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        emit Execution(arg1);
}

function getExecutedTransactions() {
    idx = 0
    s = 0
    while idx < stor4.length:
        require idx < stor4.length
        mem[0] = stor4[idx]
        mem[32] = 0
        if not stor0[stor4[idx]].field_1024:
            idx = idx + 1
            s = s
            continue 
        require idx < stor4.length
        mem[0] = 4
        require s < stor4.length
        mem[(32 * s) + 224] = stor4[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 256 < (32 * stor4.length) + 224:
        mem[(32 * stor4.length) + 224] = s
        t = 0
        while t < s:
            require t < stor4.length
            if mem[(32 * t) + 224] > 0:
                require t < stor4.length
                require t < s
                mem[(32 * t) + (32 * stor4.length) + 256] = mem[(32 * t) + 224]
            t = t + 1
            continue 
        return Array(len=s, data=mem[(32 * stor4.length) + 256 len 32 * s])
    mem[(32 * s) + 256] = s
    t = 0
    while t < s:
        require t < stor4.length
        if mem[(32 * t) + 224] > 0:
            require t < stor4.length
            require t < s, None
            mem[(32 * t) + (32 * s) + 288] = mem[(32 * t) + 224]
        t = t + 1
        continue 
    mem[(64 * s) + 288] = 32
    mem[(64 * s) + 320] = s, None
    mem[(64 * s) + 352 len 32 * s] = mem[(32 * s) + 288 len 32 * s]
    return memory
      from (64 * s) + 288
       len (32 * s, None) + 64
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3, uint256 arg4) {
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 180 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + 180] = arg4
    if stor0[arg1][arg2][arg3[all]][arg4].field_0:
        require stor2[address(msg.sender)]
        require not stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)]
        stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)] = 1
        mem[ceil32(arg3.length) + 160] = sha3(arg1, arg2, arg3[all], arg4)
        emit Confirmation(msg.sender, sha3(arg1, arg2, arg3[all], arg4));
        require not stor0[arg1][arg2][arg3[all]][arg4].field_1024
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx])
            mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
            if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx])]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == required:
            stor0[arg1][arg2][arg3[all]][arg4].field_1024 = 1
            mem[ceil32(arg3.length) + 128] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
            idx = ceil32(arg3.length) + 128
            s = 0
            while ceil32(arg3.length) + stor0[arg1][arg2][arg3[all]][arg4][2].length + 128 > idx + 32:
                mem[idx + 32] = stor0[arg1][arg2][arg3[all]][arg4][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor0[arg1][arg2][arg3[all]][arg4].field_0.mem[ceil32(arg3.length) + 128 len 4] with:
               value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 132 len stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) - 4]
            require ext_call.success
            emit Execution(sha3(arg1, arg2, arg3[all], arg4));
    else:
        stor0[arg1][arg2][arg3[all]][arg4].field_0 = arg1
        stor0[arg1][arg2][arg3[all]][arg4].field_256 = arg2
        stor0[arg1][arg2][arg3[all]][arg4][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor0[arg1][arg2][arg3[all]][arg4].field_768 = arg4
        stor0[arg1][arg2][arg3[all]][arg4].field_1024 = 0
        stor0[arg1][arg2][arg3[all]][arg4].field_1280 = 0
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length] = sha3(arg1, arg2, arg3[all], arg4)
        emit Submission(sha3(arg1, arg2, arg3[all], arg4));
        require stor2[address(msg.sender)]
        require not stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)]
        stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)] = 1
        mem[ceil32(arg3.length) + 320] = sha3(arg1, arg2, arg3[all], arg4)
        emit Confirmation(msg.sender, sha3(arg1, arg2, arg3[all], arg4));
        require not stor0[arg1][arg2][arg3[all]][arg4].field_1024
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx])
            mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
            if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx])]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == required:
            stor0[arg1][arg2][arg3[all]][arg4].field_1024 = 1
            mem[ceil32(arg3.length) + 288] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
            idx = ceil32(arg3.length) + 288
            s = 0
            while ceil32(arg3.length) + stor0[arg1][arg2][arg3[all]][arg4][2].length + 288 > idx + 32:
                mem[idx + 32] = stor0[arg1][arg2][arg3[all]][arg4][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call stor0[arg1][arg2][arg3[all]][arg4].field_0.mem[ceil32(arg3.length) + 288 len 4] with:
               value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 292 len stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) - 4]
            require ext_call.success
            emit Execution(sha3(arg1, arg2, arg3[all], arg4));
    return sha3(arg1, arg2, arg3[all], arg4)
}



}
