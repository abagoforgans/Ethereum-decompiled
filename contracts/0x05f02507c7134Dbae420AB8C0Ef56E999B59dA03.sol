contract main {




// =====================  Runtime code  =====================


address owner;
address implementationAddress;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function implementation() {
    return implementationAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function upgradeTo(address arg1) {
    require msg.sender == owner
    require implementationAddress != arg1
    implementationAddress = arg1
    emit Upgraded(arg1);
}

function _fallback() payable {
    require implementationAddress
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
