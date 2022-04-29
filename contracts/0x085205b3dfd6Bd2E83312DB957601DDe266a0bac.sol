contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 3277]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 members;

function members(address arg1) {
    return members[arg1]
}

function getMembershipExpiryDate(address arg1) {
    return members[address(arg1)]
}

function owner() {
    return owner
}

function isRegistrar(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function isMember(address arg1) {
    return block.timestamp <= members[address(arg1)]
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit OwnerChanged(msg.sender, arg1);
}

function removeRegistrar(address arg1) {
    require msg.sender == owner
    if stor1[address(arg1)]:
        stor1[address(arg1)] = 0
        emit RegistrarRemoved(msg.sender, arg1);
}

function addRegistrar(address arg1, string arg2) {
    require msg.sender == owner
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        emit RegistrarAdded(Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
}

function revoke(address arg1) {
    if owner != msg.sender:
        require stor1[address(msg.sender)]
    require block.timestamp <= members[address(arg1)]
    members[address(arg1)] = block.timestamp
    emit MembershipRevoked(arg1, msg.sender);
}

function enroll(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor1[address(msg.sender)]
    if block.timestamp > members[address(arg1)]:
        members[address(arg1)] = block.timestamp + arg2
        emit NewMemberRegistered(arg2, block.timestamp + arg2, arg1, msg.sender);
    else:
        members[address(arg1)] += arg2
        emit MembershipExtended(arg2, members[address(arg1)] + arg2, arg1, msg.sender);
}



}
