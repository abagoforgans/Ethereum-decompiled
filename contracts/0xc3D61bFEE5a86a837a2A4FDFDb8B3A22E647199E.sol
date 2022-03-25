contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
bool stor8; offset 256
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 16
uint256 stor9;
uint16 stor10;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = code.data[6999 len 32]
    stor2 = code.data[7031 len 32]
    stor3 = code.data[7063 len 32]
    stor4 = code.data[7095 len 32]
    uint8(stor8.field_0) = 1
    uint8(stor8.field_8) = 0
    Mask(240, 0, stor8.field_16) = Mask(240, 0, code.data[7127 len 32])
    stor8.field_256 % 1 = 0
    stor9 = code.data[7159 len 32]
    stor10 = uint16(code.data[7127 len 32])
    return code.data[167 len 6832]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of struct stor7;
uint8 stor8;
uint8 stor8; offset 8
uint16 stor8;
uint256 stor9;
uint16 stor10;
uint16 stor10; offset 16
uint256 stor10; offset 16
uint256 stor10;
mapping of uint256 stor11;
uint8 stor12;
uint8 stor12; offset 8
uint16 stor12;

function kill() payable {
    if stor6 > 0:
        emit 0x9a0f4fd9: Array(len=16, data='totalEscrows > 0')
    else:
        if stor5 > 0:
            emit 0x9a0f4fd9: Array(len=12, data='feeFunds > 0')
        else:
            if msg.sender == stor0:
                selfdestruct(msg.sender)
            emit 0x9a0f4fd9: Array(len=20, data='msg.sender != seller')
}

function _fallback() payable {
  stop
}

function unbuy() payable {
    stor11[address(msg.sender)] = 0
}

function getFees() payable {
    if stor1 != msg.sender:
        emit 0x9a0f4fd9: Array(len=21, data='msg.sender != arbiter')
    else:
        if stor5 > eth.balance(this.address):
            emit 0x9a0f4fd9: Array(len=23, data='feeFunds > this.balance')
        else:
            require uint16(stor12.field_0) <= 0
            uint8(stor12.field_0) = 1
            uint8(stor12.field_8) = 0
            call stor1 with:
               value stor5 wei
                 gas 25000 wei
            uint16(stor12.field_0) = 0
            if ext_call.success:
                stor5 = 0
            else:
                emit 0x9a0f4fd9: Array(len=28, data='!safeSend(arbiter, feeFunds)')
}

function cancel(string arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        uint8(stor8.field_0) = 2
        uint8(stor8.field_8) = 0
        mem[ceil32(arg1.length) + 288 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            emit 0x56f00369: 128, 4, uint16(stor10.field_0), 0, arg1.length, arg1[all], 0, arg2, msg.sender
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
            emit 0x56f00369: 128, 4, uint16(stor10.field_0), 0, arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 288 len -(arg1.length % 32) + 32], 0, arg2, msg.sender
}

function buy(uint256 arg1, string arg2, uint256 arg3, uint16 arg4) payable {
    require 1 == uint16(stor8.field_0)
    require msg.value >= arg4 * stor9
    require arg4 <= uint16(stor10.field_0)
    require stor3 <= 1000
    require stor4 <= 1000
    require stor4 + stor3 <= 1000
    require stor7[arg1].field_256 <= 0
    require msg.value * stor3 / 1000 <= msg.value
    stor5 += msg.value * stor3 / 1000
    stor6++
    stor7[arg1].field_0 = msg.sender or Mask(96, 160, stor7[arg1].field_0)
    stor7[arg1].field_256 = msg.value - (msg.value * stor3 / 1000)
    stor7[arg1].field_768 = 0
    stor7[arg1].field_1024 = 0
    stor7[arg1].field_1280 = 0
    Mask(240, 0, stor10.field_16) = Mask(240, 0, uint16(stor10.field_16) + arg4)
    stor11[address(msg.sender)] = 1
    emit 0x56f00369: Array(len=arg2.length, data=arg2[all]), 1, arg4 << 240, msg.value, arg1, arg3, msg.sender
}

function sub_ba491b78(?) payable {
    if msg.sender == stor0:
        if arg4 > uint16(stor10.field_0):
            emit 0x9a0f4fd9: Array(len=23, data='_count > availableCount')
        else:
            if arg4 > uint16(stor10.field_16):
                emit 0x9a0f4fd9: Array(len=21, data='_count > pendingCount')
            else:
                uint256(stor10.field_0) = 0
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 2, arg4 << 240, 0, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 2, arg4 << 240, 0, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}

