contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    return code.data[48 len 4438]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address operatorAddress;
array of struct auctions;
mapping of uint256 pendingReturns;
uint256 totalReturns;

function totalReturns() {
    return totalReturns
}

function operatorAddress() {
    return operatorAddress
}

function pendingReturns(address arg1) {
    return pendingReturns[arg1]
}

function auctions(uint256 arg1) {
    require arg1 < auctions.length
    return auctions[arg1].field_0, 
           auctions[arg1].field_256,
           auctions[arg1].field_256,
           auctions[arg1].field_256,
           auctions[arg1].field_512
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function destroyContract() {
    require owner == msg.sender
    require not eth.balance(this.address)
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function setOperator(address arg1) {
    require owner == msg.sender
    operatorAddress = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function isEnded(uint16 arg1) {
    require arg1 < auctions.length
    return (auctions[arg1].field_416 < block.timestamp)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finish(uint16 arg1) {
    if operatorAddress != msg.sender:
        require owner == msg.sender
    require arg1 < auctions.length
    auctions[arg1].field_416 = 0
}

function withdrawEthFromBalance() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) - totalReturns wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function isActive(uint16 arg1) {
    require arg1 < auctions.length
    if auctions[arg1].field_512 > block.timestamp:
        return auctions[arg1].field_512 <= block.timestamp
    require arg1 < auctions.length
    return block.timestamp <= auctions[arg1].field_416
}

function withdraw() {
    require pendingReturns[address(msg.sender)] > 0
    totalReturns -= pendingReturns[address(msg.sender)]
    pendingReturns[address(msg.sender)] = 0
    call msg.sender with:
       value pendingReturns[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(pendingReturns[address(msg.sender)], msg.sender);
}

function addAuction(uint40 arg1, uint40 arg2, uint128 arg3) {
    if operatorAddress != msg.sender:
        require owner == msg.sender
    auctions.length++
    if not auctions.length <= auctions.length + 1:
        idx = (3 * auctions.length) + 3
        while 3 * auctions.length > idx:
            auctions[idx].field_0 = 0
            auctions[idx].field_256 = 0
            auctions[idx].field_512 = 0
            idx = idx + 3
            continue 
    auctions[auctions.length].field_0 = arg3
    auctions[auctions.length].field_256 = 0
    auctions[auctions.length].field_512 = 0
    auctions[auctions.length].field_416 = (arg2 % 1099511627776) + (arg1 % 1099511627776) % 1099511627776
    auctions[auctions.length].field_456 = 0
    auctions[auctions.length].field_512 = 0
    auctions[auctions.length].field_512 = arg1 % 1099511627776
}

function bid(uint16 arg1, uint256 arg2) payable {
    require not stor0
    require arg1 < auctions.length
    require arg2 <= pendingReturns[address(msg.sender)]
    pendingReturns[address(msg.sender)] -= arg2
    totalReturns -= arg2
    require arg1 < auctions.length
    require arg1 < auctions.length
    if arg2 + msg.value <= auctions[arg1].field_0:
        require arg2 + msg.value == auctions[arg1].field_0
        require not auctions[arg1].field_256
    require auctions[arg1].field_512 <= block.timestamp
    require arg1 < auctions.length
    require block.timestamp <= auctions[arg1].field_416
    require arg1 < auctions.length
    auctions[arg1].field_0 = uint128(arg2 + msg.value)
    auctions[arg1].field_256 = msg.sender
    auctions[arg1].field_456 = block.timestamp % 1099511627776
    emit Bid(arg2 + msg.value, arg2 + msg.value - auctions[arg1].field_0, arg1, msg.sender, auctions[arg1].field_256);
    if auctions[arg1].field_256:
        if ext_code.size(auctions[arg1].field_256) > 0:
            pendingReturns[stor2[arg1].field_256] += auctions[arg1].field_0
            totalReturns += auctions[arg1].field_0
        else:
            call auctions[arg1].field_256 with:
               value auctions[arg1].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                pendingReturns[stor2[arg1].field_256] += auctions[arg1].field_0
                totalReturns += auctions[arg1].field_0
}

function getAuctions(address arg1) {
    mem[96] = 0
    mem[128 len 128] = 0
    mem[256] = 0
    mem[288 len 128] = 0
    mem[416] = 0
    mem[448 len 128] = 0
    mem[576] = 0
    mem[608 len 128] = 0
    mem[64] = 896
    mem[736] = 0
    mem[768 len 128] = 0
    mem[0] = arg1
    mem[32] = 3
    idx = 0
    s = 0
    while uint16(idx) < auctions.length:
        mem[0] = 2
        if auctions[uint16(idx)].field_512 > block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require uint16(idx) < auctions.length
        mem[0] = 2
        if block.timestamp > auctions[uint16(idx)].field_416:
            idx = idx + 1
            s = s
            continue 
        require uint16(idx) < auctions.length
        require uint16(s) < 5
        mem[(32 * uint16(s)) + 96] = auctions[uint16(idx)].field_416
        require uint16(idx) < auctions.length
        require uint16(s) < 5
        mem[(32 * uint16(s)) + 256] = auctions[uint16(idx)].field_456
        require uint16(idx) < auctions.length
        require uint16(s) < 5
        mem[(32 * uint16(s)) + 416] = auctions[uint16(idx)].field_0
        require uint16(idx) < auctions.length
        mem[0] = 2
        require uint16(s) < 5
        mem[(32 * uint16(s)) + 576] = auctions[uint16(idx)].field_256
        mem[(32 * uint16(s)) + 736] = uint16(idx)
        if uint16(s + 1) < 5:
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        while idx < 160:
            mem[idx + 896] = mem[idx + 96]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 160:
            mem[idx + 1056] = mem[idx + 256]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 160:
            mem[idx + 1216] = mem[idx + 416]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 160:
            mem[idx + 1376] = mem[idx + 576]
            idx = idx + 32
            continue 
        idx = 0
        while idx < 160:
            mem[idx + 1536] = mem[idx + 736]
            idx = idx + 32
            continue 
        return mem[896 len 800], pendingReturns[address(arg1)]
    return mem[96 len 160], mem[256 len 160], mem[416 len 160], mem[576 len 160], mem[736 len 160], pendingReturns[address(arg1)]
}



}
