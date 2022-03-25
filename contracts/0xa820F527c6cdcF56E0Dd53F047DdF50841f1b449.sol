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
    stor1 = code.data[7666 len 32]
    stor2 = code.data[7698 len 32]
    stor3 = code.data[7730 len 32]
    stor4 = code.data[7762 len 32]
    uint8(stor8.field_0) = 1
    uint8(stor8.field_8) = 0
    Mask(240, 0, stor8.field_16) = Mask(240, 0, code.data[7794 len 32])
    stor8.field_256 % 1 = 0
    stor9 = code.data[7826 len 32]
    stor10 = uint16(code.data[7794 len 32])
    return code.data[167 len 7499]
}



// =====================  Runtime code  =====================


address sellerAddress;
address arbiterAddress;
uint256 freezePeriod;
uint256 feePromille;
uint256 rewardPromille;
uint256 feeFunds;
uint256 totalEscrows;
mapping of struct escrows;
uint8 stor8;
uint8 stor8; offset 8
uint16 status;
uint16 count; offset 16
uint256 price;
uint16 availableCount;
uint16 pendingCount; offset 16
uint256 stor10; offset 16
uint256 stor10;
mapping of uint256 buyers;
uint8 stor12;
uint8 stor12; offset 8
uint16 stor12;

function escrows(uint256 arg1) {
    return escrows[arg1].field_0, 
           escrows[arg1].field_256,
           escrows[arg1].field_512,
           escrows[arg1].field_768,
           escrows[arg1].field_1024,
           escrows[arg1].field_1280
}

function count() {
    return count
}

function seller() {
    return sellerAddress
}

function freezePeriod() {
    return freezePeriod
}

function status() {
    return status
}

function rewardPromille() {
    return rewardPromille
}

function totalEscrows() {
    return totalEscrows
}

function feeFunds() {
    return feeFunds
}

function buyers(address arg1) {
    return buyers[arg1]
}

function availableCount() {
    return availableCount
}

function price() {
    return price
}

function feePromille() {
    return feePromille
}

function pendingCount() {
    return pendingCount
}

function arbiter() {
    return arbiterAddress
}

function kill() {
    if totalEscrows > 0:
        emit 0x9a0f4fd9: Array(len=16, data='totalEscrows > 0')
    else:
        if feeFunds > 0:
            emit 0x9a0f4fd9: Array(len=12, data='feeFunds > 0')
        else:
            if msg.sender == sellerAddress:
                selfdestruct(msg.sender)
            emit 0x9a0f4fd9: Array(len=20, data='msg.sender != seller')
}

function _fallback() payable {
    revert 
}

function unbuy() {
    buyers[address(msg.sender)] = 0
}

function cancel(string arg1, uint256 arg2) {
    if msg.sender == sellerAddress:
        uint8(stor8.field_0) = 2
        uint8(stor8.field_8) = 0
        mem[ceil32(arg1.length) + 288 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            emit 0x56f00369: 128, 4, availableCount, 0, arg1.length, arg1[all], 0, arg2, msg.sender
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
            emit 0x56f00369: 128, 4, availableCount, 0, arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 288 len -(arg1.length % 32) + 32], 0, arg2, msg.sender
}

function getFees() {
    if arbiterAddress != msg.sender:
        emit 0x9a0f4fd9: Array(len=21, data='msg.sender != arbiter')
    else:
        if feeFunds > eth.balance(this.address):
            emit 0x9a0f4fd9: Array(len=23, data='feeFunds > this.balance')
        else:
            require uint16(stor12.field_0) <= 0
            uint8(stor12.field_0) = 1
            uint8(stor12.field_8) = 0
            call arbiterAddress with:
               value feeFunds wei
                 gas 25000 wei
            uint16(stor12.field_0) = 0
            if ext_call.success:
                feeFunds = 0
            else:
                emit 0x9a0f4fd9: Array(len=28, data='!safeSend(arbiter, feeFunds)')
}

