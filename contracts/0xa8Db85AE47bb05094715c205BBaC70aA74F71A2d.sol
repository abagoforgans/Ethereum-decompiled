contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
bool stor8; offset 256
uint8 stor8; offset 160
uint8 stor8; offset 168
uint128 stor8; offset 176
address stor8;
uint256 stor9;
uint8 stor11; offset 160
uint128 stor11; offset 160
address stor11;
uint256 stor12;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    stor0 = block.timestamp
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor5 = 5
    stor6 = 3
    stor7 = 40
    address(stor8.field_0) = msg.sender
    uint8(stor8.field_160) = 2
    uint8(stor8.field_168) = 0
    Mask(80, 0, stor8.field_176) = Mask(80, 176, msg.sender) >> 176
    stor8.field_256 % 1 = 0
    stor9 = block.timestamp
    if msg.sender == address(stor1):
        if not uint8(stor11.field_160):
            call address(stor11.field_0).0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), 200000, 0, 0
            require ext_call.success
            Mask(96, 0, stor11.field_160) = Mask(96, 0, ext_call.return_data[0])
    stor12 = block.timestamp
    stor18 = 0
    stor17 = 24 * 3600
    stor16 = 10
    stor19 = 1000
    return code.data[489 len 5635]
}



// =====================  Runtime code  =====================


uint256 createdAt;
address owner;
uint256 stor1;
address sub_4fbc0825Address;
uint256 stor2;
address sub_706f7658Address;
uint256 stor3;
address sub_2541897fAddress;
uint256 stor4;
uint256 sub_87db1955;
uint256 feePercent;
uint256 sub_99e1fcac;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint32 stor8;
uint128 stor8; offset 168
uint128 stor8; offset 160
address feeAddress;
uint256 stor8;
uint256 stor9;
mapping of address sub_0015aa6c;
uint8 stor11; offset 160
uint128 stor11; offset 160
address dbAddress;
uint256 stor11;
uint256 sub_00d17eba;
uint8 sub_56e7affb;
mapping of struct stor14;
array of address stor15;
uint256 sub_b31b1626;
uint256 sub_2c6b569f;
uint256 transactionsCount;
uint256 sub_06eda960;
array of struct stor20;
array of address stor93369884277498597659590946175997448338802118867485977633968544981113634346220;
array of uint256 stor93369884277498597659590946175997448338802118867485977633968544981113634346222;

function sub_0015aa6c(?) payable {
    return address(sub_0015aa6c[arg1])
}

function sub_00d17eba(?) payable {
    return sub_00d17eba
}

function sub_06eda960(?) payable {
    return sub_06eda960
}

function sub_2541897f(?) payable {
    return address(sub_2541897fAddress)
}

function sub_2c6b569f(?) payable {
    return sub_2c6b569f
}

function getDbAddress() payable {
    return dbAddress
}

function getFeeAddress() payable {
    return feeAddress
}

function sub_4fbc0825(?) payable {
    return address(sub_4fbc0825Address)
}

function sub_56e7affb(?) payable {
    return sub_56e7affb
}

function getTransactionsCount() payable {
    return transactionsCount
}

function sub_706f7658(?) payable {
    return address(sub_706f7658Address)
}

function sub_87db1955(?) payable {
    return sub_87db1955
}

function getOwner() payable {
    return address(owner)
}

function sub_99e1fcac(?) payable {
    return sub_99e1fcac
}

function sub_b31b1626(?) payable {
    return sub_b31b1626
}

function getFeePercent() payable {
    return feePercent
}

function createdAt() payable {
    return createdAt
}

function _fallback() payable {
  stop
}

function sub_11ca5b74(?) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function sub_1468c030(?) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    return 1
}

function sub_71e73fec(?) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    return 1
}

function sub_fdb575c9(?) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    return 1
}

function sub_98b195c8(?) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor11.field_0) = arg1 or Mask(96, 160, uint256(stor11.field_0))
    return 1
}

