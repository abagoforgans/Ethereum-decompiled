contract main {




// =====================  Runtime code  =====================


address baseRegAddress;
address baseCallScriptAddress;

function baseReg() {
    return baseRegAddress
}

function baseCallScript() {
    return baseCallScriptAddress
}

function _fallback() payable {
    revert
}

function newEVMScriptRegistry(address arg1) {
    require ext_code.size(arg1)
    call arg1.newPinnedAppInstance(bytes32 arg1, address arg2, bytes arg3, bool arg4) with:
         gas gas_remaining wei
        args 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61, baseRegAddress, Array(len=4, data=uint32(0, 0, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d8)), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.acl() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).REGISTRY_ADD_EXECUTOR_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0]), ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addScriptExecutor(address arg1) with:
         gas gas_remaining wei
        args baseCallScriptAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).REGISTRY_ADD_EXECUTOR_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).revokePermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).REGISTRY_ADD_EXECUTOR_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).removePermissionManager(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}



}
