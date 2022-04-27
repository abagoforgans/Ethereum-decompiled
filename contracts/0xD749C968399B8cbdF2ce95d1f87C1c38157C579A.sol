contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1908]
}



// =====================  Runtime code  =====================


address owner;
mapping of address records;
mapping of uint256 timestamps;

function records(bytes32 arg1) {
    return records[arg1]
}

function exists(bytes32 arg1) {
    return bool(records[arg1])
}

function sub_8c32d9a6(?) {
    return records[arg1]
}

function owner() {
    return owner
}

function timestamps(bytes32 arg1) {
    return timestamps[arg1]
}

function getTimestamp(bytes32 arg1) {
    return timestamps[arg1]
}

function _fallback() payable {
    revert
}

function sub_28073edf(?) {
    return (records[arg1] == arg2)
}

function sub_8ade01a4(?) {
    return (records[arg1] == msg.sender)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dd89581f(?) {
    require sha3(arg1) != sha3(None)
    require not records[arg1]
    require not timestamps[arg1]
    records[arg1] = msg.sender
    timestamps[arg1] = block.timestamp
    emit 0xf89c7c62: block.timestamp, sha3(arg1), msg.sender
}

function ecrecovery(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 65:
        return 0
    if mem[192 len 1] >= 27:
        if mem[192 len 1] != 27:
            if mem[192 len 1] != 28:
                return 0
        signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] + 27) != 27:
            if uint8(mem[192 len 1] + 27) != 28:
                return 0
        signer = erecover(arg1, mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}

function ecverify(bytes32 arg1, bytes arg2, address arg3) {
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 65:
        return not arg3
    if mem[192 len 1] >= 27:
        if mem[192 len 1] != 27:
            if mem[192 len 1] != 28:
                return not arg3
        signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] + 27) != 27:
            if uint8(mem[192 len 1] + 27) != 28:
                return not arg3
        signer = erecover(arg1, mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    return (arg3 == address(signer))
}



}
