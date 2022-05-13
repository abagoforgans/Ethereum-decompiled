contract main {




// =====================  Runtime code  =====================


mapping of struct stor99;

function proxyOwner() {
    return address(stor[sha3('org.dobjects.proxy.owner')].field_0)
}

function implementation() {
    return address(stor['n']['org.dobjects.proxy.implementatio'].field_0)
}

function upgradeTo(address arg1) {
    require msg.sender == address(stor[sha3('org.dobjects.proxy.owner')].field_0)
    require address(stor['n']['org.dobjects.proxy.implementatio'].field_0) != arg1
    address(stor['n']['org.dobjects.proxy.implementatio'].field_0) = arg1
    Mask(96, 0, stor['n']['org.dobjects.proxy.implementatio'].field_160) = 0
    emit Upgraded(arg1);
}

function transferProxyOwnership(address arg1) {
    require msg.sender == address(stor[sha3('org.dobjects.proxy.owner')].field_0)
    require arg1
    emit ProxyOwnershipTransferred(address(stor[sha3('org.dobjects.proxy.owner')].field_0), arg1);
    address(stor[sha3('org.dobjects.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('org.dobjects.proxy.owner')].field_160) = 0
}

function _fallback() payable {
    require address(stor['n']['org.dobjects.proxy.implementatio'].field_0)
    delegate uint256(stor['n']['org.dobjects.proxy.implementatio'].field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == address(stor[sha3('org.dobjects.proxy.owner')].field_0)
    require msg.sender == address(stor[sha3('org.dobjects.proxy.owner')].field_0)
    require address(stor['n']['org.dobjects.proxy.implementatio'].field_0) != arg1
    mem[ceil32(arg2.length) + 128] = 'org.dobjects.proxy.implementatio'
    mem[ceil32(arg2.length) + 160] = 'n'
    address(stor['n']['org.dobjects.proxy.implementatio'].field_0) = arg1
    Mask(96, 0, stor['n']['org.dobjects.proxy.implementatio'].field_160) = 0
    emit Upgraded(arg1);
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call this.address.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call this.address.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
}



}
