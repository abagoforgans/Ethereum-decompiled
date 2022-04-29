contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor3;
address stor4;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = code.data[2697 len 20]
    stor4 = code.data[2729 len 20]
    return code.data[139 len 2546]
}



// =====================  Runtime code  =====================


const GOAL = 70000 * 10^18

const START_TIME = (420952 * 3600)


uint8 stor0; offset 160
address owner;
uint256 totalReceived;
uint256 goalCompletedBlock;
address tokenAddr;
address unlockerAddress;
array of struct lockedCZRMap;

function unlocker() {
    return unlockerAddress
}

function tokenAddr() {
    return tokenAddr
}

function owner() {
    return owner
}

function totalReceived() {
    return totalReceived
}

function goalCompletedBlock() {
    return goalCompletedBlock
}

function lockedCZRMap(address arg1, uint256 arg2) {
    require arg2 < lockedCZRMap[arg1].field_0
    return lockedCZRMap[arg1][arg2].field_0, 
           lockedCZRMap[arg1][arg2].field_256,
           lockedCZRMap[arg1][arg2].field_512,
           lockedCZRMap[arg1][arg2].field_768
}

function pause() {
    require owner == msg.sender
    stor0 = 1
}

function start() {
    require owner == msg.sender
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdrawEth(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor0
    require block.timestamp > 420952 * 3600
    totalReceived += msg.value
    if not goalCompletedBlock:
        if totalReceived >= 70000 * 10^18:
            goalCompletedBlock = block.number
}

function removeCZRLock(address arg1, uint256 arg2) {
    require owner == msg.sender
    require lockedCZRMap[address(arg1)].field_0 > 0
    require arg2 < lockedCZRMap[address(arg1)].field_0
    lockedCZRMap[address(arg1)][arg2].field_0 = 0
    lockedCZRMap[address(arg1)][arg2].field_256 = 0
    lockedCZRMap[address(arg1)][arg2].field_512 = 0
    lockedCZRMap[address(arg1)][arg2].field_768 = 0
    emit RemoveLock(address(arg1), arg2);
}

function addCZRLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require arg3 > 0
    lockedCZRMap[address(arg1)].field_0++
    if not lockedCZRMap[address(arg1)].field_0 <= lockedCZRMap[address(arg1)].field_0 + 1:
        idx = 4 * lockedCZRMap[address(arg1)].field_0 + 1
        while 4 * lockedCZRMap[address(arg1)].field_0 > idx:
            lockedCZRMap[address(arg1)][idx].field_0 = 0
            lockedCZRMap[address(arg1)][idx].field_256 = 0
            lockedCZRMap[address(arg1)][idx].field_512 = 0
            lockedCZRMap[address(arg1)][idx].field_768 = 0
            idx = idx + 4
            continue 
    if arg2:
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_0 = arg2
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_256 = arg4
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_512 = arg3
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_768 = 0
        emit AddLock(address(arg1), lockedCZRMap[address(arg1)].field_0 - 1, arg2, arg4, arg3);
    else:
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_0 = block.timestamp
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_256 = arg4
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_512 = arg3
        lockedCZRMap[address(arg1)][lockedCZRMap[address(arg1)].field_0].field_768 = 0
        emit AddLock(address(arg1), lockedCZRMap[address(arg1)].field_0 - 1, block.timestamp, arg4, arg3);
}

