contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 positionMap;

function positionMap(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return positionMap[arg1][arg2]
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    return (ext_code.size(arg1) > 0)
}

function brokersMap(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < stor0[arg1].field_0
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256, stor0[arg1][arg2].field_512
}

function getBroker(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not positionMap[address(arg1)][address(arg2)]:
        return 0
    require positionMap[address(arg1)][address(arg2)] - 1 < stor0[address(arg1)].field_0
    return 1, stor0[address(arg1)][stor1[address(arg1)][address(arg2)]].field_0
}

function unregisterAllBrokers() {
    idx = 0
    while idx < stor0[msg.sender].field_0:
        mem[0] = stor0[msg.sender][idx].field_256
        mem[32] = sha3(msg.sender, 1)
        positionMap[msg.sender][stor0[msg.sender][idx].field_256] = 0
        idx = idx + 1
        continue 
    stor0[msg.sender].field_0 = 0
    idx = 0
    while 3 * stor0[msg.sender].field_0 > idx:
        stor0[msg.sender][idx].field_0 = 0
        stor0[msg.sender][idx].field_256 = 0
        stor0[msg.sender][idx].field_512 = 0
        idx = idx + 3
        continue 
    emit 0x80c47902: msg.sender
}

function registerBroker(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if positionMap[msg.sender][address(arg1)]:
        revert with 0, 'ALREADY_EXIST'
    if arg2:
        if ext_code.size(arg2) <= 0:
            revert with 0, 'INVALID_ADDRESS'
    stor0[msg.sender].field_0++
    stor0[msg.sender][stor0[msg.sender].field_0].field_0 = msg.sender
    stor0[msg.sender][stor0[msg.sender].field_0].field_256 = arg1
    stor0[msg.sender][stor0[msg.sender].field_0].field_512 = arg2
    positionMap[msg.sender][address(arg1)] = stor0[msg.sender].field_0
    emit 0x36b7b2ff: msg.sender, address(arg1), arg2
}

function unregisterBroker(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if not positionMap[msg.sender][address(arg1)]:
        revert with 0, 'NOT_FOUND'
    require positionMap[msg.sender][address(arg1)] - 1 < stor0[msg.sender].field_0
    if stor0[msg.sender].field_0 != positionMap[msg.sender][address(arg1)]:
        require stor0[msg.sender].field_0 - 1 < stor0[msg.sender].field_0
        require positionMap[msg.sender][address(arg1)] - 1 < stor0[msg.sender].field_0
        stor0[msg.sender][stor1[msg.sender][address(arg1)]].field_0 = stor0[msg.sender][stor0[msg.sender].field_0].field_0
        stor0[msg.sender][stor1[msg.sender][address(arg1)]].field_0 = stor0[msg.sender][stor0[msg.sender].field_0].field_0
        stor0[msg.sender][stor1[msg.sender][address(arg1)]].field_0 = stor0[msg.sender][stor0[msg.sender].field_0].field_0
        positionMap[stor0[msg.sender][stor0[msg.sender].field_0].field_0][stor0[msg.sender][stor0[msg.sender].field_0].field_0] = positionMap[msg.sender][address(arg1)]
    stor0[msg.sender].field_0--
    if stor0[msg.sender].field_0 > stor0[msg.sender].field_0 - 1:
        idx = (3 * stor0[msg.sender].field_0) - 3
        while 3 * stor0[msg.sender].field_0 > idx:
            stor0[msg.sender][idx].field_0 = 0
            stor0[msg.sender][idx].field_256 = 0
            stor0[msg.sender][idx].field_512 = 0
            idx = idx + 3
            continue 
    positionMap[msg.sender][address(arg1)] = 0
    emit 0x480c7b23: msg.sender, address(arg1), stor0[msg.sender][stor1[msg.sender][address(arg1)]].field_0
}

