contract main {




// =====================  Runtime code  =====================


mapping of struct stor99;

function proxyOwner() {
    return address(stor[sha3('org.zeppelinos.proxy.owner')].field_0)
}

function implementation() {
    return address(stor['ion']['org.zeppelinos.proxy.implementat'].field_0)
}

function transferProxyOwnership(address arg1) {
    require msg.sender == address(stor[sha3('org.zeppelinos.proxy.owner')].field_0)
    require arg1
    emit ProxyOwnershipTransferred(address(stor[sha3('org.zeppelinos.proxy.owner')].field_0), arg1);
    address(stor[sha3('org.zeppelinos.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('org.zeppelinos.proxy.owner')].field_160) = 0
}

function _fallback() payable {
    require address(stor['ion']['org.zeppelinos.proxy.implementat'].field_0)
    delegate uint256(stor['ion']['org.zeppelinos.proxy.implementat'].field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require msg.sender == address(stor[sha3('org.zeppelinos.proxy.owner')].field_0)
    require address(stor['ion']['org.zeppelinos.proxy.implementat'].field_0) != arg1
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newImplementation is not a contractAddress'
    address(stor['ion']['org.zeppelinos.proxy.implementat'].field_0) = arg1
    Mask(96, 0, stor['ion']['org.zeppelinos.proxy.implementat'].field_160) = 0
    emit Upgraded(arg1);
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == address(stor[sha3('org.zeppelinos.proxy.owner')].field_0)
    require msg.sender == address(stor[sha3('org.zeppelinos.proxy.owner')].field_0)
    require address(stor['ion']['org.zeppelinos.proxy.implementat'].field_0) != arg1
    if ext_code.size(arg1) <= 0:
        revert with 0, 'newImplementation is not a contractAddress'
    mem[ceil32(arg2.length) + 128] = 'org.zeppelinos.proxy.implementat'
    mem[ceil32(arg2.length) + 160] = 'ion'
    address(stor['ion']['org.zeppelinos.proxy.implementat'].field_0) = arg1
    Mask(96, 0, stor['ion']['org.zeppelinos.proxy.implementat'].field_160) = 0
    emit Upgraded(arg1);
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        delegate arg1.mem[ceil32(arg2.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        delegate arg1.mem[ceil32(arg2.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require delegate.return_code
}



}
