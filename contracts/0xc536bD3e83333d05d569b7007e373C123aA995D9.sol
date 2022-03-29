contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 1002]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 hashes;

function owner() {
    return owner
}

function get(bytes32 arg1) {
    return hashes[arg1]
}

function hashes(bytes32 arg1) {
    return hashes[arg1]
}

function kill() {
    require owner == msg.sender
    emit 0x1646620e: msg.sender, block.timestamp
    selfdestruct(owner)
}

function _fallback() {
    emit LogFallback(msg.sender, block.timestamp);
}

function unset(bytes32 arg1) {
    require owner == msg.sender
    hashes[arg1] = 0
    emit 0xa61c2f37: msg.sender, arg1, block.timestamp
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit 0x634d7a73: msg.sender, address(arg1), block.timestamp
}

function set(bytes32 arg1, bytes32 arg2) {
    require owner == msg.sender
    hashes[arg1] = arg2
    emit 0xf554dce3: address(msg.sender), arg1, arg2, block.timestamp
}



}
