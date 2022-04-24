contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    mem[160 len 0] = None
    stor2 = sha3(mem[160 len 15])
    stor1 = this.address
    return code.data[352 len 6216]
}



// =====================  Runtime code  =====================


address owner;
address rolesAddress;
uint256 contractHash;
uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;

function knownRoleNames(bytes32 arg1, bytes32 arg2) {
    return bool(stor5[arg1][arg2])
}

function roles() {
    return rolesAddress
}

function stopped() {
    return bool(stor3)
}

function roleList(bytes32 arg1, bytes32 arg2, address arg3) {
    return bool(stor4[arg1][arg2][arg3])
}

function owner() {
    return owner
}

function contractHash() {
    return contractHash
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit LogSetOwner(owner);
}

function setRolesContract(address arg1) {
    require msg.sender == owner
    require rolesAddress != this.address
    rolesAddress = arg1
}

function stop() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[160 len 7])
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(56, 200, ext_call.return_data[0]) >> 200), msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    stor3 = 1
}

function restart() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[160 len 9])
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(72, 184, ext_call.return_data[0]) >> 184), msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    stor3 = 0
}

function hasRole(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(rolesAddress)
    call rolesAddress.0x3037cea3 with:
         gas gas_remaining - 710 wei
        args contractHash, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function senderHasRole(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _33 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 132] = contractHash
    mem[ceil32(arg1.length) + 164] = _33
    require ext_code.size(rolesAddress)
    call rolesAddress.0x3037cea3 with:
         gas gas_remaining - 710 wei
        args contractHash, _33
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), msg.sender
        require ext_call.success
    return bool(ext_call.return_data[0])
}

function revokeUserRole(bytes32 arg1, string arg2, address arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    if owner != msg.sender:
        mem[ceil32(arg2.length) + 192 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[ceil32(arg2.length) + 192 len 5])
        require ext_call.success
        require ext_call.return_data[0]
        mem[ceil32(arg2.length) + 192 len 0] = None
        mem[ceil32(arg2.length) + 196] = contractHash
        mem[ceil32(arg2.length) + 228] = sha3(Mask(40, 216, ext_call.return_data[0]) >> 216)
        mem[ceil32(arg2.length) + 260] = msg.sender
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(40, 216, ext_call.return_data[0]) >> 216), msg.sender
        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    stor4[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))][address(arg3)] = 0
    mem[ceil32(arg2.length) + 256] = arg3
    mem[ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg2.length) + 288] = arg2.length
    mem[ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit LogRoleRevoked(bytes32 rg1, string rg2, address rg3):
                            arg1,
                            mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                            mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                            mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 96],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit LogRoleRevoked(bytes32 rg1, string rg2, address rg3):
                            arg1,
                            mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                            mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                            mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len 128],
}

function addContractRole(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    if owner != msg.sender:
        mem[ceil32(arg2.length) + 192 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[ceil32(arg2.length) + 192 len 5])
        require ext_call.success
        require ext_call.return_data[0]
        mem[ceil32(arg2.length) + 192 len 0] = None
        mem[ceil32(arg2.length) + 196] = contractHash
        mem[ceil32(arg2.length) + 228] = sha3(Mask(40, 216, ext_call.return_data[0]) >> 216)
        mem[ceil32(arg2.length) + 260] = msg.sender
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(40, 216, ext_call.return_data[0]) >> 216), msg.sender
        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require not stor5[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    stor5[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))] = 1
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit LogRoleAdded(bytes32 rg1, string rg2):
                          arg1,
                          mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                          mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                          mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit LogRoleAdded(bytes32 rg1, string rg2):
                          arg1,
                          mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                          mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                          mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len 96],
}

function removeContractRole(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    if owner != msg.sender:
        mem[ceil32(arg2.length) + 192 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[ceil32(arg2.length) + 192 len 5])
        require ext_call.success
        require ext_call.return_data[0]
        mem[ceil32(arg2.length) + 192 len 0] = None
        mem[ceil32(arg2.length) + 196] = contractHash
        mem[ceil32(arg2.length) + 228] = sha3(Mask(40, 216, ext_call.return_data[0]) >> 216)
        mem[ceil32(arg2.length) + 260] = msg.sender
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(40, 216, ext_call.return_data[0]) >> 216), msg.sender
        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require stor5[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    stor5[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))] = 0
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit LogRoleRemoved(bytes32 rg1, string rg2):
                            arg1,
                            mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                            mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                            mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit LogRoleRemoved(bytes32 rg1, string rg2):
                            arg1,
                            mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                            mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                            mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len 96],
}

function grantUserRole(bytes32 arg1, string arg2, address arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    if owner != msg.sender:
        mem[ceil32(arg2.length) + 192 len 0] = None
        require ext_code.size(rolesAddress)
        call rolesAddress.0x3037cea3 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(mem[ceil32(arg2.length) + 192 len 5])
        require ext_call.success
        require ext_call.return_data[0]
        mem[ceil32(arg2.length) + 192 len 0] = None
        mem[ceil32(arg2.length) + 196] = contractHash
        mem[ceil32(arg2.length) + 228] = sha3(Mask(40, 216, ext_call.return_data[0]) >> 216)
        mem[ceil32(arg2.length) + 260] = msg.sender
        require ext_code.size(rolesAddress)
        call rolesAddress.0x8b51ca42 with:
             gas gas_remaining - 710 wei
            args contractHash, sha3(Mask(40, 216, ext_call.return_data[0]) >> 216), msg.sender
        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require stor5[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    stor4[arg1][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))][address(arg3)] = 1
    mem[ceil32(arg2.length) + 256] = arg3
    mem[ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg2.length) + 288] = arg2.length
    mem[ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit LogRoleGranted(bytes32 rg1, string rg2, address rg3):
                            arg1,
                            mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                            mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                            mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 96],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit LogRoleGranted(bytes32 rg1, string rg2, address rg3):
                            arg1,
                            mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                            mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                            mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len 128],
}



}
