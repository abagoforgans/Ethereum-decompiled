contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of struct stor7;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[5112 len 32]
    stor2 = code.data[5144 len 32]
    stor3 = code.data[5176 len 32]
    stor4 = code.data[5208 len 32]
    stor6 = code.data[5240 len 32]
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = 8 * stor7.length + 1
        while 8 * stor7.length > idx:
            stor7[idx].field_0 = 0
            stor7[idx].field_256 = 0
            stor7[idx].field_512 = 0
            stor7[idx].field_768 = 0
            stor7[idx].field_1024 = 0
            stor7[idx].field_1280 = 0
            stor7[idx].field_1536 = 0
            stor7[idx].field_1792 = 0
            idx = idx + 8
            continue 
    require stor7.length < stor7.length
    stor7[stor7.length].field_0 = stor7.length
    stor7[stor7.length].field_256 = 0
    stor7[stor7.length].field_512 = stor2
    stor7[stor7.length].field_768 = stor3
    stor7[stor7.length].field_1792 = stor4
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_1280 = stor6
    stor7[stor7.length].field_256 = 1
    emit RoundOpen(stor2, stor3, stor7.length);
    stor5 = stor7.length
    return code.data[747 len 4365]
}



// =====================  Runtime code  =====================


address stor0;
array of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint8 stor6;
array of struct roundMinAmountByBet;
array of struct roundBetNumber;
mapping of uint256 stor9;

function getRoundMinAmountByBet(uint256 arg1) {
    require arg1 < roundMinAmountByBet.length
    return roundMinAmountByBet[arg1].field_768
}

function getRoundBetNumber(uint256 arg1, uint256 arg2) {
    require arg2 < roundBetNumber[arg1].field_0
    return uint8(roundBetNumber[arg1][arg2].field_768)
}

function getRoundPrize(uint256 arg1) {
    require arg1 < roundMinAmountByBet.length
    return roundMinAmountByBet[arg1].field_1792
}

function getRoundMaxNumberOfBets(uint256 arg1) {
    require arg1 < roundMinAmountByBet.length
    return roundMinAmountByBet[arg1].field_512
}

function getCurrentRoundId() {
    return stor5.length
}

function getRoundOpen(uint256 arg1) {
    require arg1 < roundMinAmountByBet.length
    return bool(uint8(roundMinAmountByBet[arg1].field_256))
}

function getRoundNumber(uint256 arg1) {
    require arg1 < roundMinAmountByBet.length
    return uint8(roundMinAmountByBet[arg1].field_1536)
}

function getBlockPointer() {
    return stor1.length
}

function getRoundBetAmount(uint256 arg1, uint256 arg2) {
    require arg2 < roundBetNumber[arg1].field_0
    return roundBetNumber[arg1][arg2].field_512
}

function getRoundBlockNumber(uint256 arg1) {
    require arg1 < roundMinAmountByBet.length
    return roundMinAmountByBet[arg1].field_1024
}

function getRoundNumberOfBets(uint256 arg1) {
    return roundBetNumber[arg1].field_0
}

function getRoundBetOrigin(uint256 arg1, uint256 arg2) {
    require arg2 < roundBetNumber[arg1].field_0
    return address(roundBetNumber[arg1][arg2].field_256)
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getBlockHash(uint256 arg1) {
    if arg1 <= 256:
        return block.hash(block.number - arg1)
    return block.hash(block.number - 256)
}

function getBalance() {
    if stor9[address(msg.sender)] <= 0:
        return 0
    if stor9[address(msg.sender)] >= eth.balance(this.address):
        return 0
    return stor9[address(msg.sender)]
}

function withdraw() {
    require ext_code.size(this.address)
    call this.address.0x12065fe0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    stor9[address(msg.sender)] = 0
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getNumber(bytes32 arg1) {
    idx = 31
    s = 0
    while idx >= 0:
        require idx < 32
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 < '0':
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                idx = idx - 1
                s = s
                continue 
            idx = idx - 1
            s = 1
            continue 
        require idx < 32
        if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 > '9':
            require idx < 32
            if Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                idx = idx - 1
                s = s
                continue 
            idx = idx - 1
            s = 1
            continue 
        require idx < 32
        return uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0) - 256) - 48)
    return 0
}

