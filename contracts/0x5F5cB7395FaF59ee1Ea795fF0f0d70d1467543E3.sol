contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address managerAddress;
address newManagerAddress;

function newManager() {
    return newManagerAddress
}

function manager() {
    return managerAddress
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
    require msg.sender == owner
    newOwner = arg1
}

function transferManager(address arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    newManagerAddress = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    owner = newOwner
    newOwner = 0
    emit TransferOwnership(owner, newOwner);
}

function acceptManager() {
    require msg.sender == newManagerAddress
    managerAddress = newManagerAddress
    newManagerAddress = 0
    emit TransferManager(managerAddress, newManagerAddress);
}



}
