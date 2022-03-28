contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor2;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 128
uint64 stor3; offset 8
address stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor4 = code.data[6227 len 20]
    require ext_code.size(code.data[6227 len 20])
    call code.data[6227 len 20].getBetsProcessed() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[30 len 2] == 157
    uint8(stor0.field_160) = 1
    stor2 = 1
    uint8(stor3.field_0) = 5
    stor3.field_8 % 72057594037927936 = 0
    uint8(stor3.field_128) = 1
    stor3.field_256 % 1 = 0
    return code.data[316 len 5899]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor1; offset 8
uint256 stor1;
uint256 stor2;
uint8 stor3; offset 128
uint64 stor3;
uint64 stor3; offset 64
address stor4;
uint256 stor5;
mapping of uint64 stor6;
array of struct stor7;

function totalGames() {
    return stor7.length
}

function deleteContract() {
    require address(stor0.field_0) == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() {
    revert 
}

function enableBetting_only_Dev() {
    require address(stor0.field_0) == msg.sender
    uint8(stor3.field_128) = 1
}

function disableBetting_only_Dev() {
    require address(stor0.field_0) == msg.sender
    uint8(stor3.field_128) = 0
}

function getSettings() {
    return uint256(stor1.field_0), Mask(248, 0, stor1.field_0), stor2, uint8(stor0.field_160)
}

function Invest() payable {
    require address(stor0.field_0) == msg.sender
    require 35 * stor5
    if 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16 != uint256(stor1.field_0):
        uint256(stor1.field_0) = 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16
        emit 0xf9333b92: 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16, Mask(248, 8, 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16), stor2, uint8(stor0.field_160)
}

function sub_770de290(?) {
    require address(stor0.field_0) == msg.sender
    if arg1 > 0:
        stor5 = arg1
    uint8(stor0.field_160) = arg4
    if arg3:
        uint64(stor3.field_0) = arg3
    if arg2 > 0:
        if arg2 <= 256:
            stor2 = arg2
    require address(stor0.field_0) == msg.sender
    require 35 * stor5
    if 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16 != uint256(stor1.field_0):
        uint256(stor1.field_0) = 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16
        emit 0xf9333b92: 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16, Mask(248, 8, 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16), stor2, uint8(stor0.field_160)
}

function placeBet(uint256 arg1, bytes32 arg2, bytes32 arg3) payable {
    require uint8(stor3.field_128)
    if uint64(stor3.field_64) >= uint64(stor3.field_0):
        emit ErrorLog(msg.sender, Array(len=23, data='checkNbBetsCurrentBlock'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if not msg.value:
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if not arg1:
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if msg.value > uint256(stor1.field_0):
        emit ErrorLog(msg.sender, Array(len=15, data='Limit for table'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 157:
        if not arg1 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            continue 
        if uint8(s + 1) <= 32:
            if uint8(-s + 31) < 32:
                if 1 >= stor2:
                    if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                        idx = idx + 1
                        s = s + 1
                        t = t + Mask(248, 0, stor1.field_8)
                        continue 
        else:
            if uint8(s + 1) <= 64:
                if uint8(-s + 63) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor1.field_8)
                            continue 
        revert 
    if t != msg.value:
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if stor6[address(msg.sender)]:
        require uint64(stor6[address(msg.sender)] - 1) < stor7.length
        if 37 == stor7[uint64(stor6[address(msg.sender)] - 1)].field_768:
            emit ErrorLog(msg.sender, Array(len=29, data='previous game is not finished'));
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    if not stor7.length:
        uint64(stor3.field_64) = 0
    else:
        require stor7.length - 1 < stor7.length
        if stor7[stor7.length].field_0 != block.number:
            uint64(stor3.field_64) = 0
        else:
            uint64(stor3.field_64) = uint64(uint64(stor3.field_64) + 1)
    stor6[address(msg.sender)] = uint64(stor7.length + 1)
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = (7 * stor7.length) + 7
        while 7 * stor7.length > idx:
            stor7[idx].field_0 = 0
            stor7[idx].field_256 = 0
            stor7[idx].field_512 = 0
            stor7[idx].field_768 = 0
            stor7[idx].field_1024 = 0
            stor7[idx].field_1280 = 0
            stor7[idx].field_1536 = 0
            idx = idx + 7
            continue 
    stor7[stor7.length].field_0 = msg.sender
    stor7[stor7.length].field_256 = block.number
    stor7[stor7.length].field_512 = 0
    stor7[stor7.length].field_768 = 37
    stor7[stor7.length].field_1024 = arg1
    stor7[stor7.length].field_1280 = arg2
    stor7[stor7.length].field_1536 = arg3
    emit PlayerBet(msg.sender, block.number, stor7.length - 1);
}

function getGame(uint64 arg1) {
    require arg1 < stor7.length
    s = 0
    idx = 0
    t = 0
    u = 0
    while uint8(idx) < 157:
        if not stor7[arg1].field_1024 or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        mem[576] = 0
        mem[548] = uint16((256 * uint8(idx) + 1) + stor7[arg1].field_768 + 1)
        require ext_code.size(stor4)
        call stor4.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + stor7[arg1].field_768 + 1)
        mem[544] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            t = t + 1
                            u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                            continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                continue 
        else:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            s = ext_call.return_data[0] + 1
                            idx = idx + 1
                            t = t + 1
                            u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                            continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                continue 
        revert 
    require arg1 < stor7.length
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 157:
        if not stor7[arg1].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            continue 
        if uint8(s + 1) <= 32:
            if uint8(-s + 31) < 32:
                if 1 >= stor2:
                    if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                        idx = idx + 1
                        s = s + 1
                        t = t + Mask(248, 0, stor1.field_8)
                        continue 
        else:
            if uint8(s + 1) <= 64:
                if uint8(-s + 63) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor1.field_8)
                            continue 
        revert 
    require arg1 < stor7.length
    idx = 0
    s = 0
    while uint8(idx) < 157:
        if not stor7[arg1].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require arg1 < stor7.length
    if u:
        return arg1 << 192, 
               stor7[arg1].field_0,
               stor7[arg1].field_256,
               stor7[arg1].field_512,
               u,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               stor7[arg1].field_1280,
               stor7[arg1].field_1536,
               t,
               s
    return arg1 << 192, 
           stor7[arg1].field_0,
           stor7[arg1].field_256,
           stor7[arg1].field_512,
           1,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           stor7[arg1].field_1280,
           stor7[arg1].field_1536,
           t,
           s
}

function SpinTheWheel(address arg1) {
    if arg1:
        if not stor6[address(arg1)]:
            emit ErrorLog(address(arg1), Array(len=19, data='No games for player'));
        else:
            require uint64(stor6[address(arg1)] - 1) < stor7.length
            if stor7[uint64(stor6[address(arg1)] - 1)].field_768 != 37:
                emit ErrorLog(address(arg1), Array(len=22, data='Gamble already spinned'));
            else:
                require uint64(stor6[address(arg1)] - 1) < stor7.length
                if block.number <= stor7[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor0.field_160):
                    emit ErrorLog(address(msg.sender), Array(len=31, data='Wait for playerblock+blockDelay'));
                else:
                    require uint64(stor6[address(arg1)] - 1) < stor7.length
                    if not block.hash(stor7[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor0.field_160)):
                        emit ErrorLog(address(msg.sender), Array(len=29, data='Cannot generate random number'));
                        revert 
                    require uint64(stor6[address(arg1)] - 1) < stor7.length
                    stor7[uint64(stor6[address(arg1)] - 1)].field_768 = uint8(sha3(stor7[uint64(stor6[address(arg1)] - 1)].field_0, block.hash(stor7[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor0.field_160))) % 37)
                    stor7[uint64(stor6[address(arg1)] - 1)].field_512 = block.number
                    s = 0
                    idx = 0
                    t = 0
                    u = 0
                    while uint8(idx) < 157:
                        if not stor7[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                            s = s
                            idx = idx + 1
                            t = t
                            u = u
                            continue 
                        mem[576] = 0
                        mem[548] = uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(arg1)] - 1)].field_768 + 1)
                        require ext_code.size(stor4)
                        call stor4.getCoeff(uint16 rg1) with:
                             gas gas_remaining - 50 wei
                            args uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(arg1)] - 1)].field_768 + 1)
                        mem[544] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] <= 0:
                            if uint8(t + 1) <= 32:
                                if uint8(-t + 31) < 32:
                                    if 1 >= stor2:
                                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            t = t + 1
                                            u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                            continue 
                            else:
                                if uint8(t + 1) <= 64:
                                    if uint8(-t + 63) < 32:
                                        if 1 >= stor2:
                                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                t = t + 1
                                                u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                                continue 
                        else:
                            if uint8(t + 1) <= 32:
                                if uint8(-t + 31) < 32:
                                    if 1 >= stor2:
                                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                            s = ext_call.return_data[0] + 1
                                            idx = idx + 1
                                            t = t + 1
                                            u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                            continue 
                            else:
                                if uint8(t + 1) <= 64:
                                    if uint8(-t + 63) < 32:
                                        if 1 >= stor2:
                                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                                s = ext_call.return_data[0] + 1
                                                idx = idx + 1
                                                t = t + 1
                                                u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                                continue 
                        revert 
                    if u:
                        call stor7[uint64(stor6[address(arg1)] - 1)].field_0 with:
                           value u wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call stor7[uint64(stor6[address(arg1)] - 1)].field_0 with:
                           value 1 wei
                             gas 0 wei
                    require ext_call.success
                    require uint64(stor6[address(arg1)] - 1) < stor7.length
                    emit EndGame(stor7[uint64(stor6[address(arg1)] - 1)].field_0, stor7[uint64(stor6[address(arg1)] - 1)].field_768, uint64(stor6[address(arg1)] - 1));
    else:
        if not stor6[address(msg.sender)]:
            emit ErrorLog(address(msg.sender), Array(len=19, data='No games for player'));
        else:
            require uint64(stor6[address(msg.sender)] - 1) < stor7.length
            if stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 != 37:
                emit ErrorLog(address(msg.sender), Array(len=22, data='Gamble already spinned'));
            else:
                require uint64(stor6[address(msg.sender)] - 1) < stor7.length
                if block.number <= stor7[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor0.field_160):
                    emit ErrorLog(address(msg.sender), Array(len=31, data='Wait for playerblock+blockDelay'));
                else:
                    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
                    if not block.hash(stor7[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor0.field_160)):
                        emit ErrorLog(address(msg.sender), Array(len=29, data='Cannot generate random number'));
                        revert 
                    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
                    stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 = uint8(sha3(stor7[uint64(stor6[address(msg.sender)] - 1)].field_0, block.hash(stor7[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor0.field_160))) % 37)
                    stor7[uint64(stor6[address(msg.sender)] - 1)].field_512 = block.number
                    s = 0
                    idx = 0
                    t = 0
                    u = 0
                    while uint8(idx) < 157:
                        if not stor7[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
                            s = s
                            idx = idx + 1
                            t = t
                            u = u
                            continue 
                        mem[576] = 0
                        mem[548] = uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 + 1)
                        require ext_code.size(stor4)
                        call stor4.getCoeff(uint16 rg1) with:
                             gas gas_remaining - 50 wei
                            args uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 + 1)
                        mem[544] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] <= 0:
                            if uint8(t + 1) <= 32:
                                if uint8(-t + 31) < 32:
                                    if 1 >= stor2:
                                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            t = t + 1
                                            u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                            continue 
                            else:
                                if uint8(t + 1) <= 64:
                                    if uint8(-t + 63) < 32:
                                        if 1 >= stor2:
                                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                                s = ext_call.return_data[0]
                                                idx = idx + 1
                                                t = t + 1
                                                u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                                continue 
                        else:
                            if uint8(t + 1) <= 32:
                                if uint8(-t + 31) < 32:
                                    if 1 >= stor2:
                                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                            s = ext_call.return_data[0] + 1
                                            idx = idx + 1
                                            t = t + 1
                                            u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                            continue 
                            else:
                                if uint8(t + 1) <= 64:
                                    if uint8(-t + 63) < 32:
                                        if 1 >= stor2:
                                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                                s = ext_call.return_data[0] + 1
                                                idx = idx + 1
                                                t = t + 1
                                                u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                                continue 
                        revert 
                    if u:
                        call stor7[uint64(stor6[address(msg.sender)] - 1)].field_0 with:
                           value u wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call stor7[uint64(stor6[address(msg.sender)] - 1)].field_0 with:
                           value 1 wei
                             gas 0 wei
                    require ext_call.success
                    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
                    emit EndGame(stor7[uint64(stor6[address(msg.sender)] - 1)].field_0, stor7[uint64(stor6[address(msg.sender)] - 1)].field_768, uint64(stor6[address(msg.sender)] - 1));
}