function bet(uint8 arg1) payable {
    require stor5.length < roundMinAmountByBet.length
    if not uint8(roundMinAmountByBet[stor5.length].field_256):
        return 0
    require stor5.length < roundMinAmountByBet.length
    if msg.value < roundMinAmountByBet[stor5.length].field_768:
        return 0
    roundBetNumber[stor5.length].field_0++
    if not roundBetNumber[stor5.length].field_0 <= roundBetNumber[stor5.length].field_0 + 1:
        idx = (5 * roundBetNumber[stor5.length].field_0) + 5
        while 5 * roundBetNumber[stor5.length].field_0 > idx:
            roundBetNumber[stor5.length][idx].field_0 = 0
            address(roundBetNumber[stor5.length][idx].field_256) = 0
            roundBetNumber[stor5.length][idx].field_512 = 0
            uint8(roundBetNumber[stor5.length][idx].field_768) = 0
            roundBetNumber[stor5.length][idx].field_1024 = 0
            idx = idx + 5
            continue 
    require roundBetNumber[stor5.length].field_0 < roundBetNumber[stor5.length].field_0
    roundBetNumber[stor5.length][roundBetNumber[stor5.length].field_0].field_0 = roundBetNumber[stor5.length].field_0
    require roundBetNumber[stor5.length].field_0 < roundBetNumber[stor5.length].field_0
    roundBetNumber[stor5.length][roundBetNumber[stor5.length].field_0].field_1024 = stor5.length
    require roundBetNumber[stor5.length].field_0 < roundBetNumber[stor5.length].field_0
    uint8(roundBetNumber[stor5.length][roundBetNumber[stor5.length].field_0].field_768) = arg1
    require roundBetNumber[stor5.length].field_0 < roundBetNumber[stor5.length].field_0
    address(roundBetNumber[stor5.length][roundBetNumber[stor5.length].field_0].field_256) = msg.sender
    require roundBetNumber[stor5.length].field_0 < roundBetNumber[stor5.length].field_0
    roundBetNumber[stor5.length][roundBetNumber[stor5.length].field_0].field_512 = msg.value
    emit BetPlaced(stor5.length, roundBetNumber[stor5.length].field_0, msg.sender);
    require stor5.length < roundMinAmountByBet.length
    if roundBetNumber[stor5.length].field_0 == roundMinAmountByBet[stor5.length].field_512:
        require stor5.length < roundMinAmountByBet.length
        uint8(roundMinAmountByBet[stor5.length].field_256) = 0
        require stor5.length < roundMinAmountByBet.length
        if stor1.length <= 256:
            roundMinAmountByBet[stor5.length].field_1280 = block.hash(block.number - stor1.length)
        else:
            roundMinAmountByBet[stor5.length].field_1280 = block.hash(block.number - 256)
        idx = 31
        s = 0
        while idx >= 0:
            require idx < 32
            require idx < 32
            if Mask(8, -(('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) + 256, idx) << (('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) - 8 < '0':
                if Mask(8, -(('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) + 256, idx) << (('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    idx = idx - 1
                    s = s
                    continue 
                idx = idx - 1
                s = 1
                continue 
            require idx < 32
            if Mask(8, -(('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) + 256, idx) << (('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) - 8 > '9':
                if Mask(8, -(('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) + 256, idx) << (('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) - 8 != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                    idx = idx - 1
                    s = s
                    continue 
                idx = idx - 1
                s = 1
                continue 
            require stor5.length < roundMinAmountByBet.length
            uint8(roundMinAmountByBet[stor5.length].field_1536) = uint8((Mask(8, -(('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) + 256, idx) << (('field', 1283, ('stor', ('array', ('mul', 8, ('stor', ('length', ('name', 'stor5', 5)))), ('name', 'roundMinAmountByBet', 7)))), 0) - 256) - 48)
            idx = 0
            while idx < roundBetNumber[stor5.length].field_0:
                require stor5.length < roundMinAmountByBet.length
                require idx < roundBetNumber[stor5.length].field_0
                if uint8(roundBetNumber[stor5.length][idx].field_768) == uint8(roundMinAmountByBet[stor5.length].field_1536):
                    require stor5.length < roundMinAmountByBet.length
                    require idx < roundBetNumber[stor5.length].field_0
                    stor9[address(stor8[stor5.length][idx].field_256)] += roundMinAmountByBet[stor5.length].field_1792
                    require idx < roundBetNumber[stor5.length].field_0
                    require stor5.length < roundMinAmountByBet.length
                    mem[96] = roundMinAmountByBet[stor5.length].field_1792
                    emit RoundWinner(roundMinAmountByBet[stor5.length].field_1792, address(roundBetNumber[stor5.length][idx].field_256));
                mem[0] = stor5.length
                mem[32] = 8
                idx = idx + 1
                continue 
            require stor5.length < roundMinAmountByBet.length
            emit RoundClose(uint8(roundMinAmountByBet[stor5.length].field_1536), roundMinAmountByBet[stor5.length].field_1024, roundMinAmountByBet[stor5.length].field_1280, stor5.length);
            roundMinAmountByBet.length++
            if not roundMinAmountByBet.length <= roundMinAmountByBet.length + 1:
                idx = sha3(7) + (8 * roundMinAmountByBet.length + 1)
                while sha3(7) + (8 * roundMinAmountByBet.length) > idx:
                    stor[idx] = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    stor4[idx] = 0
                    stor5[idx] = 0
                    stor6[idx] = 0
                    roundMinAmountByBet[idx].field_0 = 0
                    idx = idx + 8
                    continue 
            require roundMinAmountByBet.length < roundMinAmountByBet.length
            roundMinAmountByBet[roundMinAmountByBet.length].field_0 = roundMinAmountByBet.length
            uint8(roundMinAmountByBet[roundMinAmountByBet.length].field_256) = 0
            roundMinAmountByBet[roundMinAmountByBet.length].field_512 = stor2.length
            roundMinAmountByBet[roundMinAmountByBet.length].field_768 = stor3.length
            roundMinAmountByBet[roundMinAmountByBet.length].field_1792 = stor4.length
            roundMinAmountByBet[roundMinAmountByBet.length].field_1024 = 0
            roundMinAmountByBet[roundMinAmountByBet.length].field_1280 = stor6.length
            uint8(roundMinAmountByBet[roundMinAmountByBet.length].field_256) = 1
            emit RoundOpen(stor2.length, stor3.length, roundMinAmountByBet.length);
            stor5.length = roundMinAmountByBet.length
            return 1
        require stor5.length < roundMinAmountByBet.length
        uint8(roundMinAmountByBet[stor5.length].field_1536) = 0
        idx = 0
        while idx < roundBetNumber[stor5.length].field_0:
            require stor5.length < roundMinAmountByBet.length
            require idx < roundBetNumber[stor5.length].field_0
            if uint8(roundBetNumber[stor5.length][idx].field_768) == uint8(roundMinAmountByBet[stor5.length].field_1536):
                require stor5.length < roundMinAmountByBet.length
                require idx < roundBetNumber[stor5.length].field_0
                stor9[address(stor8[stor5.length][idx].field_256)] += roundMinAmountByBet[stor5.length].field_1792
                require idx < roundBetNumber[stor5.length].field_0
                require stor5.length < roundMinAmountByBet.length
                mem[96] = roundMinAmountByBet[stor5.length].field_1792
                emit RoundWinner(roundMinAmountByBet[stor5.length].field_1792, address(roundBetNumber[stor5.length][idx].field_256));
            mem[0] = stor5.length
            mem[32] = 8
            idx = idx + 1
            continue 
        require stor5.length < roundMinAmountByBet.length
        emit RoundClose(uint8(roundMinAmountByBet[stor5.length].field_1536), roundMinAmountByBet[stor5.length].field_1024, roundMinAmountByBet[stor5.length].field_1280, stor5.length);
        roundMinAmountByBet.length++
        if not roundMinAmountByBet.length <= roundMinAmountByBet.length + 1:
            idx = 8 * roundMinAmountByBet.length + 1
            while 8 * roundMinAmountByBet.length > idx:
                roundMinAmountByBet[idx].field_0 = 0
                uint8(roundMinAmountByBet[idx].field_256) = 0
                roundMinAmountByBet[idx].field_512 = 0
                roundMinAmountByBet[idx].field_768 = 0
                roundMinAmountByBet[idx].field_1024 = 0
                roundMinAmountByBet[idx].field_1280 = 0
                uint8(roundMinAmountByBet[idx].field_1536) = 0
                roundMinAmountByBet[idx].field_1792 = 0
                idx = idx + 8
                continue 
        require roundMinAmountByBet.length < roundMinAmountByBet.length
        roundMinAmountByBet[roundMinAmountByBet.length].field_0 = roundMinAmountByBet.length
        uint8(roundMinAmountByBet[roundMinAmountByBet.length].field_256) = 0
        roundMinAmountByBet[roundMinAmountByBet.length].field_512 = stor2.length
        roundMinAmountByBet[roundMinAmountByBet.length].field_768 = stor3.length
        roundMinAmountByBet[roundMinAmountByBet.length].field_1792 = stor4.length
        roundMinAmountByBet[roundMinAmountByBet.length].field_1024 = 0
        roundMinAmountByBet[roundMinAmountByBet.length].field_1280 = stor6.length
        uint8(roundMinAmountByBet[roundMinAmountByBet.length].field_256) = 1
        emit RoundOpen(stor2.length, stor3.length, roundMinAmountByBet.length);
        stor5.length = roundMinAmountByBet.length
    return 1
}



}
