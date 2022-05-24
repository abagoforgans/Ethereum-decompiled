contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function isAddressWhitelist(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function isWhite(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = block.timestamp
        emit LogWhitelistAdded(block.timestamp, address(_19));
        idx = idx + 1
        continue 
    return 1
}

function delWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = block.timestamp
        emit LogWhitelistDeleted(block.timestamp, address(_19));
        idx = idx + 1
        continue 
    return 1
}



}