function getAccountBalance(address arg1) payable {
    call dbAddress.0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function calculateFee(uint256 arg1) payable {
    if arg1 / 100 * feePercent < sub_87db1955:
        return sub_87db1955
    if arg1 / 100 * feePercent <= sub_99e1fcac:
        return (arg1 / 100 * feePercent)
    return sub_99e1fcac
}

function issueCoin(address arg1, uint256 arg2) payable {
    if address(owner) != msg.sender:
        return 0
    if uint8(stor11.field_160):
        return 0
    call dbAddress.0xec2ac54e with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    Mask(96, 0, stor11.field_160) = Mask(96, 0, ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_02d7870f(?) payable {
    if ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))) < ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8)))))):
        return ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8))))))))
    if block.timestamp >= -(stor9 % 24 * 3600) + stor9 + (24 * 3600):
        return -1
    else:
        return 0
}

function recoverAccount(address arg1, address arg2) payable {
    if address(sub_706f7658Address) != msg.sender:
        return 0
    if address(sub_0015aa6c[address(arg1)]) != 0:
        return 0
    uint256(sub_0015aa6c[address(arg1)]) = arg2 or Mask(96, 160, uint256(sub_0015aa6c[address(arg1)]))
    call dbAddress.0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call dbAddress.withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    if not ext_call.return_data[0]:
        return 0
    call dbAddress.0xec2ac54e with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    return 1
}

function sub_09010d00(?) payable {
    if ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))) < ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8)))))):
        if ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))) != -1:
            return ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8))))))))
        return ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))))
    if block.timestamp >= -(stor9 % 24 * 3600) + stor9 + (24 * 3600):
        return ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))))
    else:
        return 0
}

function sub_0ff0f643(?) payable {
    if address(owner) != msg.sender:
        return 0
    if ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))) >= ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8)))))):
        if block.timestamp < -(stor9 % 24 * 3600) + stor9 + (24 * 3600):
            return 0
    else:
        if ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))) >= -1:
            if 0 == ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))):
                return 0
        else:
            uint8(stor8.field_168) = 0
            if 0 == ('signextend', 0, ('signextend', 0, ('or', ('mask_shl', 80, 176, -160, ('type', 256, ('field', 0, ('stor', ('name', 'stor8', 8))))), ('type', 8, ('field', 160, ('stor', ('name', 'stor8', 8))))))):
                return 0
    uint8(stor8.field_168) = uint8(('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8))))) + 1)
    stor9 = block.timestamp
    sub_2c6b569f = arg2
    sub_b31b1626 = arg1
    sub_06eda960 = arg3
    return 1
}

function changeFeeAddress(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    if ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))) >= ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8)))))):
        if block.timestamp < -(stor9 % 24 * 3600) + stor9 + (24 * 3600):
            return 0
    else:
        if ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))) >= -1:
            if 0 == ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))):
                return 0
        else:
            uint8(stor8.field_168) = 0
            if 0 == ('signextend', 0, ('signextend', 0, ('or', ('mask_shl', 80, 176, -160, ('type', 256, ('field', 0, ('stor', ('name', 'stor8', 8))))), ('type', 8, ('field', 160, ('stor', ('name', 'stor8', 8))))))):
                return 0
    uint8(stor8.field_168) = uint8(('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8))))) + 1)
    stor9 = block.timestamp
    uint256(stor8.field_0) = arg1 or Mask(96, 160, uint256(stor8.field_0))
    return 1
}

function sub_79927531(?) payable {
    if address(owner) != msg.sender:
        return 0
    if ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))) >= ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8)))))):
        if block.timestamp < -(stor9 % 24 * 3600) + stor9 + (24 * 3600):
            return 0
    else:
        if ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))) >= -1:
            if 0 == ('signextend', 0, ('add', ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor8', 8))))), ('mul', -1, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8)))))))):
                return 0
        else:
            uint8(stor8.field_168) = 0
            if 0 == ('signextend', 0, ('signextend', 0, ('or', ('mask_shl', 80, 176, -160, ('type', 256, ('field', 0, ('stor', ('name', 'stor8', 8))))), ('type', 8, ('field', 160, ('stor', ('name', 'stor8', 8))))))):
                return 0
    uint8(stor8.field_168) = uint8(('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor8', 8))))) + 1)
    stor9 = block.timestamp
    if arg1 < 0:
        return 0
    if arg2 < 0:
        return 0
    if arg2 > 100:
        return 0
    if arg3 < 0:
        return 0
    if arg3 < arg1:
        return 0
    sub_87db1955 = arg1
    feePercent = arg2
    sub_99e1fcac = arg3
    return 1
}

