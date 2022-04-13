contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;

function _fallback() {
    mem[96 len -4388] = code.data[4907 len -4388]
    mem[64] = -4292
    require mem[mem[96] + 96] <= 50
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor2[mem[mem[96] + (32 * idx) + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20] != 0
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
    return code.data[519 len 4388]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct stor3;
uint256 required;
uint256 transactionCount;

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(uint8(stor1[arg1][arg2]))
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit LogDeposit(msg.value, msg.sender);
}

function changeRequirement(uint256 arg1) {
    require msg.sender == this.address
    require stor3.length <= 50
    require arg1 <= stor3.length
    require arg1
    require stor3.length
    required = arg1
    emit LogRequirementChange(arg1);
}

function revokeConfirmation(uint256 arg1) {
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    uint8(stor1[arg1][address(msg.sender)]) = 0
    emit LogRevocation(arg1, msg.sender);
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
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

function transactions(uint256 arg1) {
    mem[256] = stor0[arg1][2].field_0
    idx = 256
    s = 0
    while stor0[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[256 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32)]),
           bool(uint8(stor0[arg1].field_768))
}

function addOwner(address arg1) {
    require msg.sender == this.address
    require not stor2[address(arg1)]
    require arg1
    require stor3.length + 1 <= 50
    require required <= stor3.length + 1
    require required
    require stor3.length + 1
    stor2[address(arg1)] = 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length].field_0) = arg1
    emit 0x6d099d2d: arg1
}

function replaceOwner(address arg1, address arg2) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < stor3.length
        address(stor3[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[arg2] = 1
        emit LogOwnerRemoval(arg1);
        emit 0x6d099d2d: arg2
    stor2[address(arg1)] = 0
    stor2[arg2] = 1
    emit LogOwnerRemoval(arg1);
    emit 0x6d099d2d: arg2
}

function getOwners() {
    if stor3.length:
        mem[160] = address(stor3.field_0)
        idx = 160
        s = 0
        while (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor3.length) + 160] = 32
    mem[(32 * stor3.length) + 192] = stor3.length
    if Mask(251, 0, stor3.length):
        mem[(32 * stor3.length) + 224] = mem[160]
        mem[(32 * stor3.length) + 256 len floor32((32 * stor3.length) - 1)] = mem[192 len floor32((32 * stor3.length) - 1)]
    return Array(len=stor3.length, data=mem[(32 * stor3.length) + 224 len 32 * stor3.length])
}

function executeTransaction(uint256 arg1) {
    require not uint8(stor0[arg1].field_768)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
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
        uint8(stor0[arg1].field_768) = 1
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
             gas gas_remaining - 34710 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit 0x55964874: arg1
        else:
            emit 0x4ff86552: arg1
            uint8(stor0[arg1].field_768) = 0
}

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require address(stor0[arg1].field_0)
    require not uint8(stor1[arg1][address(msg.sender)])
    uint8(stor1[arg1][address(msg.sender)]) = 1
    mem[96] = arg1
    emit LogConfirmation(arg1, msg.sender);
    require not uint8(stor0[arg1].field_768)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
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
        uint8(stor0[arg1].field_768) = 1
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
             gas gas_remaining - 34710 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit 0x55964874: arg1
        else:
            emit 0x4ff86552: arg1
            uint8(stor0[arg1].field_768) = 0
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
        address(stor3[idx].field_0) = address(stor3[stor3.length].field_0)
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            idx = stor3.length + sha3(3) - 1
            while sha3(3) + stor3.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > stor3.length:
            require msg.sender == this.address
            require stor3.length <= 50
            require stor3.length <= stor3.length
            require stor3.length
            require stor3.length
            required = stor3.length
            emit LogRequirementChange(stor3.length);
        emit LogOwnerRemoval(arg1);
    stor3.length--
    if not stor3.length <= stor3.length - 1:
        idx = stor3.length - 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > stor3.length:
        require msg.sender == this.address
        require stor3.length <= 50
        require stor3.length <= stor3.length
        require stor3.length
        require stor3.length
        required = stor3.length
        emit LogRequirementChange(stor3.length);
    emit LogOwnerRemoval(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    mem[ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg3.length) + 224] = 0
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    mem[ceil32(arg3.length) + 256] = arg1
    mem[ceil32(arg3.length) + 288] = arg2
    mem[ceil32(arg3.length) + 320] = 96
    mem[ceil32(arg3.length) + 352] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 384] = mem[128]
        mem[ceil32(arg3.length) + 416 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit 0x62db95f1: address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 384 len arg3.length]), transactionCount
    require stor2[address(msg.sender)]
    require address(stor0[stor5].field_0)
    require not uint8(stor1[stor5][address(msg.sender)])
    uint8(stor1[stor5][address(msg.sender)]) = 1
    mem[ceil32(arg3.length) + 256] = transactionCount
    emit LogConfirmation(transactionCount, msg.sender);
    require not uint8(stor0[stor5].field_768)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx].field_0)
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
        uint8(stor0[stor5].field_768) = 1
        mem[ceil32(arg3.length) + 256] = stor0[stor5][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 0) + 2)
        while ceil32(arg3.length) + stor0[stor5][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[stor5].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value stor0[stor5].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 260 len stor0[stor5][2].length + (floor32(stor0[stor5][2].length - 1) + -stor0[stor5][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit 0x55964874: transactionCount
        else:
            emit 0x4ff86552: transactionCount
            uint8(stor0[stor5].field_768) = 0
        return transactionCount
    return transactionCount
}



}
