contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
bool stor9; offset 256
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 16
uint256 stor10;
uint16 stor11;
uint16 stor11; offset 16

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[5275 len 32]
    stor2 = code.data[5307 len 32]
    stor3 = code.data[5339 len 32]
    stor4 = code.data[5371 len 32]
    stor5 = block.timestamp
    stor6 = 0
    stor7 = 0
    uint8(stor9.field_0) = 1
    uint8(stor9.field_8) = 0
    Mask(240, 0, stor9.field_16) = Mask(240, 0, code.data[5403 len 32])
    stor9.field_256 % 1 = 0
    stor10 = code.data[5435 len 32]
    uint16(stor11.field_0) = uint16(code.data[5403 len 32])
    uint16(stor11.field_16) = 0
    return code.data[184 len 5091]
}



// =====================  Runtime code  =====================


address sellerAddress;
address arbiterAddress;
uint256 freezePeriod;
uint256 feePromille;
uint256 rewardPromille;
uint256 sub_de0d0850;
uint256 feeFunds;
uint256 totalEscrows;
mapping of struct escrows;
uint8 stor9;
uint8 stor9; offset 8
uint16 status;
uint16 count; offset 16
uint256 price;
uint16 availableCount;
uint16 pendingCount; offset 16
uint256 stor11; offset 16
uint256 stor11;
mapping of uint256 buyers;

function escrows(uint256 arg1) payable {
    return escrows[arg1].field_0, 
           escrows[arg1].field_256,
           escrows[arg1].field_512,
           escrows[arg1].field_768,
           escrows[arg1].field_1024,
           escrows[arg1].field_1280
}

function count() payable {
    return count
}

function seller() payable {
    return sellerAddress
}

function freezePeriod() payable {
    return freezePeriod
}

function status() payable {
    return status
}

function rewardPromille() payable {
    return rewardPromille
}

function totalEscrows() payable {
    return totalEscrows
}

function feeFunds() payable {
    return feeFunds
}

function buyers(address arg1) payable {
    return buyers[arg1]
}

function availableCount() payable {
    return availableCount
}

function price() payable {
    return price
}

function feePromille() payable {
    return feePromille
}

function sub_de0d0850(?) payable {
    return sub_de0d0850
}

function pendingCount() payable {
    return pendingCount
}

function arbiter() payable {
    return arbiterAddress
}

function kill() payable {
    if block.timestamp > sub_de0d0850 + (4320 * 24 * 3600):
        selfdestruct(msg.sender)
    if totalEscrows <= 0:
        if feeFunds <= 0:
            if msg.sender == sellerAddress:
                selfdestruct(sellerAddress)
}

function _fallback() payable {
  stop
}

function unbuy() payable {
    buyers[address(msg.sender)] = 0
}

function getFees() payable {
    if arbiterAddress == msg.sender:
        if feeFunds > eth.balance(this.address):
            feeFunds = eth.balance(this.address)
        call arbiterAddress with:
           value feeFunds wei
             gas 0 wei
        feeFunds = 0
}

function cancel(string arg1, uint256 arg2) payable {
    if msg.sender == sellerAddress:
        uint8(stor9.field_0) = 2
        uint8(stor9.field_8) = 0
        mem[ceil32(arg1.length) + 288 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            emit 0x56f00369: 128, 4, availableCount, 0, arg1.length, arg1[all], 0, arg2, msg.sender
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
            emit 0x56f00369: 128, 4, availableCount, 0, arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 288 len -(arg1.length % 32) + 32], 0, arg2, msg.sender
}

function sub_ba491b78(?) payable {
    if msg.sender == sellerAddress:
        if arg4 > availableCount:
            mem[ceil32(arg2.length) + 256] = Mask(112, 72, '_count > availableCount') >> 72, mem[ceil32(arg2.length) + 279 len 9]
            emit log_event(Array(len=23, data=mem[ceil32(arg2.length) + 256]));
        else:
            if arg4 > pendingCount:
                mem[ceil32(arg2.length) + 256] = Mask(80, 88, '_count > pendingCount') >> 88, mem[ceil32(arg2.length) + 277 len 11]
                emit log_event(Array(len=21, data=mem[ceil32(arg2.length) + 256]));
            else:
                uint256(stor11.field_0) = availableCount - arg4 or Mask(224, 32, uint256(stor11.field_0)) or Mask(240, 16, availableCount) or 65536 * pendingCount - arg4
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 2, arg4 << 240, 0, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 2, arg4 << 240, 0, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}