function checkGameResult(address arg1) {
    if arg1:
        require stor6[address(arg1)]
        require uint64(stor6[address(arg1)] - 1) < stor7.length
        require block.number > stor7[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor0.field_160)
        require uint64(stor6[address(arg1)] - 1) < stor7.length
        if not block.hash(stor7[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor0.field_160)):
            emit ErrorLog(address(msg.sender), Array(len=29, data='Cannot generate random number'));
            revert 
        require uint64(stor6[address(arg1)] - 1) < stor7.length
        stor7[uint64(stor6[address(arg1)] - 1)].field_768 = uint8(sha3(stor7[uint64(stor6[address(arg1)] - 1)].field_0, block.hash(stor7[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor0.field_160))) % 37)
        stor7[uint64(stor6[address(arg1)] - 1)].field_512 = block.number
        s = 0
        idx = 0
        t = 0
        u = 0
        while uint8(idx) < 157:
            if not stor7[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                s = s
                idx = idx + 1
                t = t
                u = u
                continue 
            mem[576] = 0
            mem[548] = uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(arg1)] - 1)].field_768 + 1)
            require ext_code.size(stor4)
            call stor4.getCoeff(uint16 rg1) with:
                 gas gas_remaining - 50 wei
                args uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(arg1)] - 1)].field_768 + 1)
            mem[544] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                if uint8(t + 1) <= 32:
                    if uint8(-t + 31) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                continue 
                else:
                    if uint8(t + 1) <= 64:
                        if uint8(-t + 63) < 32:
                            if 1 >= stor2:
                                if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                    continue 
            else:
                if uint8(t + 1) <= 32:
                    if uint8(-t + 31) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                continue 
                else:
                    if uint8(t + 1) <= 64:
                        if uint8(-t + 63) < 32:
                            if 1 >= stor2:
                                if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                    continue 
            revert 
        require uint64(stor6[address(arg1)] - 1) < stor7.length
        idx = 0
        s = 0
        t = 0
        while uint8(idx) < 157:
            if not stor7[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                idx = idx + 1
                s = s
                t = t
                continue 
            if uint8(s + 1) <= 32:
                if uint8(-s + 31) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor1.field_8)
                            continue 
            else:
                if uint8(s + 1) <= 64:
                    if uint8(-s + 63) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor1.field_8)
                                continue 
            revert 
        require uint64(stor6[address(arg1)] - 1) < stor7.length
        idx = 0
        s = 0
        while uint8(idx) < 157:
            if not stor7[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require uint64(stor6[address(arg1)] - 1) < stor7.length
        if u:
            return stor6[address(arg1)] - 1 << 192, 
                   stor7[uint64(stor6[address(arg1)] - 1)].field_0,
                   stor7[uint64(stor6[address(arg1)] - 1)].field_256,
                   stor7[uint64(stor6[address(arg1)] - 1)].field_512,
                   u,
                   stor7[uint64(stor6[address(arg1)] - 1)].field_768,
                   stor7[uint64(stor6[address(arg1)] - 1)].field_1024,
                   stor7[uint64(stor6[address(arg1)] - 1)].field_1280,
                   stor7[uint64(stor6[address(arg1)] - 1)].field_1536,
                   t,
                   s
        return stor6[address(arg1)] - 1 << 192, 
               stor7[uint64(stor6[address(arg1)] - 1)].field_0,
               stor7[uint64(stor6[address(arg1)] - 1)].field_256,
               stor7[uint64(stor6[address(arg1)] - 1)].field_512,
               1,
               stor7[uint64(stor6[address(arg1)] - 1)].field_768,
               stor7[uint64(stor6[address(arg1)] - 1)].field_1024,
               stor7[uint64(stor6[address(arg1)] - 1)].field_1280,
               stor7[uint64(stor6[address(arg1)] - 1)].field_1536,
               t,
               s
    require stor6[address(msg.sender)]
    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
    require block.number > stor7[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor0.field_160)
    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
    if not block.hash(stor7[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor0.field_160)):
        emit ErrorLog(address(msg.sender), Array(len=29, data='Cannot generate random number'));
        revert 
    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
    stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 = uint8(sha3(stor7[uint64(stor6[address(msg.sender)] - 1)].field_0, block.hash(stor7[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor0.field_160))) % 37)
    stor7[uint64(stor6[address(msg.sender)] - 1)].field_512 = block.number
    s = 0
    idx = 0
    t = 0
    u = 0
    while uint8(idx) < 157:
        if not stor7[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        mem[576] = 0
        mem[548] = uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 + 1)
        require ext_code.size(stor4)
        call stor4.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + stor7[uint64(stor6[address(msg.sender)] - 1)].field_768 + 1)
        mem[544] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            t = t + 1
                            u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                            continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                continue 
        else:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            s = ext_call.return_data[0] + 1
                            idx = idx + 1
                            t = t + 1
                            u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                            continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        if 1 >= stor2:
                            if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor1.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor1.field_8)) + u
                                continue 
        revert 
    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 157:
        if not stor7[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            continue 
        if uint8(s + 1) <= 32:
            if uint8(-s + 31) < 32:
                if 1 >= stor2:
                    if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                        idx = idx + 1
                        s = s + 1
                        t = t + Mask(248, 0, stor1.field_8)
                        continue 
        else:
            if uint8(s + 1) <= 64:
                if uint8(-s + 63) < 32:
                    if 1 >= stor2:
                        if Mask(248, 0, stor1.field_8) <= uint256(stor1.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor1.field_8)
                            continue 
        revert 
    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
    idx = 0
    s = 0
    while uint8(idx) < 157:
        if not stor7[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint64(stor6[address(msg.sender)] - 1) < stor7.length
    if u:
        return stor6[address(msg.sender)] - 1 << 192, 
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_0,
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_256,
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_512,
               u,
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_768,
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_1024,
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_1280,
               stor7[uint64(stor6[address(msg.sender)] - 1)].field_1536,
               t,
               s
    return stor6[address(msg.sender)] - 1 << 192, 
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_0,
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_256,
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_512,
           1,
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_768,
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_1024,
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_1280,
           stor7[uint64(stor6[address(msg.sender)] - 1)].field_1536,
           t,
           s
}



}
