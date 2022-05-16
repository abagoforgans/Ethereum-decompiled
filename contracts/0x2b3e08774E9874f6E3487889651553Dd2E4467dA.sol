contract main {




// =====================  Runtime code  =====================


const OWNER = '__root__'

const LIFETIME = -1


mapping of uint256 rolesExpiration;
mapping of uint8 stor1;

function rolesExpiration(bytes32 arg1) {
    return rolesExpiration[arg1]
}

function isClaimed(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1, address arg2) {
    return (block.timestamp < rolesExpiration[arg1]['__root__'][arg2])
}

function hasRole(address arg1, bytes32 arg2, address arg3) {
    return (block.timestamp < rolesExpiration[arg1][arg2][arg3])
}

function claim(address arg1) {
    if stor1[address(arg1)]:
        emit Error('Access denied: already owned');
        return arg1
    stor1[address(arg1)] = 1
    rolesExpiration[arg1]['__root__'][msg.sender] = -1
    emit Assign(-1, arg1, '__root__', msg.sender);
    return 1
}

function claimFor(address arg1, address arg2) {
    if stor1[address(arg1)]:
        emit Error('Access denied: already owned');
        return arg1
    stor1[address(arg1)] = 1
    rolesExpiration[arg1]['__root__'][arg2] = -1
    emit Assign(-1, arg1, '__root__', arg2);
    return 1
}

function assignOwner(address arg1, address arg2) {
    if block.timestamp >= rolesExpiration[arg1]['__root__'][msg.sender]:
        emit Error('Access denied: only node owner');
        return sha3(arg1, '__root__', msg.sender)
    if block.timestamp >= -1:
        emit Error('Invalid expiration date');
        return sha3(arg1, '__root__', msg.sender)
    rolesExpiration[arg1]['__root__'][arg2] = -1
    emit Assign(-1, arg1, '__root__', arg2);
    return 1
}

function assignRole(address arg1, bytes32 arg2, address arg3) {
    if block.timestamp >= rolesExpiration[arg1]['__root__'][msg.sender]:
        emit Error('Access denied: only node owner');
        return sha3(arg1, '__root__', msg.sender)
    if block.timestamp >= -1:
        emit Error('Invalid expiration date');
        return sha3(arg1, '__root__', msg.sender)
    rolesExpiration[arg1][arg2][arg3] = -1
    emit Assign(-1, arg1, arg2, arg3);
    return 1
}

function unassignRole(address arg1, bytes32 arg2, address arg3) {
    if block.timestamp >= rolesExpiration[arg1]['__root__'][msg.sender]:
        emit Error('Access denied: only node owner');
        return sha3(arg1, '__root__', msg.sender)
    if block.timestamp >= rolesExpiration[arg1][arg2][arg3]:
        emit Error('Role not assigned');
        return sha3(arg1, arg2, arg3)
    rolesExpiration[arg1][arg2][arg3] = 0
    emit Unassign(arg1, arg2, arg3);
    return 1
}

function assignRoleWithExpiration(address arg1, bytes32 arg2, address arg3, uint256 arg4) {
    if block.timestamp >= rolesExpiration[arg1]['__root__'][msg.sender]:
        emit Error('Access denied: only node owner');
        return sha3(arg1, '__root__', msg.sender)
    if block.timestamp >= arg4:
        emit Error('Invalid expiration date');
        return sha3(arg1, '__root__', msg.sender)
    rolesExpiration[arg1][arg2][arg3] = arg4
    emit Assign(arg4, arg1, arg2, arg3);
    return 1
}

function unassignOwner(address arg1, address arg2) {
    if arg2 == msg.sender:
        emit Error('Cannot remove ownership');
        return memory
          from 0
           len 32
    if block.timestamp >= rolesExpiration[arg1]['__root__'][msg.sender]:
        emit Error('Access denied: only node owner');
        return sha3(arg1, '__root__', msg.sender)
    if block.timestamp >= rolesExpiration[arg1]['__root__'][arg2]:
        emit Error('Role not assigned');
        return sha3(arg1, '__root__', arg2)
    rolesExpiration[arg1]['__root__'][arg2] = 0
    emit Unassign(arg1, '__root__', arg2);
    return 1
}



}
