contract main {




// =====================  Runtime code  =====================


#
#  - receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4)
#
mapping of uint8 stor0;
uint8 stor1; offset 160
address sub_722d8ff0Address;
address sub_3b8d7c15Address;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
uint8 stor5; offset 32
uint8 stor5; offset 40
uint8 stor5; offset 48
uint16 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
mapping of struct prizes;
mapping of struct stor19;

function sub_3b8d7c15(?) payable {
    return sub_3b8d7c15Address
}

function paused() payable {
    return bool(stor1)
}

function sub_722d8ff0(?) payable {
    return sub_722d8ff0Address
}

function prizes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return prizes[arg1].field_0, prizes[arg1].field_256
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function platform() payable {
    return stor12, stor13, stor14, stor15, stor16, stor17
}

function sub_a2aec85c(?) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    sub_722d8ff0Address = arg1
}

function sub_be9085c2(?) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    sub_3b8d7c15Address = arg1
}

function renounceManager() payable {
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'The role does not exist.'
    stor0[address(msg.sender)] = 0
    emit ManagerRemoved(msg.sender);
}

function pause() payable {
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if stor1:
        revert with 0, 'The contract is not paused.'
    stor1 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not stor1:
        revert with 0, 'The contract is paused.'
    stor1 = 0
    emit Unpaused(msg.sender);
}

function sub_5b3c09f0(?) payable {
    require calldata.size - 4 >= 192
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
    stor15 = arg4
    stor16 = arg5
    stor17 = arg6
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not arg1:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if stor0[address(arg1)]:
        revert with 0, 'The role already exist.'
    stor0[address(arg1)] = 1
    emit ManagerAdded(arg1);
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not arg1:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(arg1)]:
        revert with 0, 'The role does not exist.'
    stor0[address(arg1)] = 0
    emit ManagerRemoved(arg1);
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    if not arg1:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    require ext_code.size(sub_722d8ff0Address)
    call sub_722d8ff0Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient balance.'
    emit Withdrawn(arg2, arg1);
    return 1
}

function option() payable {
    if stor4.length:
        mem[128] = uint16(stor4.field_0)
        idx = 128
        s = 0
        while (32 * stor4.length) + 96 > idx:
            mem[idx + 32] = uint16(stor4.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
    mem[(32 * stor4.length) + 544 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 544 len (32 * stor4.length) - floor32(stor4.length)]), 
           uint16(stor5.field_0),
           uint8(stor5.field_0),
           uint8(stor5.field_0),
           uint8(stor5.field_0),
           uint8(stor5.field_0),
           uint8(stor5.field_0),
           stor6,
           stor7,
           stor8,
           stor9,
           stor10
}