function getBrokers(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 >= stor0[address(arg1)].field_0:
        mem[192 len 2048] = mem[128], 64, mem[192 len 1984]
        return 64, 2144, 64, mem[192 len 2048], 64, 2144, 64 >> 256, mem[2336 len 1984]
    if arg3 + arg2 <= stor0[address(arg1)].field_0:
        if not arg3:
            mem[(32 * arg3) + 128] = arg3
        else:
            mem[128 len 32 * arg3] = code.data[3497 len 32 * arg3]
            mem[(32 * arg3) + 128] = arg3
            mem[(32 * arg3) + 160 len 32 * arg3] = code.data[3497 len 32 * arg3]
        idx = arg2
        while idx < arg3 + arg2:
            require idx < stor0[address(arg1)].field_0
            require idx - arg2 < arg3
            mem[(32 * idx - arg2) + 128] = stor0[address(arg1)][idx].field_256
            require idx < stor0[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 0)
            require idx - arg2 < mem[(32 * arg3) + 128]
            mem[(32 * arg3) + (32 * idx - arg2) + 160] = stor0[address(arg1)][idx].field_512
            idx = idx + 1
            continue 
        mem[(64 * arg3) + 160] = 64
        mem[(64 * arg3) + 224] = arg3
        mem[(64 * arg3) + 256 len floor32(arg3)] = mem[128 len floor32(arg3)]
        mem[(64 * arg3) + 192] = (32 * arg3) + 96
        mem[(98 * arg3) + 256] = mem[(32 * arg3) + 128]
        mem[(98 * arg3) + 288 len floor32(mem[(32 * arg3) + 128])] = mem[(32 * arg3) + 160 len floor32(mem[(32 * arg3) + 128])]
        return memory
          from (64 * arg3) + 160
           len (32 * mem[(32 * arg3) + 128]) + (161 * arg3) + 128
    mem[96] = stor0[address(arg1)].field_0 - arg2
    if not stor0[address(arg1)].field_0 - arg2:
        mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128] = stor0[address(arg1)].field_0 - arg2
        idx = arg2
        while idx < stor0[address(arg1)].field_0:
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = stor0[address(arg1)][idx].field_256
            require idx < stor0[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 0)
            require idx - arg2 < mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128]
            mem[(32 * stor0[address(arg1)].field_0 - arg2) + (32 * idx - arg2) + 160] = stor0[address(arg1)][idx].field_512
            idx = idx + 1
            continue 
        mem[(64 * stor0[address(arg1)].field_0 - arg2) + 160] = 64
        mem[(64 * stor0[address(arg1)].field_0 - arg2) + 224] = mem[96]
        mem[(64 * stor0[address(arg1)].field_0 - arg2) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(64 * stor0[address(arg1)].field_0 - arg2) + 192] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + (64 * stor0[address(arg1)].field_0 - arg2) + 256] = mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128]
        _124 = mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128]
        mem[(32 * mem[96]) + (64 * stor0[address(arg1)].field_0 - arg2) + 288 len floor32(mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128])] = mem[(32 * stor0[address(arg1)].field_0 - arg2) + 160 len floor32(mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128])]
        return Array(len=mem[96], data=mem[(64 * stor0[address(arg1)].field_0 - arg2) + 256 len (32 * _124) + (32 * mem[96]) + 32]), 
               (32 * mem[96]) + 96
    mem[128 len 32 * stor0[address(arg1)].field_0 - arg2] = code.data[3497 len 32 * stor0[address(arg1)].field_0 - arg2]
    mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128] = stor0[address(arg1)].field_0 - arg2
    mem[(32 * stor0[address(arg1)].field_0 - arg2) + 160 len 32 * stor0[address(arg1)].field_0 - arg2] = code.data[3497 len 32 * stor0[address(arg1)].field_0 - arg2]
    idx = arg2
    while idx < stor0[address(arg1)].field_0:
        require idx - arg2 < mem[96]
        mem[(32 * idx - arg2) + 128] = stor0[address(arg1)][idx].field_256
        require idx < stor0[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 0)
        require idx - arg2 < mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128]
        mem[(32 * stor0[address(arg1)].field_0 - arg2) + (32 * idx - arg2) + 160] = stor0[address(arg1)][idx].field_512
        idx = idx + 1
        continue 
    mem[(64 * stor0[address(arg1)].field_0 - arg2) + 160] = 64
    mem[(64 * stor0[address(arg1)].field_0 - arg2) + 224] = mem[96]
    mem[(64 * stor0[address(arg1)].field_0 - arg2) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * stor0[address(arg1)].field_0 - arg2) + 192] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + (64 * stor0[address(arg1)].field_0 - arg2) + 256] = mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128]
    _127 = mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128]
    mem[(32 * mem[96]) + (64 * stor0[address(arg1)].field_0 - arg2) + 288 len floor32(mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128])] = mem[(32 * stor0[address(arg1)].field_0 - arg2) + 160 len floor32(mem[(32 * stor0[address(arg1)].field_0 - arg2) + 128])]
    return Array(len=mem[96], data=mem[(64 * stor0[address(arg1)].field_0 - arg2) + 256 len (32 * _127) + (32 * mem[96]) + 32]), 
           (32 * mem[96]) + 96
}



}
