contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
mapping of uint8 stor3;

function isWhitelisted(address arg1) {
    return bool(stor3[arg1])
}

function admins(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'New owner is zero'
    newOwner = arg1
}

function claimOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'Restricted to new owner'
    if owner != msg.sender:
        emit OwnershipTransferred(owner, msg.sender);
        owner = msg.sender
}

function addAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'Whitelist admin is zero'
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'Whitelist admin is zero'
    if stor2[address(arg1)]:
        stor2[address(arg1)] = 0
        emit AdminRemoved(arg1);
}

function transferOwnershipUnsafe(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Restricted to owner'
    if not arg1:
        revert with 0, 'New owner is zero'
    if owner != arg1:
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
}

function addToWhitelist(address[] arg1) {
    if not stor2[msg.sender]:
        revert with 0, 'Restricted to whitelist admin'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        if not stor3[address(cd[((32 * idx) + arg1 + 36)])]:
            require idx < arg1.length
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
            emit InvestorAdded(msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function removeFromWhitelist(address[] arg1) {
    if not stor2[msg.sender]:
        revert with 0, 'Restricted to whitelist admin'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        if stor3[address(cd[((32 * idx) + arg1 + 36)])]:
            require idx < arg1.length
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            stor3[address(cd[((32 * idx) + arg1 + 36)])] = 0
            emit InvestorRemoved(msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
