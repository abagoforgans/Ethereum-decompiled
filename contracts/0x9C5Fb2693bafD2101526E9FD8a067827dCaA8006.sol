contract main {




// =====================  Runtime code  =====================


address owner;
address targetAddress;
mapping of uint8 stor2;

function owner() {
    return owner
}

function initialized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function target() {
    return targetAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require targetAddress != arg1
    targetAddress = arg1
    emit EventUpgrade(arg1, targetAddress, msg.sender);
}

function _fallback() payable {
    delegate targetAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
