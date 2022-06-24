contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isOnWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(arg1)] <= 2
    return (stor1[address(arg1)] == 1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor1[address(arg1)] <= 2
    if stor1[address(arg1)] != 2:
        stor1[address(arg1)] = 2
        emit RemoveFromWhitelist(arg1);
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor1[address(arg1)] <= 2
    if stor1[address(arg1)] != 1:
        require stor1[address(arg1)] <= 2
        if not stor1[address(arg1)]:
            stor2.length++
            stor2[stor2.length] = arg1
        stor1[address(arg1)] = 1
        emit AddToWhitelist(arg1);
}

function getWhitelist() {
    idx = 0
    s = 0
    while idx < stor2.length:
        require idx < stor2.length
        mem[0] = stor2[idx]
        mem[32] = 1
        require stor1[stor2[idx]] <= 2
        if stor1[stor2[idx]] != 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[2894 len 32 * s]
    idx = 0
    t = 0
    while idx < stor2.length:
        mem[0] = stor2[idx]
        mem[32] = 1
        require stor1[stor2[idx]] <= 2
        if stor1[stor2[idx]] != 1:
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = stor2[idx]
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}



}
