contract main {




// =====================  Runtime code  =====================


address baseKernelAddress;
address baseACLAddress;
uint32 stor2;
address regFactoryAddress;

function baseACL() {
    return baseACLAddress
}

function regFactory() {
    return address(regFactoryAddress)
}

function baseKernel() {
    return baseKernelAddress
}

function _fallback() payable {
    revert
}

function newDAO(address arg1) {
    create contract with 0 wei
                    code: code.data[2782 len 1246], baseKernelAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    if not address(regFactoryAddress):
        call address(create.new_address).initialize(address arg1, address arg2) with:
             gas gas_remaining wei
            args baseACLAddress, arg1
    else:
        call address(create.new_address).initialize(address arg1, address arg2) with:
             gas gas_remaining wei
            args baseACLAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).acl() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).CREATE_PERMISSIONS_ROLE() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(create.new_address))
        call address(create.new_address).APP_MANAGER_ROLE() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args address(regFactoryAddress), address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor2), address(create.new_address), ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(regFactoryAddress))
        call address(regFactoryAddress).'3@AC' with:
             gas gas_remaining wei
            args address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit DeployEVMScriptRegistry(ext_call.return_data[12 len 20]);
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).revokePermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args address(regFactoryAddress), address(create.new_address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).removePermissionManager(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(create.new_address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).revokePermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args address(regFactoryAddress), address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).revokePermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).setPermissionManager(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployDAO(address(create.new_address));
    return address(create.new_address)
}



}