function buy(uint256 arg1, string arg2, uint256 arg3, uint16 arg4) payable {
    if status != 1:
        mem[ceil32(arg2.length) + 256] = mem[ceil32(arg2.length) + 277 len 11]
        emit log_event(Array(len=11, data=mem[ceil32(arg2.length) + 256]));
        revert 
    if msg.value < arg4 * price:
        mem[ceil32(arg2.length) + 256] = Mask(192, 32, 'msg.value < (price * _count)') >> 32, mem[ceil32(arg2.length) + 284 len 4]
        emit log_event(Array(len=28, data=mem[ceil32(arg2.length) + 256]));
        revert 
    if arg4 > availableCount:
        mem[ceil32(arg2.length) + 256] = Mask(112, 72, '_count > availableCount') >> 72, mem[ceil32(arg2.length) + 279 len 9]
        emit log_event(Array(len=23, data=mem[ceil32(arg2.length) + 256]));
        revert 
    if escrows[arg1].field_256 > 0:
        mem[ceil32(arg2.length) + 256] = mem[ceil32(arg2.length) + 274 len 14]
        emit log_event(Array(len=14, data=mem[ceil32(arg2.length) + 256]));
        revert 
    sub_de0d0850 = block.timestamp
    feeFunds += msg.value * feePromille / 1000
    totalEscrows++
    escrows[arg1].field_0 = msg.sender or Mask(96, 160, escrows[arg1].field_0)
    escrows[arg1].field_256 = msg.value - (msg.value * feePromille / 1000)
    escrows[arg1].field_768 = 0
    escrows[arg1].field_1024 = 0
    escrows[arg1].field_1280 = 0
    Mask(240, 0, stor11.field_16) = Mask(240, 0, pendingCount + arg4)
    buyers[address(msg.sender)] = 1
    emit 0x56f00369: Array(len=arg2.length, data=arg2[all]), 1, arg4 << 240, msg.value, arg1, arg3, msg.sender
}

function no(uint256 arg1, string arg2, uint256 arg3) payable {
    if escrows[arg1].field_256 != 0:
        if msg.sender == escrows[arg1].field_0:
            if 0 == escrows[arg1].field_768:
                escrows[arg1].field_768 = escrows[arg1].field_256
                escrows[arg1].field_512 = block.timestamp
            if msg.sender == escrows[arg1].field_0:
                escrows[arg1].field_1024 = 1
            if msg.sender == sellerAddress:
                escrows[arg1].field_1280 = 1
            mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
            if not arg2.length % 32:
                emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
        else:
            if msg.sender == sellerAddress:
                if 0 == escrows[arg1].field_768:
                    escrows[arg1].field_768 = escrows[arg1].field_256
                    escrows[arg1].field_512 = block.timestamp
                if msg.sender == escrows[arg1].field_0:
                    escrows[arg1].field_1024 = 1
                if msg.sender == sellerAddress:
                    escrows[arg1].field_1280 = 1
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 12, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}

function getMoney(uint256 arg1) payable {
    if escrows[arg1].field_256 != 0:
        if escrows[arg1].field_768 != 0:
            if block.timestamp >= escrows[arg1].field_512 + freezePeriod:
                if escrows[arg1].field_256 <= eth.balance(this.address):
                    if 0 == escrows[arg1].field_1024:
                        if escrows[arg1].field_1280 != 0:
                            call sellerAddress with:
                               value escrows[arg1].field_256 wei
                                 gas 0 wei
                            escrows[arg1].field_256 = 0
                    else:
                        if escrows[arg1].field_1280 != 0:
                            if block.timestamp >= escrows[arg1].field_512 + freezePeriod + (720 * 24 * 3600):
                                call escrows[arg1].field_0 with:
                                   value escrows[arg1].field_256 wei
                                     gas 0 wei
                                escrows[arg1].field_256 = 0
                        else:
                            if escrows[arg1].field_1024 != 0:
                                call escrows[arg1].field_0 with:
                                   value escrows[arg1].field_256 wei
                                     gas 0 wei
                                escrows[arg1].field_256 = 0
                            else:
                                if escrows[arg1].field_1280 != 0:
                                    call sellerAddress with:
                                       value escrows[arg1].field_256 wei
                                         gas 0 wei
                                    escrows[arg1].field_256 = 0
                else:
                    if 0 == escrows[arg1].field_1024:
                        if escrows[arg1].field_1280 != 0:
                            call sellerAddress with:
                               value eth.balance(this.address) wei
                                 gas 0 wei
                            escrows[arg1].field_256 = 0
                    else:
                        if escrows[arg1].field_1280 != 0:
                            if block.timestamp >= escrows[arg1].field_512 + freezePeriod + (720 * 24 * 3600):
                                call escrows[arg1].field_0 with:
                                   value eth.balance(this.address) wei
                                     gas 0 wei
                                escrows[arg1].field_256 = 0
                        else:
                            if escrows[arg1].field_1024 != 0:
                                call escrows[arg1].field_0 with:
                                   value eth.balance(this.address) wei
                                     gas 0 wei
                                escrows[arg1].field_256 = 0
                            else:
                                if escrows[arg1].field_1280 != 0:
                                    call sellerAddress with:
                                       value eth.balance(this.address) wei
                                         gas 0 wei
                                    escrows[arg1].field_256 = 0
}

