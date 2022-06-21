contract main {




// =====================  Runtime code  =====================


const sub_9e3bdece(?) = 32, 36, initialize(address arg1), msg.sender, 0, Mask(32, -256, initialize(address arg1), msg.sender, 0) << 256


mapping of struct stor99;
uint128 storFE45; offset 160
address implementationAddress;
uint256 storFE45;

function proxyOwner() {
    return address(stor[sha3('EtherAuthority.io.proxy.owner')].field_0)
}

function implementation() {
    return implementationAddress
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor[sha3('EtherAuthority.io.proxy.owner')].field_0)
    require implementationAddress != arg1
    implementationAddress = arg1
    Mask(96, 0, storFE45.field_160) = 0
    emit Upgraded(arg1);
}

function _fallback() payable {
    require implementationAddress
    delegate uint256(storFE45.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor[sha3('EtherAuthority.io.proxy.owner')].field_0)
    require arg1
    emit ProxyOwnershipTransferred(address(stor[sha3('EtherAuthority.io.proxy.owner')].field_0), arg1);
    address(stor[sha3('EtherAuthority.io.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('EtherAuthority.io.proxy.owner')].field_160) = 0
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == address(stor[sha3(Mask(232, -(8 * ceil32(arg2.length) + -arg2.length + 29) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff18 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256)].field_0)
    require address(stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 6, 0, 0xfe4574686572417574686f726974792e696f2e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_0) != arg1
    mem[ceil32(arg2.length) + 128 len 38] = 0xfe4574686572417574686f726974792e696f2e70726f78792e696d706c656d656e746174696f
    address(stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 6, 0, 0xfe4574686572417574686f726974792e696f2e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_0) = arg1
    Mask(96, 0, stor[Mask(8 * -arg2.length + ceil32(arg2.length) + 6, 0, 0xfe4574686572417574686f726974792e696f2e70726f78792e696d706c656d656e746174696f)][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].field_160) = 0
    emit Upgraded(arg1);
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    call this.address with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas 200000 wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'initialize function errored'
}



}
