contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address stor2; offset 8

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renouncePauser() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function unpause() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    require uint8(stor2.field_0)
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    require not uint8(stor2.field_0)
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function burnCard(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor2.field_0)
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0xba7e7d05 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6517921e(?) payable {
    require calldata.size - 4 >= 352
    require not uint8(stor2.field_0)
    require block.timestamp < arg8
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signer = erecover(sha3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, 1), arg9 << 248, arg10, arg11) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == address(ext_call.return_data[0])
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x8a99f2a7 with:
         gas gas_remaining wei
        args arg1, msg.sender, arg2, arg3, arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c6270cb7(?) payable {
    require calldata.size - 4 >= 352
    require not uint8(stor2.field_0)
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require block.timestamp < arg8
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signer = erecover(sha3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, 2), arg9 << 248, arg10, arg11) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == address(ext_call.return_data[0])
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0xc4620db0 with:
         gas gas_remaining wei
        args arg1, arg2, arg3, arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
