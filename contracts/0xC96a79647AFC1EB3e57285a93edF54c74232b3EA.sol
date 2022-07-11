contract main {




// =====================  Runtime code  =====================


const sub_c5fbeb4e(?) = 10^12


address owner;
address adminAddress;
mapping of struct stor2;
mapping of bool stor3;

function owner() {
    return owner
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLocked(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)].field_0 = uint8(arg2)
    emit LogLockSet(arg2, arg1);
}

function transferAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    adminAddress = arg1
    emit LogTransferAdmin(adminAddress, arg1);
}

function setPartialTransfers(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)].field_8 = Mask(248, 0, arg2)
    emit LogPartialTransferSet(arg2, arg1);
}

function sub_9f11fda4(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    stor2[address(arg1)][1][address(arg2)].field_0 = arg3
    emit 0xe0a9c6d8: arg3, arg1, arg2
}

function setPermission(address arg1, address arg2, uint8 arg3) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    uint8(stor3[address(arg1)][address(arg2)]) = arg3
    emit LogPermissionSet(arg3, arg1, arg2);
}

function check(address arg1, address arg2, address arg3, address arg4, uint256 arg5) {
    if stor2[address(arg1)].field_0:
        return 1
    if not bool(stor3[address(arg1)][address(arg3)]):
        return 3
    if not Mask(1, 1, uint8(stor3[address(arg1)][address(arg4)])):
        return 4
    if not stor2[address(arg1)].field_8:
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^ext_call.return_data[31 len 1]
        if arg5 % 10^ext_call.return_data[31 len 1]:
            return 2
    if stor2[address(arg1)][1][address(arg3)].field_0 + (8760 * 24 * 3600) >= block.timestamp:
        return 5
    if arg5 >= 10^12:
        return 0
    return 6
}

function messageForReason(uint8 arg1) {
    if arg1 == 1:
        return 'Token is locked'
    if arg1 == 3:
        return Array(len=39, data='Sender is not allowed to send th', 'e token', Mask(56, -256, 'Sender is not allowed to send th', 'e token') << 256), 
    if arg1 == 4:
        return Array(len=44, data='Receiver is not allowed to recei', 've the token', Mask(96, -256, 'Receiver is not allowed to recei', 've the token') << 256), 
    if arg1 == 2:
        return Array(len=35, data='Token can not trade partial amou', 'nts', Mask(24, -256, 'Token can not trade partial amou', 'nts') << 256), 
    if arg1 == 5:
        return Array(len=43, data='Sender is still in 12 months hol', 'ding period', Mask(88, -256, 'Sender is still in 12 months hol', 'ding period') << 256), 
    if arg1 != 6:
        return 'Success'
    return Array(len=54, data='Transfer value must be bigger th', 'an 0.000001 or 1 szabo', Mask(176, -256, 'Transfer value must be bigger th', 'an 0.000001 or 1 szabo') << 256), 
}



}
