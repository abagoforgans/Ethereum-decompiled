contract main {




// =====================  Runtime code  =====================


address owner;
address registryAddress;
address sub_77b727acAddress;
address sub_5fd355ebAddress;
address sub_38874a1aAddress;
address sub_d63605b8Address;

function sub_38874a1a(?) {
    return sub_38874a1aAddress
}

function sub_5fd355eb(?) {
    return sub_5fd355ebAddress
}

function sub_77b727ac(?) {
    return sub_77b727acAddress
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function sub_d63605b8(?) {
    return sub_d63605b8Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7dc532c5(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_d63605b8Address = arg1
}

function sub_9255e0d6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_5fd355ebAddress = arg1
}

function sub_abcca75e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_77b727acAddress = arg1
}

function sub_c03cced3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_38874a1aAddress = arg1
}

function setRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    registryAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_44a1e618(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 > ext_call.return_data[0]:
        revert with 0, 'DAI allowance is less than the _value'
    require ext_code.size(sub_38874a1aAddress)
    call sub_38874a1aAddress.0x9193ba0b with:
         gas gas_remaining wei
        args sub_77b727acAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failure transfering ownership of DAI tokens'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5df0d4cd with:
         gas gas_remaining wei
        args registryAddress, sub_5fd355ebAddress, sub_d63605b8Address, msg.sender, arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(registryAddress)
    call registryAddress.0x76d00fd8 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2d0c4169: address(ext_call.return_data[0]), arg1, msg.sender
    require ext_code.size(sub_5fd355ebAddress)
    call sub_5fd355ebAddress.0x596030d with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}

function sub_165ae0fc(?) {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x23ec7f2a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 
                    'Can only upgrade on a factory that is the latest',
                    Mask(128, -256, 'Can only upgrade on a factory th', 'at is the latest') << 256
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xc5a95f8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Caller must be a registered CFD'
    if this.address == address(ext_call.return_data[0]):
        revert with 0, 'Caller must be a registered CFD'
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x41c20c8e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'upgradeable is not set in the CFD'
    require ext_code.size(sub_38874a1aAddress)
    call sub_38874a1aAddress.0x9193ba0b with:
         gas gas_remaining wei
        args sub_77b727acAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x7150d8ae with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5fd355ebAddress)
    call sub_5fd355ebAddress.0x596030d with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2802759b with:
         gas gas_remaining wei
        args msg.sender, registryAddress, sub_5fd355ebAddress, sub_d63605b8Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(registryAddress)
    call registryAddress.0x76d00fd8 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7150d8ae with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x80f55605 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x2d0c4169: address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0])
    emit 0xe7717866: msg.sender, address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}



}