function buy(uint256 arg1, string arg2, uint256 arg3, uint16 arg4) {
    require 1 == status
    require msg.value >= arg4 * price
    require arg4 <= availableCount
    require feePromille <= 1000
    require rewardPromille <= 1000
    require rewardPromille + feePromille <= 1000
    require escrows[arg1].field_256 <= 0
    require msg.value * feePromille / 1000 <= msg.value
    feeFunds += msg.value * feePromille / 1000
    totalEscrows++
    escrows[arg1].field_0 = msg.sender or Mask(96, 160, escrows[arg1].field_0)
    escrows[arg1].field_256 = msg.value - (msg.value * feePromille / 1000)
    escrows[arg1].field_768 = 0
    escrows[arg1].field_1024 = 0
    escrows[arg1].field_1280 = 0
    Mask(240, 0, stor10.field_16) = Mask(240, 0, pendingCount + arg4)
    buyers[address(msg.sender)] = 1
    emit 0x56f00369: Array(len=arg2.length, data=arg2[all]), 1, arg4 << 240, msg.value, arg1, arg3, msg.sender
}

function sub_ba491b78(?) {
    if msg.sender == sellerAddress:
        if arg4 > availableCount:
            emit 0x9a0f4fd9: Array(len=23, data='_count > availableCount')
        else:
            if arg4 > pendingCount:
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

function no(uint256 arg1, string arg2, uint256 arg3) {
    if 0 == escrows[arg1].field_256:
        emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
    else:
        if msg.sender == escrows[arg1].field_0:
            if 0 == escrows[arg1].field_768:
                escrows[arg1].field_768 = escrows[arg1].field_256
                escrows[arg1].field_512 = block.timestamp
            if msg.sender == escrows[arg1].field_0:
                escrows[arg1].field_1024 = 1
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
            else:
                if sellerAddress != msg.sender:
                    emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                else:
                    escrows[arg1].field_1280 = 1
                    mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                        emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
        else:
            if sellerAddress != msg.sender:
                emit 0x9a0f4fd9: Array(len=48, data='msg.sender != info.buyer && msg.', 'sender != seller')
            else:
                if 0 == escrows[arg1].field_768:
                    escrows[arg1].field_768 = escrows[arg1].field_256
                    escrows[arg1].field_512 = block.timestamp
                if msg.sender == escrows[arg1].field_0:
                    escrows[arg1].field_1024 = 1
                    mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                        emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                else:
                    if sellerAddress != msg.sender:
                        emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                    else:
                        escrows[arg1].field_1280 = 1
                        mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                        if not arg2.length % 32:
                            emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                            emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}

function getMoney(uint256 arg1) {
    if 0 == escrows[arg1].field_256:
        emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
    else:
        if 0 == escrows[arg1].field_768:
            emit 0x9a0f4fd9: Array(len=21, data='info.frozenFunds == 0')
        else:
            if block.timestamp < escrows[arg1].field_512 + freezePeriod:
                emit 0x9a0f4fd9: Array(len=38, data='now < (info.frozenTime + freezeP', 'eriod)')
            else:
                if escrows[arg1].field_256 > eth.balance(this.address):
                    emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                else:
                    if 0 == escrows[arg1].field_1024:
                        if escrows[arg1].field_1280 != 0:
                            require uint16(stor12.field_0) <= 0
                            uint8(stor12.field_0) = 1
                            uint8(stor12.field_8) = 0
                            call sellerAddress with:
                               value escrows[arg1].field_256 wei
                                 gas 25000 wei
                            uint16(stor12.field_0) = 0
                            if ext_call.success:
                                escrows[arg1].field_256 = 0
                            else:
                                emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                    else:
                        if escrows[arg1].field_1280 != 0:
                            if block.timestamp < escrows[arg1].field_512 + freezePeriod + (720 * 24 * 3600):
                                emit 0x9a0f4fd9: Array(len=56, data='now < (info.frozenTime + freezeP', 'eriod + arbitragePeriod)')
                            else:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call escrows[arg1].field_0 with:
                                   value escrows[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if ext_call.success:
                                    escrows[arg1].field_256 = 0
                                else:
                                    emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                        else:
                            if escrows[arg1].field_1024 != 0:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call escrows[arg1].field_0 with:
                                   value escrows[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if ext_call.success:
                                    escrows[arg1].field_256 = 0
                                else:
                                    emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                            else:
                                if escrows[arg1].field_1280 != 0:
                                    require uint16(stor12.field_0) <= 0
                                    uint8(stor12.field_0) = 1
                                    uint8(stor12.field_8) = 0
                                    call sellerAddress with:
                                       value escrows[arg1].field_256 wei
                                         gas 25000 wei
                                    uint16(stor12.field_0) = 0
                                    if ext_call.success:
                                        escrows[arg1].field_256 = 0
                                    else:
                                        emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
}

function sub_3cc08a46(?) {
    if msg.sender == sellerAddress:
        if arg4 > pendingCount:
            emit 0x9a0f4fd9: Array(len=21, data='_count > pendingCount')
        else:
            Mask(240, 0, stor10.field_16) = Mask(240, 0, pendingCount - arg4)
            if 0 == escrows[arg1].field_256:
                emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
            else:
                if msg.sender == escrows[arg1].field_0:
                    if escrows[arg1].field_256 > eth.balance(this.address):
                        emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                    else:
                        if msg.sender == escrows[arg1].field_0:
                            require uint16(stor12.field_0) <= 0
                            uint8(stor12.field_0) = 1
                            uint8(stor12.field_8) = 0
                            call sellerAddress with:
                               value escrows[arg1].field_256 wei
                                 gas 25000 wei
                            uint16(stor12.field_0) = 0
                            if not ext_call.success:
                                emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                            else:
                                if totalEscrows > 0:
                                    totalEscrows--
                                escrows[arg1].field_256 = 0
                                emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            if sellerAddress != msg.sender:
                                emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                            else:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call escrows[arg1].field_0 with:
                                   value escrows[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if not ext_call.success:
                                    emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                                else:
                                    if totalEscrows > 0:
                                        totalEscrows--
                                    escrows[arg1].field_256 = 0
                                    emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    if sellerAddress != msg.sender:
                        emit 0x9a0f4fd9: Array(len=48, data='msg.sender != info.buyer && msg.', 'sender != seller')
                    else:
                        if escrows[arg1].field_256 > eth.balance(this.address):
                            emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                        else:
                            if msg.sender == escrows[arg1].field_0:
                                require uint16(stor12.field_0) <= 0
                                uint8(stor12.field_0) = 1
                                uint8(stor12.field_8) = 0
                                call sellerAddress with:
                                   value escrows[arg1].field_256 wei
                                     gas 25000 wei
                                uint16(stor12.field_0) = 0
                                if not ext_call.success:
                                    emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                                else:
                                    if totalEscrows > 0:
                                        totalEscrows--
                                    escrows[arg1].field_256 = 0
                                    emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                            else:
                                if sellerAddress != msg.sender:
                                    emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                                else:
                                    require uint16(stor12.field_0) <= 0
                                    uint8(stor12.field_0) = 1
                                    uint8(stor12.field_8) = 0
                                    call escrows[arg1].field_0 with:
                                       value escrows[arg1].field_256 wei
                                         gas 25000 wei
                                    uint16(stor12.field_0) = 0
                                    if not ext_call.success:
                                        emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                                    else:
                                        if totalEscrows > 0:
                                            totalEscrows--
                                        escrows[arg1].field_256 = 0
                                        emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
            emit 0x56f00369: Array(len=arg2.length, data=arg2[all]), 3, arg4 << 240, arg5, arg1, arg3, msg.sender
}

function arbYes(uint256 arg1, address arg2, uint256 arg3, string arg4, uint256 arg5) {
    if msg.sender == arbiterAddress:
        if not escrows[arg1].field_256:
            emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
        else:
            if 0 == escrows[arg1].field_768:
                emit 0x9a0f4fd9: Array(len=21, data='info.frozenFunds == 0')
            else:
                if sellerAddress == arg2:
                    if 0 == escrows[arg1].field_1024:
                        emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                    else:
                        if 0 == escrows[arg1].field_1280:
                            emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                        else:
                            if arg3 > escrows[arg1].field_256:
                                emit 0x9a0f4fd9: Array(len=26, data='payment > info.lockedFunds')
                            else:
                                if arg3 > eth.balance(this.address):
                                    emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                                else:
                                    if escrows[arg1].field_256 * rewardPromille / 1000 > escrows[arg1].field_256 - arg3:
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
                                            escrows[arg1].field_256 -= arg3
                                            feeFunds = feeFunds + escrows[arg1].field_256 - arg3
                                            escrows[arg1].field_256 = 0
                                            mem[ceil32(arg4.length) + 288 len arg4.length] = arg4[all]
                                            if not arg4.length % 32:
                                                emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], arg1, arg5, msg.sender
                                            else:
                                                mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
                                                emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 288 len -(arg4.length % 32) + 32], arg1, arg5, msg.sender
                else:
                    if escrows[arg1].field_0 != arg2:
                        emit 0x9a0f4fd9: Array(len=34, data='who != seller && who != info.buy', 'er')
                    else:
                        if 0 == escrows[arg1].field_1024:
                            emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                        else:
                            if 0 == escrows[arg1].field_1280:
                                emit 0x9a0f4fd9: Array(len=39, data='info.buyerNo == 0 || info.seller', 'No == 0')
                            else:
                                if arg3 > escrows[arg1].field_256:
                                    emit 0x9a0f4fd9: Array(len=26, data='payment > info.lockedFunds')
                                else:
                                    if arg3 > eth.balance(this.address):
                                        emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                                    else:
                                        if escrows[arg1].field_256 * rewardPromille / 1000 > escrows[arg1].field_256 - arg3:
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
                                                escrows[arg1].field_256 -= arg3
                                                feeFunds = feeFunds + escrows[arg1].field_256 - arg3
                                                escrows[arg1].field_256 = 0
                                                mem[ceil32(arg4.length) + 288 len arg4.length] = arg4[all]
                                                if not arg4.length % 32:
                                                    emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], arg1, arg5, msg.sender
                                                else:
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
                                                    emit 0x56f00369: 128, 13, 0, arg3, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 288 len -(arg4.length % 32) + 32], arg1, arg5, msg.sender
}

