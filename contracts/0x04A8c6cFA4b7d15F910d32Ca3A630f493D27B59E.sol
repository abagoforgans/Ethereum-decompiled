contract main {




// =====================  Runtime code  =====================


mapping of struct stor99;
uint128 storFE63; offset 160
address implementationAddress;
uint256 storFE63;

function proxyOwner() {
    return address(stor[sha3('com.d3ledger.proxy.owner')].field_0)
}

function implementation() {
    return implementationAddress
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor[sha3('com.d3ledger.proxy.owner')].field_0)
    require arg1 != implementationAddress
    implementationAddress = arg1
    Mask(96, 0, storFE63.field_160) = 0
    emit Upgraded(arg1);
}

function _fallback() payable {
    require implementationAddress
    delegate uint256(storFE63.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor[sha3('com.d3ledger.proxy.owner')].field_0)
    require arg1
    emit ProxyOwnershipTransferred(address(stor[sha3('com.d3ledger.proxy.owner')].field_0), arg1);
    address(stor[sha3('com.d3ledger.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('com.d3ledger.proxy.owner')].field_160) = 0
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == address(stor[sha3(Mask(192, -(8 * ceil32(arg2.length) + -arg2.length + 24) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256)].field_0)
    require msg.sender == address(stor[sha3(Mask(192, -(8 * ceil32(arg2.length) + -arg2.length + 24) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256)].field_0)
    require arg1 != address(stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 1, 0, 0xfe636f6d2e64336c65646765722e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_0)
    mem[ceil32(arg2.length) + 128 len 33] = 0xfe636f6d2e64336c65646765722e70726f78792e696d706c656d656e746174696f
    address(stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 1, 0, 0xfe636f6d2e64336c65646765722e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_0) = arg1
    Mask(96, 0, stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 1, 0, 0xfe636f6d2e64336c65646765722e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_160) = 0
    emit Upgraded(arg1);
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call this.address with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
}



}
