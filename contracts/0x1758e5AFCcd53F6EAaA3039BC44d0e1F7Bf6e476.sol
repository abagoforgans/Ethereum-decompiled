contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 whitelist;
uint256 nextUserId;

function owner() {
    return owner
}

function whitelist(address arg1) {
    return whitelist[arg1]
}

function nextUserId() {
    return nextUserId
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

function addAddress(address arg1) {
    require msg.sender == owner
    require arg1
    require not whitelist[address(arg1)]
    whitelist[address(arg1)] = nextUserId
    nextUserId++
    emit Whitelisted(arg1);
}

function addAddresses(address[] arg1) {
    require msg.sender == owner
    require arg1.length <= 100
    idx = 0
    s = nextUserId
    t = 0
    while idx < arg1.length:
        require not whitelist[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        whitelist[address(cd[((32 * idx) + arg1 + 36)])] = s
        emit Whitelisted(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        s = s + 1
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    nextUserId += arg1.length
}



}