function ownerTransfer(address arg1, uint256 arg2) payable {
    if address(owner) != msg.sender:
        return 0
    if address(sub_0015aa6c[address(arg1)]) != 0:
        return 0
    call dbAddress.0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        return 0
    call dbAddress.withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, uint32(msg.sender), arg2, 0, 0
    require ext_call.success
    if arg2 / 100 * feePercent < sub_87db1955:
        call dbAddress.0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2 - sub_87db1955, 0, 0
        require ext_call.success
        emit 0x9f837f1f: address(msg.sender), address(arg1), block.timestamp, arg2 - sub_87db1955, sub_87db1955
        call dbAddress.0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, uint32(stor8.field_0), sub_87db1955, 0, 0
    else:
        if arg2 / 100 * feePercent <= sub_99e1fcac:
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2 - (arg2 / 100 * feePercent), 0, 0
            require ext_call.success
            emit 0x9f837f1f: address(msg.sender), address(arg1), block.timestamp, arg2 - (arg2 / 100 * feePercent), arg2 / 100 * feePercent
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor8.field_0), arg2 / 100 * feePercent, 0, 0
        else:
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg2 - sub_99e1fcac, 0, 0
            require ext_call.success
            emit 0x9f837f1f: address(msg.sender), address(arg1), block.timestamp, arg2 - sub_99e1fcac, sub_99e1fcac
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor8.field_0), sub_99e1fcac, 0, 0
    return 1
}