function no(uint256 arg1, string arg2, uint256 arg3) payable {
    if 0 == stor7[arg1].field_256:
        emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
    else:
        if msg.sender == stor7[arg1].field_0:
            if 0 == stor7[arg1].field_768:
                stor7[arg1].field_768 = stor7[arg1].field_256
                stor7[arg1].field_512 = block.timestamp
            if msg.sender == stor7[arg1].field_0:
                stor7[arg1].field_1024 = 1
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
            else:
                if stor0 != msg.sender:
                    emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                else:
                    stor7[arg1].field_1280 = 1
                    mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                        emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
        else:
            if stor0 != msg.sender:
                emit 0x9a0f4fd9: Array(len=48, data='msg.sender != info.buyer && msg.', 'sender != seller')
            else:
                if 0 == stor7[arg1].field_768:
                    stor7[arg1].field_768 = stor7[arg1].field_256
                    stor7[arg1].field_512 = block.timestamp
                if msg.sender == stor7[arg1].field_0:
                    stor7[arg1].field_1024 = 1
                    mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                        emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                else:
                    if stor0 != msg.sender:
                        emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                    else:
                        stor7[arg1].field_1280 = 1
                        mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                        if not arg2.length % 32:
                            emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                            emit 0x56f00369: 128, 12, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}

