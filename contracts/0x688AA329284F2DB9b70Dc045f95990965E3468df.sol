contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[3431 len 32]
    stor5 = code.data[3463 len 32]
    stor4 = code.data[3495 len 32]
    stor3 = 0
    return code.data[172 len 3259]
}



// =====================  Runtime code  =====================


address owner;
array of struct allocations;
uint256 unlockDate;
uint256 currentInterval;
uint256 intervalDuration;
uint256 numIntervals;

function allocations(uint256 arg1) {
    require arg1 < allocations.length
    return allocations[arg1].field_0, 
           allocations[arg1].field_256,
           allocations[arg1].field_512,
           allocations[arg1].field_768,
           allocations[arg1].field_1024
}

function intervalDuration() {
    return intervalDuration
}

function currentInterval() {
    return currentInterval
}

function numAllocations() {
    return allocations.length
}

function unlockDate() {
    return unlockDate
}

function owner() {
    return owner
}

function allocationAmount(uint256 arg1) {
    require arg1 < allocations.length
    return allocations[arg1].field_256
}

function numIntervals() {
    return numIntervals
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unlock(uint256 arg1) {
    require msg.sender == owner
    require arg1 < allocations.length
    if allocations[arg1].field_768 >= currentInterval:
        require arg1 < allocations.length
        return 0, allocations[arg1].field_0, allocations[arg1].field_1024
    require arg1 < allocations.length
    allocations[arg1].field_768 = currentInterval
    require allocations[arg1].field_1024 <= allocations[arg1].field_512
    require arg1 < allocations.length
    allocations[arg1].field_512 -= allocations[arg1].field_1024
    emit Unlock(allocations[arg1].field_1024, allocations[arg1].field_0);
    return 1, allocations[arg1].field_0, allocations[arg1].field_1024
}

function pushAllocation(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp < unlockDate
    allocations.length++
    if not allocations.length <= allocations.length + 1:
        idx = (5 * allocations.length) + 5
        while 5 * allocations.length > idx:
            allocations[idx].field_0 = 0
            allocations[idx].field_256 = 0
            allocations[idx].field_512 = 0
            allocations[idx].field_768 = 0
            allocations[idx].field_1024 = 0
            idx = idx + 5
            continue 
    allocations[allocations.length].field_0 = arg1
    allocations[allocations.length].field_256 = arg2
    allocations[allocations.length].field_512 = arg2
    allocations[allocations.length].field_768 = 0
    allocations[allocations.length].field_1024 = 0
    emit Lock(arg2, arg1);
}

function processInterval() {
    require msg.sender == owner
    if block.timestamp < unlockDate:
        return 0
    if not currentInterval:
        require unlockDate <= block.timestamp
        if block.timestamp - unlockDate <= 0:
            return 0
    else:
        require currentInterval
        require currentInterval * intervalDuration / currentInterval == intervalDuration
        require unlockDate <= block.timestamp
        if block.timestamp - unlockDate <= currentInterval * intervalDuration:
            return 0
    if currentInterval >= numIntervals:
        return 0
    require currentInterval + 1 >= currentInterval
    currentInterval++
    s = 0
    idx = 0
    while idx < allocations.length:
        require idx < allocations.length
        if currentInterval == numIntervals:
            mem[0] = 1
            allocations[idx].field_1024 = allocations[idx].field_512
            s = allocations[idx].field_512
            idx = idx + 1
            continue 
        require numIntervals
        require idx < allocations.length
        mem[0] = 1
        allocations[idx].field_1024 = allocations[idx].field_256 / numIntervals
        s = allocations[idx].field_256 / numIntervals
        idx = idx + 1
        continue 
    return 1
}



}
