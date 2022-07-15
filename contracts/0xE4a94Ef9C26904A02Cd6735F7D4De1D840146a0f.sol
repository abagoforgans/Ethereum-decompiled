contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 version;
mapping of uint256 issuedBlock;
mapping of uint256 stor4;

function name() {
    return name[0 len name.length]
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function getIssuedBlock(bytes32 arg1) {
    if not issuedBlock[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Only issued document hashes can be revoked'
    return issuedBlock[arg1]
}

function _fallback() payable {
    revert
}

function isRevoked(bytes32 arg1) {
    return not not stor4[arg1]
}

function isIssued(bytes32 arg1) {
    return not not issuedBlock[arg1]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function isRevokedBefore(bytes32 arg1, uint256 arg2) {
    if stor4[arg1] > arg2:
        return stor4[arg1] <= arg2
    return not not stor4[arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isIssuedBefore(bytes32 arg1, uint256 arg2) {
    if not issuedBlock[arg1]:
        return not not issuedBlock[arg1]
    return issuedBlock[arg1] <= arg2
}

function revoke(bytes32 arg1) {
    require msg.sender == owner
    if stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Hash has been revoked previously'
    stor4[arg1] = block.number
    emit DocumentRevoked(arg1);
    return 0
}

function issue(bytes32 arg1) {
    require msg.sender == owner
    if issuedBlock[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Error: Only hashes that have not been issued can be issued'
    issuedBlock[arg1] = block.number
    emit DocumentIssued(arg1);
}



}
