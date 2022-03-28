contract main {


// =======================  Init code  ======================


mapping of uint8 stor3;
uint256 stor4;
uint256 stor6;

function _fallback() {
    mem[96 len -6316] = code.data[6709 len -6316]
    mem[64] = -6220
    require mem[mem[96] + 96] <= 50
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor4 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        while stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
        while stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor6 = mem[128]
    return code.data[393 len 6316]
}



// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint256 nonce;
mapping of uint8 stor3;
array of address owners;
array of uint256 sub_213dafcd;
uint256 required;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1])
}

function confirmations(bytes32 arg1, address arg2) {
    return bool(uint8(stor1[arg1][arg2]))
}

function sub_213dafcd(?) {
    require arg1 < sub_213dafcd.length
    return sub_213dafcd[arg1]
}

function isOwner(address arg1) {
    return bool(stor3[arg1])
}

function getNonce(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    return nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]]
}

function nonces(bytes32 arg1) {
    return nonce[arg1]
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
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

function revokeConfirmation(bytes32 arg1) {
    require stor3[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_1024)
    uint8(stor1[arg1][address(msg.sender)]) = 0
    emit Revocation(msg.sender, arg1);
}

function addOwner(address arg1) {
    require msg.sender == this.address
    require not stor3[address(arg1)]
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor3[address(arg1)] = 1
    owners.length++
    address(owners[owners.length]) = arg1
    emit OwnerAddition(arg1);
}

function getConfirmationCount(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor4[idx])]):
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
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor4[idx])]):
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

function getOwners() {
    idx = 0
    while idx < owners.length:
        mem[0] = 4
        require idx < owners.length
        mem[(32 * idx) + 160] = address(owners[idx])
        idx = idx + 1
        continue 
    mem[(32 * owners.length) + 160] = 32
    mem[(32 * owners.length) + 192] = owners.length
    if Mask(251, 0, owners.length):
        mem[(32 * owners.length) + 224] = mem[160]
        mem[(32 * owners.length) + 256 len floor32((32 * owners.length) - 1)] = mem[192 len floor32((32 * owners.length) - 1)]
    return Array(len=owners.length, data=mem[(32 * owners.length) + 224 len 32 * owners.length])
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < sub_213dafcd.length:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if not uint8(stor0[stor5[idx]].field_1024):
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if uint8(stor0[stor5[idx]].field_1024):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_213dafcd.length
                mem[0] = sub_213dafcd[idx]
                mem[32] = 0
                if not uint8(stor0[stor5[idx]].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function executeTransaction(bytes32 arg1) {
    require not uint8(stor0[arg1].field_1024)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor4[idx])]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_1024) = 1
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
             gas gas_remaining - 34050 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_1024) = 0
}

function confirmTransaction(bytes32 arg1) {
    require stor3[address(msg.sender)]
    require not uint8(stor1[arg1][address(msg.sender)])
    uint8(stor1[arg1][address(msg.sender)]) = 1
    mem[96] = msg.sender
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    require not uint8(stor0[arg1].field_1024)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor4[idx])]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_1024) = 1
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
             gas gas_remaining - 34050 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_1024) = 0
}

