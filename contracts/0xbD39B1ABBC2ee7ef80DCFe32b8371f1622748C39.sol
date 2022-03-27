contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor7 = 0
    stor0 = msg.sender
    stor3 = 0
    stor4 = 0
    stor2 = 0
    stor5 = 1
    stor6 = 0
    return code.data[140 len 10350]
}



// =====================  Runtime code  =====================


#
#  - sub_087f307a(?)
#
address sub_b2ee56aeAddress;
address sub_77da2f79Address;
uint256 sub_beff102b;
uint256 numGamesStarted;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of struct stor8;
mapping of struct stor9;
mapping of struct stor10;

function getNumGamesStarted() {
    return numGamesStarted
}

function sub_77da2f79(?) {
    return sub_77da2f79Address
}

function sub_b2ee56ae(?) {
    return sub_b2ee56aeAddress
}

function sub_beff102b(?) {
    return sub_beff102b
}

function HaraKiri() {
    if msg.sender == sub_b2ee56aeAddress:
        selfdestruct(sub_77da2f79Address)
    emit 0x78243600: Array(len=25, data='Kill attempt by non owner')
}

function _fallback() {
    revert 
}

function sub_4b60c3ce(?) {
    stor7 = arg1
}

function sub_00a7bd89(?) {
    sub_b2ee56aeAddress = arg1
}

function sub_7546e893(?) {
    sub_77da2f79Address = arg1
}

function setRegistrationFee(uint256 arg1) {
    if msg.sender == sub_b2ee56aeAddress:
        stor5 = arg1
    else:
        emit 0x78243600: Array(len=27, data='FeeSet attempt by non owner')
}

function sub_484fc538(?) {
    if msg.sender == sub_b2ee56aeAddress:
        if not sub_77da2f79Address:
            sub_77da2f79Address = arg1
            emit 0x7d933dd7: Array(len=17, data='Partner Assigned!'), 1
}

function sub_8d002bc4(?) {
    if arg1 > 0:
        if arg1 <= numGamesStarted:
            if stor8[arg1].field_768:
                return stor8[arg1].field_1536
    emit 0x78243600: Array(len=12, data='Invalid Game')
    return 0
}

