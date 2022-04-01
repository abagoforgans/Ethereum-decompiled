contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[93 len 2454]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
mapping of uint8 stor2;
mapping of uint256 userRoles;
mapping of uint256 capabilityRoles;
mapping of uint8 stor5;

function getUserRoles(address arg1) {
    return userRoles[address(arg1)]
}

function getCapabilityRoles(address arg1, bytes4 arg2) {
    return capabilityRoles[address(arg1)][Mask(32, 224, arg2)]
}

function isCapabilityPublic(address arg1, bytes4 arg2) {
    return bool(stor5[address(arg1)][Mask(32, 224, arg2)])
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function isUserRoot(address arg1) {
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function BITNOT(bytes32 arg1) {
    return (arg1 xor -1)
}

function hasUserRole(address arg1, uint8 arg2) {
    return bool(userRoles[address(arg1)] and 2^arg2)
}

function canCall(address arg1, address arg2, bytes4 arg3) {
    if not stor2[address(arg1)]:
        if not stor5[address(arg2)][Mask(32, 224, arg3)]:
            return bool(userRoles[address(arg1)] and capabilityRoles[address(arg2)][Mask(32, 224, arg3)])
    return 1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setRootUser(address arg1, bool arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor2[address(arg1)] = uint8(arg2)
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setPublicCapability(address arg1, bytes4 arg2, bool arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    stor5[address(arg1)][Mask(32, 224, arg2)] = uint8(arg3)
}

function setUserRole(address arg1, uint8 arg2, bool arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    if not arg3:
        userRoles[address(arg1)] = userRoles[address(arg1)] and 2^arg2 xor -1
    else:
        userRoles[address(arg1)] = 2^arg2 or userRoles[address(arg1)]
}

function setRoleCapability(uint8 arg1, address arg2, bytes4 arg3, bool arg4) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.0xb7009613 with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    if not arg4:
        capabilityRoles[address(arg2)][Mask(32, 224, arg3)] = capabilityRoles[address(arg2)][Mask(32, 224, arg3)] and 2^arg1 xor -1
    else:
        capabilityRoles[address(arg2)][Mask(32, 224, arg3)] = 2^arg1 or capabilityRoles[address(arg2)][Mask(32, 224, arg3)]
}



}
