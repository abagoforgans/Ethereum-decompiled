contract main {




// =====================  Runtime code  =====================


#
#  - sub_4146a229(?)
#  - sub_7249bb50(?)
#  - sub_d9a9d404(?)
#
address _owner;
address registryAddress;

function R() {
    return registryAddress
}

function getRegistry() {
    return registryAddress
}

function owner() {
    return _owner
}

function _owner() {
    return _owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorised to invoke this function'
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}



}
