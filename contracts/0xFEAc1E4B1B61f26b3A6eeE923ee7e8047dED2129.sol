contract main {




// =====================  Runtime code  =====================


#
#  - receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;
uint8 stor2;
address sub_722d8ff0Address; offset 8
address sub_1fa4e703Address;
address sub_3b8d7c15Address;
array of uint256 name;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint8 stor6; offset 24
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
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
mapping of struct stor24;
address developmentAddress;
address foundationAddress;
mapping of address winners;
mapping of address bets;

function name() payable {
    return name[0 len name.length]
}

function sub_1fa4e703(?) payable {
    return sub_1fa4e703Address
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address.'
    return bool(stor1[address(arg1)])
}

function sub_3b8d7c15(?) payable {
    return sub_3b8d7c15Address
}

function foundation() payable {
    return foundationAddress
}

function paused() payable {
    return bool(stor2)
}

function bets(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return bets[arg1][arg2]
}

function sub_722d8ff0(?) payable {
    return sub_722d8ff0Address
}

function development() payable {
    return developmentAddress
}

function owner() payable {
    return owner
}

function winners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return winners[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function gameData() payable {
    return stor17, stor18, stor19, stor20, stor21, stor22, stor23
}

function sub_5cd64ac6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_1fa4e703Address = arg1
}

function sub_a2aec85c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_722d8ff0Address = arg1
}

function sub_be9085c2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_3b8d7c15Address = arg1
}

function setFoundation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    foundationAddress = arg1
}

