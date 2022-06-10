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
                    code: code.data[2782 len 1161], baseKernelAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    if not address(regFactoryAddress):
        call address(create.new_address).0x485cc955 with:
             gas gas_remaining wei
            args baseACLAddress, arg1
    else:
        call address(create.new_address).0x485cc955 with:
             gas gas_remaining wei
            args baseACLAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xde287359 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3d6ab68f with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x8ea8dc9d with:
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
        call address(ext_call.return_data[0]).0xbe038478 with:
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
        call address(ext_call.return_data[0]).0x9d0effdb with:
             gas gas_remaining wei
            args address(regFactoryAddress), address(create.new_address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa885508a with:
             gas gas_remaining wei
            args address(create.new_address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9d0effdb with:
             gas gas_remaining wei
            args address(regFactoryAddress), address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9d0effdb with:
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
        call address(ext_call.return_data[0]).0xafd925df with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployDAO(address(create.new_address));
    return address(create.new_address)
}



}