function unlockCZR(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        mem[32] = 5
        require lockedCZRMap[address(arg1)].field_0 > 0
        require var13005 < lockedCZRMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        if lockedCZRMap[address(arg1)][var13005].field_512 <= 0:
            var13002 = var13002
            var13003 = var13003
            var13004 = (4 * var13005) + sha3(sha3(address(arg1), 5))
            var13005 = var13005 + 1
            continue 
        if not block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600:
            var13002 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600
            var13003 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0
            var13004 = (4 * var13005) + sha3(sha3(address(arg1), 5))
            var13005 = var13005 + 1
            continue 
        if block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600 >= lockedCZRMap[address(arg1)][var13005].field_256:
            if not lockedCZRMap[address(arg1)][var13005].field_512:
                var13002 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600
                var13003 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0
                var13004 = (4 * var13005) + sha3(sha3(address(arg1), 5))
                var13005 = var13005 + 1
                continue 
            lockedCZRMap[address(arg1)][var13005].field_768 += lockedCZRMap[address(arg1)][var13005].field_512
            lockedCZRMap[address(arg1)][var13005].field_512 = 0
            mem[164] = lockedCZRMap[address(arg1)][var13005].field_512
            require ext_code.size(tokenAddr)
            call tokenAddr.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), lockedCZRMap[address(arg1)][var13005].field_512
            require ext_call.success
            mem[96] = arg1
            mem[128] = var13005
            mem[160] = lockedCZRMap[address(arg1)][var13005].field_512
            emit Unlock(address(arg1), var13005, lockedCZRMap[address(arg1)][var13005].field_512);
        else:
            require lockedCZRMap[address(arg1)][var13005].field_256
            if not ((lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256) - lockedCZRMap[address(arg1)][var13005].field_768:
                var13002 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600
                var13003 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0
                var13004 = (4 * var13005) + sha3(sha3(address(arg1), 5))
                var13005 = var13005 + 1
                continue 
            lockedCZRMap[address(arg1)][var13005].field_768 = (lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256
            lockedCZRMap[address(arg1)][var13005].field_512 = lockedCZRMap[address(arg1)][var13005].field_512 - ((lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256) + lockedCZRMap[address(arg1)][var13005].field_768
            mem[164] = ((lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256) - lockedCZRMap[address(arg1)][var13005].field_768
            require ext_code.size(tokenAddr)
            call tokenAddr.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), ((lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256) - lockedCZRMap[address(arg1)][var13005].field_768
            require ext_call.success
            mem[96] = arg1
            mem[128] = var13005
            mem[160] = ((lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256) - lockedCZRMap[address(arg1)][var13005].field_768
            emit Unlock(address(arg1), var13005, ((lockedCZRMap[address(arg1)][var13005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var13005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var13005].field_256) - lockedCZRMap[address(arg1)][var13005].field_768);
        if arg2 <= 0:
            var13002 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600
            var13003 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0
            var13004 = (4 * var13005) + sha3(sha3(address(arg1), 5))
            var13005 = var13005 + 1
            continue 
        if arg2 != 1:
            var13002 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0 / 720 * 24 * 3600
            var13003 = block.timestamp - lockedCZRMap[address(arg1)][var13005].field_0
            var13004 = (4 * var13005) + sha3(sha3(address(arg1), 5))
            var13005 = var13005 + 1
            continue 
    else:
        require unlockerAddress == msg.sender
        mem[32] = 5
        require lockedCZRMap[address(arg1)].field_0 > 0
        require var14005 < lockedCZRMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        if lockedCZRMap[address(arg1)][var14005].field_512 <= 0:
            var14002 = var14002
            var14003 = var14003
            var14004 = (4 * var14005) + sha3(sha3(address(arg1), 5))
            var14005 = var14005 + 1
            continue 
        if not block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600:
            var14002 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600
            var14003 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0
            var14004 = (4 * var14005) + sha3(sha3(address(arg1), 5))
            var14005 = var14005 + 1
            continue 
        if block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600 >= lockedCZRMap[address(arg1)][var14005].field_256:
            if not lockedCZRMap[address(arg1)][var14005].field_512:
                var14002 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600
                var14003 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0
                var14004 = (4 * var14005) + sha3(sha3(address(arg1), 5))
                var14005 = var14005 + 1
                continue 
            lockedCZRMap[address(arg1)][var14005].field_768 += lockedCZRMap[address(arg1)][var14005].field_512
            lockedCZRMap[address(arg1)][var14005].field_512 = 0
            mem[164] = lockedCZRMap[address(arg1)][var14005].field_512
            require ext_code.size(tokenAddr)
            call tokenAddr.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), lockedCZRMap[address(arg1)][var14005].field_512
            require ext_call.success
            mem[96] = arg1
            mem[128] = var14005
            mem[160] = lockedCZRMap[address(arg1)][var14005].field_512
            emit Unlock(address(arg1), var14005, lockedCZRMap[address(arg1)][var14005].field_512);
        else:
            require lockedCZRMap[address(arg1)][var14005].field_256
            if not ((lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256) - lockedCZRMap[address(arg1)][var14005].field_768:
                var14002 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600
                var14003 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0
                var14004 = (4 * var14005) + sha3(sha3(address(arg1), 5))
                var14005 = var14005 + 1
                continue 
            lockedCZRMap[address(arg1)][var14005].field_768 = (lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256
            lockedCZRMap[address(arg1)][var14005].field_512 = lockedCZRMap[address(arg1)][var14005].field_512 - ((lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256) + lockedCZRMap[address(arg1)][var14005].field_768
            mem[164] = ((lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256) - lockedCZRMap[address(arg1)][var14005].field_768
            require ext_code.size(tokenAddr)
            call tokenAddr.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, address(arg1), ((lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256) - lockedCZRMap[address(arg1)][var14005].field_768
            require ext_call.success
            mem[96] = arg1
            mem[128] = var14005
            mem[160] = ((lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256) - lockedCZRMap[address(arg1)][var14005].field_768
            emit Unlock(address(arg1), var14005, ((lockedCZRMap[address(arg1)][var14005].field_768 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) + (lockedCZRMap[address(arg1)][var14005].field_512 * block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600) / lockedCZRMap[address(arg1)][var14005].field_256) - lockedCZRMap[address(arg1)][var14005].field_768);
        if arg2 <= 0:
            var14002 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600
            var14003 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0
            var14004 = (4 * var14005) + sha3(sha3(address(arg1), 5))
            var14005 = var14005 + 1
            continue 
        if arg2 != 1:
            var14002 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0 / 720 * 24 * 3600
            var14003 = block.timestamp - lockedCZRMap[address(arg1)][var14005].field_0
            var14004 = (4 * var14005) + sha3(sha3(address(arg1), 5))
            var14005 = var14005 + 1
            continue 
    ('eq', 1, ('param', 'arg2'))
}



}
