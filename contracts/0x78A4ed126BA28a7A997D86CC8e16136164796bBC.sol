contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1; offset 160
address sub_722d8ff0Address;
address sub_3b8d7c15Address;
uint16 stor4;
uint16 stor4; offset 16
uint16 stor4; offset 32
uint16 stor4; offset 48
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of struct users;

function sub_3b8d7c15(?) {
    return sub_3b8d7c15Address
}

function paused() {
    return bool(stor1)
}

function sub_722d8ff0(?) {
    return sub_722d8ff0Address
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_256,
           users[address(arg1)].field_512,
           users[address(arg1)].field_768
}

function isManager(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address.'
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function data() {
    return stor11, stor12, stor13
}

function renounceManager() {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 'The role does not exist.'
    stor0[address(msg.sender)] = 0
    emit ManagerRemoved(msg.sender);
}

function option() {
    return uint16(stor4.field_0), 
           uint16(stor4.field_0),
           uint16(stor4.field_0),
           uint16(stor4.field_0),
           stor5,
           stor6,
           stor7,
           stor8,
           stor9,
           stor10
}

function sub_a2aec85c(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    sub_722d8ff0Address = arg1
}

function sub_be9085c2(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    sub_3b8d7c15Address = arg1
}

function pause() {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    if stor1:
        revert with 0, 'The contract is not paused.'
    stor1 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    if not stor1:
        revert with 0, 'The contract is paused.'
    stor1 = 0
    emit Unpaused(msg.sender);
}

function setData(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    stor11 = arg1
    stor12 = arg2
    stor13 = arg3
}

function addManager(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if stor0[address(arg1)]:
        revert with 0, 'The role already exist.'
    stor0[address(arg1)] = 1
    emit ManagerAdded(arg1);
}

function removeManager(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if not stor0[address(arg1)]:
        revert with 0, 'The role does not exist.'
    stor0[address(arg1)] = 0
    emit ManagerRemoved(arg1);
}

function sub_10db299e(?) {
    require calldata.size - 4 >= 320
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 20, 0xfe596f7520617265206e6f74206d616e616765722e0000000000000000000000
    uint16(stor4.field_0) = arg1
    uint16(stor4.field_16) = arg2
    uint16(stor4.field_32) = arg3
    uint16(stor4.field_48) = arg4
    stor5 = arg5
    stor6 = arg6
    stor7 = arg7
    stor8 = arg8
    stor9 = arg9
    stor10 = arg10
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if stor1:
        revert with 0, 'The contract is not paused.'
    require ext_code.size(sub_3b8d7c15Address)
    staticcall sub_3b8d7c15Address.userIds(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'The account does not exist.'
    if stor13 > block.timestamp:
        revert with 0, 'SafeMath sub failed.'
    if not stor6:
        revert with 0, 'SafeMath mod failed.'
    if block.timestamp - stor13 % stor6 < stor5:
        revert with 0, 'Unsuccessful time.'
    if users[address(arg1)].field_256 > 0:
        users[address(arg1)].field_256 = 0
        if users[address(arg1)].field_256 + users[address(arg1)].field_512 < users[address(arg1)].field_512:
            revert with 0, 'SafeMath add failed.'
        users[address(arg1)].field_512 += users[address(arg1)].field_256
        if users[address(arg1)].field_256 + stor12 < stor12:
            revert with 0, 'SafeMath add failed.'
        stor12 += users[address(arg1)].field_256
        require ext_code.size(sub_722d8ff0Address)
        call sub_722d8ff0Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), users[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Withdrawal failed.'
        emit Withdrawn(users[address(arg1)].field_256, arg1);
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg2 < stor9:
        revert with 0, 'Payment limit.'
    if arg2 > stor10:
        revert with 0, 'Payment limit.'
    if stor13 > block.timestamp:
        revert with 0, 'SafeMath sub failed.'
    if not stor6:
        revert with 0, 'SafeMath mod failed.'
    if block.timestamp - stor13 % stor6 >= stor7:
        if users[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath sub failed.'
        if block.timestamp - users[address(arg1)].field_768 >= stor8:
            require ext_code.size(sub_722d8ff0Address)
            call sub_722d8ff0Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Payment failed.'
            if arg2 + stor11 < stor11:
                revert with 0, 'SafeMath add failed.'
            stor11 += arg2
            if arg2 + users[address(arg1)].field_0 < users[address(arg1)].field_0:
                revert with 0, 'SafeMath add failed.'
            users[address(arg1)].field_0 += arg2
            if not arg2:
                if users[address(arg1)].field_256 < users[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
            else:
                if uint16(stor4.field_48) * arg2 / arg2 != uint16(stor4.field_48):
                    revert with 0, 'SafeMath mul failed.'
                if (uint16(stor4.field_48) * arg2 / 10000) + users[address(arg1)].field_256 < users[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
                users[address(arg1)].field_256 += uint16(stor4.field_48) * arg2 / 10000
            users[address(arg1)].field_768 = block.timestamp
            if not arg2:
                if not arg2:
                    if not arg2:
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                    else:
                        if uint16(stor4.field_32) * arg2 / arg2 != uint16(stor4.field_32):
                            revert with 0, 'SafeMath mul failed.'
                        if uint16(stor4.field_32) * arg2 / 10000 < 0:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, uint16(stor4.field_32) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_32) * arg2 / 10000
                else:
                    if uint16(stor4.field_16) * arg2 / arg2 != uint16(stor4.field_16):
                        revert with 0, 'SafeMath mul failed.'
                    if not arg2:
                        if uint16(stor4.field_16) * arg2 / 10000 < 0:
                            revert with 0, 'SafeMath add failed.'
                        if uint16(stor4.field_16) * arg2 / 10000 < uint16(stor4.field_16) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, uint16(stor4.field_16) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_16) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                    else:
                        if uint16(stor4.field_32) * arg2 / arg2 != uint16(stor4.field_32):
                            revert with 0, 'SafeMath mul failed.'
                        if uint16(stor4.field_16) * arg2 / 10000 < 0:
                            revert with 0, 'SafeMath add failed.'
                        if (uint16(stor4.field_32) * arg2 / 10000) + (uint16(stor4.field_16) * arg2 / 10000) < uint16(stor4.field_16) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, (uint16(stor4.field_32) * arg2 / 10000) + (uint16(stor4.field_16) * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_16) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_32) * arg2 / 10000
            else:
                if uint16(stor4.field_0) * arg2 / arg2 != uint16(stor4.field_0):
                    revert with 0, 'SafeMath mul failed.'
                if not arg2:
                    if not arg2:
                        if uint16(stor4.field_0) * arg2 / 10000 < uint16(stor4.field_0) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, uint16(stor4.field_0) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), uint16(stor4.field_0) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                    else:
                        if uint16(stor4.field_32) * arg2 / arg2 != uint16(stor4.field_32):
                            revert with 0, 'SafeMath mul failed.'
                        if uint16(stor4.field_0) * arg2 / 10000 < uint16(stor4.field_0) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        if (uint16(stor4.field_32) * arg2 / 10000) + (uint16(stor4.field_0) * arg2 / 10000) < uint16(stor4.field_0) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, (uint16(stor4.field_32) * arg2 / 10000) + (uint16(stor4.field_0) * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), uint16(stor4.field_0) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_32) * arg2 / 10000
                else:
                    if uint16(stor4.field_16) * arg2 / arg2 != uint16(stor4.field_16):
                        revert with 0, 'SafeMath mul failed.'
                    if not arg2:
                        if (uint16(stor4.field_16) * arg2 / 10000) + (uint16(stor4.field_0) * arg2 / 10000) < uint16(stor4.field_0) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, (uint16(stor4.field_16) * arg2 / 10000) + (uint16(stor4.field_0) * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), uint16(stor4.field_0) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_16) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], 0
                    else:
                        if uint16(stor4.field_32) * arg2 / arg2 != uint16(stor4.field_32):
                            revert with 0, 'SafeMath mul failed.'
                        if (uint16(stor4.field_16) * arg2 / 10000) + (uint16(stor4.field_0) * arg2 / 10000) < uint16(stor4.field_0) * arg2 / 10000:
                            revert with 0, 'SafeMath add failed.'
                        if uint16(stor4.field_32) * arg2 / 10000 < 0:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_3b8d7c15Address, (uint16(stor4.field_32) * arg2 / 10000) + (uint16(stor4.field_16) * arg2 / 10000) + (uint16(stor4.field_0) * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.userIds(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 192
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x6e3abbd2 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), uint16(stor4.field_0) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x3c23388f with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_16) * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_3b8d7c15Address)
                        call sub_3b8d7c15Address.0x33d8bfc7 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], uint16(stor4.field_32) * arg2 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
