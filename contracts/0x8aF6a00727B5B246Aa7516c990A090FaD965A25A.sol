contract main {




// =====================  Runtime code  =====================


address owner;
address serviceAddress;

function owner() {
    return owner
}

function service() {
    return serviceAddress
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

function replaceService(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    serviceAddress = arg1
    emit ReplaceService(serviceAddress, serviceAddress);
}



}