function sub_5f0fdb0b(?) payable {
    require calldata.size - 4 >= 416
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not msg.sender:
        revert with 0, 32, 16, 0xfe496e76616c696420616464726573732e000000000000000000000000000000
    if not stor0[address(msg.sender)]:
        revert with 0, 'You are not manager.'
    stor4.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor4.length + 15 / 16 > idx:
            uint16(stor4[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor4.field_0) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor4.field_0)
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(arg1.length) >> 4
        s = sha3(4)
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(arg1.length) >> 4) + Mask(254, 1, None + -(floor32(arg1.length) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(arg1.length) >> 4) + 3) >> 1
        while stor4.length + 15 / 16 > idx:
            uint16(stor4[idx].field_0) = 0
            idx = idx + 1
            continue 
    uint8(stor5.field_0) = arg2
    uint8(stor5.field_8) = 0
    uint8(stor5.field_16) = arg3
    uint8(stor5.field_24) = arg4
    uint8(stor5.field_32) = arg5
    uint8(stor5.field_40) = arg6
    uint8(stor5.field_48) = arg7
    stor6 = arg8
    stor7 = arg9
    stor8 = arg10
    stor9 = arg11
    stor10 = arg12
    stor11 = arg13
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor19[address(arg1)].field_768 > block.timestamp:
        revert with 0, 'SafeMath sub failed.'
    if block.timestamp - stor19[address(arg1)].field_768 < stor8:
        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
            revert with 0, 'SafeMath add failed.'
        if stor14 > block.timestamp:
            revert with 0, 'SafeMath sub failed.'
        if block.timestamp - stor14 < stor9:
            revert with 0, 'SafeMath sub failed.'
        if stor9 <= 0:
            revert with 0, 'SafeMath div failed.'
        if stor9:
            if 1 > block.timestamp - stor14 / stor9:
                revert with 0, 'SafeMath sub failed.'
            if not uint8(stor19[address(arg1)].field_1024):
                return stor19[address(arg1)].field_0, 
                       stor19[address(arg1)].field_256,
                       stor19[address(arg1)].field_512,
                       stor19[address(arg1)].field_768,
                       0
            if block.timestamp - stor14 / stor9 < 1:
                return stor19[address(arg1)].field_0, 
                       stor19[address(arg1)].field_256,
                       stor19[address(arg1)].field_512,
                       stor19[address(arg1)].field_768,
                       0
            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                return stor19[address(arg1)].field_0, 
                       stor19[address(arg1)].field_256,
                       stor19[address(arg1)].field_512,
                       stor19[address(arg1)].field_768,
                       0
            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                revert with 0, 'SafeMath add failed.'
            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                revert with 0, 'SafeMath div failed.'
            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256:
                return stor19[address(arg1)].field_0, 
                       stor19[address(arg1)].field_256,
                       stor19[address(arg1)].field_512,
                       stor19[address(arg1)].field_768,
                       prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256
    else:
        if not stor19[address(arg1)].field_0:
            if stor8 <= 0:
                revert with 0, 'SafeMath div failed.'
            if stor8:
                if block.timestamp - stor19[address(arg1)].field_768 / stor8:
                    if 0 / block.timestamp - stor19[address(arg1)].field_768 / stor8:
                        revert with 0, 'SafeMath mul failed.'
                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
                if stor14 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if block.timestamp - stor14 < stor9:
                    revert with 0, 'SafeMath sub failed.'
                if stor9 <= 0:
                    revert with 0, 'SafeMath div failed.'
                if stor9:
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        return stor19[address(arg1)].field_0, 
                               stor19[address(arg1)].field_256,
                               stor19[address(arg1)].field_512,
                               stor19[address(arg1)].field_768,
                               0
                    if block.timestamp - stor14 / stor9 < 1:
                        return stor19[address(arg1)].field_0, 
                               stor19[address(arg1)].field_256,
                               stor19[address(arg1)].field_512,
                               stor19[address(arg1)].field_768,
                               0
                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                        return stor19[address(arg1)].field_0, 
                               stor19[address(arg1)].field_256,
                               stor19[address(arg1)].field_512,
                               stor19[address(arg1)].field_768,
                               0
                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256:
                        return stor19[address(arg1)].field_0, 
                               stor19[address(arg1)].field_256,
                               stor19[address(arg1)].field_512,
                               stor19[address(arg1)].field_768,
                               prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256
        else:
            if uint16(stor5.field_0) * stor19[address(arg1)].field_0 / stor19[address(arg1)].field_0 != uint16(stor5.field_0):
                revert with 0, 'SafeMath mul failed.'
            if stor8 <= 0:
                revert with 0, 'SafeMath div failed.'
            if stor8:
                if not block.timestamp - stor19[address(arg1)].field_768 / stor8:
                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    if stor9:
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            return stor19[address(arg1)].field_0, 
                                   stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   0
                        if block.timestamp - stor14 / stor9 < 1:
                            return stor19[address(arg1)].field_0, 
                                   stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   0
                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                            return stor19[address(arg1)].field_0, 
                                   stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   0
                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256:
                            return stor19[address(arg1)].field_0, 
                                   stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                else:
                    if uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8 / block.timestamp - stor19[address(arg1)].field_768 / stor8 != uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000:
                        revert with 0, 'SafeMath mul failed.'
                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    if stor9:
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            return stor19[address(arg1)].field_0, 
                                   (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   0
                        if block.timestamp - stor14 / stor9 < 1:
                            return stor19[address(arg1)].field_0, 
                                   (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   0
                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                            return stor19[address(arg1)].field_0, 
                                   (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   0
                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256:
                            return stor19[address(arg1)].field_0, 
                                   (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256,
                                   stor19[address(arg1)].field_512,
                                   stor19[address(arg1)].field_768,
                                   prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256
    revert
}

function withdraw(address arg1) payable {
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
    if not stor19[address(arg1)].field_0:
        if stor19[address(arg1)].field_512 < 0:
            revert with 0, 'Insufficient earnings.'
        if stor19[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath sub failed.'
        if block.timestamp - stor19[address(arg1)].field_768 < stor8:
            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                revert with 0, 'SafeMath add failed.'
            if stor19[address(arg1)].field_256 <= 0:
                if stor14 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if block.timestamp - stor14 < stor9:
                    revert with 0, 'SafeMath sub failed.'
                if stor9 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require stor9
                if 1 > block.timestamp - stor14 / stor9:
                    revert with 0, 'SafeMath sub failed.'
                if not uint8(stor19[address(arg1)].field_1024):
                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor19[address(arg1)].field_256 > 0:
                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                revert with 0, 'SafeMath add failed.'
                            stor13 += stor19[address(arg1)].field_256
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor19[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Withdrawal failed.'
                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                        else:
                            if stor19[address(arg1)].field_512 > 0:
                                revert with 0, 'SafeMath sub failed.'
                            if 0 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            stor19[address(arg1)].field_512 = 0
                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                revert with 0, 'SafeMath add failed.'
                            stor13 -= stor19[address(arg1)].field_512
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -stor19[address(arg1)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Withdrawal failed.'
                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                else:
                    if block.timestamp - stor14 / stor9 < 1:
                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 > 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor19[address(arg1)].field_256
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor19[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > 0:
                                    revert with 0, 'SafeMath sub failed.'
                                if 0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = 0
                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 -= stor19[address(arg1)].field_512
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), -stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                uint8(stor19[address(arg1)].field_1024) = 0
                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
            else:
                if stor19[address(arg1)].field_256 <= stor11:
                    stor19[address(arg1)].field_256 = 0
                    stor19[address(arg1)].field_768 = block.timestamp
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    require stor9
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 > 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor19[address(arg1)].field_256
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor19[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > 0:
                                    revert with 0, 'SafeMath sub failed.'
                                if 0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = 0
                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 -= stor19[address(arg1)].field_512
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), -stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if block.timestamp - stor14 / stor9 < 1:
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                    revert with 0, 'SafeMath div failed.'
                                require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                    uint8(stor19[address(arg1)].field_1024) = 0
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                else:
                    if stor11 > stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath sub failed.'
                    stor19[address(arg1)].field_256 -= stor11
                    stor19[address(arg1)].field_768 = block.timestamp
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    require stor9
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        if stor11 < stor11:
                            revert with 0, 'SafeMath add failed.'
                        if stor11 > 0:
                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor11 + stor19[address(arg1)].field_512 < 0:
                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor11
                                if stor11 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor11
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor11
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor11, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > 0:
                                    revert with 0, 'SafeMath sub failed.'
                                if 0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = 0
                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 -= stor19[address(arg1)].field_512
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), -stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if block.timestamp - stor14 / stor9 < 1:
                            if stor11 < stor11:
                                revert with 0, 'SafeMath add failed.'
                            if stor11 > 0:
                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 + stor19[address(arg1)].field_512 < 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor11
                                    if stor11 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor11
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor11
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor11, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                    revert with 0, 'SafeMath div failed.'
                                require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                    uint8(stor19[address(arg1)].field_1024) = 0
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
        else:
            if not stor19[address(arg1)].field_0:
                if stor8 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require stor8
                if block.timestamp - stor19[address(arg1)].field_768 / stor8:
                    if 0 / block.timestamp - stor19[address(arg1)].field_768 / stor8:
                        revert with 0, 'SafeMath mul failed.'
                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
                if stor19[address(arg1)].field_256 <= 0:
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    require stor9
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 > 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor19[address(arg1)].field_256
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor19[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > 0:
                                    revert with 0, 'SafeMath sub failed.'
                                if 0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = 0
                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 -= stor19[address(arg1)].field_512
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), -stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if block.timestamp - stor14 / stor9 < 1:
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                    revert with 0, 'SafeMath div failed.'
                                require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                    uint8(stor19[address(arg1)].field_1024) = 0
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                else:
                    if stor19[address(arg1)].field_256 <= stor11:
                        stor19[address(arg1)].field_256 = 0
                        stor19[address(arg1)].field_768 = block.timestamp
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 > 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor19[address(arg1)].field_256
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if stor11 > stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath sub failed.'
                        stor19[address(arg1)].field_256 -= stor11
                        stor19[address(arg1)].field_768 = block.timestamp
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if stor11 < stor11:
                                revert with 0, 'SafeMath add failed.'
                            if stor11 > 0:
                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 + stor19[address(arg1)].field_512 < 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor11
                                    if stor11 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor11
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor11
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor11, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 > 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 + stor19[address(arg1)].field_512 < 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor11
                                            if stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor11
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor11, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
            else:
                if uint16(stor5.field_0) * stor19[address(arg1)].field_0 / stor19[address(arg1)].field_0 != uint16(stor5.field_0):
                    revert with 0, 'SafeMath mul failed.'
                if stor8 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require stor8
                if not block.timestamp - stor19[address(arg1)].field_768 / stor8:
                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor19[address(arg1)].field_256 <= 0:
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 > 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor19[address(arg1)].field_256
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if stor19[address(arg1)].field_256 <= stor11:
                            stor19[address(arg1)].field_256 = 0
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 > 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor19[address(arg1)].field_256
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 > 0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 += stor19[address(arg1)].field_256
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if stor11 > stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath sub failed.'
                            stor19[address(arg1)].field_256 -= stor11
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 > 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 + stor19[address(arg1)].field_512 < 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor11
                                            if stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor11
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor11, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 > 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if stor11 + stor19[address(arg1)].field_512 < 0:
                                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 += stor11
                                                if stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 += stor11
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(stor11, arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < 0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                else:
                    if uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8 / block.timestamp - stor19[address(arg1)].field_768 / stor8 != uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000:
                        revert with 0, 'SafeMath mul failed.'
                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 <= 0:
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > 0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if 0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = 0
                                    if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 -= stor19[address(arg1)].field_512
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), -stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                    else:
                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 <= stor11:
                            stor19[address(arg1)].field_256 = 0
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < 0:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < 0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                        else:
                            if stor11 > (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath sub failed.'
                            stor19[address(arg1)].field_256 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 - stor11
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > 0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if 0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = 0
                                        if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 -= stor19[address(arg1)].field_512
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), -stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 > 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 + stor19[address(arg1)].field_512 < 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor11
                                            if stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor11
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor11, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > 0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if 0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = 0
                                            if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 -= stor19[address(arg1)].field_512
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), -stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 > 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if stor11 + stor19[address(arg1)].field_512 < 0:
                                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 += stor11
                                                if stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 += stor11
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(stor11, arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < 0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > 0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if 0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = 0
                                                if -stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 -= stor19[address(arg1)].field_512
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), -stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(-stor19[address(arg1)].field_512, arg1);
    else:
        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 / stor19[address(arg1)].field_0 != uint8(stor5.field_48):
            revert with 0, 'SafeMath mul failed.'
        if stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
            revert with 0, 'Insufficient earnings.'
        if stor19[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath sub failed.'
        if block.timestamp - stor19[address(arg1)].field_768 < stor8:
            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                revert with 0, 'SafeMath add failed.'
            if stor19[address(arg1)].field_256 <= 0:
                if stor14 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if block.timestamp - stor14 < stor9:
                    revert with 0, 'SafeMath sub failed.'
                if stor9 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require stor9
                if 1 > block.timestamp - stor14 / stor9:
                    revert with 0, 'SafeMath sub failed.'
                if not uint8(stor19[address(arg1)].field_1024):
                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor19[address(arg1)].field_256 > 0:
                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                revert with 0, 'SafeMath add failed.'
                            stor13 += stor19[address(arg1)].field_256
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor19[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Withdrawal failed.'
                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                        else:
                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                revert with 0, 'SafeMath sub failed.'
                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                revert with 0, 'SafeMath add failed.'
                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Withdrawal failed.'
                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                else:
                    if block.timestamp - stor14 / stor9 < 1:
                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 > 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor19[address(arg1)].field_256
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor19[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    revert with 0, 'SafeMath sub failed.'
                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                uint8(stor19[address(arg1)].field_1024) = 0
                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
            else:
                if stor19[address(arg1)].field_256 <= stor11:
                    stor19[address(arg1)].field_256 = 0
                    stor19[address(arg1)].field_768 = block.timestamp
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    require stor9
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 > 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor19[address(arg1)].field_256
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor19[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    revert with 0, 'SafeMath sub failed.'
                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if block.timestamp - stor14 / stor9 < 1:
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                    revert with 0, 'SafeMath div failed.'
                                require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                    uint8(stor19[address(arg1)].field_1024) = 0
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                else:
                    if stor11 > stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath sub failed.'
                    stor19[address(arg1)].field_256 -= stor11
                    stor19[address(arg1)].field_768 = block.timestamp
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    require stor9
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        if stor11 < stor11:
                            revert with 0, 'SafeMath add failed.'
                        if stor11 > 0:
                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor11
                                if stor11 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor11
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor11
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor11, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    revert with 0, 'SafeMath sub failed.'
                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if block.timestamp - stor14 / stor9 < 1:
                            if stor11 < stor11:
                                revert with 0, 'SafeMath add failed.'
                            if stor11 > 0:
                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor11
                                    if stor11 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor11
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor11
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor11, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                    revert with 0, 'SafeMath div failed.'
                                require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                    uint8(stor19[address(arg1)].field_1024) = 0
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
        else:
            if not stor19[address(arg1)].field_0:
                if stor8 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require stor8
                if block.timestamp - stor19[address(arg1)].field_768 / stor8:
                    if 0 / block.timestamp - stor19[address(arg1)].field_768 / stor8:
                        revert with 0, 'SafeMath mul failed.'
                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
                if stor19[address(arg1)].field_256 <= 0:
                    if stor14 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if block.timestamp - stor14 < stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if stor9 <= 0:
                        revert with 0, 'SafeMath div failed.'
                    require stor9
                    if 1 > block.timestamp - stor14 / stor9:
                        revert with 0, 'SafeMath sub failed.'
                    if not uint8(stor19[address(arg1)].field_1024):
                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath add failed.'
                        if stor19[address(arg1)].field_256 > 0:
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 += stor19[address(arg1)].field_256
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor19[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                            else:
                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    revert with 0, 'SafeMath sub failed.'
                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                    revert with 0, 'SafeMath add failed.'
                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Withdrawal failed.'
                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if block.timestamp - stor14 / stor9 < 1:
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                    revert with 0, 'SafeMath div failed.'
                                require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                    uint8(stor19[address(arg1)].field_1024) = 0
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                else:
                    if stor19[address(arg1)].field_256 <= stor11:
                        stor19[address(arg1)].field_256 = 0
                        stor19[address(arg1)].field_768 = block.timestamp
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 > 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor19[address(arg1)].field_256
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if stor11 > stor19[address(arg1)].field_256:
                            revert with 0, 'SafeMath sub failed.'
                        stor19[address(arg1)].field_256 -= stor11
                        stor19[address(arg1)].field_768 = block.timestamp
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if stor11 < stor11:
                                revert with 0, 'SafeMath add failed.'
                            if stor11 > 0:
                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor11
                                    if stor11 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor11
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor11
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor11, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 > 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor11
                                            if stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor11
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor11, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
            else:
                if uint16(stor5.field_0) * stor19[address(arg1)].field_0 / stor19[address(arg1)].field_0 != uint16(stor5.field_0):
                    revert with 0, 'SafeMath mul failed.'
                if stor8 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require stor8
                if not block.timestamp - stor19[address(arg1)].field_768 / stor8:
                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if stor19[address(arg1)].field_256 <= 0:
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath add failed.'
                            if stor19[address(arg1)].field_256 > 0:
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                    if stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 += stor19[address(arg1)].field_256
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 > 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor19[address(arg1)].field_256
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if stor19[address(arg1)].field_256 <= stor11:
                            stor19[address(arg1)].field_256 = 0
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                    revert with 0, 'SafeMath add failed.'
                                if stor19[address(arg1)].field_256 > 0:
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                        if stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor19[address(arg1)].field_256
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor19[address(arg1)].field_256 > 0:
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                            if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor19[address(arg1)].field_256
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor19[address(arg1)].field_256 > 0:
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 += stor19[address(arg1)].field_256
                                                if stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 += stor19[address(arg1)].field_256
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(stor19[address(arg1)].field_256, arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor19[address(arg1)].field_256), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if stor11 > stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath sub failed.'
                            stor19[address(arg1)].field_256 -= stor11
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 > 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor11
                                            if stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor11
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor11, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 > 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 += stor11
                                                if stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 += stor11
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(stor11, arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                else:
                    if uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8 / block.timestamp - stor19[address(arg1)].field_768 / stor8 != uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000:
                        revert with 0, 'SafeMath mul failed.'
                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 < stor19[address(arg1)].field_256:
                        revert with 0, 'SafeMath add failed.'
                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 <= 0:
                        if stor14 > block.timestamp:
                            revert with 0, 'SafeMath sub failed.'
                        if block.timestamp - stor14 < stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if stor9 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor9
                        if 1 > block.timestamp - stor14 / stor9:
                            revert with 0, 'SafeMath sub failed.'
                        if not uint8(stor19[address(arg1)].field_1024):
                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                    revert with 0, 'SafeMath add failed.'
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                else:
                                    if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        revert with 0, 'SafeMath sub failed.'
                                    if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                    if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                        revert with 0, 'SafeMath add failed.'
                                    stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if block.timestamp - stor14 / stor9 < 1:
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                        revert with 0, 'SafeMath div failed.'
                                    require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                        uint8(stor19[address(arg1)].field_1024) = 0
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                    else:
                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 <= stor11:
                            stor19[address(arg1)].field_256 = 0
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                                if (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < 0:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                        else:
                            if stor11 > (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256:
                                revert with 0, 'SafeMath sub failed.'
                            stor19[address(arg1)].field_256 = (uint16(stor5.field_0) * stor19[address(arg1)].field_0 / 10000 * block.timestamp - stor19[address(arg1)].field_768 / stor8) + stor19[address(arg1)].field_256 - stor11
                            stor19[address(arg1)].field_768 = block.timestamp
                            if stor14 > block.timestamp:
                                revert with 0, 'SafeMath sub failed.'
                            if block.timestamp - stor14 < stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if stor9 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor9
                            if 1 > block.timestamp - stor14 / stor9:
                                revert with 0, 'SafeMath sub failed.'
                            if not uint8(stor19[address(arg1)].field_1024):
                                if stor11 < stor11:
                                    revert with 0, 'SafeMath add failed.'
                                if stor11 > 0:
                                    if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 += stor11
                                        if stor11 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 += stor11
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(stor11, arg1);
                                    else:
                                        if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            revert with 0, 'SafeMath sub failed.'
                                        if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                        if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                            revert with 0, 'SafeMath add failed.'
                                        stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                            else:
                                if block.timestamp - stor14 / stor9 < 1:
                                    if stor11 < stor11:
                                        revert with 0, 'SafeMath add failed.'
                                    if stor11 > 0:
                                        if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 += stor11
                                            if stor11 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 += stor11
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(stor11, arg1);
                                        else:
                                            if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                revert with 0, 'SafeMath sub failed.'
                                            if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                            if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                revert with 0, 'SafeMath add failed.'
                                            stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Withdrawal failed.'
                                            emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                else:
                                    if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 <= 0:
                                        if stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor11 > 0:
                                            if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 += stor11
                                                if stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 += stor11
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(stor11, arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
                                    else:
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 < prizes[block.timestamp - stor14 / stor9].field_256:
                                            revert with 0, 'SafeMath add failed.'
                                        if stor17 + prizes[block.timestamp - stor14 / stor9].field_256 <= 0:
                                            revert with 0, 'SafeMath div failed.'
                                        require stor17 + prizes[block.timestamp - stor14 / stor9].field_256
                                        if prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256 > 0:
                                            uint8(stor19[address(arg1)].field_1024) = 0
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 < stor11:
                                            revert with 0, 'SafeMath add failed.'
                                        if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 > 0:
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                revert with 0, 'SafeMath add failed.'
                                            if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor19[address(arg1)].field_512
                                                if (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((prizes[(block.timestamp - stor14 / stor9) - 1].field_0 / stor17 + prizes[block.timestamp - stor14 / stor9].field_256) + stor11), arg1);
                                            else:
                                                if stor19[address(arg1)].field_512 > uint8(stor5.field_48) * stor19[address(arg1)].field_0:
                                                    revert with 0, 'SafeMath sub failed.'
                                                if uint8(stor5.field_48) * stor19[address(arg1)].field_0 < stor19[address(arg1)].field_512:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor19[address(arg1)].field_512 = uint8(stor5.field_48) * stor19[address(arg1)].field_0
                                                if (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13 < stor13:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor13 = (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512 + stor13
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Withdrawal failed.'
                                                emit Withdrawn(((uint8(stor5.field_48) * stor19[address(arg1)].field_0) - stor19[address(arg1)].field_512), arg1);
    return 1
}



}
