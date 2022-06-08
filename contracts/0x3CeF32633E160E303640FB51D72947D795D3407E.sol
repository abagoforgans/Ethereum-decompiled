contract main {




// =====================  Runtime code  =====================


address owner;
address targetAddress;
mapping of uint8 stor2;
mapping of uint256 sub_a2921956;

function owner() {
    return owner
}

function sub_a2921956(?) {
    return sub_a2921956[arg1]
}

function initialized(address arg1) {
    return bool(stor2[arg1])
}

function target() {
    return targetAddress
}

function _fallback() payable {
    revert
}

function upgradeTo(address arg1) {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function initialize() {
    require not stor2[stor1]
    stor2[stor1] = 1
    emit EventInitialized(targetAddress);
}

function addMerkleRoot(uint256 arg1, bytes32 arg2) {
    require msg.sender == owner
    require not sub_a2921956[arg1]
    sub_a2921956[arg1] = arg2
    emit 0x4588a9d6: arg1, arg2
}



}