function annualInterest() payable {
    mem[64] = 96
    if address(sub_4fbc0825Address) != msg.sender:
        return 0
    if sub_00d17eba + (sub_2c6b569f * sub_b31b1626) > block.timestamp:
        return 0
    if block.timestamp - createdAt / sub_2c6b569f <= 90:
        s = 0
        idx = 0
        while idx < stor15.length:
            mem[0] = address(stor15[idx])
            mem[32] = 10
            if not address(sub_0015aa6c[address(stor15[idx])]):
                mem[0] = address(stor15[idx])
                mem[32] = 14
                if stor14[address(stor15[idx])].field_256 > 0:
                    call dbAddress.0xec2ac54e with:
                         gas gas_remaining - 25050 wei
                        args address(stor15[idx]), 100 * stor14[address(stor15[idx])].field_256 / 130, 0, 0
                    require ext_call.success
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(stor15[idx])
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 100 * stor14[address(stor15[idx])].field_256 / 130
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(stor15[idx]), block.timestamp, 100 * stor14[address(stor15[idx])].field_256 / 130, 0
                mem[0] = address(stor15[idx])
                mem[32] = 14
                uint8(stor14[address(stor15[idx])].field_0) = 0
                stor14[address(stor15[idx])].field_256 = 0
            s = address(stor15[idx])
            idx = idx + 1
            continue 
    else:
        if block.timestamp - createdAt / sub_2c6b569f <= 180:
            s = 0
            idx = 0
            while idx < stor15.length:
                mem[0] = address(stor15[idx])
                mem[32] = 10
                if not address(sub_0015aa6c[address(stor15[idx])]):
                    mem[0] = address(stor15[idx])
                    mem[32] = 14
                    if stor14[address(stor15[idx])].field_256 > 0:
                        call dbAddress.0xec2ac54e with:
                             gas gas_remaining - 25050 wei
                            args address(stor15[idx]), 100 * stor14[address(stor15[idx])].field_256 / 100, 0, 0
                        require ext_call.success
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = address(stor15[idx])
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 100 * stor14[address(stor15[idx])].field_256 / 100
                        mem[mem[64] + 128] = 0
                        emit 0x9f837f1f: 0, address(stor15[idx]), block.timestamp, 100 * stor14[address(stor15[idx])].field_256 / 100, 0
                    mem[0] = address(stor15[idx])
                    mem[32] = 14
                    uint8(stor14[address(stor15[idx])].field_0) = 0
                    stor14[address(stor15[idx])].field_256 = 0
                s = address(stor15[idx])
                idx = idx + 1
                continue 
        else:
            if block.timestamp - createdAt / sub_2c6b569f <= 270:
                s = 0
                idx = 0
                while idx < stor15.length:
                    mem[0] = address(stor15[idx])
                    mem[32] = 10
                    if not address(sub_0015aa6c[address(stor15[idx])]):
                        mem[0] = address(stor15[idx])
                        mem[32] = 14
                        if stor14[address(stor15[idx])].field_256 > 0:
                            call dbAddress.0xec2ac54e with:
                                 gas gas_remaining - 25050 wei
                                args address(stor15[idx]), 100 * stor14[address(stor15[idx])].field_256 / 80, 0, 0
                            require ext_call.success
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = address(stor15[idx])
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 100 * stor14[address(stor15[idx])].field_256 / 80
                            mem[mem[64] + 128] = 0
                            emit 0x9f837f1f: 0, address(stor15[idx]), block.timestamp, 100 * stor14[address(stor15[idx])].field_256 / 80, 0
                        mem[0] = address(stor15[idx])
                        mem[32] = 14
                        uint8(stor14[address(stor15[idx])].field_0) = 0
                        stor14[address(stor15[idx])].field_256 = 0
                    s = address(stor15[idx])
                    idx = idx + 1
                    continue 
            else:
                if block.timestamp - createdAt / sub_2c6b569f <= 360:
                    s = 0
                    idx = 0
                    while idx < stor15.length:
                        mem[0] = address(stor15[idx])
                        mem[32] = 10
                        if not address(sub_0015aa6c[address(stor15[idx])]):
                            mem[0] = address(stor15[idx])
                            mem[32] = 14
                            if stor14[address(stor15[idx])].field_256 > 0:
                                call dbAddress.0xec2ac54e with:
                                     gas gas_remaining - 25050 wei
                                    args address(stor15[idx]), 100 * stor14[address(stor15[idx])].field_256 / 50, 0, 0
                                require ext_call.success
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = address(stor15[idx])
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = 100 * stor14[address(stor15[idx])].field_256 / 50
                                mem[mem[64] + 128] = 0
                                emit 0x9f837f1f: 0, address(stor15[idx]), block.timestamp, 100 * stor14[address(stor15[idx])].field_256 / 50, 0
                            mem[0] = address(stor15[idx])
                            mem[32] = 14
                            uint8(stor14[address(stor15[idx])].field_0) = 0
                            stor14[address(stor15[idx])].field_256 = 0
                        s = address(stor15[idx])
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp - createdAt / sub_2c6b569f > 2190:
                        sub_56e7affb = 1
                        return 0
                    s = 0
                    idx = 0
                    while idx < stor15.length:
                        mem[0] = address(stor15[idx])
                        mem[32] = 10
                        if not address(sub_0015aa6c[address(stor15[idx])]):
                            mem[0] = address(stor15[idx])
                            mem[32] = 14
                            if stor14[address(stor15[idx])].field_256 > 0:
                                call dbAddress.0xec2ac54e with:
                                     gas gas_remaining - 25050 wei
                                    args address(stor15[idx]), 100 * stor14[address(stor15[idx])].field_256 / 20, 0, 0
                                require ext_call.success
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = address(stor15[idx])
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = 100 * stor14[address(stor15[idx])].field_256 / 20
                                mem[mem[64] + 128] = 0
                                emit 0x9f837f1f: 0, address(stor15[idx]), block.timestamp, 100 * stor14[address(stor15[idx])].field_256 / 20, 0
                            mem[0] = address(stor15[idx])
                            mem[32] = 14
                            uint8(stor14[address(stor15[idx])].field_0) = 0
                            stor14[address(stor15[idx])].field_256 = 0
                        s = address(stor15[idx])
                        idx = idx + 1
                        continue 
    stor15.length = 0
    idx = 0x8d1108e10bcb7c27dddfc02ed9d693a074039d026cf4ea4240b40f7d581ac802
    while stor15.length - 0x72eef71ef43483d822203fd126296c5f8bfc62fd930b15bdbf4bf082a7e537fe > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_00d17eba = block.timestamp
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(sub_2541897fAddress) != msg.sender:
        return 0
    if address(sub_0015aa6c[address(arg1)]) != 0:
        return 0
    if address(sub_0015aa6c[arg2]) != 0:
        return 0
    call dbAddress.0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        return 0
    call dbAddress.withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    if arg3 / 100 * feePercent < sub_87db1955:
        call dbAddress.0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg3 - sub_87db1955, 0, 0
        require ext_call.success
        emit 0x9f837f1f: address(arg1), address(arg2), block.timestamp, arg3 - sub_87db1955, sub_87db1955
        call dbAddress.0xec2ac54e with:
             gas gas_remaining - 25050 wei
            args 0, uint32(stor8.field_0), sub_87db1955, 0, 0
        mem[96] = 0
        mem[128 len 288] = 0
        mem[64] = 544
        mem[416] = 0
        mem[448] = 0
        mem[480] = 0
        mem[512] = 0
        transactionsCount++
        if transactionsCount + 1 < sub_06eda960:
            if transactionsCount > 99990:
                if arg3 > 10:
                    stor20.length++
                    if not stor20.length <= stor20.length + 1:
                        idx = 4 * stor20.length + 1
                        while 4 * stor20.length > idx:
                            address(stor20[idx].field_0) = 0
                            address(stor20[idx].field_256) = 0
                            stor20[idx].field_512 = 0
                            stor20[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor20[stor20.length].field_0) = arg1
                    address(stor20[stor20.length].field_256) = arg2
                    stor20[stor20.length].field_512 = arg3
                    stor20[stor20.length].field_768 = block.timestamp
            if not sub_56e7affb:
                call dbAddress.0xf8b2cb4f with:
                     gas gas_remaining - 25050 wei
                    args arg1
                require ext_call.success
                if uint8(stor14[address(arg1)].field_0):
                    if ext_call.return_data[0] < stor14[address(arg1)].field_256:
                        stor14[address(arg1)].field_256 = ext_call.return_data[0]
                else:
                    stor15.length++
                    if not stor15.length <= stor15.length + 1:
                        idx = stor15.length + 1
                        while stor15.length > idx:
                            uint256(stor15[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor15[stor15.length]) = arg1 or Mask(96, 160, uint256(stor15[stor15.length]))
                    uint8(stor14[address(arg1)].field_0) = 1
                    stor14[address(arg1)].field_256 = ext_call.return_data[0]
        else:
            transactionsCount = 0
            idx = 0
            while uint8(idx) < stor20.length:
                require idx < stor20.length
                mem[0] = storCE6D[idx]
                mem[32] = 10
                if not address(sub_0015aa6c[storCE6D[idx]]):
                    require idx < stor20.length
                    require idx < stor20.length
                    if storCE6D[idx] <= 0:
                        mem[0] = 20
                        if not storCE6D[idx]:
                            require idx < stor20.length
                            require idx < 10
                            mem[(32 * idx) + 96] = storCE6D[idx]
                    else:
                        s = 0
                        while uint8(s) <= uint8(idx):
                            require s < 10
                            mem[(32 * s) + 96] = 0
                            s = s + 1
                            continue 
                        require idx < stor20.length
                        mem[0] = 20
                        require idx < 10
                        mem[(32 * idx) + 96] = storCE6D[idx]
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 10:
                require idx < 10
                mem[mem[64] + 4] = mem[(32 * idx) + 108 len 20]
                mem[mem[64] + 36] = 20
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                call dbAddress.0xec2ac54e with:
                     gas gas_remaining - 25050 wei
                    args mem[mem[64] + 4], 20, 0, 0
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                require idx < 10
                _558 = mem[(32 * idx) + 96]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = address(_558)
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 0
                emit 0x9f837f1f: 0, address(_558), block.timestamp, 20, 0
                idx = idx + 1
                continue 
            if transactionsCount > 99990:
                if arg3 > 10:
                    stor20.length++
                    if not stor20.length <= stor20.length + 1:
                        idx = 4 * stor20.length + 1
                        while 4 * stor20.length > idx:
                            address(stor20[idx].field_0) = 0
                            address(stor20[idx].field_256) = 0
                            stor20[idx].field_512 = 0
                            stor20[idx].field_768 = 0
                            idx = idx + 1
                            continue 
                    address(stor20[stor20.length].field_0) = arg1
                    address(stor20[stor20.length].field_256) = arg2
                    stor20[stor20.length].field_512 = arg3
                    stor20[stor20.length].field_768 = block.timestamp
            if not sub_56e7affb:
                call dbAddress.0xf8b2cb4f with:
                     gas gas_remaining - 25050 wei
                    args address(arg1)
                require ext_call.success
                if uint8(stor14[address(arg1)].field_0):
                    if ext_call.return_data[0] < stor14[address(arg1)].field_256:
                        stor14[address(arg1)].field_256 = ext_call.return_data[0]
                else:
                    stor15.length++
                    if not stor15.length <= stor15.length + 1:
                        idx = stor15.length + 1
                        while stor15.length > idx:
                            uint256(stor15[idx]) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor15[stor15.length]) = arg1 or Mask(96, 160, uint256(stor15[stor15.length]))
                    uint8(stor14[address(arg1)].field_0) = 1
                    stor14[address(arg1)].field_256 = ext_call.return_data[0]
    else:
        if arg3 / 100 * feePercent <= sub_99e1fcac:
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - (arg3 / 100 * feePercent), 0, 0
            require ext_call.success
            emit 0x9f837f1f: address(arg1), address(arg2), block.timestamp, arg3 - (arg3 / 100 * feePercent), arg3 / 100 * feePercent
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor8.field_0), arg3 / 100 * feePercent, 0, 0
            mem[96] = 0
            mem[128 len 288] = 0
            mem[64] = 544
            mem[416] = 0
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            transactionsCount++
            if transactionsCount + 1 < sub_06eda960:
                if transactionsCount > 99990:
                    if arg3 > 10:
                        stor20.length++
                        if not stor20.length <= stor20.length + 1:
                            idx = 4 * stor20.length + 1
                            while 4 * stor20.length > idx:
                                address(stor20[idx].field_0) = 0
                                address(stor20[idx].field_256) = 0
                                stor20[idx].field_512 = 0
                                stor20[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor20[stor20.length].field_0) = arg1
                        address(stor20[stor20.length].field_256) = arg2
                        stor20[stor20.length].field_512 = arg3
                        stor20[stor20.length].field_768 = block.timestamp
                if not sub_56e7affb:
                    call dbAddress.0xf8b2cb4f with:
                         gas gas_remaining - 25050 wei
                        args arg1
                    require ext_call.success
                    if uint8(stor14[address(arg1)].field_0):
                        if ext_call.return_data[0] < stor14[address(arg1)].field_256:
                            stor14[address(arg1)].field_256 = ext_call.return_data[0]
                    else:
                        stor15.length++
                        if not stor15.length <= stor15.length + 1:
                            idx = stor15.length + 1
                            while stor15.length > idx:
                                uint256(stor15[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor15[stor15.length]) = arg1 or Mask(96, 160, uint256(stor15[stor15.length]))
                        uint8(stor14[address(arg1)].field_0) = 1
                        stor14[address(arg1)].field_256 = ext_call.return_data[0]
            else:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor20.length:
                    require idx < stor20.length
                    mem[0] = storCE6D[idx]
                    mem[32] = 10
                    if not address(sub_0015aa6c[storCE6D[idx]]):
                        require idx < stor20.length
                        require idx < stor20.length
                        if storCE6D[idx] <= 0:
                            mem[0] = 20
                            if not storCE6D[idx]:
                                require idx < stor20.length
                                require idx < 10
                                mem[(32 * idx) + 96] = storCE6D[idx]
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + 96] = 0
                                s = s + 1
                                continue 
                            require idx < stor20.length
                            mem[0] = 20
                            require idx < 10
                            mem[(32 * idx) + 96] = storCE6D[idx]
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[mem[64] + 4] = mem[(32 * idx) + 108 len 20]
                    mem[mem[64] + 36] = 20
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    call dbAddress.0xec2ac54e with:
                         gas gas_remaining - 25050 wei
                        args mem[mem[64] + 4], 20, 0, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    require idx < 10
                    _530 = mem[(32 * idx) + 96]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(_530)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 20
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(_530), block.timestamp, 20, 0
                    idx = idx + 1
                    continue 
                if transactionsCount > 99990:
                    if arg3 > 10:
                        stor20.length++
                        if not stor20.length <= stor20.length + 1:
                            idx = 4 * stor20.length + 1
                            while 4 * stor20.length > idx:
                                address(stor20[idx].field_0) = 0
                                address(stor20[idx].field_256) = 0
                                stor20[idx].field_512 = 0
                                stor20[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor20[stor20.length].field_0) = arg1
                        address(stor20[stor20.length].field_256) = arg2
                        stor20[stor20.length].field_512 = arg3
                        stor20[stor20.length].field_768 = block.timestamp
                if not sub_56e7affb:
                    call dbAddress.0xf8b2cb4f with:
                         gas gas_remaining - 25050 wei
                        args address(arg1)
                    require ext_call.success
                    if uint8(stor14[address(arg1)].field_0):
                        if ext_call.return_data[0] < stor14[address(arg1)].field_256:
                            stor14[address(arg1)].field_256 = ext_call.return_data[0]
                    else:
                        stor15.length++
                        if not stor15.length <= stor15.length + 1:
                            idx = stor15.length + 1
                            while stor15.length > idx:
                                uint256(stor15[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor15[stor15.length]) = arg1 or Mask(96, 160, uint256(stor15[stor15.length]))
                        uint8(stor14[address(arg1)].field_0) = 1
                        stor14[address(arg1)].field_256 = ext_call.return_data[0]
        else:
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, 0, arg3 - sub_99e1fcac, 0, 0
            require ext_call.success
            emit 0x9f837f1f: address(arg1), address(arg2), block.timestamp, arg3 - sub_99e1fcac, sub_99e1fcac
            call dbAddress.0xec2ac54e with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(stor8.field_0), sub_99e1fcac, 0, 0
            mem[96] = 0
            mem[128 len 288] = 0
            mem[64] = 544
            mem[416] = 0
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            transactionsCount++
            if transactionsCount + 1 < sub_06eda960:
                if transactionsCount > 99990:
                    if arg3 > 10:
                        stor20.length++
                        if not stor20.length <= stor20.length + 1:
                            idx = 4 * stor20.length + 1
                            while 4 * stor20.length > idx:
                                address(stor20[idx].field_0) = 0
                                address(stor20[idx].field_256) = 0
                                stor20[idx].field_512 = 0
                                stor20[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor20[stor20.length].field_0) = arg1
                        address(stor20[stor20.length].field_256) = arg2
                        stor20[stor20.length].field_512 = arg3
                        stor20[stor20.length].field_768 = block.timestamp
                if not sub_56e7affb:
                    call dbAddress.0xf8b2cb4f with:
                         gas gas_remaining - 25050 wei
                        args arg1
                    require ext_call.success
                    if uint8(stor14[address(arg1)].field_0):
                        if ext_call.return_data[0] < stor14[address(arg1)].field_256:
                            stor14[address(arg1)].field_256 = ext_call.return_data[0]
                    else:
                        stor15.length++
                        if not stor15.length <= stor15.length + 1:
                            idx = stor15.length + 1
                            while stor15.length > idx:
                                uint256(stor15[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor15[stor15.length]) = arg1 or Mask(96, 160, uint256(stor15[stor15.length]))
                        uint8(stor14[address(arg1)].field_0) = 1
                        stor14[address(arg1)].field_256 = ext_call.return_data[0]
            else:
                transactionsCount = 0
                idx = 0
                while uint8(idx) < stor20.length:
                    require idx < stor20.length
                    mem[0] = storCE6D[idx]
                    mem[32] = 10
                    if not address(sub_0015aa6c[storCE6D[idx]]):
                        require idx < stor20.length
                        require idx < stor20.length
                        if storCE6D[idx] <= 0:
                            mem[0] = 20
                            if not storCE6D[idx]:
                                require idx < stor20.length
                                require idx < 10
                                mem[(32 * idx) + 96] = storCE6D[idx]
                        else:
                            s = 0
                            while uint8(s) <= uint8(idx):
                                require s < 10
                                mem[(32 * s) + 96] = 0
                                s = s + 1
                                continue 
                            require idx < stor20.length
                            mem[0] = 20
                            require idx < 10
                            mem[(32 * idx) + 96] = storCE6D[idx]
                    idx = idx + 1
                    continue 
                idx = 0
                while uint8(idx) < 10:
                    require idx < 10
                    mem[mem[64] + 4] = mem[(32 * idx) + 108 len 20]
                    mem[mem[64] + 36] = 20
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    call dbAddress.0xec2ac54e with:
                         gas gas_remaining - 25050 wei
                        args mem[mem[64] + 4], 20, 0, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    require idx < 10
                    _544 = mem[(32 * idx) + 96]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = address(_544)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 20
                    mem[mem[64] + 128] = 0
                    emit 0x9f837f1f: 0, address(_544), block.timestamp, 20, 0
                    idx = idx + 1
                    continue 
                if transactionsCount > 99990:
                    if arg3 > 10:
                        stor20.length++
                        if not stor20.length <= stor20.length + 1:
                            idx = 4 * stor20.length + 1
                            while 4 * stor20.length > idx:
                                address(stor20[idx].field_0) = 0
                                address(stor20[idx].field_256) = 0
                                stor20[idx].field_512 = 0
                                stor20[idx].field_768 = 0
                                idx = idx + 1
                                continue 
                        address(stor20[stor20.length].field_0) = arg1
                        address(stor20[stor20.length].field_256) = arg2
                        stor20[stor20.length].field_512 = arg3
                        stor20[stor20.length].field_768 = block.timestamp
                if not sub_56e7affb:
                    call dbAddress.0xf8b2cb4f with:
                         gas gas_remaining - 25050 wei
                        args address(arg1)
                    require ext_call.success
                    if uint8(stor14[address(arg1)].field_0):
                        if ext_call.return_data[0] < stor14[address(arg1)].field_256:
                            stor14[address(arg1)].field_256 = ext_call.return_data[0]
                    else:
                        stor15.length++
                        if not stor15.length <= stor15.length + 1:
                            idx = stor15.length + 1
                            while stor15.length > idx:
                                uint256(stor15[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor15[stor15.length]) = arg1 or Mask(96, 160, uint256(stor15[stor15.length]))
                        uint8(stor14[address(arg1)].field_0) = 1
                        stor14[address(arg1)].field_256 = ext_call.return_data[0]
    return 1
}



}