function sub_b6813e08(?) {
    idx = 0
    while idx < sub_beff102b:
        mem[0] = idx
        mem[32] = 10
        if stor10[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return stor9[address(arg1)].field_256
    emit 0x78243600: Array(len=11, data='Invalid Arb')
    return 0
}

function sub_fecc70dd(?) {
    if arg1 > 0:
        if arg1 <= numGamesStarted:
            if stor8[arg1].field_768:
                return stor8[arg1].field_512, 
                       stor8[arg1].field_2048,
                       stor8[arg1].field_2560,
                       stor8[arg1].field_2304,
                       bool(stor8[arg1].field_768),
                       stor8[arg1].field_1536
    emit 0x78243600: Array(len=12, data='Invalid Game')
    return 0
}

function setArbiterLocked(address arg1, bool arg2) {
    if sub_b2ee56aeAddress != msg.sender:
        emit 0x78243600: Array(len=16, data='Only Owner Calls')
    else:
        idx = 0
        while idx < sub_beff102b:
            mem[0] = idx
            mem[32] = 10
            if stor10[idx].field_0 != arg1:
                idx = idx + 1
                continue 
            stor9[address(arg1)].field_1024 = uint8(arg2)
        emit 0x78243600: Array(len=11, data='Invalid Arb')
}

function sub_d7f12951(?) {
    if arg1 <= 0:
        emit 0x78243600: Array(len=12, data='Invalid Game')
    else:
        if arg1 > numGamesStarted:
            emit 0x78243600: Array(len=12, data='Invalid Game')
        else:
            if not stor8[arg1].field_768:
                emit 0x78243600: Array(len=12, data='Invalid Game')
            else:
                if arg2 >= 0:
                    if arg2 <= stor8[arg1].field_512:
                        return stor8[arg1][1][arg2].field_0
                emit 0x78243600: Array(len=11, data='Invalid Idx')
    return 0
}

function sub_c563d079(?) payable {
    if arg1 > 0:
        if arg1 <= numGamesStarted:
            if stor8[arg1].field_768:
                idx = 0
                while idx < stor8[arg1].field_512:
                    if stor8[arg1][1][idx].field_0 != msg.sender:
                        mem[0] = arg1
                        mem[32] = 8
                        idx = idx + 1
                        continue 
                    stor8[arg1][address(msg.sender)].field_0 += msg.value
                    stor8[arg1].field_1280 = block.timestamp
                    emit 0x9de6fdc5: arg1, msg.sender, msg.value
                    return 0
    emit 0x78243600: Array(len=14, data='Invalid Player')
    revert 
}

function sub_9387bf0e(?) payable {
    if stor5 != msg.value:
        emit 0x78243600: Array(len=16, data='Insufficient Fee')
        revert 
    stor9[address(msg.sender)].field_0 = msg.sender
    stor9[address(msg.sender)].field_256 = 0
    stor9[address(msg.sender)].field_512 = 0
    stor9[address(msg.sender)].field_1024 = 0
    sub_beff102b++
    stor10[stor2].field_0 = stor9[address(msg.sender)].field_0
    stor10[stor2].field_256 = stor9[address(msg.sender)].field_256
    stor10[stor2].field_512 = stor9[address(msg.sender)].field_512
    stor10[stor2].field_768 = stor9[address(msg.sender)].field_768
    stor10[stor2].field_1024 = uint8(bool(stor9[address(msg.sender)].field_1024))
    call sub_77da2f79Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor6 += msg.value
    emit 0x1a2d4465 
}

function sub_7be1c2ef(?) {
    idx = 0
    while idx < sub_beff102b:
        mem[0] = idx
        mem[32] = 10
        if stor10[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if stor8[arg1].field_1792 != msg.sender:
            emit 0x78243600: Array(len=12, data='Arb Mismatch')
        else:
            if arg1 > 0:
                if arg1 <= numGamesStarted:
                    if stor8[arg1].field_768:
                        idx = 0
                        while idx < stor8[arg1].field_512:
                            if stor8[arg1][1][idx].field_0 != arg2:
                                mem[0] = arg1
                                mem[32] = 8
                                idx = idx + 1
                                continue 
                            if stor8[arg1][address(arg2)].field_0 != arg3:
                                emit 0x78243600: Array(len=15, data='Cheat Detected!')
                            else:
                                s = 0
                                s = 0
                                idx = 0
                                s = 0
                                while idx < stor8[arg1].field_512:
                                    if stor8[arg1][1][idx].field_0 != arg2:
                                        if stor8[arg1][stor8[arg1][1][idx].field_0].field_0 > 0:
                                            require stor8[arg1][address(arg2)].field_0 >= stor8[arg1][stor8[arg1][1][idx].field_0].field_0 / 2
                                    mem[0] = arg1
                                    mem[32] = 8
                                    s = stor8[arg1][stor8[arg1][1][idx].field_0].field_0
                                    s = stor8[arg1][1][idx].field_0
                                    idx = idx + 1
                                    s = s + stor8[arg1][stor8[arg1][1][idx].field_0].field_0
                                    continue 
                                stor8[arg1].field_1280 = block.timestamp
                                stor8[arg1].field_768 = 0
                                stor8[arg1].field_1536 = arg2
                                call sub_77da2f79Address with:
                                   value s / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    idx = 0
                                    while idx < stor8[arg1].field_512:
                                        stor8[arg1][stor8[arg1][1][idx].field_0].field_0 = 0
                                        mem[0] = arg1
                                        mem[32] = 8
                                        idx = idx + 1
                                        continue 
                                    stor9[address(msg.sender)].field_512++
                                    stor4++
                                    call arg2 with:
                                       value s - (s / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        emit 0x3b610dd4: arg1, address(arg2), s - (s / 100)
                                    emit 0x78243600: Array(len=10, data='Send Error')
                            revert 
            emit 0x78243600: Array(len=14, data='Invalid Player')
    emit 0x78243600: Array(len=11, data='Invalid Arb')
}

function sub_565cc612(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < sub_beff102b:
        mem[0] = idx
        mem[32] = 10
        if stor10[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_beff102b:
            mem[0] = idx
            mem[32] = 10
            if stor10[idx].field_0 != msg.sender:
                idx = idx + 1
                continue 
            if stor9[address(msg.sender)].field_1024:
                emit 0x78243600: Array(len=10, data='Arb Locked')
                return -1
            if arg2.length < stor9[address(msg.sender)].field_768:
                emit 0x78243600: Array(len=18, data='Not Enough Players')
                return -1
            numGamesStarted++
            stor8[stor3 + 1].field_1792 = msg.sender
            stor8[stor3 + 1].field_768 = 1
            stor8[stor3 + 1].field_1024 = block.timestamp
            stor8[stor3 + 1].field_1280 = block.timestamp
            stor8[stor3 + 1].field_512 = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if not idx:
                    stor8[stor3 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                    stor8[stor3 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = numGamesStarted + 1
                    mem[32] = 8
                    stor8[stor3 + 1].field_512++
                else:
                    if idx > 0:
                        if numGamesStarted + 1 > 0:
                            if numGamesStarted + 1 <= numGamesStarted:
                                if stor8[stor3 + 1].field_768:
                                    s = 0
                                    while s < stor8[stor3 + 1].field_512:
                                        mem[0] = numGamesStarted + 1
                                        mem[32] = 8
                                        if stor8[stor3 + 1][1][s].field_0 != mem[(32 * idx) + 140 len 20]:
                                            s = s + 1
                                            continue 
                                        s = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                        stor8[stor3 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                        stor8[stor3 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                        mem[0] = numGamesStarted + 1
                        mem[32] = 8
                        stor8[stor3 + 1].field_512++
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            if stor8[stor3 + 1].field_512 < arg2.length:
                emit 0x78243600: Array(len=16, data='NumPlayers<Param')
                revert 
            stor9[address(msg.sender)].field_256++
            numGamesStarted++
            emit 0xc67dcdc1: arg1, numGamesStarted + 1
            return (numGamesStarted + 1)
        mem[(32 * arg2.length) + 128] = 32
        mem[(32 * arg2.length) + 160] = 11
        mem[(32 * arg2.length) + 192] = 'Invalid Arb'
        emit 0x78243600: Array(len=11, data='Invalid Arb')
        if arg2.length < stor9[address(msg.sender)].field_768:
            emit 0x78243600: Array(len=18, data='Not Enough Players')
            return -1
        numGamesStarted++
        stor8[stor3 + 1].field_1792 = msg.sender
        stor8[stor3 + 1].field_768 = 1
        stor8[stor3 + 1].field_1024 = block.timestamp
        stor8[stor3 + 1].field_1280 = block.timestamp
        stor8[stor3 + 1].field_512 = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            if not idx:
                stor8[stor3 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                stor8[stor3 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = numGamesStarted + 1
                mem[32] = 8
                stor8[stor3 + 1].field_512++
            else:
                if idx > 0:
                    if numGamesStarted + 1 > 0:
                        if numGamesStarted + 1 <= numGamesStarted:
                            if stor8[stor3 + 1].field_768:
                                s = 0
                                while s < stor8[stor3 + 1].field_512:
                                    mem[0] = numGamesStarted + 1
                                    mem[32] = 8
                                    if stor8[stor3 + 1][1][s].field_0 != mem[(32 * idx) + 140 len 20]:
                                        s = s + 1
                                        continue 
                                    s = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                    stor8[stor3 + 1][address(mem[(32 * idx) + 128])].field_0 = 0
                    stor8[stor3 + 1][1][idx].field_0 = mem[(32 * idx) + 140 len 20]
                    mem[0] = numGamesStarted + 1
                    mem[32] = 8
                    stor8[stor3 + 1].field_512++
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        if stor8[stor3 + 1].field_512 < arg2.length:
            emit 0x78243600: Array(len=16, data='NumPlayers<Param')
            revert 
        stor9[address(msg.sender)].field_256++
        numGamesStarted++
        emit 0xc67dcdc1: arg1, numGamesStarted + 1
        return (numGamesStarted + 1)
    emit 0x78243600: Array(len=11, data='Invalid Arb')
    return -1
}



}
