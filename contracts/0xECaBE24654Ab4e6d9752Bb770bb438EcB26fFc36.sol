contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function isWhitelisted(address arg1) {
    if ext_code.size(arg1) <= 0:
        return bool(stor1[address(arg1)])
    return bool(stor2[address(arg1)])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1) <= 0:
        stor1[address(arg1)] = 1
    else:
        stor2[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function removeAddressToWhitelist(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1) <= 0:
        stor1[address(arg1)] = 0
    else:
        stor2[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}



}
