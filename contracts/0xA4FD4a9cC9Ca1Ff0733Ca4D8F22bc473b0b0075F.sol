contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;

function _fallback() {
    mem[96 len -4699] = code.data[5208 len -4699]
    mem[64] = -4603
    require msg.value <= 0
    require mem[128] <= mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor4 = mem[128]
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
    return code.data[509 len 4699]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function confirmations(bytes32 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function required() {
    return required
}

function _fallback() {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function revokeConfirmation(bytes32 arg1) {
    require msg.value <= 0
    require stor2[address(msg.sender)]
    require not stor0[arg1].field_1024
    stor1[arg1][address(msg.sender)] = 0
    emit Revocation(msg.sender, arg1);
}

function confirmationCount(bytes32 arg1) {
    require msg.value <= 0
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

function updateRequired(uint256 arg1) {
    require msg.value <= 0
    require msg.sender == this.address
    if owners.length:
        idx = 128
        s = 0
        while (32 * owners.length) + 96 > idx:
            mem[idx + 32] = owners[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require arg1 <= owners.length
    if arg1 < owners.length:
        if required < arg1:
            required = arg1
}

function addOwner(address arg1) {
    require msg.value <= 0
    require msg.sender == this.address
    require not stor2[address(arg1)]
    if owners.length < 12:
        stor2[address(arg1)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        owners[owners.length].field_0 = arg1
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

function confirmTransaction(bytes32 arg1) {
    require msg.value <= 0
    require stor2[address(msg.sender)]
    require not stor0[arg1].field_1024
    stor1[arg1][address(msg.sender)] = 1
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    require msg.value <= 0
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
    if s >= required:
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
        stor0[arg1].field_1024 = 1
        emit 0x4a205366: msg.sender, arg1
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3, uint256 arg4) {
    require msg.value <= 0
    require stor2[address(msg.sender)]
    require not stor0[arg1][arg2][arg3[all]][arg4].field_1024
    mem[288 len arg3.length] = arg3[all]
    stor0[arg1][arg2][arg3[all]][arg4].field_0 = arg1
    stor0[arg1][arg2][arg3[all]][arg4].field_256 = arg2
    stor0[arg1][arg2][arg3[all]][arg4][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[arg1][arg2][arg3[all]][arg4].field_768 = arg4
    stor0[arg1][arg2][arg3[all]][arg4].field_1024 = 0
    emit 0xc67f8dbb: msg.sender, sha3(arg1, arg2, arg3[all], arg4)
    require msg.value <= 0
    require stor2[address(msg.sender)]
    require not stor0[arg1][arg2][arg3[all]][arg4].field_1024
    stor1[arg1][arg2][arg3[all]][arg4][address(msg.sender)] = 1
    mem[ceil32(arg3.length) + 320] = sha3(arg1, arg2, arg3[all], arg4)
    emit Confirmation(msg.sender, sha3(arg1, arg2, arg3[all], arg4));
    require msg.value <= 0
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = sha3(sha3(arg1, arg2, arg3[all], arg4), 1)
        if not stor1[arg1][arg2][arg3[all]][arg4][stor3[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s >= required:
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
        stor0[arg1][arg2][arg3[all]][arg4].field_1024 = 1
        emit 0x4a205366: msg.sender, sha3(arg1, arg2, arg3[all], arg4)
    return sha3(arg1, arg2, arg3[all], arg4)
}



}
