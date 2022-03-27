contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() {
    stor10 = 0
    stor3 = msg.sender
    stor6 = 0
    stor7 = 0
    stor5 = 0
    stor8 = 1
    stor9 = 0
    return code.data[91 len 6001]
}



// =====================  Runtime code  =====================


#
#  - sub_087f307a(?)
#
mapping of struct stor0;
mapping of struct arbiters;
mapping of struct sub_4b5f44ea;
address stor3;
address stor4;
uint256 stor5;
uint256 numGamesStarted;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_ea46cba2;

function getNumGamesStarted() {
    return numGamesStarted
}

function sub_4b5f44ea(?) {
    return sub_4b5f44ea[arg1].field_0, 
           sub_4b5f44ea[arg1].field_256,
           sub_4b5f44ea[arg1].field_512,
           sub_4b5f44ea[arg1].field_768,
           bool(sub_4b5f44ea[arg1].field_1024)
}

function arbiters(address arg1) {
    return arbiters[arg1].field_0, 
           arbiters[arg1].field_256,
           arbiters[arg1].field_512,
           arbiters[arg1].field_768,
           bool(arbiters[arg1].field_1024)
}

function sub_ea46cba2(?) {
    return sub_ea46cba2
}

function HaraKiri() {
    if stor3 == msg.sender:
        selfdestruct(stor4)
    emit code.data[5969 len 32]: Array(len=25, data='Kill attempt by non owner')
}

function _fallback() {
    revert 
}

function sub_4b60c3ce(?) {
    sub_ea46cba2 = arg1
}

function sub_484fc538(?) {
    if stor3 == msg.sender:
        if not stor4:
            stor4 = arg1
            emit 0x7d933dd7: Array(len=17, data='Partner Assigned!'), 1
}

function setRegistrationFee(uint256 arg1) {
    if stor3 == msg.sender:
        stor8 = arg1
    else:
        emit code.data[5969 len 32]: Array(len=27, data='FeeSet attempt by non owner')
}

function sub_8d002bc4(?) {
    if arg1 > 0:
        if arg1 <= numGamesStarted:
            if stor0[arg1].field_768:
                return stor0[arg1].field_1536
    emit code.data[5969 len 32]: 'Invalid Game'
    return 0
}

