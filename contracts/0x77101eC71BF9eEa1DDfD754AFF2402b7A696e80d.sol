contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint128 stor2;
uint128 stor2; offset 128
mapping of struct stor3;
mapping of struct stor4;
uint16 stor5;

function isAdmin(address arg1) {
    return bool(stor1[address(arg1)])
}

function sub_164b4fbf(?) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must have Administrator priveleges'
    stor0 = arg1
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Unable to send ETH'
}

function tokenFallback(address arg1, uint256 arg2) {
    require ext_code.size(msg.sender)
    call msg.sender.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to transfer tokens to Admin Wallet'
    return 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(msg.sender)
    call msg.sender.transfer(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor0, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer tokens to Admin Wallet'
    return 1
}

function AddAdmin(address arg1) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must have Administrator priveleges'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is already an Administrator'
    if not stor3[address(arg1)].field_256:
        stor3[address(arg1)].field_0 = block.number
        stor3[address(arg1)].field_256 = msg.sender
        emit 0xd591cb00: arg1, msg.sender
    else:
        if stor3[address(arg1)].field_0 < block.number - uint128(stor2.field_128):
            stor3[address(arg1)].field_0 = block.number
            stor3[address(arg1)].field_256 = msg.sender
            emit 0xd591cb00: arg1, msg.sender
        else:
            if stor3[address(arg1)].field_256 == msg.sender:
                revert with 0, 'Already Sponsored this address'
            stor3[address(arg1)].field_512 = msg.sender
            stor1[address(arg1)] = 1
            stor5 = uint16(stor5 + 1)
            emit AdminApproved(arg1, msg.sender);
    return 1
}

function RemoveAdmin(address arg1) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must have Administrator priveleges'
    if not stor1[address(arg1)]:
        revert with 0, 'Address is not an Administrator'
    if not stor4[address(arg1)].field_256:
        stor4[address(arg1)].field_0 = block.number
        stor4[address(arg1)].field_256 = msg.sender
        emit AdminRevoked(arg1, msg.sender);
    else:
        if stor4[address(arg1)].field_0 < block.number - uint128(stor2.field_0):
            stor4[address(arg1)].field_0 = block.number
            stor4[address(arg1)].field_256 = msg.sender
            emit AdminRevoked(arg1, msg.sender);
        else:
            if stor4[address(arg1)].field_256 == msg.sender:
                revert with 0, 'Already Sponsored this address'
            if stor5 <= 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot have fewer than two Administrators'
            stor4[address(arg1)].field_512 = msg.sender
            stor1[address(arg1)] = 0
            stor5 = uint16(stor5 - 1)
            emit AdminRemoved(arg1, msg.sender);
    return 1
}



}
