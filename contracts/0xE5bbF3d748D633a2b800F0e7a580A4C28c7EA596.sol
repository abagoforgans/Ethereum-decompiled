contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
mapping of bool stor2;

function owner() payable {
    return owner
}

function admin() payable {
    return adminAddress
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Uninitialized address'
    adminAddress = arg1
    emit LogTransferAdmin(adminAddress, arg1);
}

function sub_430cc126(?) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Unauthorized'
    uint8(stor2[address(arg1)][arg3][address(arg2)]) = arg4
    emit 0x5e9a6a9c: arg3, arg4, arg1, arg2
}

function check(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not bool(stor2[address(arg1)][arg4][address(arg3)]):
        return 1
    if Mask(1, 1, uint8(stor2[address(arg1)][arg4][address(arg3)])):
        return 0
    return 2
}



}
