contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor5;

function _fallback() payable {
    mem[96 len -7206] = code.data[7678 len -7206]
    mem[64] = -7110
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
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
    return code.data[472 len 7206]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct stor3;
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
    required = arg1
    emit RequiredUpdate(arg1);
}

function revokeConfirmation(bytes32 arg1) {
    require stor2[address(msg.sender)]
    require stor1[arg1][address(msg.sender)]
    require not uint8(stor0[arg1].field_1024)
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function confirmationCount(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
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
        mem[0] = address(stor3[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
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
    stor2[address(arg1)] = 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length].field_0) = arg1
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
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[288 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32)]),
           stor0[arg1].field_768,
           bool(uint8(stor0[arg1].field_1024))
}

function getPendingTransactions() {
    idx = 0
    while idx < stor4.length:
        require idx < stor4.length
        mem[0] = stor4[idx]
        mem[32] = 0
        if not uint8(stor0[stor4[idx]].field_1024):
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
    require not uint8(stor0[arg1].field_1024)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == required:
        uint8(stor0[arg1].field_1024) = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = 0
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = stor0[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[96 len 4] with:
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
    require not uint8(stor0[arg1].field_1024)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == required:
        uint8(stor0[arg1].field_1024) = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = 0
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = stor0[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[96 len 4] with:
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
        if not uint8(stor0[stor4[idx]].field_1024):
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

function removeOwner(address arg1) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    idx = 0
    while idx < stor3.length - 1:
        require idx < stor3.length
        mem[0] = 3
        if address(stor3[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require stor3.length - 1 < stor3.length
        require idx < stor3.length
        uint64(stor3[idx].field_0) = uint64(stor3[stor3.length].field_0)
        Mask(96, 0, stor3[idx].field_64) = 0
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            idx = sha3(3) + stor3.length - 1
            while sha3(3) + stor3.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > stor3.length:
            require msg.sender == this.address
            require stor3.length <= stor3.length
            require stor3.length
            required = stor3.length
            emit RequiredUpdate(stor3.length);
        emit OwnerRemoval(arg1);
    stor3.length--
    if not stor3.length <= stor3.length - 1:
        idx = stor3.length - 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > stor3.length:
        require msg.sender == this.address
        require stor3.length <= stor3.length
        require stor3.length
        required = stor3.length
        emit RequiredUpdate(stor3.length);
    emit OwnerRemoval(arg1);
}

function confirmTransactionWithSignatures(bytes32 arg1, uint8[] arg2, bytes32[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _57 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _60 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require mem[96] + idx < mem[(32 * arg2.length) + 128]
        _66 = mem[(32 * mem[96] + idx) + (32 * arg2.length) + 160]
        mem[0] = mem[64]
        mem[64] = mem[64] + 32
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = uint8(_57)
        mem[mem[64] + 64] = _60
        mem[mem[64] + 96] = _66
        signer = erecover(arg1, _57 << 248, _60, _66) 
        mem[mem[64] - 32] = signer
        require erecover.result
        mem[0] = address(signer)
        mem[32] = 2
        require stor2[address(signer)]
        idx = idx + 1
        continue 
    _105 = mem[96]
    idx = 0
    while idx < _105:
        require idx < mem[96]
        _108 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _110 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx + mem[96] < mem[(32 * arg2.length) + 128]
        _113 = mem[(32 * idx + mem[96]) + (32 * arg2.length) + 160]
        mem[0] = mem[64]
        mem[64] = mem[64] + 32
        mem[mem[64] + 32] = mem[(32 * idx) + 159 len 1]
        mem[mem[64] + 64] = _110
        mem[mem[64] + 96] = _113
        signer = erecover(arg1, _108 << 248, _110, _113) 
        mem[mem[64] - 32] = signer
        require erecover.result
        require not stor1[arg1][address(signer)]
        mem[0] = address(signer)
        mem[32] = sha3(arg1, 1)
        stor1[arg1][address(signer)] = 1
        mem[mem[64]] = address(signer)
        mem[mem[64] + 32] = arg1
        emit Confirmation(address(signer), arg1);
        _105 = mem[96]
        idx = idx + 1
        continue 
    require not uint8(stor0[arg1].field_1024)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not stor1[arg1][address(stor3[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == required:
        uint8(stor0[arg1].field_1024) = 1
        mem[0] = sha3(arg1, 0) + 2
        mem[mem[64]] = stor0[arg1][2].field_0
        idx = mem[64]
        s = 0
        while mem[64] + stor0[arg1][2].length > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[mem[64] len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[mem[64] + 4 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        emit Execution(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3, uint256 arg4) {
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 180 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + 180] = arg4
    if address(stor0[arg1][arg2][arg3[all]][arg4].field_0):
        require stor2[address(msg.sender)]
        require not stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)]
        stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)] = 1
        mem[ceil32(arg3.length) + 160] = sha3(arg1, arg2, arg3[all], arg4)
        emit Confirmation(msg.sender, sha3(arg1, arg2, arg3[all], arg4));
        require not uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024)
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx].field_0)
            mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
            if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx].field_0)]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == required:
            uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 1
            mem[ceil32(arg3.length) + 128] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
            idx = ceil32(arg3.length) + 128
            s = 0
            while ceil32(arg3.length) + stor0[arg1][arg2][arg3[all]][arg4][2].length + 128 > idx + 32:
                mem[idx + 32] = stor0[arg1][arg2][arg3[all]][arg4][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call address(stor0[arg1][arg2][arg3[all]][arg4].field_0).mem[ceil32(arg3.length) + 128 len 4] with:
               value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 132 len stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) - 4]
            require ext_call.success
            emit Execution(sha3(arg1, arg2, arg3[all], arg4));
    else:
        address(stor0[arg1][arg2][arg3[all]][arg4].field_0) = arg1
        stor0[arg1][arg2][arg3[all]][arg4].field_256 = arg2
        stor0[arg1][arg2][arg3[all]][arg4][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor0[arg1][arg2][arg3[all]][arg4].field_768 = arg4
        uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 0
        stor0[arg1][arg2][arg3[all]][arg4].field_1280 % 1 = 0
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
        require not uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024)
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx].field_0)
            mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
            if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx].field_0)]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == required:
            uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 1
            mem[ceil32(arg3.length) + 288] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
            idx = ceil32(arg3.length) + 288
            s = 0
            while ceil32(arg3.length) + stor0[arg1][arg2][arg3[all]][arg4][2].length + 288 > idx + 32:
                mem[idx + 32] = stor0[arg1][arg2][arg3[all]][arg4][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call address(stor0[arg1][arg2][arg3[all]][arg4].field_0).mem[ceil32(arg3.length) + 288 len 4] with:
               value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 292 len stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) - 4]
            require ext_call.success
            emit Execution(sha3(arg1, arg2, arg3[all], arg4));
    return sha3(arg1, arg2, arg3[all], arg4)
}