function yes(uint256 arg1, string arg2, uint256 arg3) {
    if 0 == escrows[arg1].field_256:
        emit 0x9a0f4fd9: 32, 21, 0xb9696e666f2e6c6f636b656446756e6473203d3d203000000000000000000000
    else:
        if msg.sender == escrows[arg1].field_0:
            if escrows[arg1].field_256 > eth.balance(this.address):
                emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
            else:
                if msg.sender == escrows[arg1].field_0:
                    require uint16(stor12.field_0) <= 0
                    uint8(stor12.field_0) = 1
                    uint8(stor12.field_8) = 0
                    call sellerAddress with:
                       value escrows[arg1].field_256 wei
                         gas 25000 wei
                    uint16(stor12.field_0) = 0
                    if not ext_call.success:
                        emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                    else:
                        if totalEscrows > 0:
                            totalEscrows--
                        escrows[arg1].field_256 = 0
                        mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                        if not arg2.length % 32:
                            emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                            emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                else:
                    if sellerAddress != msg.sender:
                        emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                    else:
                        require uint16(stor12.field_0) <= 0
                        uint8(stor12.field_0) = 1
                        uint8(stor12.field_8) = 0
                        call escrows[arg1].field_0 with:
                           value escrows[arg1].field_256 wei
                             gas 25000 wei
                        uint16(stor12.field_0) = 0
                        if not ext_call.success:
                            emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                        else:
                            if totalEscrows > 0:
                                totalEscrows--
                            escrows[arg1].field_256 = 0
                            mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                            if not arg2.length % 32:
                                emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                                emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
        else:
            if sellerAddress != msg.sender:
                emit 0x9a0f4fd9: Array(len=48, data='msg.sender != info.buyer && msg.', 'sender != seller')
            else:
                if escrows[arg1].field_256 > eth.balance(this.address):
                    emit 0x9a0f4fd9: Array(len=22, data='payment > this.balance')
                else:
                    if msg.sender == escrows[arg1].field_0:
                        require uint16(stor12.field_0) <= 0
                        uint8(stor12.field_0) = 1
                        uint8(stor12.field_8) = 0
                        call sellerAddress with:
                           value escrows[arg1].field_256 wei
                             gas 25000 wei
                        uint16(stor12.field_0) = 0
                        if not ext_call.success:
                            emit 0x9a0f4fd9: Array(len=26, data='!safeSend(seller, payment)')
                        else:
                            if totalEscrows > 0:
                                totalEscrows--
                            escrows[arg1].field_256 = 0
                            mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                            if not arg2.length % 32:
                                emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                                emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                    else:
                        if sellerAddress != msg.sender:
                            emit 0x9a0f4fd9: Array(len=18, data='unknown msg.sender')
                        else:
                            require uint16(stor12.field_0) <= 0
                            uint8(stor12.field_0) = 1
                            uint8(stor12.field_8) = 0
                            call escrows[arg1].field_0 with:
                               value escrows[arg1].field_256 wei
                                 gas 25000 wei
                            uint16(stor12.field_0) = 0
                            if not ext_call.success:
                                emit 0x9a0f4fd9: Array(len=30, data='!safeSend(info.buyer, payment)')
                            else:
                                if totalEscrows > 0:
                                    totalEscrows--
                                escrows[arg1].field_256 = 0
                                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                                if not arg2.length % 32:
                                    emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                                else:
                                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                                    emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}



}