function removeOwner(address arg1) {
    require msg.sender == this.address
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 4
        if address(owners[idx]) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx]) = address(owners[owners.length])
        owners.length--
        if not owners.length <= owners.length - 1:
            idx = owners.length + sha3(4) - 1
            while sha3(4) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require msg.sender == this.address
            require owners.length <= 50
            require owners.length <= owners.length
            require owners.length
            require owners.length
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if not owners.length <= owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            uint256(owners[idx]) = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        require msg.sender == this.address
        require owners.length <= 50
        require owners.length <= owners.length
        require owners.length
        require owners.length
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function getConfirmations(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx])
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor4[idx])]):
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 4
        require s < owners.length
        mem[(32 * s) + 192] = address(owners[idx])
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * owners.length) + 192:
        mem[(32 * owners.length) + 192] = s
        t = 0
        while t < s:
            require t < owners.length
            require t < s
            mem[(32 * owners.length) + (32 * t) + 224] = mem[(32 * t) + 204 len 20]
            t = t + 1
            continue 
        mem[(32 * owners.length) + (32 * s) + 224] = 32
        mem[(32 * owners.length) + (32 * s) + 256] = s
        if Mask(251, 0, s):
            mem[(32 * owners.length) + (32 * s) + 288] = mem[(32 * owners.length) + 224]
            mem[(32 * owners.length) + (32 * s) + 320 len floor32((32 * s) - 1)] = mem[(32 * owners.length) + 256 len floor32((32 * s) - 1)]
        return Array(len=s, data=mem[(32 * owners.length) + (32 * s) + 288 len 32 * s])
    mem[(32 * s) + 224] = s
    t = 0
    while t < s:
        require t < owners.length
        require t < s, None
        mem[(32 * s) + (32 * t) + 256] = mem[(32 * t) + 204 len 20]
        t = t + 1
        continue 
    mem[(64 * s) + 256] = 32
    mem[(64 * s) + 288] = s, None
    if not Mask(251, 0, s):
        return memory
          from (64 * s) + 256
           len (32 * s) + 64
    mem[(64 * s) + 320] = mem[(32 * s) + 256]
    mem[(64 * s) + 352 len floor32((32 * s, None) - 1)] = mem[(32 * s) + 288 len floor32((32 * s, None) - 1)]
    return memory
      from (64 * s) + 256
       len (32 * s, None) + 64
}