function submitTransactionWithSignatures(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint8[] arg5, bytes32[] arg6) {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + 180] = arg4
    if address(stor0[arg1][arg2][arg3[all]][arg4].field_0):
        mem[ceil32(arg3.length) + 128] = arg5.length
        mem[ceil32(arg3.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[64] = ceil32(arg3.length) + (32 * arg5.length) + (32 * arg6.length) + 192
        mem[ceil32(arg3.length) + (32 * arg5.length) + 160] = arg6.length
        mem[ceil32(arg3.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
        idx = 0
        while idx < arg5.length:
            require idx < mem[ceil32(arg3.length) + 128]
            _474 = mem[(32 * idx) + ceil32(arg3.length) + 160]
            require idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 160]
            _481 = mem[(32 * idx) + ceil32(arg3.length) + (32 * arg5.length) + 192]
            require mem[ceil32(arg3.length) + 128] + idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 160]
            _491 = mem[(32 * mem[ceil32(arg3.length) + 128] + idx) + ceil32(arg3.length) + (32 * arg5.length) + 192]
            mem[0] = mem[64]
            mem[64] = mem[64] + 32
            mem[mem[64]] = sha3(arg1, arg2, arg3[all], arg4)
            mem[mem[64] + 32] = uint8(_474)
            mem[mem[64] + 64] = _481
            mem[mem[64] + 96] = _491
            signer = erecover(sha3(arg1, arg2, arg3[all], arg4), _474 << 248, _481, _491) 
            mem[mem[64] - 32] = signer
            require erecover.result
            mem[0] = address(signer)
            mem[32] = 2
            require stor2[address(signer)]
            idx = idx + 1
            continue 
        _923 = mem[ceil32(arg3.length) + 128]
        idx = 0
        while idx < _923:
            require idx < mem[ceil32(arg3.length) + 128]
            _930 = mem[(32 * idx) + ceil32(arg3.length) + 160]
            require idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 160]
            _940 = mem[(32 * idx) + ceil32(arg3.length) + (32 * arg5.length) + 192]
            require idx + mem[ceil32(arg3.length) + 128] < mem[ceil32(arg3.length) + (32 * arg5.length) + 160]
            _955 = mem[(32 * idx + mem[ceil32(arg3.length) + 128]) + ceil32(arg3.length) + (32 * arg5.length) + 192]
            mem[0] = mem[64]
            mem[64] = mem[64] + 32
            mem[mem[64] + 32] = mem[(32 * idx) + ceil32(arg3.length) + 191 len 1]
            mem[mem[64] + 64] = _940
            mem[mem[64] + 96] = _955
            signer = erecover(sha3(arg1, arg2, arg3[all], arg4), _930 << 248, _940, _955) 
            mem[mem[64] - 32] = signer
            require erecover.result
            require not stor1[arg1][arg2][arg3[all]][arg4][address(signer)]
            mem[0] = address(signer)
            mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
            stor1[arg1][arg2][arg3[all]][arg4][address(signer)] = 1
            mem[mem[64]] = address(signer)
            mem[mem[64] + 32] = sha3(arg1, arg2, arg3[all], arg4)
            emit Confirmation(address(signer), sha3(arg1, arg2, arg3[all], arg4));
            _923 = mem[ceil32(arg3.length) + 128]
            idx = idx + 1
            continue 
        require not uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024)
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx].field_0)
            mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
            if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx].field_0)]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == required:
            uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 1
            mem[0] = sha3(sha3(arg1, arg2, arg3[all], arg4), 0) + 2
            mem[mem[64]] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
            idx = mem[64]
            s = 0
            while mem[64] + stor0[arg1][arg2][arg3[all]][arg4][2].length > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            call address(stor0[arg1][arg2][arg3[all]][arg4].field_0).mem[mem[64] len 4] with:
               value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[mem[64] + 4 len stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) - 4]
            require ext_call.success
            emit Execution(sha3(arg1, arg2, arg3[all], arg4));
    else:
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = 96
        mem[ceil32(arg3.length) + 224] = arg4
        mem[ceil32(arg3.length) + 256] = 0
        mem[32] = 0
        address(stor0[arg1][arg2][arg3[all]][arg4].field_0) = arg1
        stor0[arg1][arg2][arg3[all]][arg4].field_256 = arg2
        stor0[arg1][arg2][arg3[all]][arg4][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor0[arg1][arg2][arg3[all]][arg4].field_768 = arg4
        uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 0
        stor0[arg1][arg2][arg3[all]][arg4].field_1280 % 1 = 0
        stor4.length++
        if not stor4.length > stor4.length + 1:
            mem[0] = 4
            stor4[stor4.length] = sha3(arg1, arg2, arg3[all], arg4)
            emit Submission(sha3(arg1, arg2, arg3[all], arg4));
            mem[ceil32(arg3.length) + 288] = arg5.length
            mem[ceil32(arg3.length) + 320 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
            mem[64] = ceil32(arg3.length) + (32 * arg5.length) + (32 * arg6.length) + 352
            mem[ceil32(arg3.length) + (32 * arg5.length) + 320] = arg6.length
            mem[ceil32(arg3.length) + (32 * arg5.length) + 352 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
            idx = 0
            while idx < arg5.length:
                require idx < mem[ceil32(arg3.length) + 288]
                _1363 = mem[(32 * idx) + ceil32(arg3.length) + 320]
                require idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1380 = mem[(32 * idx) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                require mem[ceil32(arg3.length) + 288] + idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1407 = mem[(32 * mem[ceil32(arg3.length) + 288] + idx) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                mem[0] = mem[64]
                mem[64] = mem[64] + 32
                mem[mem[64]] = sha3(arg1, arg2, arg3[all], arg4)
                mem[mem[64] + 32] = uint8(_1363)
                mem[mem[64] + 64] = _1380
                mem[mem[64] + 96] = _1407
                signer = erecover(sha3(arg1, arg2, arg3[all], arg4), _1363 << 248, _1380, _1407) 
                mem[mem[64] - 32] = signer
                require erecover.result
                mem[0] = address(signer)
                mem[32] = 2
                require stor2[address(signer)]
                idx = idx + 1
                continue 
            _1697 = mem[ceil32(arg3.length) + 288]
            idx = 0
            while idx < _1697:
                require idx < mem[ceil32(arg3.length) + 288]
                _1712 = mem[(32 * idx) + ceil32(arg3.length) + 320]
                require idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1727 = mem[(32 * idx) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                require idx + mem[ceil32(arg3.length) + 288] < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1743 = mem[(32 * idx + mem[ceil32(arg3.length) + 288]) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                mem[0] = mem[64]
                mem[64] = mem[64] + 32
                mem[mem[64] + 32] = mem[(32 * idx) + ceil32(arg3.length) + 351 len 1]
                mem[mem[64] + 64] = _1727
                mem[mem[64] + 96] = _1743
                signer = erecover(sha3(arg1, arg2, arg3[all], arg4), _1712 << 248, _1727, _1743) 
                mem[mem[64] - 32] = signer
                require erecover.result
                require not stor1[arg1][arg2][arg3[all]][arg4][address(signer)]
                mem[0] = address(signer)
                mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
                stor1[arg1][arg2][arg3[all]][arg4][address(signer)] = 1
                mem[mem[64]] = address(signer)
                mem[mem[64] + 32] = sha3(arg1, arg2, arg3[all], arg4)
                emit Confirmation(address(signer), sha3(arg1, arg2, arg3[all], arg4));
                _1697 = mem[ceil32(arg3.length) + 288]
                idx = idx + 1
                continue 
            require not uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024)
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx].field_0)
                mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
                if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx].field_0)]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if s == required:
                uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 1
                _1969 = mem[64]
                mem[0] = sha3(sha3(arg1, arg2, arg3[all], arg4), 0) + 2
                mem[mem[64]] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
                idx = mem[64]
                s = 0
                while _1969 + stor0[arg1][arg2][arg3[all]][arg4][2].length > idx + 32:
                    mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor0[arg1][arg2][arg3[all]][arg4].field_0).mem[mem[64] len 4] with:
                   value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                     gas gas_remaining - 34050 wei
                    args mem[mem[64] + 4 len _1969 + stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) + -mem[64] - 4]
                require ext_call.success
                emit Execution(sha3(arg1, arg2, arg3[all], arg4));
        else:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            mem[0] = 4
            stor4[stor4.length] = sha3(arg1, arg2, arg3[all], arg4)
            emit Submission(sha3(arg1, arg2, arg3[all], arg4));
            mem[ceil32(arg3.length) + 288] = arg5.length
            mem[ceil32(arg3.length) + 320 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
            mem[64] = ceil32(arg3.length) + (32 * arg5.length) + (32 * arg6.length) + 352
            mem[ceil32(arg3.length) + (32 * arg5.length) + 320] = arg6.length
            mem[ceil32(arg3.length) + (32 * arg5.length) + 352 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
            idx = 0
            while idx < arg5.length:
                require idx < mem[ceil32(arg3.length) + 288]
                _1715 = mem[(32 * idx) + ceil32(arg3.length) + 320]
                require idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1731 = mem[(32 * idx) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                require mem[ceil32(arg3.length) + 288] + idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1751 = mem[(32 * mem[ceil32(arg3.length) + 288] + idx) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                mem[0] = mem[64]
                mem[64] = mem[64] + 32
                mem[mem[64]] = sha3(arg1, arg2, arg3[all], arg4)
                mem[mem[64] + 32] = uint8(_1715)
                mem[mem[64] + 64] = _1731
                mem[mem[64] + 96] = _1751
                signer = erecover(sha3(arg1, arg2, arg3[all], arg4), _1715 << 248, _1731, _1751) 
                mem[mem[64] - 32] = signer
                require erecover.result
                mem[0] = address(signer)
                mem[32] = 2
                require stor2[address(signer)]
                idx = idx + 1
                continue 
            _1938 = mem[ceil32(arg3.length) + 288]
            idx = 0
            while idx < _1938:
                require idx < mem[ceil32(arg3.length) + 288]
                _1947 = mem[(32 * idx) + ceil32(arg3.length) + 320]
                require idx < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1955 = mem[(32 * idx) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                require idx + mem[ceil32(arg3.length) + 288] < mem[ceil32(arg3.length) + (32 * arg5.length) + 320]
                _1961 = mem[(32 * idx + mem[ceil32(arg3.length) + 288]) + ceil32(arg3.length) + (32 * arg5.length) + 352]
                mem[0] = mem[64]
                mem[64] = mem[64] + 32
                mem[mem[64] + 32] = mem[(32 * idx) + ceil32(arg3.length) + 351 len 1]
                mem[mem[64] + 64] = _1955
                mem[mem[64] + 96] = _1961
                signer = erecover(sha3(arg1, arg2, arg3[all], arg4), _1947 << 248, _1955, _1961) 
                mem[mem[64] - 32] = signer
                require erecover.result
                require not stor1[arg1][arg2][arg3[all]][arg4][address(signer)]
                mem[0] = address(signer)
                mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
                stor1[arg1][arg2][arg3[all]][arg4][address(signer)] = 1
                mem[mem[64]] = address(signer)
                mem[mem[64] + 32] = sha3(arg1, arg2, arg3[all], arg4)
                emit Confirmation(address(signer), sha3(arg1, arg2, arg3[all], arg4));
                _1938 = mem[ceil32(arg3.length) + 288]
                idx = idx + 1
                continue 
            require not uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024)
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx].field_0)
                mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
                if not stor1[arg1][arg2][arg3[all]][arg4][address(stor3[idx].field_0)]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if s == required:
                uint8(stor0[arg1][arg2][arg3[all]][arg4].field_1024) = 1
                mem[0] = sha3(sha3(arg1, arg2, arg3[all], arg4), 0) + 2
                mem[mem[64]] = stor0[arg1][arg2][arg3[all]][arg4][2].field_0
                idx = mem[64]
                s = 0
                while mem[64] + stor0[arg1][arg2][arg3[all]][arg4][2].length > idx + 32:
                    mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor0[arg1][arg2][arg3[all]][arg4].field_0).mem[mem[64] len 4] with:
                   value stor0[arg1][arg2][arg3[all]][arg4].field_256 wei
                     gas gas_remaining - 34050 wei
                    args mem[mem[64] + 4 len stor0[arg1][arg2][arg3[all]][arg4][2].length + (floor32(stor0[arg1][arg2][arg3[all]][arg4][2].length - 1) + -stor0[arg1][arg2][arg3[all]][arg4][2].length + 32 % 32) - 4]
                require ext_call.success
                emit Execution(sha3(arg1, arg2, arg3[all], arg4));
    return sha3(arg1, arg2, arg3[all], arg4)
}



}
