contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() {
    mem[96 len -5514] = code.data[6056 len -5514]
    mem[64] = -5418
    require mem[mem[96] + 96] >= 2
    require mem[128] <= mem[160]
    stor4 = mem[128]
    stor5 = mem[160]
    stor6 = mem[204 len 20]
    stor0 = 0
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        require not stor1[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return code.data[542 len 5514]
}



// =====================  Runtime code  =====================


uint256 requestCount;
mapping of uint8 stor1;
mapping of struct requestMap;
mapping of uint256 lastCompletedIdxs;
uint256 defaultTimeLock;
uint256 extendedTimeLock;
address primaryAddress;

function signerSet(address arg1) {
    return bool(stor1[arg1])
}

function requestCount() {
    return requestCount
}

function defaultTimeLock() {
    return defaultTimeLock
}

function primary() {
    return primaryAddress
}

function extendedTimeLock() {
    return extendedTimeLock
}

function requestMap(bytes32 arg1) {
    return requestMap[arg1].field_0, 
           Mask(32, 224, requestMap[arg1].field_256),
           requestMap[arg1].field_256,
           requestMap[arg1].field_512,
           requestMap[arg1].field_768,
           bool(requestMap[arg1].field_1024)
}

function lastCompletedIdxs(address arg1, bytes4 arg2) {
    return lastCompletedIdxs[arg1][Mask(32, 224, arg2)]
}

function _fallback() payable {
    revert
}

function extendRequestTimeLock(bytes32 arg1) {
    require msg.sender == primaryAddress
    require requestMap[arg1].field_288
    require bool(requestMap[arg1].field_1024) != 1
    requestMap[arg1].field_1024 = 1
    emit TimeLockExtended(requestMap[arg1].field_768 + extendedTimeLock, arg1);
}

function deleteUncompletableRequest(bytes32 arg1) {
    require 0 < requestMap[arg1].field_512
    require requestMap[arg1].field_512 < lastCompletedIdxs[stor2[arg1].field_256][Mask(32, 224, stor2[arg1].field_256)]
    requestMap[arg1].field_0 = 0
    requestMap[arg1].field_256 = 0
    requestMap[arg1].field_288 = 0
    requestMap[arg1].field_512 = 0
    requestMap[arg1].field_768 = 0
    requestMap[arg1].field_1024 = 0
}

function requestUnlock(bytes32 arg1, address arg2, bytes4 arg3, address arg4) payable {
    if primaryAddress != msg.sender:
        require msg.value >= 10^18
    require arg2
    requestCount++
    requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_0 = arg1
    requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_256 = arg3
    requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_288 = arg2
    requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_512 = requestCount + 1
    requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_768 = block.timestamp
    requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_1024 = 0
    if msg.sender == primaryAddress:
        emit Requested(arg1, address(arg2), Mask(32, 224, arg3), sha3(block.hash(block.number - 1), this.address, requestCount + 1), address(arg4), sha3(sha3(block.hash(block.number - 1), this.address, requestCount + 1), arg4, -1), block.timestamp + defaultTimeLock);
    else:
        requestMap[sha3(block.hash(block.number - 1), this.address, stor0 + 1)][arg4][-1].field_1024 = 1
        emit Requested(arg1, address(arg2), Mask(32, 224, arg3), sha3(block.hash(block.number - 1), this.address, requestCount + 1), address(arg4), sha3(sha3(block.hash(block.number - 1), this.address, requestCount + 1), arg4, -1), block.timestamp + extendedTimeLock);
    return sha3(sha3(block.hash(block.number - 1), this.address, requestCount + 1), arg4, -1)
}

function completeUnlock(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require requestMap[arg1].field_288
    require requestMap[arg1].field_512 > lastCompletedIdxs[stor2[arg1].field_256][Mask(32, 224, stor2[arg1].field_256)]
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    require erecover.result
    require stor1[address(signer)]
    signer = erecover(arg1, arg5 << 248, arg6, arg7) 
    require erecover.result
    require stor1[address(signer)]
    require address(signer) != address(signer)
    if requestMap[arg1].field_1024:
        if block.timestamp - requestMap[arg1].field_768 < extendedTimeLock:
            emit TimeLocked(requestMap[arg1].field_768 + extendedTimeLock, arg1);
            return 0
    if block.timestamp - requestMap[arg1].field_768 < defaultTimeLock:
        emit TimeLocked(requestMap[arg1].field_768 + defaultTimeLock, arg1);
        return 0
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    lastCompletedIdxs[stor2[arg1].field_256][Mask(32, 224, stor2[arg1].field_256)] = requestMap[arg1].field_512
    requestMap[arg1].field_0 = 0
    requestMap[arg1].field_256 = 0
    requestMap[arg1].field_288 = 0
    requestMap[arg1].field_512 = 0
    requestMap[arg1].field_768 = 0
    requestMap[arg1].field_1024 = 0
    call requestMap[arg1].field_288 with:
         gas gas_remaining wei
        args requestMap[arg1].field_0
    if not ext_call.success:
        emit Failed(requestMap[arg1].field_0, arg1, address(signer), address(signer));
    else:
        emit Completed(requestMap[arg1].field_0, arg1, address(signer), address(signer));
    return bool(ext_call.success)
}



}
