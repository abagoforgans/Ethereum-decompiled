contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
mapping of uint8 stor4;

function _fallback() {
    mem[96 len -2973] = code.data[3266 len -2973]
    mem[64] = -2877
    stor0 = msg.sender
    require mem[160] >= mem[128]
    stor1 = mem[128]
    stor2 = mem[160]
    require mem[mem[96] + 96] >= 2
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor4[mem[mem[96] + (32 * idx) + 140 len 20]]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return code.data[293 len 2973]
}



// =====================  Runtime code  =====================


address creatorAddress;
uint256 defaultTimeLock;
uint256 extendedTimeLock;
uint256 withdrawalRequestCount;
mapping of uint8 stor4;
mapping of struct sub_ba3ae0ce;

function creator() {
    return creatorAddress
}

function withdrawalRequestCount() {
    return withdrawalRequestCount
}

function signerSet(address arg1) {
    return bool(stor4[arg1])
}

function defaultTimeLock() {
    return defaultTimeLock
}

function sub_ba3ae0ce(?) {
    return sub_ba3ae0ce[arg1].field_0, 
           sub_ba3ae0ce[arg1].field_256,
           sub_ba3ae0ce[arg1].field_512,
           sub_ba3ae0ce[arg1].field_768,
           bool(sub_ba3ae0ce[arg1].field_1024),
           sub_ba3ae0ce[arg1].field_1024
}

function extendedTimeLock() {
    return extendedTimeLock
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function extendRequestTimeLock(bytes32 arg1) {
    require creatorAddress == msg.sender
    require sub_ba3ae0ce[arg1].field_0
    require bool(sub_ba3ae0ce[arg1].field_1024) != 1
    sub_ba3ae0ce[arg1].field_1024 = 1
    emit 0x6a986774: extendedTimeLock + sub_ba3ae0ce[arg1].field_768, arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256
}

function sub_6c5b3893(?) {
    require sub_ba3ae0ce[arg1].field_0
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    require erecover.result
    require stor4[address(signer)]
    sub_ba3ae0ce[arg1].field_0 = 0
    sub_ba3ae0ce[arg1].field_256 = 0
    sub_ba3ae0ce[arg1].field_512 = 0
    sub_ba3ae0ce[arg1].field_768 = 0
    sub_ba3ae0ce[arg1].field_1024 = 0
    emit 0xca50872e: address(signer), arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256
}

function sub_8985646a(?) payable {
    if creatorAddress != msg.sender:
        require msg.value >= 10^18
    withdrawalRequestCount++
    sub_ba3ae0ce[sha3(block.hash(block.number - 1), this.address, stor3 + 1)][arg1][arg3].field_0 = arg2
    sub_ba3ae0ce[sha3(block.hash(block.number - 1), this.address, stor3 + 1)][arg1][arg3].field_256 = arg3
    sub_ba3ae0ce[sha3(block.hash(block.number - 1), this.address, stor3 + 1)][arg1][arg3].field_512 = sha3(block.hash(block.number - 1), this.address, withdrawalRequestCount + 1)
    sub_ba3ae0ce[sha3(block.hash(block.number - 1), this.address, stor3 + 1)][arg1][arg3].field_768 = block.timestamp
    if msg.sender == creatorAddress:
        emit 0xf7bbf755: sha3(block.hash(block.number - 1), this.address, withdrawalRequestCount + 1), address(arg1), address(arg2), arg3, defaultTimeLock + block.timestamp, sha3(sha3(block.hash(block.number - 1), this.address, withdrawalRequestCount + 1), arg1, arg3)
    else:
        sub_ba3ae0ce[sha3(block.hash(block.number - 1), this.address, stor3 + 1)][arg1][arg3].field_1024 = 1
        emit 0xf7bbf755: sha3(block.hash(block.number - 1), this.address, withdrawalRequestCount + 1), address(arg1), address(arg2), arg3, extendedTimeLock + block.timestamp, sha3(sha3(block.hash(block.number - 1), this.address, withdrawalRequestCount + 1), arg1, arg3)
    return sha3(sha3(block.hash(block.number - 1), this.address, withdrawalRequestCount + 1), arg1, arg3)
}

function confirm(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    require sub_ba3ae0ce[arg1].field_0
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    require erecover.result
    require stor4[address(signer)]
    if sub_ba3ae0ce[arg1].field_1024:
        if block.timestamp - sub_ba3ae0ce[arg1].field_768 < extendedTimeLock:
            emit 0x4a519707: sub_ba3ae0ce[arg1].field_768 + extendedTimeLock, arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, address(signer)
            return 0
    if block.timestamp - sub_ba3ae0ce[arg1].field_768 < defaultTimeLock:
        emit 0x4a519707: sub_ba3ae0ce[arg1].field_768 + defaultTimeLock, arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, address(signer)
        return 0
    if not sub_ba3ae0ce[arg1].field_1032:
        sub_ba3ae0ce[arg1].field_1032 = address(signer)
        emit 0xcd5e96ae: arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, address(signer)
        return 0
    require sub_ba3ae0ce[arg1].field_1032 != address(signer)
    sub_ba3ae0ce[arg1].field_0 = 0
    sub_ba3ae0ce[arg1].field_256 = 0
    sub_ba3ae0ce[arg1].field_512 = 0
    sub_ba3ae0ce[arg1].field_768 = 0
    sub_ba3ae0ce[arg1].field_1024 = 0
    call sub_ba3ae0ce[arg1].field_0 with:
       value sub_ba3ae0ce[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0xbedb283d: arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, sub_ba3ae0ce[arg1].field_1024, address(signer)
    else:
        emit 0xa8945d0c: arg1, sub_ba3ae0ce[arg1].field_0, sub_ba3ae0ce[arg1].field_256, sub_ba3ae0ce[arg1].field_1024, address(signer)
    return bool(ext_call.success)
}



}