function setDevelopment(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    developmentAddress = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if stor2:
        revert with 0, 'The contract is not paused.'
    stor2 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not stor2:
        revert with 0, 'The contract is paused.'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function renounceWhitelisted() payable {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor1[address(msg.sender)]:
        revert with 0, 'The role does not exist.'
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function sub_94cff4e4(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    stor17 = arg1
    stor18 = arg2
    stor19 = arg3
    stor20 = arg4
    stor21 = arg5
    stor22 = arg6
    stor23 = arg7
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function option() payable {
    return uint8(stor6.field_0), 
           uint8(stor6.field_0),
           uint8(stor6.field_0),
           uint8(stor6.field_0),
           stor7,
           stor8,
           stor9,
           stor10,
           stor11,
           stor12,
           stor13,
           stor14,
           stor15,
           stor16
}

function addWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if stor1[address(arg1)]:
        revert with 0, 'The role already exist.'
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if not stor1[address(arg1)]:
        revert with 0, 'The role does not exist.'
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function sub_ab4cc9f8(?) payable {
    require calldata.size - 4 >= 448
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    uint8(stor6.field_0) = arg1
    uint8(stor6.field_8) = arg2
    uint8(stor6.field_16) = arg3
    uint8(stor6.field_24) = arg4
    stor7 = arg5
    stor8 = arg6
    stor9 = arg7
    stor10 = arg8
    stor11 = arg9
    stor12 = arg10
    stor13 = arg11
    stor14 = arg12
    stor15 = arg13
    stor16 = arg14
}

function sub_b3bf40b8(?) payable {
    require calldata.size - 4 >= 64
    if stor24[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'Not eligible for execution.'
    stor24[address(arg1)].field_256 = 0
    stor24[address(arg1)].field_512 = block.timestamp
    if arg2 + stor17 < stor17:
        revert with 0, 'SafeMath add failed.'
    stor17 += arg2
    if stor18 < arg2 + stor17:
        if not stor9:
            if stor18 < stor18:
                revert with 0, 'SafeMath add failed.'
        else:
            if stor10 * stor9 / stor9 != stor10:
                revert with 0, 'SafeMath mul failed.'
            if (stor10 * stor9 / 10^18) + stor18 < stor18:
                revert with 0, 'SafeMath add failed.'
            stor18 += stor10 * stor9 / 10^18
        if stor19 + 1 < stor19:
            revert with 0, 'SafeMath add failed.'
        stor19++
    if stor23 > block.timestamp:
        revert with 0, 'SafeMath sub failed.'
    if stor13 <= 0:
        revert with 0, 'SafeMath div failed.'
    require stor13
    if block.timestamp - stor23 / stor13 < stor19:
        if arg2 + stor24[address(arg1)].field_256 < stor24[address(arg1)].field_256:
            revert with 0, 'SafeMath add failed.'
        stor24[address(arg1)].field_256 += arg2
        if not stor19:
            if stor23 < stor23:
                revert with 0, 'SafeMath add failed.'
            stor24[address(arg1)].field_512 = stor23
        else:
            if stor13 * stor19 / stor19 != stor13:
                revert with 0, 'SafeMath mul failed.'
            if (stor13 * stor19) + stor23 < stor23:
                revert with 0, 'SafeMath add failed.'
            stor24[address(arg1)].field_512 = (stor13 * stor19) + stor23
    if arg2 + stor24[address(arg1)].field_0 < stor24[address(arg1)].field_0:
        revert with 0, 'SafeMath add failed.'
    stor24[address(arg1)].field_0 += arg2
    stor24[address(arg1)].field_1280 = block.timestamp
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor24[address(arg1)].field_0:
        if stor24[address(arg1)].field_1024 > 0:
            revert with 0, 'SafeMath sub failed.'
        if stor24[address(arg1)].field_512 <= block.timestamp:
            if stor24[address(arg1)].field_1280 > block.timestamp:
                revert with 0, 'SafeMath sub failed.'
            if -stor24[address(arg1)].field_1024 <= 0:
                return stor24[address(arg1)].field_0, 
                       stor24[address(arg1)].field_256,
                       stor24[address(arg1)].field_512,
                       0,
                       stor24[address(arg1)].field_768,
                       stor24[address(arg1)].field_1024,
                       stor24[address(arg1)].field_1280
            if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                return stor24[address(arg1)].field_0, 
                       stor24[address(arg1)].field_256,
                       stor24[address(arg1)].field_512,
                       0,
                       stor24[address(arg1)].field_768,
                       stor24[address(arg1)].field_1024,
                       stor24[address(arg1)].field_1280
            if stor13 > 0:
                require stor13
                if var51002 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                    if not -stor24[address(arg1)].field_1024:
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               0,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                    if -1 * var51003 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != var51003:
                        revert with 0, 'SafeMath mul failed.'
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           -1 * var51003 * stor24[address(arg1)].field_1024 / 10^18,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if not var55002:
                    s = var55002
                    s = var55006
                    t = var55007
                    while stor13 > 0:
                        require stor13
                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            s = 0
                            s = s + 1
                            t = 0
                            continue 
                        if -stor24[address(arg1)].field_1024:
                            if 0 / -stor24[address(arg1)].field_1024:
                                revert with 0, 'SafeMath mul failed.'
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               0,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                else:
                    require var58003
                    if var60001 / var60002 != stor8:
                        revert with 0, 'SafeMath mul failed.'
                    s = var62001
                    t = var62008
                    u = var62009
                    while stor13 > 0:
                        require stor13
                        if t + 1 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            if not -stor24[address(arg1)].field_1024:
                                return stor24[address(arg1)].field_0, 
                                       stor24[address(arg1)].field_256,
                                       stor24[address(arg1)].field_512,
                                       0,
                                       stor24[address(arg1)].field_768,
                                       stor24[address(arg1)].field_1024,
                                       stor24[address(arg1)].field_1280
                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != s / 10^18:
                                revert with 0, 'SafeMath mul failed.'
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                        if not s / 10^18:
                            s = 0
                            t = t + 1
                            u = s / 10^18
                            continue 
                        if stor8 * s / 10^18 / s / 10^18 != stor8:
                            revert with 0, 'SafeMath mul failed.'
                        s = stor8 * s / 10^18
                        t = t + 1
                        u = s / 10^18
                        continue 
        else:
            if not stor24[address(arg1)].field_256:
                if 0 > -stor24[address(arg1)].field_1024:
                    revert with 0, 'SafeMath sub failed.'
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if -stor24[address(arg1)].field_1024 <= 0:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if stor13 > 0:
                    require stor13
                    if var63002 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                        if not -stor24[address(arg1)].field_1024:
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                        if -1 * var63003 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != var63003:
                            revert with 0, 'SafeMath mul failed.'
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               -1 * var63003 * stor24[address(arg1)].field_1024 / 10^18,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                    if not var67002:
                        s = var67002
                        s = var67006
                        t = var67007
                        while stor13 > 0:
                            require stor13
                            if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                s = 0
                                s = s + 1
                                t = 0
                                continue 
                            if -stor24[address(arg1)].field_1024:
                                if 0 / -stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath mul failed.'
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                    else:
                        require var70003
                        if var72001 / var72002 != stor8:
                            revert with 0, 'SafeMath mul failed.'
                        s = var74001
                        t = var74008
                        u = var74009
                        while stor13 > 0:
                            require stor13
                            if t + 1 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not -stor24[address(arg1)].field_1024:
                                    return stor24[address(arg1)].field_0, 
                                           stor24[address(arg1)].field_256,
                                           stor24[address(arg1)].field_512,
                                           0,
                                           stor24[address(arg1)].field_768,
                                           stor24[address(arg1)].field_1024,
                                           stor24[address(arg1)].field_1280
                                if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != s / 10^18:
                                    revert with 0, 'SafeMath mul failed.'
                                return stor24[address(arg1)].field_0, 
                                       stor24[address(arg1)].field_256,
                                       stor24[address(arg1)].field_512,
                                       -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18,
                                       stor24[address(arg1)].field_768,
                                       stor24[address(arg1)].field_1024,
                                       stor24[address(arg1)].field_1280
                            if not s / 10^18:
                                s = 0
                                t = t + 1
                                u = s / 10^18
                                continue 
                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                revert with 0, 'SafeMath mul failed.'
                            s = stor8 * s / 10^18
                            t = t + 1
                            u = s / 10^18
                            continue 
            else:
                if stor7 * stor24[address(arg1)].field_256 / stor24[address(arg1)].field_256 != stor7:
                    revert with 0, 'SafeMath mul failed.'
                if stor7 * stor24[address(arg1)].field_256 / 10^18 > -stor24[address(arg1)].field_1024:
                    revert with 0, 'SafeMath sub failed.'
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) <= 0:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if stor13 > 0:
                    require stor13
                    if var64002 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                        if not -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                        if (-1 * stor24[address(arg1)].field_1024 * var64003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var64003) / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != var64003:
                            revert with 0, 'SafeMath mul failed.'
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               (-1 * stor24[address(arg1)].field_1024 * var64003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var64003) / 10^18,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                    if not var68002:
                        s = var68002
                        s = var68006
                        t = var68007
                        while stor13 > 0:
                            require stor13
                            if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                s = 0
                                s = s + 1
                                t = 0
                                continue 
                            if -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                if 0 / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                    revert with 0, 'SafeMath mul failed.'
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                    else:
                        require var71003
                        if var73001 / var73002 != stor8:
                            revert with 0, 'SafeMath mul failed.'
                        s = var75001
                        t = var75008
                        u = var75009
                        while stor13 > 0:
                            require stor13
                            if t + 1 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                    return stor24[address(arg1)].field_0, 
                                           stor24[address(arg1)].field_256,
                                           stor24[address(arg1)].field_512,
                                           0,
                                           stor24[address(arg1)].field_768,
                                           stor24[address(arg1)].field_1024,
                                           stor24[address(arg1)].field_1280
                                if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != s / 10^18:
                                    revert with 0, 'SafeMath mul failed.'
                                return stor24[address(arg1)].field_0, 
                                       stor24[address(arg1)].field_256,
                                       stor24[address(arg1)].field_512,
                                       (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18,
                                       stor24[address(arg1)].field_768,
                                       stor24[address(arg1)].field_1024,
                                       stor24[address(arg1)].field_1280
                            if not s / 10^18:
                                s = 0
                                t = t + 1
                                u = s / 10^18
                                continue 
                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                revert with 0, 'SafeMath mul failed.'
                            s = stor8 * s / 10^18
                            t = t + 1
                            u = s / 10^18
                            continue 
    else:
        if stor7 * stor24[address(arg1)].field_0 / stor24[address(arg1)].field_0 != stor7:
            revert with 0, 'SafeMath mul failed.'
        if stor24[address(arg1)].field_1024 > stor7 * stor24[address(arg1)].field_0 / 10^18:
            revert with 0, 'SafeMath sub failed.'
        if stor24[address(arg1)].field_512 <= block.timestamp:
            if stor24[address(arg1)].field_1280 > block.timestamp:
                revert with 0, 'SafeMath sub failed.'
            if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 <= 0:
                return stor24[address(arg1)].field_0, 
                       stor24[address(arg1)].field_256,
                       stor24[address(arg1)].field_512,
                       0,
                       stor24[address(arg1)].field_768,
                       stor24[address(arg1)].field_1024,
                       stor24[address(arg1)].field_1280
            if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                return stor24[address(arg1)].field_0, 
                       stor24[address(arg1)].field_256,
                       stor24[address(arg1)].field_512,
                       0,
                       stor24[address(arg1)].field_768,
                       stor24[address(arg1)].field_1024,
                       stor24[address(arg1)].field_1280
            if stor13 > 0:
                require stor13
                if var52002 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                    if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               0,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                    if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var52003) - (stor24[address(arg1)].field_1024 * var52003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != var52003:
                        revert with 0, 'SafeMath mul failed.'
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           (stor7 * stor24[address(arg1)].field_0 / 10^18 * var52003) - (stor24[address(arg1)].field_1024 * var52003) / 10^18,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if not var56002:
                    s = var56002
                    s = var56006
                    t = var56007
                    while stor13 > 0:
                        require stor13
                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            s = 0
                            s = s + 1
                            t = 0
                            continue 
                        if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                            if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                revert with 0, 'SafeMath mul failed.'
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               0,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                else:
                    require var59003
                    if var61001 / var61002 != stor8:
                        revert with 0, 'SafeMath mul failed.'
                    s = var63001
                    t = var63008
                    u = var63009
                    while stor13 > 0:
                        require stor13
                        if t + 1 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                return stor24[address(arg1)].field_0, 
                                       stor24[address(arg1)].field_256,
                                       stor24[address(arg1)].field_512,
                                       0,
                                       stor24[address(arg1)].field_768,
                                       stor24[address(arg1)].field_1024,
                                       stor24[address(arg1)].field_1280
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != s / 10^18:
                                revert with 0, 'SafeMath mul failed.'
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                        if not s / 10^18:
                            s = 0
                            t = t + 1
                            u = s / 10^18
                            continue 
                        if stor8 * s / 10^18 / s / 10^18 != stor8:
                            revert with 0, 'SafeMath mul failed.'
                        s = stor8 * s / 10^18
                        t = t + 1
                        u = s / 10^18
                        continue 
        else:
            if not stor24[address(arg1)].field_256:
                if 0 > (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                    revert with 0, 'SafeMath sub failed.'
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 <= 0:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if stor13 > 0:
                    require stor13
                    if var64002 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                        if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var64003) - (stor24[address(arg1)].field_1024 * var64003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != var64003:
                            revert with 0, 'SafeMath mul failed.'
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               (stor7 * stor24[address(arg1)].field_0 / 10^18 * var64003) - (stor24[address(arg1)].field_1024 * var64003) / 10^18,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                    if not var68002:
                        s = var68002
                        s = var68006
                        t = var68007
                        while stor13 > 0:
                            require stor13
                            if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                s = 0
                                s = s + 1
                                t = 0
                                continue 
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath mul failed.'
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                    else:
                        require var71003
                        if var73001 / var73002 != stor8:
                            revert with 0, 'SafeMath mul failed.'
                        s = var75001
                        t = var75008
                        u = var75009
                        while stor13 > 0:
                            require stor13
                            if t + 1 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                    return stor24[address(arg1)].field_0, 
                                           stor24[address(arg1)].field_256,
                                           stor24[address(arg1)].field_512,
                                           0,
                                           stor24[address(arg1)].field_768,
                                           stor24[address(arg1)].field_1024,
                                           stor24[address(arg1)].field_1280
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != s / 10^18:
                                    revert with 0, 'SafeMath mul failed.'
                                return stor24[address(arg1)].field_0, 
                                       stor24[address(arg1)].field_256,
                                       stor24[address(arg1)].field_512,
                                       (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18,
                                       stor24[address(arg1)].field_768,
                                       stor24[address(arg1)].field_1024,
                                       stor24[address(arg1)].field_1280
                            if not s / 10^18:
                                s = 0
                                t = t + 1
                                u = s / 10^18
                                continue 
                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                revert with 0, 'SafeMath mul failed.'
                            s = stor8 * s / 10^18
                            t = t + 1
                            u = s / 10^18
                            continue 
            else:
                if stor7 * stor24[address(arg1)].field_256 / stor24[address(arg1)].field_256 != stor7:
                    revert with 0, 'SafeMath mul failed.'
                if stor7 * stor24[address(arg1)].field_256 / 10^18 > (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                    revert with 0, 'SafeMath sub failed.'
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) <= 0:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                    return stor24[address(arg1)].field_0, 
                           stor24[address(arg1)].field_256,
                           stor24[address(arg1)].field_512,
                           0,
                           stor24[address(arg1)].field_768,
                           stor24[address(arg1)].field_1024,
                           stor24[address(arg1)].field_1280
                if stor13 > 0:
                    require stor13
                    if var65002 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                        if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var65003) - (stor24[address(arg1)].field_1024 * var65003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var65003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != var65003:
                            revert with 0, 'SafeMath mul failed.'
                        return stor24[address(arg1)].field_0, 
                               stor24[address(arg1)].field_256,
                               stor24[address(arg1)].field_512,
                               (stor7 * stor24[address(arg1)].field_0 / 10^18 * var65003) - (stor24[address(arg1)].field_1024 * var65003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var65003) / 10^18,
                               stor24[address(arg1)].field_768,
                               stor24[address(arg1)].field_1024,
                               stor24[address(arg1)].field_1280
                    if not var69002:
                        s = var69002
                        s = var69006
                        t = var69007
                        while stor13 > 0:
                            require stor13
                            if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                s = 0
                                s = s + 1
                                t = 0
                                continue 
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                    revert with 0, 'SafeMath mul failed.'
                            return stor24[address(arg1)].field_0, 
                                   stor24[address(arg1)].field_256,
                                   stor24[address(arg1)].field_512,
                                   0,
                                   stor24[address(arg1)].field_768,
                                   stor24[address(arg1)].field_1024,
                                   stor24[address(arg1)].field_1280
                    else:
                        require var72003
                        if var74001 / var74002 != stor8:
                            revert with 0, 'SafeMath mul failed.'
                        s = var76001
                        t = var76008
                        u = var76009
                        while stor13 > 0:
                            require stor13
                            if t + 1 >= block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                    return stor24[address(arg1)].field_0, 
                                           stor24[address(arg1)].field_256,
                                           stor24[address(arg1)].field_512,
                                           0,
                                           stor24[address(arg1)].field_768,
                                           stor24[address(arg1)].field_1024,
                                           stor24[address(arg1)].field_1280
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != s / 10^18:
                                    revert with 0, 'SafeMath mul failed.'
                                return stor24[address(arg1)].field_0, 
                                       stor24[address(arg1)].field_256,
                                       stor24[address(arg1)].field_512,
                                       (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18,
                                       stor24[address(arg1)].field_768,
                                       stor24[address(arg1)].field_1024,
                                       stor24[address(arg1)].field_1280
                            if not s / 10^18:
                                s = 0
                                t = t + 1
                                u = s / 10^18
                                continue 
                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                revert with 0, 'SafeMath mul failed.'
                            s = stor8 * s / 10^18
                            t = t + 1
                            u = s / 10^18
                            continue 
    revert with 0, 'SafeMath div failed.'
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'The contract is not paused.'
    if stor24[address(arg1)].field_512 > block.timestamp:
        if not stor24[address(arg1)].field_0:
            if stor24[address(arg1)].field_1024 > 0:
                revert with 0, 'SafeMath sub failed.'
            if stor24[address(arg1)].field_512 <= block.timestamp:
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if -stor24[address(arg1)].field_1024 <= 0:
                    if 0 < stor16:
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 < 0:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768
                    else:
                        if stor16 > 0:
                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                revert with 0, 'SafeMath add failed.'
                            stor24[address(arg1)].field_1024 += stor16
                            stor24[address(arg1)].field_1280 = block.timestamp
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                else:
                    if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if stor13 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor13
                        if var55002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            if not var59002:
                                s = var59002
                                s = var59006
                                t = var59007
                                while stor13 > 0:
                                    require stor13
                                    if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        s = 0
                                        s = s + 1
                                        t = 0
                                        continue 
                                    if -stor24[address(arg1)].field_1024:
                                        if 0 / -stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                    if 0 < stor16:
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 < 0:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768
                                    else:
                                        if stor16 > 0:
                                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath add failed.'
                                            stor24[address(arg1)].field_1024 += stor16
                                            stor24[address(arg1)].field_1280 = block.timestamp
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            else:
                                require var62003
                                if var64001 / var64002 != stor8:
                                    revert with 0, 'SafeMath mul failed.'
                                s = var66001
                                t = var66008
                                u = var66009
                                while stor13 > 0:
                                    require stor13
                                    if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        if not s / 10^18:
                                            s = 0
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if stor8 * s / 10^18 / s / 10^18 != stor8:
                                            revert with 0, 'SafeMath mul failed.'
                                        s = stor8 * s / 10^18
                                        t = t + 1
                                        u = s / 10^18
                                        continue 
                                    if not -stor24[address(arg1)].field_1024:
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    else:
                                        if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != s / 10^18:
                                            revert with 0, 'SafeMath mul failed.'
                                        if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                                if (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) < -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            revert with 0, 'SafeMath div failed.'
                        if not -stor24[address(arg1)].field_1024:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if -1 * var55003 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != var55003:
                                revert with 0, 'SafeMath mul failed.'
                            if -1 * var55003 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if -1 * var55003 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                    if (-1 * var55003 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += -1 * var55003 * stor24[address(arg1)].field_1024 / 10^18
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + (-1 * var55003 * stor24[address(arg1)].field_1024 / 10^18) < -1 * var55003 * stor24[address(arg1)].field_1024 / 10^18:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + (-1 * var55003 * stor24[address(arg1)].field_1024 / 10^18)
            else:
                if not stor24[address(arg1)].field_256:
                    if 0 > -stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if -stor24[address(arg1)].field_1024 <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var67002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var71002:
                                    s = var71002
                                    s = var71006
                                    t = var71007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if -stor24[address(arg1)].field_1024:
                                            if 0 / -stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var74003
                                    if var76001 / var76002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var78001
                                    t = var78008
                                    u = var78009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not -stor24[address(arg1)].field_1024:
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                                    if (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) < -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not -stor24[address(arg1)].field_1024:
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if -1 * var67003 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != var67003:
                                    revert with 0, 'SafeMath mul failed.'
                                if -1 * var67003 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if -1 * var67003 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                        if (-1 * var67003 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += -1 * var67003 * stor24[address(arg1)].field_1024 / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + (-1 * var67003 * stor24[address(arg1)].field_1024 / 10^18) < -1 * var67003 * stor24[address(arg1)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + (-1 * var67003 * stor24[address(arg1)].field_1024 / 10^18)
                else:
                    if stor7 * stor24[address(arg1)].field_256 / stor24[address(arg1)].field_256 != stor7:
                        revert with 0, 'SafeMath mul failed.'
                    if stor7 * stor24[address(arg1)].field_256 / 10^18 > -stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var68002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var72002:
                                    s = var72002
                                    s = var72006
                                    t = var72007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var75003
                                    if var77001 / var77002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var79001
                                    t = var79008
                                    u = var79009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 > 0:
                                                    if ((-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) < (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != var68003:
                                    revert with 0, 'SafeMath mul failed.'
                                if (-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if (-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18 > 0:
                                        if ((-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += (-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18) < (-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * var68003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var68003) / 10^18)
        else:
            if stor7 * stor24[address(arg1)].field_0 / stor24[address(arg1)].field_0 != stor7:
                revert with 0, 'SafeMath mul failed.'
            if stor24[address(arg1)].field_1024 > stor7 * stor24[address(arg1)].field_0 / 10^18:
                revert with 0, 'SafeMath sub failed.'
            if stor24[address(arg1)].field_512 <= block.timestamp:
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 <= 0:
                    if 0 < stor16:
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 < 0:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768
                    else:
                        if stor16 > 0:
                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                revert with 0, 'SafeMath add failed.'
                            stor24[address(arg1)].field_1024 += stor16
                            stor24[address(arg1)].field_1280 = block.timestamp
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                else:
                    if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if stor13 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor13
                        if var56002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            if not var60002:
                                s = var60002
                                s = var60006
                                t = var60007
                                while stor13 > 0:
                                    require stor13
                                    if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        s = 0
                                        s = s + 1
                                        t = 0
                                        continue 
                                    if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                        if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                    if 0 < stor16:
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 < 0:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768
                                    else:
                                        if stor16 > 0:
                                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath add failed.'
                                            stor24[address(arg1)].field_1024 += stor16
                                            stor24[address(arg1)].field_1280 = block.timestamp
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            else:
                                require var63003
                                if var65001 / var65002 != stor8:
                                    revert with 0, 'SafeMath mul failed.'
                                s = var67001
                                t = var67008
                                u = var67009
                                while stor13 > 0:
                                    require stor13
                                    if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        if not s / 10^18:
                                            s = 0
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if stor8 * s / 10^18 / s / 10^18 != stor8:
                                            revert with 0, 'SafeMath mul failed.'
                                        s = stor8 * s / 10^18
                                        t = t + 1
                                        u = s / 10^18
                                        continue 
                                    if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    else:
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != s / 10^18:
                                            revert with 0, 'SafeMath mul failed.'
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 >= stor16:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 > 0:
                                                if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            revert with 0, 'SafeMath div failed.'
                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != var56003:
                                revert with 0, 'SafeMath mul failed.'
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18 >= stor16:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18 > 0:
                                    if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var56003) - (stor24[address(arg1)].field_1024 * var56003) / 10^18)
            else:
                if not stor24[address(arg1)].field_256:
                    if 0 > (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var68002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var72002:
                                    s = var72002
                                    s = var72006
                                    t = var72007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                            if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var75003
                                    if var77001 / var77002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var79001
                                    t = var79008
                                    u = var79009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 > 0:
                                                    if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != var68003:
                                    revert with 0, 'SafeMath mul failed.'
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18 > 0:
                                        if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var68003) - (stor24[address(arg1)].field_1024 * var68003) / 10^18)
                else:
                    if stor7 * stor24[address(arg1)].field_256 / stor24[address(arg1)].field_256 != stor7:
                        revert with 0, 'SafeMath mul failed.'
                    if stor7 * stor24[address(arg1)].field_256 / 10^18 > (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var69002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var73002:
                                    s = var73002
                                    s = var73006
                                    t = var73007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var76003
                                    if var78001 / var78002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var80001
                                    t = var80008
                                    u = var80009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 > 0:
                                                    if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != var69003:
                                    revert with 0, 'SafeMath mul failed.'
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18 > 0:
                                        if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var69003) - (stor24[address(arg1)].field_1024 * var69003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var69003) / 10^18)
    else:
        stor24[address(arg1)].field_256 = 0
        stor24[address(arg1)].field_512 = block.timestamp
        if not stor24[address(arg1)].field_0:
            if stor24[address(arg1)].field_1024 > 0:
                revert with 0, 'SafeMath sub failed.'
            if stor24[address(arg1)].field_512 <= block.timestamp:
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if -stor24[address(arg1)].field_1024 <= 0:
                    if 0 < stor16:
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 < 0:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768
                    else:
                        if stor16 > 0:
                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                revert with 0, 'SafeMath add failed.'
                            stor24[address(arg1)].field_1024 += stor16
                            stor24[address(arg1)].field_1280 = block.timestamp
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                else:
                    if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if stor13 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor13
                        if var58002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            if not var62002:
                                s = var62002
                                s = var62006
                                t = var62007
                                while stor13 > 0:
                                    require stor13
                                    if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        s = 0
                                        s = s + 1
                                        t = 0
                                        continue 
                                    if -stor24[address(arg1)].field_1024:
                                        if 0 / -stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                    if 0 < stor16:
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 < 0:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768
                                    else:
                                        if stor16 > 0:
                                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath add failed.'
                                            stor24[address(arg1)].field_1024 += stor16
                                            stor24[address(arg1)].field_1280 = block.timestamp
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            else:
                                require var65003
                                if var67001 / var67002 != stor8:
                                    revert with 0, 'SafeMath mul failed.'
                                s = var69001
                                t = var69008
                                u = var69009
                                while stor13 > 0:
                                    require stor13
                                    if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        if not s / 10^18:
                                            s = 0
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if stor8 * s / 10^18 / s / 10^18 != stor8:
                                            revert with 0, 'SafeMath mul failed.'
                                        s = stor8 * s / 10^18
                                        t = t + 1
                                        u = s / 10^18
                                        continue 
                                    if not -stor24[address(arg1)].field_1024:
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    else:
                                        if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != s / 10^18:
                                            revert with 0, 'SafeMath mul failed.'
                                        if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                                if (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) < -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            revert with 0, 'SafeMath div failed.'
                        if not -stor24[address(arg1)].field_1024:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if -1 * var58003 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != var58003:
                                revert with 0, 'SafeMath mul failed.'
                            if -1 * var58003 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if -1 * var58003 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                    if (-1 * var58003 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += -1 * var58003 * stor24[address(arg1)].field_1024 / 10^18
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + (-1 * var58003 * stor24[address(arg1)].field_1024 / 10^18) < -1 * var58003 * stor24[address(arg1)].field_1024 / 10^18:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + (-1 * var58003 * stor24[address(arg1)].field_1024 / 10^18)
            else:
                if not stor24[address(arg1)].field_256:
                    if 0 > -stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if -stor24[address(arg1)].field_1024 <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var70002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var74002:
                                    s = var74002
                                    s = var74006
                                    t = var74007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if -stor24[address(arg1)].field_1024:
                                            if 0 / -stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var77003
                                    if var79001 / var79002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var81001
                                    t = var81008
                                    u = var81009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not -stor24[address(arg1)].field_1024:
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                                    if (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18) < -1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + (-1 * s / 10^18 * stor24[address(arg1)].field_1024 / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not -stor24[address(arg1)].field_1024:
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if -1 * var70003 * stor24[address(arg1)].field_1024 / -stor24[address(arg1)].field_1024 != var70003:
                                    revert with 0, 'SafeMath mul failed.'
                                if -1 * var70003 * stor24[address(arg1)].field_1024 / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if -1 * var70003 * stor24[address(arg1)].field_1024 / 10^18 > 0:
                                        if (-1 * var70003 * stor24[address(arg1)].field_1024 / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += -1 * var70003 * stor24[address(arg1)].field_1024 / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + (-1 * var70003 * stor24[address(arg1)].field_1024 / 10^18) < -1 * var70003 * stor24[address(arg1)].field_1024 / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + (-1 * var70003 * stor24[address(arg1)].field_1024 / 10^18)
                else:
                    if stor7 * stor24[address(arg1)].field_256 / stor24[address(arg1)].field_256 != stor7:
                        revert with 0, 'SafeMath mul failed.'
                    if stor7 * stor24[address(arg1)].field_256 / 10^18 > -stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var71002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var75002:
                                    s = var75002
                                    s = var75006
                                    t = var75007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var78003
                                    if var80001 / var80002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var82001
                                    t = var82008
                                    u = var82009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 > 0:
                                                    if ((-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) < (-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / -stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != var71003:
                                    revert with 0, 'SafeMath mul failed.'
                                if (-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if (-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18 > 0:
                                        if ((-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += (-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18) < (-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + ((-1 * stor24[address(arg1)].field_1024 * var71003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var71003) / 10^18)
        else:
            if stor7 * stor24[address(arg1)].field_0 / stor24[address(arg1)].field_0 != stor7:
                revert with 0, 'SafeMath mul failed.'
            if stor24[address(arg1)].field_1024 > stor7 * stor24[address(arg1)].field_0 / 10^18:
                revert with 0, 'SafeMath sub failed.'
            if stor24[address(arg1)].field_512 <= block.timestamp:
                if stor24[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath sub failed.'
                if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 <= 0:
                    if 0 < stor16:
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 < 0:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768
                    else:
                        if stor16 > 0:
                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                revert with 0, 'SafeMath add failed.'
                            stor24[address(arg1)].field_1024 += stor16
                            stor24[address(arg1)].field_1280 = block.timestamp
                        if stor24[address(arg1)].field_768 > 0:
                            stor24[address(arg1)].field_768 = 0
                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                            revert with 0, 'SafeMath add failed.'
                        require ext_code.size(sub_722d8ff0Address)
                        call sub_722d8ff0Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                else:
                    if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if stor13 <= 0:
                            revert with 0, 'SafeMath div failed.'
                        require stor13
                        if var59002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                            if not var63002:
                                s = var63002
                                s = var63006
                                t = var63007
                                while stor13 > 0:
                                    require stor13
                                    if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        s = 0
                                        s = s + 1
                                        t = 0
                                        continue 
                                    if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                        if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath mul failed.'
                                    if 0 < stor16:
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 < 0:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768
                                    else:
                                        if stor16 > 0:
                                            if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath add failed.'
                                            stor24[address(arg1)].field_1024 += stor16
                                            stor24[address(arg1)].field_1280 = block.timestamp
                                        if stor24[address(arg1)].field_768 > 0:
                                            stor24[address(arg1)].field_768 = 0
                                        if stor24[address(arg1)].field_768 + stor16 < stor16:
                                            revert with 0, 'SafeMath add failed.'
                                        require ext_code.size(sub_722d8ff0Address)
                                        call sub_722d8ff0Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            else:
                                require var66003
                                if var68001 / var68002 != stor8:
                                    revert with 0, 'SafeMath mul failed.'
                                s = var70001
                                t = var70008
                                u = var70009
                                while stor13 > 0:
                                    require stor13
                                    if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                        if not s / 10^18:
                                            s = 0
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if stor8 * s / 10^18 / s / 10^18 != stor8:
                                            revert with 0, 'SafeMath mul failed.'
                                        s = stor8 * s / 10^18
                                        t = t + 1
                                        u = s / 10^18
                                        continue 
                                    if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                    else:
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != s / 10^18:
                                            revert with 0, 'SafeMath mul failed.'
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 >= stor16:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 > 0:
                                                if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Withdrawal failed.'
                                    else:
                                        return 0
                            revert with 0, 'SafeMath div failed.'
                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != var59003:
                                revert with 0, 'SafeMath mul failed.'
                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18 >= stor16:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18 > 0:
                                    if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var59003) - (stor24[address(arg1)].field_1024 * var59003) / 10^18)
            else:
                if not stor24[address(arg1)].field_256:
                    if 0 > (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var71002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var75002:
                                    s = var75002
                                    s = var75006
                                    t = var75007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                            if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var78003
                                    if var80001 / var80002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var82001
                                    t = var82008
                                    u = var82009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18 > 0:
                                                    if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 != var71003:
                                    revert with 0, 'SafeMath mul failed.'
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18 > 0:
                                        if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var71003) - (stor24[address(arg1)].field_1024 * var71003) / 10^18)
                else:
                    if stor7 * stor24[address(arg1)].field_256 / stor24[address(arg1)].field_256 != stor7:
                        revert with 0, 'SafeMath mul failed.'
                    if stor7 * stor24[address(arg1)].field_256 / 10^18 > (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024:
                        revert with 0, 'SafeMath sub failed.'
                    if stor24[address(arg1)].field_1280 > block.timestamp:
                        revert with 0, 'SafeMath sub failed.'
                    if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) <= 0:
                        if 0 < stor16:
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 < 0:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768
                        else:
                            if stor16 > 0:
                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                    revert with 0, 'SafeMath add failed.'
                                stor24[address(arg1)].field_1024 += stor16
                                stor24[address(arg1)].field_1280 = block.timestamp
                            if stor24[address(arg1)].field_768 > 0:
                                stor24[address(arg1)].field_768 = 0
                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                revert with 0, 'SafeMath add failed.'
                            require ext_code.size(sub_722d8ff0Address)
                            call sub_722d8ff0Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                    else:
                        if block.timestamp - stor24[address(arg1)].field_1280 < stor13:
                            if 0 < stor16:
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 < 0:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768
                            else:
                                if stor16 > 0:
                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                        revert with 0, 'SafeMath add failed.'
                                    stor24[address(arg1)].field_1024 += stor16
                                    stor24[address(arg1)].field_1280 = block.timestamp
                                if stor24[address(arg1)].field_768 > 0:
                                    stor24[address(arg1)].field_768 = 0
                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                    revert with 0, 'SafeMath add failed.'
                                require ext_code.size(sub_722d8ff0Address)
                                call sub_722d8ff0Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                        else:
                            if stor13 <= 0:
                                revert with 0, 'SafeMath div failed.'
                            require stor13
                            if var72002 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                if not var76002:
                                    s = var76002
                                    s = var76006
                                    t = var76007
                                    while stor13 > 0:
                                        require stor13
                                        if s + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            s = 0
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                                revert with 0, 'SafeMath mul failed.'
                                        if 0 < stor16:
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 < 0:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768
                                        else:
                                            if stor16 > 0:
                                                if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                    revert with 0, 'SafeMath add failed.'
                                                stor24[address(arg1)].field_1024 += stor16
                                                stor24[address(arg1)].field_1280 = block.timestamp
                                            if stor24[address(arg1)].field_768 > 0:
                                                stor24[address(arg1)].field_768 = 0
                                            if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                revert with 0, 'SafeMath add failed.'
                                            require ext_code.size(sub_722d8ff0Address)
                                            call sub_722d8ff0Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                else:
                                    require var79003
                                    if var81001 / var81002 != stor8:
                                        revert with 0, 'SafeMath mul failed.'
                                    s = var83001
                                    t = var83008
                                    u = var83009
                                    while stor13 > 0:
                                        require stor13
                                        if t + 1 < block.timestamp - stor24[address(arg1)].field_1280 / stor13:
                                            if not s / 10^18:
                                                s = 0
                                                t = t + 1
                                                u = s / 10^18
                                                continue 
                                            if stor8 * s / 10^18 / s / 10^18 != stor8:
                                                revert with 0, 'SafeMath mul failed.'
                                            s = stor8 * s / 10^18
                                            t = t + 1
                                            u = s / 10^18
                                            continue 
                                        if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                            if 0 < stor16:
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 < 0:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768
                                            else:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                        else:
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != s / 10^18:
                                                revert with 0, 'SafeMath mul failed.'
                                            if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 >= stor16:
                                                if stor16 > 0:
                                                    if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += stor16
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + stor16 < stor16:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + stor16
                                            else:
                                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18 > 0:
                                                    if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                                        revert with 0, 'SafeMath add failed.'
                                                    stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18
                                                    stor24[address(arg1)].field_1280 = block.timestamp
                                                if stor24[address(arg1)].field_768 > 0:
                                                    stor24[address(arg1)].field_768 = 0
                                                if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18:
                                                    revert with 0, 'SafeMath add failed.'
                                                require ext_code.size(sub_722d8ff0Address)
                                                call sub_722d8ff0Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * s / 10^18) - (stor24[address(arg1)].field_1024 * s / 10^18) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * s / 10^18) / 10^18)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Withdrawal failed.'
                                        else:
                                            return 0
                                revert with 0, 'SafeMath div failed.'
                            if not (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18):
                                if 0 < stor16:
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 < 0:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768
                                else:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                            else:
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / (stor7 * stor24[address(arg1)].field_0 / 10^18) - stor24[address(arg1)].field_1024 - (stor7 * stor24[address(arg1)].field_256 / 10^18) != var72003:
                                    revert with 0, 'SafeMath mul failed.'
                                if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18 >= stor16:
                                    if stor16 > 0:
                                        if stor16 + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += stor16
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + stor16 < stor16:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + stor16
                                else:
                                    if (stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18 > 0:
                                        if ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18) + stor24[address(arg1)].field_1024 < stor24[address(arg1)].field_1024:
                                            revert with 0, 'SafeMath add failed.'
                                        stor24[address(arg1)].field_1024 += (stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18
                                        stor24[address(arg1)].field_1280 = block.timestamp
                                    if stor24[address(arg1)].field_768 > 0:
                                        stor24[address(arg1)].field_768 = 0
                                    if stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18) < (stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18:
                                        revert with 0, 'SafeMath add failed.'
                                    require ext_code.size(sub_722d8ff0Address)
                                    call sub_722d8ff0Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), stor24[address(arg1)].field_768 + ((stor7 * stor24[address(arg1)].field_0 / 10^18 * var72003) - (stor24[address(arg1)].field_1024 * var72003) - (stor7 * stor24[address(arg1)].field_256 / 10^18 * var72003) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Withdrawal failed.'
    else:
        return 0
}



}