function sub_b6813e08(?) {
    idx = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 2
        if sub_4b5f44ea[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return arbiters[address(arg1)].field_256
    emit code.data[5969 len 32]: 'Invalid Arb'
    return 0
}

function sub_41922e15(?) {
    return stor0[arg1].field_512, 
           bool(stor0[arg1].field_768),
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048,
           stor0[arg1].field_2304,
           stor0[arg1].field_2560
}

function sub_fecc70dd(?) {
    if arg1 > 0:
        if arg1 <= numGamesStarted:
            if stor0[arg1].field_768:
                return stor0[arg1].field_512, 
                       stor0[arg1].field_2048,
                       stor0[arg1].field_2560,
                       stor0[arg1].field_2304,
                       bool(stor0[arg1].field_768),
                       stor0[arg1].field_1536
    emit code.data[5969 len 32]: 'Invalid Game'
    return 0
}

function setArbiterLocked(address arg1, bool arg2) {
    if stor3 != msg.sender:
        emit code.data[5969 len 32]: Array(len=16, data='Only Owner Calls')
    else:
        idx = 0
        while idx < stor5:
            mem[0] = idx
            mem[32] = 2
            if sub_4b5f44ea[idx].field_0 != arg1:
                idx = idx + 1
                continue 
            arbiters[address(arg1)].field_1024 = uint8(arg2)
        emit code.data[5969 len 32]: 'Invalid Arb'
}

function sub_d7f12951(?) {
    if arg1 <= 0:
        emit code.data[5969 len 32]: 'Invalid Game'
    else:
        if arg1 > numGamesStarted:
            emit code.data[5969 len 32]: 'Invalid Game'
        else:
            if not stor0[arg1].field_768:
                emit code.data[5969 len 32]: 'Invalid Game'
            else:
                if arg2 >= 0:
                    if arg2 <= stor0[arg1].field_512:
                        return stor0[arg1][1][arg2].field_0
                emit code.data[5969 len 32]: Array(len=11, data='Invalid Idx')
    return 0
}

function sub_c563d079(?) payable {
    if arg1 > 0:
        if arg1 <= numGamesStarted:
            if stor0[arg1].field_768:
                idx = 0
                while idx < stor0[arg1].field_512:
                    if stor0[arg1][1][idx].field_0 != msg.sender:
                        mem[0] = arg1
                        mem[32] = 0
                        idx = idx + 1
                        continue 
                    stor0[arg1][address(msg.sender)].field_0 += msg.value
                    stor0[arg1].field_1280 = block.timestamp
                    emit 0x9de6fdc5: arg1, msg.sender, msg.value
                    return 0
    emit code.data[5969 len 32]: Array(len=14, data='Invalid Player')
    revert 
}

function sub_9387bf0e(?) payable {
    if stor8 != msg.value:
        emit code.data[5969 len 32]: Array(len=16, data='Insufficient Fee')
        revert 
    arbiters[address(msg.sender)].field_0 = msg.sender
    arbiters[address(msg.sender)].field_256 = 0
    arbiters[address(msg.sender)].field_512 = 0
    arbiters[address(msg.sender)].field_1024 = 0
    stor5++
    sub_4b5f44ea[stor5].field_0 = arbiters[address(msg.sender)].field_0
    sub_4b5f44ea[stor5].field_64 = 0
    sub_4b5f44ea[stor5].field_256 = arbiters[address(msg.sender)].field_256
    sub_4b5f44ea[stor5].field_512 = arbiters[address(msg.sender)].field_512
    sub_4b5f44ea[stor5].field_768 = arbiters[address(msg.sender)].field_768
    sub_4b5f44ea[stor5].field_1024 = 0
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor9 += msg.value
    emit 0x1a2d4465 
}

function sub_7be1c2ef(?) {
    idx = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 2
        if sub_4b5f44ea[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if stor0[arg1].field_1792 != msg.sender:
            emit code.data[5969 len 32]: Array(len=12, data='Arb Mismatch')
        else:
            if arg1 > 0:
                if arg1 <= numGamesStarted:
                    if stor0[arg1].field_768:
                        idx = 0
                        while idx < stor0[arg1].field_512:
                            if stor0[arg1][1][idx].field_0 != arg2:
                                mem[0] = arg1
                                mem[32] = 0
                                idx = idx + 1
                                continue 
                            if stor0[arg1][address(arg2)].field_0 != arg3:
                                emit code.data[5969 len 32]: Array(len=15, data='Cheat Detected!')
                            else:
                                s = 0
                                s = 0
                                idx = 0
                                s = 0
                                while idx < stor0[arg1].field_512:
                                    if stor0[arg1][1][idx].field_0 != arg2:
                                        if stor0[arg1][stor0[arg1][1][idx].field_0].field_0 > 0:
                                            require stor0[arg1][address(arg2)].field_0 >= stor0[arg1][stor0[arg1][1][idx].field_0].field_0 / 2
                                    mem[0] = arg1
                                    mem[32] = 0
                                    s = stor0[arg1][stor0[arg1][1][idx].field_0].field_0
                                    s = stor0[arg1][1][idx].field_0
                                    idx = idx + 1
                                    s = stor0[arg1][stor0[arg1][1][idx].field_0].field_0 + s
                                    continue 
                                stor0[arg1].field_1280 = block.timestamp
                                stor0[arg1].field_768 = 0
                                stor0[arg1].field_1536 = arg2
                                call stor4 with:
                                   value s / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    idx = 0
                                    while idx < stor0[arg1].field_512:
                                        stor0[arg1][stor0[arg1][1][idx].field_0].field_0 = 0
                                        mem[0] = arg1
                                        mem[32] = 0
                                        idx = idx + 1
                                        continue 
                                    arbiters[address(msg.sender)].field_512++
                                    stor7++
                                    call arg2 with:
                                       value s - (s / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        emit 0x3b610dd4: arg1, address(arg2), s - (s / 100)
                                    emit code.data[5969 len 32]: Array(len=10, data='Send Error')
                            revert 
            emit code.data[5969 len 32]: Array(len=14, data='Invalid Player')
    emit code.data[5969 len 32]: 'Invalid Arb'
}

function sub_565cc612(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 2
        if sub_4b5f44ea[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor5:
            mem[0] = idx
            mem[32] = 2
            if sub_4b5f44ea[idx].field_0 != msg.sender:
                idx = idx + 1
                continue 
            if arbiters[address(msg.sender)].field_1024:
                emit code.data[5969 len 32]: Array(len=10, data='Arb Locked')
                return -1
            if arg2.length < arbiters[address(msg.sender)].field_768:
                emit code.data[5969 len 32]: Array(len=18, data='Not Enough Players')
                return -1
            numGamesStarted++
            stor0[stor6 + 1].field_1792 = msg.sender
            stor0[stor6 + 1].field_768 = 1
            stor0[stor6 + 1].field_1024 = block.timestamp
            stor0[stor6 + 1].field_1280 = block.timestamp
            stor0[stor6 + 1].field_512 = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if 0 == idx:
                    stor0[stor6 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                    stor0[stor6 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = numGamesStarted + 1
                    mem[32] = 0
                    stor0[stor6 + 1].field_512++
                else:
                    if idx > 0:
                        if numGamesStarted + 1 > 0:
                            if numGamesStarted + 1 <= numGamesStarted:
                                if stor0[stor6 + 1].field_768:
                                    s = 0
                                    while s < stor0[stor6 + 1].field_512:
                                        mem[0] = numGamesStarted + 1
                                        mem[32] = 0
                                        if stor0[stor6 + 1][1][s].field_0 != mem[(32 * idx) + 140 len 20]:
                                            s = s + 1
                                            continue 
                                        s = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                        stor0[stor6 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                        stor0[stor6 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                        mem[0] = numGamesStarted + 1
                        mem[32] = 0
                        stor0[stor6 + 1].field_512++
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            if stor0[stor6 + 1].field_512 < arg2.length:
                emit code.data[5969 len 32]: Array(len=16, data='NumPlayers<Param')
                revert 
            arbiters[address(msg.sender)].field_256++
            numGamesStarted++
            emit 0xc67dcdc1: arg1, numGamesStarted + 1
            return (numGamesStarted + 1)
        mem[(32 * arg2.length) + 128] = 32
        mem[(32 * arg2.length) + 160] = 11
        mem[(32 * arg2.length) + 192] = 0x496e76616c696420417262000000000000000000000000000000000000000000
        emit code.data[5969 len 32]: 'Invalid Arb'
        if arg2.length < arbiters[address(msg.sender)].field_768:
            emit code.data[5969 len 32]: Array(len=18, data='Not Enough Players')
            return -1
        numGamesStarted++
        stor0[stor6 + 1].field_1792 = msg.sender
        stor0[stor6 + 1].field_768 = 1
        stor0[stor6 + 1].field_1024 = block.timestamp
        stor0[stor6 + 1].field_1280 = block.timestamp
        stor0[stor6 + 1].field_512 = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            if 0 == idx:
                stor0[stor6 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                stor0[stor6 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = numGamesStarted + 1
                mem[32] = 0
                stor0[stor6 + 1].field_512++
            else:
                if idx > 0:
                    if numGamesStarted + 1 > 0:
                        if numGamesStarted + 1 <= numGamesStarted:
                            if stor0[stor6 + 1].field_768:
                                s = 0
                                while s < stor0[stor6 + 1].field_512:
                                    mem[0] = numGamesStarted + 1
                                    mem[32] = 0
                                    if stor0[stor6 + 1][1][s].field_0 != mem[(32 * idx) + 140 len 20]:
                                        s = s + 1
                                        continue 
                                    s = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                    stor0[stor6 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                    stor0[stor6 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = numGamesStarted + 1
                    mem[32] = 0
                    stor0[stor6 + 1].field_512++
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        if stor0[stor6 + 1].field_512 < arg2.length:
            emit code.data[5969 len 32]: Array(len=16, data='NumPlayers<Param')
            revert 
        arbiters[address(msg.sender)].field_256++
        numGamesStarted++
        emit 0xc67dcdc1: arg1, numGamesStarted + 1
        return (numGamesStarted + 1)
    emit code.data[5969 len 32]: 'Invalid Arb'
    return -1
}



}