function sub_3cc08a46(?) payable {
    if msg.sender == sellerAddress:
        if arg4 > pendingCount:
            mem[ceil32(arg2.length) + 256] = Mask(80, 88, '_count > pendingCount') >> 88, mem[ceil32(arg2.length) + 277 len 11]
            emit log_event(Array(len=21, data=mem[ceil32(arg2.length) + 256]));
        else:
            Mask(240, 0, stor11.field_16) = Mask(240, 0, pendingCount - arg4)
            if escrows[arg1].field_256 != 0:
                if msg.sender == escrows[arg1].field_0:
                    if totalEscrows > 0:
                        totalEscrows--
                    escrows[arg1].field_256 = 0
                    if escrows[arg1].field_256 <= eth.balance(this.address):
                        if msg.sender == escrows[arg1].field_0:
                            call sellerAddress with:
                               value escrows[arg1].field_256 wei
                                 gas 0 wei
                        if msg.sender == sellerAddress:
                            call escrows[arg1].field_0 with:
                               value escrows[arg1].field_256 wei
                                 gas 0 wei
                        emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        if msg.sender == escrows[arg1].field_0:
                            call sellerAddress with:
                               value eth.balance(this.address) wei
                                 gas 0 wei
                        if msg.sender == sellerAddress:
                            call escrows[arg1].field_0 with:
                               value eth.balance(this.address) wei
                                 gas 0 wei
                        emit 0x56f00369: 128, 11, 0, eth.balance(this.address), arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    if msg.sender == sellerAddress:
                        if totalEscrows > 0:
                            totalEscrows--
                        escrows[arg1].field_256 = 0
                        if escrows[arg1].field_256 <= eth.balance(this.address):
                            if msg.sender == escrows[arg1].field_0:
                                call sellerAddress with:
                                   value escrows[arg1].field_256 wei
                                     gas 0 wei
                            if msg.sender == sellerAddress:
                                call escrows[arg1].field_0 with:
                                   value escrows[arg1].field_256 wei
                                     gas 0 wei
                            emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                        else:
                            if msg.sender == escrows[arg1].field_0:
                                call sellerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 0 wei
                            if msg.sender == sellerAddress:
                                call escrows[arg1].field_0 with:
                                   value eth.balance(this.address) wei
                                     gas 0 wei
                            emit 0x56f00369: 128, 11, 0, eth.balance(this.address), arg2.length, arg2[all], arg1, arg3, msg.sender
            emit 0x56f00369: Array(len=arg2.length, data=arg2[all]), 3, arg4 << 240, arg5, arg1, arg3, msg.sender
}

function yes(uint256 arg1, string arg2, uint256 arg3) payable {
    if escrows[arg1].field_256 != 0:
        if msg.sender == escrows[arg1].field_0:
            if totalEscrows > 0:
                totalEscrows--
            escrows[arg1].field_256 = 0
            if escrows[arg1].field_256 <= eth.balance(this.address):
                if msg.sender == escrows[arg1].field_0:
                    call sellerAddress with:
                       value escrows[arg1].field_256 wei
                         gas 0 wei
                if msg.sender == sellerAddress:
                    call escrows[arg1].field_0 with:
                       value escrows[arg1].field_256 wei
                         gas 0 wei
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
            else:
                if msg.sender == escrows[arg1].field_0:
                    call sellerAddress with:
                       value eth.balance(this.address) wei
                         gas 0 wei
                if msg.sender == sellerAddress:
                    call escrows[arg1].field_0 with:
                       value eth.balance(this.address) wei
                         gas 0 wei
                mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                if not arg2.length % 32:
                    emit 0x56f00369: 128, 11, 0, eth.balance(this.address), arg2.length, arg2[all], arg1, arg3, msg.sender
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                    emit 0x56f00369: 128, 11, 0, eth.balance(this.address), arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
        else:
            if msg.sender == sellerAddress:
                if totalEscrows > 0:
                    totalEscrows--
                escrows[arg1].field_256 = 0
                if escrows[arg1].field_256 <= eth.balance(this.address):
                    if msg.sender == escrows[arg1].field_0:
                        call sellerAddress with:
                           value escrows[arg1].field_256 wei
                             gas 0 wei
                    if msg.sender == sellerAddress:
                        call escrows[arg1].field_0 with:
                           value escrows[arg1].field_256 wei
                             gas 0 wei
                    mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                        emit 0x56f00369: 128, 11, 0, escrows[arg1].field_256, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
                else:
                    if msg.sender == escrows[arg1].field_0:
                        call sellerAddress with:
                           value eth.balance(this.address) wei
                             gas 0 wei
                    if msg.sender == sellerAddress:
                        call escrows[arg1].field_0 with:
                           value eth.balance(this.address) wei
                             gas 0 wei
                    mem[ceil32(arg2.length) + 288 len arg2.length] = arg2[all]
                    if not arg2.length % 32:
                        emit 0x56f00369: 128, 11, 0, eth.balance(this.address), arg2.length, arg2[all], arg1, arg3, msg.sender
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                        emit 0x56f00369: 128, 11, 0, eth.balance(this.address), arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 288 len -(arg2.length % 32) + 32], arg1, arg3, msg.sender
}

