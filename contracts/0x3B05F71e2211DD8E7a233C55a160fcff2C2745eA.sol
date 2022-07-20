contract main {




// =====================  Runtime code  =====================


const vestingPeriod = (444120 * 24 * 3600)


address owner;
address adminAddress;
mapping of struct stor2;
mapping of bool stor3;
mapping of uint256 stor4;

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

function setLocked(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor2[address(arg1)].field_0 = uint8(arg2)
    emit LogLockSet(arg2, arg1);
}

function setPartialTransfers(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor2[address(arg1)].field_8 = Mask(248, 0, arg2)
    emit LogPartialTransferSet(arg2, arg1);
}

function sub_11e4490a(?) payable {
    require calldata.size - 4 >= 160
    if block.timestamp > 444120 * 24 * 3600:
        return 1
    if arg3 - stor4[address(arg1)][address(arg2)] >= arg4:
        return 1
    else:
        return 0
}

function transferAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address'
    adminAddress = arg1
    emit LogTransferAdmin(adminAddress, arg1);
}

function sub_e86044ae(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Unauthorized'
    stor4[address(arg1)][address(arg2)] = arg3
    emit 0x955948e0: arg3, arg1, arg2
}

function setPermission(address arg1, address arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Unauthorized'
    uint8(stor3[address(arg1)][address(arg2)]) = arg3
    emit LogPermissionSet(arg3, arg1, arg2);
}

function sub_7d227fb4(?) payable {
    require calldata.size - 4 >= 160
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Unauthorized'
    if stor2[address(arg1)].field_0:
        return 1
    if Mask(1, 1, uint8(stor3[address(arg1)][address(arg2)])):
        return 0
    return 4
}

function check(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if stor2[address(arg1)].field_0:
        return 1
    if not bool(stor3[address(arg1)][address(arg3)]):
        return 3
    if not Mask(1, 1, uint8(stor3[address(arg1)][address(arg4)])):
        return 4
    if stor2[address(arg1)].field_8:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[31 len 1]
    if not arg5 % 10^ext_call.return_data[31 len 1]:
        return 0
    return 2
}



}
