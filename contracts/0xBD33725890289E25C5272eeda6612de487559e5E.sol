contract main {




// =====================  Runtime code  =====================


address sub_3967946dAddress;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint8 stor6; offset 160
address stor6;
mapping of struct customer;
mapping of address stor8;
address stor9;
uint256 stor10;
address stor11;
address stor12;

function sub_3967946d(?) {
    return sub_3967946dAddress
}

function sub_47ea4148(?) {
    require calldata.size - 4 >= 64
    return customer[address(arg1)][5][arg2].field_0, 
           customer[address(arg1)][5][arg2].field_0,
           bool(customer[address(arg1)][5][arg2].field_16),
           bool(customer[address(arg1)][5][arg2].field_24),
           customer[address(arg1)][5][arg2].field_256,
           customer[address(arg1)][5][arg2].field_512,
           customer[address(arg1)][5][arg2].field_768,
           customer[address(arg1)][5][arg2].field_1024
}

function sub_7b22aa79(?) {
    require calldata.size - 4 >= 64
    return customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_0, 
           customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_0,
           bool(customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_16),
           bool(customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_24),
           customer[address(arg1)][6][arg2].field_0,
           customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_256,
           customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_512,
           customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_768,
           customer[address(arg1)][5][customer[address(arg1)][6][arg2].field_0].field_1024
}

function getCustomer(address arg1) {
    require calldata.size - 4 >= 32
    return customer[address(arg1)].field_0, 
           customer[address(arg1)].field_256,
           customer[address(arg1)].field_512,
           customer[address(arg1)].field_768,
           customer[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function sub_f34e2886(?) {
    require calldata.size - 4 >= 128
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_f043d7d6(?) {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function getWallets(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if customer[address(arg1)].field_0:
        return address(arg1), customer[address(arg1)].field_768
    if address(stor8[address(arg1)]):
        return address(stor8[address(arg1)]), arg1
    return address(stor8[address(arg1)]), 0
}

function sub_2a82e6b8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_63c8b86b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_aa52dc4a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f87e9d25(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.getOwnerAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function isAgent(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isTrader(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_683a8fa9(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor6.field_0))
    staticcall address(stor6.field_0).0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAsset(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor6.field_0))
    staticcall address(stor6.field_0).0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        revert with 0, 'msg.sender is not the Owner.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New Owner must be a valid address'
    emit OwnershipTransferred(sub_3967946dAddress, arg1);
    sub_3967946dAddress = arg1
}

function sub_988a6063(?) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Immediate Owner of the platform or a Whitelisted addr can execute the function.'
    if not arg1:
        revert with 0, 'address cannot be 0'
    stor1[address(arg1)] = 0
    emit 0x46a78655: arg1
}

function sub_6078a3b2(?) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Immediate Owner of the platform or a Whitelisted addr can execute the function.'
    if not arg1:
        revert with 0, 'address cannot be 0'
    stor1[address(arg1)] = 1
    emit AddressRegistered(arg1);
}

function sub_70023d56(?) {
    require calldata.size - 4 >= 160
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), arg3 << 248, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function sub_be724a5c(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    stor9 = arg1
    emit 0x4e533b7e: arg1
}

function sub_bc6ce08d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    stor10 = arg1
    emit 0x623cbaf0: arg1
}

function sub_18f390a1(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    customer[address(arg1)].field_8 = arg2
    emit 0x20abf013: arg2, arg1
}

function sub_bbf7c87e(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    if not customer[address(arg1)][5][arg2].field_24:
        revert with 0, 'Document must be confirmed first'
    customer[address(arg1)][5][arg2].field_0 = arg3
    emit 0x7273418c: arg2, arg3, arg1
}

function sub_1da06c64(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 32, 0xfe41646472657373206973206e6f7420612076657269666965642041646d696e
    require ext_code.size(stor12)
    call stor12.0xabe7f1ab with:
         gas gas_remaining wei
        args customer[address(arg1)].field_768, customer[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    customer[address(arg1)].field_768 = arg2
    address(stor8[address(arg2)]) = arg1
    require ext_code.size(stor12)
    call stor12.0xf5d82b6b with:
         gas gas_remaining wei
        args address(arg2), customer[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8757ed6a: arg2, arg1
}

function sub_2808dc4c(?) {
    require calldata.size - 4 >= 64
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Immediate Owner of the platform or a Whitelisted addr can execute the function.'
    if not customer[address(arg1)][5][arg2].field_16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Document signature must be validated first'
    if customer[address(arg1)][5][arg2].field_24:
        revert with 0, 'Document already confirmed'
    customer[address(arg1)][5][arg2].field_0 = 1
    customer[address(arg1)][5][arg2].field_8 = customer[address(arg1)][5][arg2].field_8
    customer[address(arg1)][5][arg2].field_24 = 1
    require ext_code.size(stor11)
    call stor11.0x68f6a93c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    call stor12.0xf5d82b6b with:
         gas gas_remaining wei
        args address(arg1), customer[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    call stor12.0xf5d82b6b with:
         gas gas_remaining wei
        args customer[address(arg1)].field_768, customer[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7fd221bb: arg2, arg1
}

function sub_20f80d4a(?) payable {
    require calldata.size - 4 >= 256
    if uint8(stor6.field_160):
        revert with 0, 'Re-entrancy not allowed'
    uint8(stor6.field_160) = 1
    if stor10 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough funds to perform this operation'
    if arg3 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The sender and the storage wallet can not be the same'
    if address(stor8[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Storage wallet can not be used to submit documents'
    signer = erecover(arg5, arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != msg.sender:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg5), arg6 << 248, arg7, arg8) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != msg.sender:
            revert with 0, 'Sender address does not match signature'
    if customer[msg.sender][5][arg5].field_16:
        revert with 0, 'Document already submitted'
    if not customer[msg.sender].field_256:
        customer[msg.sender].field_256 = arg1
    customer[msg.sender].field_512 = arg2
    customer[msg.sender].field_520 = 0
    if not customer[msg.sender].field_0:
        customer[msg.sender].field_0 = 1
        customer[msg.sender].field_768 = arg3
        uint256(stor8[address(arg3)]) = msg.sender or Mask(96, 160, uint256(stor8[address(arg3)]))
    customer[address(msg.sender)][5][arg5].field_8 = arg4
    customer[address(msg.sender)][5][arg5].field_16 = 1
    customer[address(msg.sender)][5][arg5].field_256 = customer[address(msg.sender)].field_1024
    customer[address(msg.sender)][5][arg5].field_512 = arg6
    customer[address(msg.sender)][5][arg5].field_768 = arg7
    customer[address(msg.sender)][5][arg5].field_1024 = arg8
    customer[address(msg.sender)][6][customer[address(msg.sender)].field_1024].field_0 = arg5
    customer[address(msg.sender)].field_1024++
    emit 0xe806ceba: arg5, msg.sender
    if stor10 > 0:
        call stor9 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundsDeposited(msg.value, stor9);
    uint8(stor6.field_160) = 0
    return customer[msg.sender][5][arg5].field_256
}



}