function arbYes(uint256 arg1, address arg2, uint256 arg3, string arg4, uint256 arg5) payable {
    if msg.sender == arbiterAddress:
        if escrows[arg1].field_256:
            if escrows[arg1].field_768 != 0:
                if sellerAddress == arg2:
                    if escrows[arg1].field_1024 != 0:
                        if escrows[arg1].field_1280 != 0:
                            if escrows[arg1].field_256 > eth.balance(this.address):
                                escrows[arg1].field_256 = eth.balance(this.address)
                            if arg3 > escrows[arg1].field_256:
                                if escrows[arg1].field_256 * rewardPromille / 1000 > 0:
                                    mem[ceil32(arg4.length) + 256] = Mask(176, 40, 'Reward exceeds reward limit') >> 40, mem[ceil32(arg4.length) + 283 len 5]
                                    emit log_event(Array(len=27, data=mem[ceil32(arg4.length) + 256]));
                                else:
                                    call arg2 with:
                                       value escrows[arg1].field_256 wei
                                         gas 0 wei
                                    escrows[arg1].field_256 = 0
                                    escrows[arg1].field_256 = 0
                                    mem[ceil32(arg4.length) + 288 len arg4.length] = arg4[all]
                                    if not arg4.length % 32:
                                        emit 0x56f00369: 128, 13, 0, escrows[arg1].field_256, arg4.length, arg4[all], arg1, arg5, msg.sender
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
                                        emit 0x56f00369: 128, 13, 0, escrows[arg1].field_256, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 288 len -(arg4.length % 32) + 32], arg1, arg5, msg.sender
                            else:
                                if escrows[arg1].field_256 * rewardPromille / 1000 > escrows[arg1].field_256 - arg3:
                                    mem[ceil32(arg4.length) + 256] = Mask(176, 40, 'Reward exceeds reward limit') >> 40, mem[ceil32(arg4.length) + 283 len 5]
                                    emit log_event(Array(len=27, data=mem[ceil32(arg4.length) + 256]));
                                else:
                                    call arg2 with:
                                       value arg3 wei
                                         gas 0 wei
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
                    if escrows[arg1].field_0 == arg2:
                        if escrows[arg1].field_1024 != 0:
                            if escrows[arg1].field_1280 != 0:
                                if escrows[arg1].field_256 > eth.balance(this.address):
                                    escrows[arg1].field_256 = eth.balance(this.address)
                                if arg3 > escrows[arg1].field_256:
                                    if escrows[arg1].field_256 * rewardPromille / 1000 > 0:
                                        mem[ceil32(arg4.length) + 256] = Mask(176, 40, 'Reward exceeds reward limit') >> 40, mem[ceil32(arg4.length) + 283 len 5]
                                        emit log_event(Array(len=27, data=mem[ceil32(arg4.length) + 256]));
                                    else:
                                        call arg2 with:
                                           value escrows[arg1].field_256 wei
                                             gas 0 wei
                                        escrows[arg1].field_256 = 0
                                        escrows[arg1].field_256 = 0
                                        mem[ceil32(arg4.length) + 288 len arg4.length] = arg4[all]
                                        if not arg4.length % 32:
                                            emit 0x56f00369: 128, 13, 0, escrows[arg1].field_256, arg4.length, arg4[all], arg1, arg5, msg.sender
                                        else:
                                            mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
                                            emit 0x56f00369: 128, 13, 0, escrows[arg1].field_256, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 288 len -(arg4.length % 32) + 32], arg1, arg5, msg.sender
                                else:
                                    if escrows[arg1].field_256 * rewardPromille / 1000 > escrows[arg1].field_256 - arg3:
                                        mem[ceil32(arg4.length) + 256] = Mask(176, 40, 'Reward exceeds reward limit') >> 40, mem[ceil32(arg4.length) + 283 len 5]
                                        emit log_event(Array(len=27, data=mem[ceil32(arg4.length) + 256]));
                                    else:
                                        call arg2 with:
                                           value arg3 wei
                                             gas 0 wei
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



}
