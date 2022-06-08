contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
mapping of uint8 stor3;
mapping of uint256 sub_856990b5;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 sub_7e84147f;

function sub_7e84147f(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    return sub_7e84147f[address(arg1)][arg2]
}

function sub_856990b5(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    return sub_856990b5[address(arg1)][address(arg2)][address(arg3)]
}

function sub_bddf777f(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_77acc6f2(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    else:
        return 0
}

function sub_0979fabe(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    sub_7e84147f[address(arg1)][arg2] = arg3
}

function sub_f0f26851(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    stor1 = arg1
    emit 0xf5dbeff7: address(msg.sender), address(arg1), Array(len=35, data='a new Rules-Owner has been assig', 'ned')
}

function sub_ea18ef00(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    stor6[address(arg1)][Mask(32, 224, arg2)] = uint8(arg3)
    if uint8(stor2.field_160):
        emit 0x5b10ebdf: address(arg1), 0, Mask(32, 224, arg2), arg3
}

function sub_e9808943(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    sub_856990b5[address(arg1)][address(arg2)][address(arg3)] = 0
    if uint8(stor2.field_160):
        emit 0xa1684611: address(arg1), address(arg2), address(arg3), 0
}

function sub_7e89e384(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    emit 0xf5dbeff7: address(msg.sender), msg.sender, Array(len=36, data='a new Verbose-Mode has been assi', 'gned')
}

function sub_9eb634c1(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    stor5[address(arg1)][Mask(32, 224, arg3)][address(arg2)] = 1
    if uint8(stor2.field_160):
        emit 0x5b10ebdf: address(arg1), address(arg2), Mask(32, 224, arg3), 1
}

function sub_d043e16b(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    stor5[address(arg1)][Mask(32, 224, arg3)][address(arg2)] = 0
    if uint8(stor2.field_160):
        emit 0x5b10ebdf: address(arg1), address(arg2), Mask(32, 224, arg3), 0
}

function sub_72c34d2f(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    sub_856990b5[address(arg1)][address(arg2)][address(arg3)] = arg4
    if uint8(stor2.field_160):
        emit 0xa1684611: address(arg1), address(arg2), address(arg3), arg4
}

function setProxyContract(address arg1) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    address(stor2.field_0) = arg1
    emit 0xf5dbeff7: address(msg.sender), address(arg1), Array(len=46, data='a new proxy contract address has', ' been assigned')
}

function sub_7703102c(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Rules-Owner'
    stor3[address(arg1)] = uint8(arg2)
    if uint8(stor2.field_160):
        if arg2:
            emit 0xa1684611: address(arg1), 0, 0, 1
        else:
            emit 0xa1684611: address(arg1), 0, 0, 0
}

function sub_8c55be34(?) {
    if address(stor2.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: SafeBlocks-Proxy'
    if stor3[address(arg1)]:
        if uint8(stor2.field_160):
            emit 0xe0dafb74: address(arg1), 1, address(arg2), Mask(32, 224, arg3), Array(len=1, data='1')
    else:
        require sub_7e84147f[address(arg1)][1] <= 2
        if 0 == sub_7e84147f[address(arg1)][1]:
            if uint8(stor2.field_160):
                emit 0xe0dafb74: address(arg1), 0, address(arg2), Mask(32, 224, arg3), 160, 1, '2'
                return 0
            else:
                return 0
        require sub_7e84147f[address(arg1)][1] <= 2
        if 1 == sub_7e84147f[address(arg1)][1]:
            if uint8(stor2.field_160):
                emit 0xe0dafb74: address(arg1), 1, address(arg2), Mask(32, 224, arg3), Array(len=1, data='3')
        else:
            if stor6[address(arg1)][Mask(32, 224, arg3)]:
                if uint8(stor2.field_160):
                    emit 0xe0dafb74: address(arg1), 0, address(arg2), Mask(32, 224, arg3), 160, 1, '4'
                    return 0
                else:
                    return 0
            if not stor5[address(arg1)][Mask(32, 224, arg3)][0]:
                if uint8(stor2.field_160):
                    emit 0xe0dafb74: address(arg1), bool(stor5[address(arg1)][Mask(32, 224, arg3)][address(arg2)]), address(arg2), Mask(32, 224, arg3), Array(len=1, data='4')
                return bool(stor5[address(arg1)][Mask(32, 224, arg3)][address(arg2)])
            if uint8(stor2.field_160):
                emit 0xe0dafb74: address(arg1), 1, address(arg2), Mask(32, 224, arg3), Array(len=1, data='4')
    return 1
}

function sub_71888ffc(?) {
    if address(stor2.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: SafeBlocks-Proxy'
    if stor3[address(arg1)]:
        if uint8(stor2.field_160):
            emit 0x757c8c29: address(arg1), 1, address(arg4), arg2, arg3, Array(len=1, data='1')
        return 1
    require sub_7e84147f[address(arg1)][0] <= 2
    if 0 == sub_7e84147f[address(arg1)][0]:
        if uint8(stor2.field_160):
            emit 0x757c8c29: address(arg1), 0, address(arg4), arg2, arg3, 192, 1, '2'
            return 0
        else:
            return 0
    require sub_7e84147f[address(arg1)][0] <= 2
    if 1 == sub_7e84147f[address(arg1)][0]:
        if uint8(stor2.field_160):
            emit 0x757c8c29: address(arg1), 1, address(arg4), arg2, arg3, Array(len=1, data='3')
        return 1
    if not sub_856990b5[address(arg1)][address(arg3)][address(arg4)]:
        if not sub_856990b5[address(arg1)][0][address(arg4)]:
            if uint8(stor2.field_160):
                emit 0x757c8c29: address(arg1), 0, address(arg4), arg2, arg3, 192, 1, '4'
                return 0
            else:
                return 0
    if sub_856990b5[address(arg1)][0][address(arg4)] <= 0:
        if uint8(stor2.field_160):
            emit 0x757c8c29: address(arg1), arg2 <= sub_856990b5[address(arg1)][address(arg3)][address(arg4)], address(arg4), arg2, arg3, Array(len=1, data='4')
        return arg2 <= sub_856990b5[address(arg1)][address(arg3)][address(arg4)]
    if sub_856990b5[address(arg1)][address(arg3)][address(arg4)]:
        if uint8(stor2.field_160):
            emit 0x757c8c29: address(arg1), arg2 <= sub_856990b5[address(arg1)][address(arg3)][address(arg4)], address(arg4), arg2, arg3, Array(len=1, data='4')
        return arg2 <= sub_856990b5[address(arg1)][address(arg3)][address(arg4)]
    if uint8(stor2.field_160):
        emit 0x757c8c29: address(arg1), arg2 <= sub_856990b5[address(arg1)][0][address(arg4)], address(arg4), arg2, arg3, Array(len=1, data='4')
    return arg2 <= sub_856990b5[address(arg1)][0][address(arg4)]
}



}