function getTransactionHashes(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = sub_213dafcd.length
    idx = 0
    s = 0
    while idx < sub_213dafcd.length:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if not uint8(stor0[stor5[idx]].field_1024):
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if uint8(stor0[stor5[idx]].field_1024):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_213dafcd.length
                mem[0] = sub_213dafcd[idx]
                mem[32] = 0
                if not uint8(stor0[stor5[idx]].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
        require idx < sub_213dafcd.length
        mem[0] = 5
        require s < sub_213dafcd.length
        mem[(32 * s) + 192] = sub_213dafcd[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 >= (32 * sub_213dafcd.length) + 192:
        mem[(32 * s) + 224] = arg2 - arg1
        mem[64] = (32 * s) + (32 * arg2 - arg1) + 256
        idx = arg1
        while idx < arg2:
            require idx < sub_213dafcd.length
            require idx - arg1 < arg2 - arg1, None
            mem[(32 * s) + (32 * idx - arg1) + 256] = mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
        mem[(32 * s) + (32 * arg2 - arg1) + 256] = 32
        mem[(32 * s) + (32 * arg2 - arg1) + 288] = arg2 - arg1, None
        if not Mask(251, 0, arg2 - arg1):
            return 32, mem[(32 * s) + (32 * arg2 - arg1) + 288 len (32 * arg2 - arg1) + 32]
        mem[(32 * s) + (32 * arg2 - arg1) + 320] = mem[(32 * s) + 256]
        t = (32 * s) + 256
        u = (32 * s) + (32 * arg2 - arg1) + 320
        t = 32 * arg2 - arg1, None
        while t > 32:
            mem[u + 32] = mem[arg2 + 32]
            t = arg2 + 32
            u = u + 32
            t = t - 32
            continue 
        return memory
          from (32 * s) + (32 * arg2 - arg1) + 256
           len (32 * arg2 - arg1, None) + 64
    mem[(32 * sub_213dafcd.length) + 192] = arg2 - arg1
    mem[64] = (32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 224
    idx = arg1
    while idx < arg2:
        require idx < sub_213dafcd.length
        require idx - arg1 < mem[(32 * sub_213dafcd.length) + 192]
        mem[(32 * sub_213dafcd.length) + (32 * idx - arg1) + 224] = mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 224] = 32
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 256] = mem[(32 * sub_213dafcd.length) + 192]
    _142 = mem[(32 * sub_213dafcd.length) + 192]
    if not Mask(251, 0, mem[(32 * sub_213dafcd.length) + 192]):
        return 32, mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 256 len (32 * mem[(32 * sub_213dafcd.length) + 192]) + 32]
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 288] = mem[(32 * sub_213dafcd.length) + 224]
    s = (32 * sub_213dafcd.length) + 224
    t = mem[64] + 64
    s = 32 * mem[(32 * sub_213dafcd.length) + 192]
    while s > 32:
        mem[t + 32] = mem[arg2 + 32]
        s = arg2 + 32
        t = t + 32
        s = s - 32
        continue 
    return memory
      from mem[64]
       len (32 * _142) + (32 * sub_213dafcd.length) + (32 * arg2 - arg1) + -mem[64] + 288
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3, uint256 arg4) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    require arg4 <= nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + arg3.length + 180] = arg4
    _3067 = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32])
    if address(stor0[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]].field_0):
        require stor3[address(msg.sender)]
        require not uint8(stor1[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]][address(msg.sender)])
        uint8(stor1[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]][address(msg.sender)]) = 1
        mem[ceil32(arg3.length) + 128] = msg.sender
        mem[ceil32(arg3.length) + 160] = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32])
        emit Confirmation(msg.sender, _3067);
        mem[0] = _3067
        require not uint8(stor0[_3067].field_1024)
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = address(owners[idx])
            mem[32] = sha3(_3067, 1)
            if not uint8(stor1[_3067][address(stor4[idx])]):
                if s != required:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if s + 1 != required:
                    idx = idx + 1
                    s = s + 1
                    continue 
            uint8(stor0[_3067].field_1024) = 1
            mem[0] = sha3(_3067, 0) + 2
            mem[ceil32(arg3.length) + 128] = stor0[_3067][2].field_0
            idx = mem[64]
            s = sha3(mem[0])
            while ceil32(arg3.length) + stor0[_3067][2].length + 128 > idx + 32:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            call address(stor0[_3067].field_0).mem[mem[64] len 4] with:
               value stor0[_3067].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3067][2].length + (floor32(stor0[_3067][2].length - 1) + -stor0[_3067][2].length + 32 % 32) + -mem[64] + 124]
            if ext_call.success:
                emit Execution(_3067);
            else:
                emit ExecutionFailure(_3067);
                uint8(stor0[_3067].field_1024) = 0
            return _3067
    else:
        mem[64] = ceil32(arg3.length) + 288
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = 96
        mem[ceil32(arg3.length) + 224] = arg4
        mem[ceil32(arg3.length) + 256] = 0
        address(stor0[_3067].field_0) = arg1
        stor0[_3067].field_256 = arg2
        stor0[_3067].field_512 = (2 * arg3.length) + 1
        s = 0
        idx = 128
        while arg3.length + 128 > idx:
            stor0[_3067][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor0[_3067][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
            stor[('array', 2, ('map', ('var', '_3067'), ('name', 'stor0', 0))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
            idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
            while stor0[_3067][2].length + 31 / 32 > idx:
                stor0[_3067][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        stor0[_3067].field_768 = arg4
        uint8(stor0[_3067].field_1024) = 0
        mem[ceil32(arg3.length) + 340 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 340] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 340] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 340 len arg3.length % 32]]++
        sub_213dafcd.length++
        sub_213dafcd[sub_213dafcd.length] = _3067
        emit Submission(_3067);
        require stor3[address(msg.sender)]
        require not uint8(stor1[_3067][address(msg.sender)])
        uint8(stor1[_3067][address(msg.sender)]) = 1
        mem[ceil32(arg3.length) + 288] = msg.sender
        mem[ceil32(arg3.length) + 320] = _3067
        emit Confirmation(msg.sender, _3067);
        mem[0] = _3067
        require not uint8(stor0[_3067].field_1024)
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = address(owners[idx])
            mem[32] = sha3(_3067, 1)
            if not uint8(stor1[_3067][address(stor4[idx])]):
                if s != required:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if s + 1 != required:
                    idx = idx + 1
                    s = s + 1
                    continue 
            uint8(stor0[_3067].field_1024) = 1
            mem[0] = sha3(_3067, 0) + 2
            mem[ceil32(arg3.length) + 288] = stor0[_3067][2].field_0
            idx = mem[64]
            s = sha3(mem[0])
            while ceil32(arg3.length) + stor0[_3067][2].length + 288 > idx + 32:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
            call address(stor0[_3067].field_0).mem[mem[64] len 4] with:
               value stor0[_3067].field_256 wei
                 gas gas_remaining - 34050 wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3067][2].length + (floor32(stor0[_3067][2].length - 1) + -stor0[_3067][2].length + 32 % 32) + -mem[64] + 284]
            if ext_call.success:
                emit Execution(_3067);
            else:
                emit ExecutionFailure(_3067);
                uint8(stor0[_3067].field_1024) = 0
            return _3067
    return _3067
}



}
