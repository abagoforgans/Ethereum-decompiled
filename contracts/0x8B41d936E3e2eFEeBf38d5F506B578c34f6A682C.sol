contract main {




// =====================  Runtime code  =====================


const REQUIRED = 2


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of address owners;
uint256 transactionCount;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1]
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(uint8(stor1[arg1][arg2]))
}

function transactionCount() {
    return transactionCount
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function transactions(uint256 arg1) {
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length]),
           bool(stor0[arg1].field_768)
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx]
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][stor3[idx]]):
            if s != 2:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != 2:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function replaceOwner(address arg1, address arg2) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    idx = 0
    while idx < owners.length:
        mem[0] = 3
        if owners[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        owners[idx] = arg2
        stor2[address(arg1)] = 0
        stor2[address(arg2)] = 1
        emit OwnerChange(arg1, arg2);
    stor2[address(arg1)] = 0
    stor2[address(arg2)] = 1
    emit OwnerChange(arg1, arg2);
}

function executeTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not stor0[arg1].field_768
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx]
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][stor3[idx]]):
            if s != 2:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != 2:
                idx = idx + 1
                s = s + 1
                continue 
        stor0[arg1].field_768 = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call stor0[arg1].field_0.mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            stor0[arg1].field_768 = 0
}

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require stor0[arg1].field_0
    uint8(stor1[arg1][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, arg1);
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not stor0[arg1].field_768
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx]
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][stor3[idx]]):
            if s != 2:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != 2:
                idx = idx + 1
                s = s + 1
                continue 
        stor0[arg1].field_768 = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call stor0[arg1].field_0.mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            stor0[arg1].field_768 = 0
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require stor2[address(msg.sender)]
    require arg1
    stor0[stor4].field_0 = arg1
    stor0[stor4].field_256 = arg2
    stor0[stor4][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[stor4].field_768 = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor2[address(msg.sender)]
    require stor0[stor4].field_0
    uint8(stor1[stor4][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, transactionCount);
    require stor2[address(msg.sender)]
    require uint8(stor1[stor4][address(msg.sender)])
    require not stor0[stor4].field_768
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = owners[idx]
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor4][stor3[idx]]):
            if s != 2:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != 2:
                idx = idx + 1
                s = s + 1
                continue 
        stor0[stor4].field_768 = 1
        mem[ceil32(arg3.length) + 256] = stor0[stor4][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 0) + 2)
        while ceil32(arg3.length) + stor0[stor4][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call stor0[stor4].field_0.mem[ceil32(arg3.length) + 256 len 4] with:
           value stor0[stor4].field_256 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 260 len stor0[stor4][2].length + (floor32(stor0[stor4][2].length - 1) + -stor0[stor4][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            stor0[stor4].field_768 = 0
        return transactionCount
    return transactionCount
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[5060 len 32 * transactionCount]
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
            if not stor0[idx].field_768:
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if stor0[idx].field_768:
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not stor0[idx].field_768:
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
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[5060 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}



}