function getMoney(uint256 arg1) payable {
    if 0 == stor7[arg1].field_256:
        emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
    else:
        if 0 == stor7[arg1].field_768:
            emit 0x9a0f4fd9: Array(len=21, data='info.frozenFunds == 0')
        else:
            if block.timestamp < stor7[arg1].field_512 + stor2:
                emit 0x9a0f4fd9: Array(len=38, data='now < (info.frozenTime + freezeP', 'eriod)')
            else:
                if stor7[arg1].field_256 > eth.balance(this.address):
                    emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                else:
                    if 0 == stor7[arg1].field_1024:
                        if stor7[arg1].field_1280 != 0:
                            require uint16(stor12.field_0) <= 0
                            uint8(stor12.field_0) = 1
                            uint8(stor12.field_8) = 0
                            call stor0 with:
                               value stor7[arg1].field_256 wei
                                 gas 25000 wei
                            uint16(stor12.field_0) = 0
                            if ext_call.success:
                                stor7[arg1].field_256 = 0
                            else:
                                emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                    else:
                        if stor7[arg1].field_1280 != 0:
                            if block.timestamp < stor7[arg1].field_512 + stor2 + (720 * 24 * 3600):
                                emit 0x9a0f4fd9: Array(len=56, data='now < (info.frozenTime + freezeP', 'eriod + arbitragePeriod)')
                            else:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call stor7[arg1].field_0 with:
                                   value stor7[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if ext_call.success:
                                    stor7[arg1].field_256 = 0
                                else:
                                    emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                        else:
                            if stor7[arg1].field_1024 != 0:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call stor7[arg1].field_0 with:
                                   value stor7[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if ext_call.success:
                                    stor7[arg1].field_256 = 0
                                else:
                                    emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                            else:
                                if stor7[arg1].field_1280 != 0:
                                    require uint16(stor12.field_0) <= 0
                                    uint8(stor12.field_0) = 1
                                    uint8(stor12.field_8) = 0
                                    call stor0 with:
                                       value stor7[arg1].field_256 wei
                                         gas 25000 wei
                                    uint16(stor12.field_0) = 0
                                    if ext_call.success:
                                        stor7[arg1].field_256 = 0
                                    else:
                                        emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
}

function sub_3cc08a46(?) payable {
    if msg.sender == stor0:
        if arg4 > uint16(stor10.field_16):
            emit 0x9a0f4fd9: Array(len=21, data='_count > pendingCount')
        else:
            Mask(240, 0, stor10.field_16) = Mask(240, 0, uint16(stor10.field_16) - arg4)
            if 0 == stor7[arg1].field_256:
                emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
            else:
                if msg.sender == stor7[arg1].field_0:
                    if stor7[arg1].field_256 > eth.balance(this.address):
                        emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                    else:
                        if msg.sender == stor7[arg1].field_0:
                            require uint16(stor12.field_0) <= 0
                            uint8(stor12.field_0) = 1
                            uint8(stor12.field_8) = 0
                            call stor0 with:
                               value stor7[arg1].field_256 wei
                                 gas 25000 wei
                            uint16(stor12.field_0) = 0
                            if not ext_call.success:
                                emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                            else:
                                if stor6 > 0:
                                    stor6--
                                stor7[arg1].field_256 = 0
                                emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            if stor0 != msg.sender:
                                emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                            else:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call stor7[arg1].field_0 with:
                                   value stor7[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if not ext_call.success:
                                    emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                                else:
                                    if stor6 > 0:
                                        stor6--
                                    stor7[arg1].field_256 = 0
                                    emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    if stor0 != msg.sender:
                        emit 0x9a0f4fd9: Array(len=48, data='msg.sender != info.buyer && msg.', 'sender != seller')
                    else:
                        if stor7[arg1].field_256 > eth.balance(this.address):
                            emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                        else:
                            if msg.sender == stor7[arg1].field_0:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call stor0 with:
                                   value stor7[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if not ext_call.success:
                                    emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                                else:
                                    if stor6 > 0:
                                        stor6--
                                    stor7[arg1].field_256 = 0
                                    emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                            else:
                                if stor0 != msg.sender:
                                    emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                                else:
                                    require uint16(stor12.field_0) <= 0
                                    uint8(stor12.field_0) = 1
                                    uint8(stor12.field_8) = 0
                                    call stor7[arg1].field_0 with:
                                       value stor7[arg1].field_256 wei
                                         gas 25000 wei
                                    uint16(stor12.field_0) = 0
                                    if not ext_call.success:
                                        emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                                    else:
                                        if stor6 > 0:
                                            stor6--
                                        stor7[arg1].field_256 = 0
                                        emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
            emit 0x56f00369: Array(len=arg2.length, data=arg2[all]), 3, arg4 << 240, arg5, arg1, arg3, msg.sender
}

function arbYes(uint256 arg1, address arg2, uint256 arg3, string arg4, uint256 arg5) payable {
    if msg.sender == stor1:
        if not stor7[arg1].field_256:
            emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
        else:
            if 0 == stor7[arg1].field_768:
                emit 0x9a0f4fd9: Array(len=21, data='info.frozenFunds == 0')
            else:
                if stor0 == arg2:
                    if 0 == stor7[arg1].field_1024:
                        emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                    else:
                        if 0 == stor7[arg1].field_1280:
                            emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                        else:
                            if arg3 > stor7[arg1].field_256:
                                emit 0x9a0f4fd9: Array(len=26, data='payment > info.lockedFunds')
                            else:
                                if arg3 > eth.balance(this.address):
                                    emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                                else:
                                    if stor7[arg1].field_256 * stor4 / 1000 > stor7[arg1].field_256 - arg3:
                                        emit 0x9a0f4fd9: Array(len=37, data='reward > (info.lockedFunds - pay', 'ment)')
                                    else:
                                        require uint16(stor12.field_0) <= 0
                                        uint8(stor12.field_0) = 1
                                        uint8(stor12.field_8) = 0
                                        call arg2 with:
                                           value arg3 wei
                                             gas 25000 wei
                                        uint16(stor12.field_0) = 0
                                        if not ext_call.success:
                                            emit 0x9a0f4fd9: Array(len=23, data='!safeSend(who, payment)')
                                        else:
                                            stor7[arg1].field_256 -= arg3
                                            stor5 = stor5 + stor7[arg1].field_256 - arg3
                                            stor7[arg1].field_256 = 0
                                            mem[ceil32(arg4.length) + 288 len arg4.length] = arg4[all]
                                            if not arg4.length % 32:
                                                emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], arg1, arg5, msg.sender
                                            else:
                                                mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
                                                emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 288 len -(arg4.length % 32) + 32], arg1, arg5, msg.sender
                else:
                    if stor7[arg1].field_0 != arg2:
                        emit 0x9a0f4fd9: Array(len=34, data='who != seller && who != info.buy', 'er')
                    else:
                        if 0 == stor7[arg1].field_1024:
                            emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                        else:
                            if 0 == stor7[arg1].field_1280:
                                emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                            else:
                                if arg3 > stor7[arg1].field_256:
                                    emit 0x9a0f4fd9: Array(len=26, data='payment > info.lockedFunds')
                                else:
                                    if arg3 > eth.balance(this.address):
                                        emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                                    else:
                                        if stor7[arg1].field_256 * stor4 / 1000 > stor7[arg1].field_256 - arg3:
                                            emit 0x9a0f4fd9: Array(len=37, data='reward > (info.lockedFunds - pay', 'ment)')
                                        else:
                                            require uint16(stor12.field_0) <= 0
                                            uint8(stor12.field_0) = 1
                                            uint8(stor12.field_8) = 0
                                            call arg2 with:
                                               value arg3 wei
                                                 gas 25000 wei
                                            uint16(stor12.field_0) = 0
                                            if not ext_call.success:
                                                emit 0x9a0f4fd9: Array(len=23, data='!safeSend(who, payment)')
                                            else:
                                                stor7[arg1].field_256 -= arg3
                                                stor5 = stor5 + stor7[arg1].field_256 - arg3
                                                stor7[arg1].field_256 = 0
                                                mem[ceil32(arg4.length) + 288 len arg4.length] = arg4[all]
                                                if not arg4.length % 32:
                                                    emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], arg1, arg5, msg.sender
                                                else:
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
                                                    emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 288 len -(arg4.length % 32) + 32], arg1, arg5, msg.sender
}

function yes(uint256 arg1, string arg2, uint256 arg3) payable {
    if 0 == stor7[arg1].field_256:
        emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
    else:
        if msg.sender == stor7[arg1].field_0:
            if stor7[arg1].field_256 > eth.balance(this.address):
                emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
            else:
                if msg.sender == stor7[arg1].field_0:
                    require uint16(stor12.field_0) <= 0
                    uint8(stor12.field_0) = 1
                    uint8(stor12.field_8) = 0
                    call stor0 with:
                       value stor7[arg1].field_256 wei
                         gas 25000 wei
                    uint16(stor12.field_0) = 0
                    if not ext_call.success:
                        emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                    else:
                        if stor6 > 0:
                            stor6--
                        stor7[arg1].field_256 = 0
                        mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                        if not arg2.length % 32:
                            emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                            emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                else:
                    if stor0 != msg.sender:
                        emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                    else:
                        require uint16(stor12.field_0) <= 0
                        uint8(stor12.field_0) = 1
                        uint8(stor12.field_8) = 0
                        call stor7[arg1].field_0 with:
                           value stor7[arg1].field_256 wei
                             gas 25000 wei
                        uint16(stor12.field_0) = 0
                        if not ext_call.success:
                            emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                        else:
                            if stor6 > 0:
                                stor6--
                            stor7[arg1].field_256 = 0
                            mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                            if not arg2.length % 32:
                                emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                                emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
        else:
            if stor0 != msg.sender:
                emit 0x9a0f4fd9: Array(len=48, data='msg.sender != info.buyer && msg.', 'sender != seller')
            else:
                if stor7[arg1].field_256 > eth.balance(this.address):
                    emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                else:
                    if msg.sender == stor7[arg1].field_0:
                        require uint16(stor12.field_0) <= 0
                        uint8(stor12.field_0) = 1
                        uint8(stor12.field_8) = 0
                        call stor0 with:
                           value stor7[arg1].field_256 wei
                             gas 25000 wei
                        uint16(stor12.field_0) = 0
                        if not ext_call.success:
                            emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                        else:
                            if stor6 > 0:
                                stor6--
                            stor7[arg1].field_256 = 0
                            mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                            if not arg2.length % 32:
                                emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                                emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                    else:
                        if stor0 != msg.sender:
                            emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                        else:
                            require uint16(stor12.field_0) <= 0
                            uint8(stor12.field_0) = 1
                            uint8(stor12.field_8) = 0
                            call stor7[arg1].field_0 with:
                               value stor7[arg1].field_256 wei
                                 gas 25000 wei
                            uint16(stor12.field_0) = 0
                            if not ext_call.success:
                                emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                            else:
                                if stor6 > 0:
                                    stor6--
                                stor7[arg1].field_256 = 0
                                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                                if not arg2.length % 32:
                                    emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                                else:
                                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                                    emit 0x56f00369: 128, 11, 0, stor7[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}



}
