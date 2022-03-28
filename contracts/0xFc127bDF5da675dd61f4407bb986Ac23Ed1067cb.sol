contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor7;
uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    stor8 = 1
    stor7 = 600
    return code.data[109 len 12423]
}



// =====================  Runtime code  =====================


#
#  - houseKeep(int256 arg1, uint256 arg2)
#  - startGame(uint256 arg1, int256 arg2, address[] arg3)
#
address sub_b2ee56aeAddress;
address sub_77da2f79Address;
uint256 sub_beff102b;
uint256 numGamesStarted;
uint256 sub_de5c2318;
uint256 sub_1b2ba6ad;
uint256 sub_9fc34a20;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of struct stor11;
mapping of struct stor13;
mapping of address stor14;

function getNumGamesStarted() {
    return numGamesStarted
}

function sub_1b2ba6ad(?) {
    return sub_1b2ba6ad
}

function sub_77da2f79(?) {
    return sub_77da2f79Address
}

function sub_9fc34a20(?) {
    return sub_9fc34a20
}

function sub_b2ee56ae(?) {
    return sub_b2ee56aeAddress
}

function sub_beff102b(?) {
    return sub_beff102b
}

function sub_de5c2318(?) {
    return sub_de5c2318
}

function HaraKiri() {
    if msg.sender == sub_b2ee56aeAddress:
        selfdestruct(sub_77da2f79Address)
    emit 0x78243600: Array(len=25, data='Kill attempt by non owner')
}

function sub_4b60c3ce(?) {
    stor10 = arg1
}

function ArbTokFromHGame(uint256 arg1) {
    return uint16(arg1)
}

function sub_f24a0b71(?) {
    return arg1 << 240, arg1 % 281474976710656
}

function sub_ab8b3721(?) {
    if msg.sender == sub_b2ee56aeAddress:
        stor7 = arg1
        emit 0x296dc718: Array(len=16, data='New Game Timeout'), stor7
}

function sub_c606b11e(?) {
    if arg1 <= 0:
        return 0
    else:
        if stor11[arg1].field_768:
            return 0
        else:
            return 0
}

function sub_00a7bd89(?) {
    if not sub_b2ee56aeAddress:
        sub_b2ee56aeAddress = arg1
    else:
        if msg.sender == sub_b2ee56aeAddress:
            sub_b2ee56aeAddress = arg1
}

function setRegistrationFee(uint256 arg1) {
    if msg.sender == sub_b2ee56aeAddress:
        stor8 = arg1
    else:
        emit 0x78243600: Array(len=27, data='FeeSet attempt by non owner')
}

function getGameWinner(uint256 arg1) {
    if arg1 > 0:
        if stor11[arg1].field_768:
            return stor11[arg1].field_1536
    emit 0x78243600: Array(len=12, data='Invalid Game')
    return 0
}

function sub_484fc538(?) {
    if msg.sender == sub_b2ee56aeAddress:
        if not sub_77da2f79Address:
            sub_77da2f79Address = arg1
            emit 0x296dc718: Array(len=17, data='Partner Assigned!'), 1
}

function arbTokenExists(uint256 arg1) {
    idx = 0
    while idx < sub_beff102b:
        mem[0] = stor14[idx]
        mem[32] = 13
        if stor13[stor14[idx]].field_256 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_7a0cdfd9(?) {
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require -idx + 35 < calldata.size
        s = Mask(8, 248, cd[(-idx + 35)]) >> 248
        idx = idx + 1
        s = s + (Mask(8, 248, cd[(-idx + 35)]) >> 248 * 256^idx)
        continue 
    return 0
}

function sub_89aa4d44(?) {
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require -idx + 35 < calldata.size
        s = Mask(8, 248, cd[(-idx + 35)]) >> 248
        idx = idx + 1
        s = s + (Mask(8, 248, cd[(-idx + 35)]) >> 248 * 256^idx)
        continue 
    return 0
}

function sub_b6813e08(?) {
    idx = 0
    while idx < sub_beff102b:
        mem[0] = idx
        mem[32] = 14
        if stor14[idx] != arg1:
            idx = idx + 1
            continue 
        return stor13[address(arg1)].field_512
    emit 0x78243600: Array(len=11, data='Invalid Arb')
    return 0
}

function _fallback() {
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require -idx + 35 < calldata.size
        s = Mask(8, 248, cd[(-idx + 35)]) >> 248
        idx = idx + 1
        s = s + (Mask(8, 248, cd[(-idx + 35)]) >> 248 * 256^idx)
        continue 
    emit 0x78243600: Array(len=14, data='Invalid Player')
    revert 
}

function sub_e61d5f43(?) {
    if arg1 > 0:
        if stor11[arg1].field_768:
            return stor11[arg1].field_512, 
                   stor11[arg1].field_2048,
                   stor11[arg1].field_2560,
                   stor11[arg1].field_2304,
                   bool(stor11[arg1].field_768),
                   stor11[arg1].field_1536
    emit 0x78243600: Array(len=12, data='Invalid Game')
    return 0
}

function sub_a7d3ba12(?) {
    if arg1 <= 0:
        emit 0x78243600: Array(len=12, data='Invalid Game')
    else:
        if not stor11[arg1].field_768:
            emit 0x78243600: Array(len=12, data='Invalid Game')
        else:
            if arg2 >= 0:
                if arg2 <= stor11[arg1].field_512:
                    return stor11[arg1][1][arg2].field_0
            emit 0x78243600: Array(len=11, data='Invalid Idx')
    return 0
}

function setArbiterLocked(address arg1, bool arg2) {
    if sub_b2ee56aeAddress != msg.sender:
        emit 0x78243600: Array(len=16, data='Only Owner Calls')
    else:
        idx = 0
        while idx < sub_beff102b:
            mem[0] = idx
            mem[32] = 14
            if stor14[idx] != arg1:
                idx = idx + 1
                continue 
            stor13[address(arg1)].field_1280 = uint8(arg2)
        emit 0x78243600: Array(len=11, data='Invalid Arb')
}

function handleBet(uint256 arg1) payable {
    if arg1 > 0:
        if stor11[arg1].field_768:
            idx = 0
            while idx < stor11[arg1].field_512:
                if stor11[arg1][1][idx].field_0 != msg.sender:
                    mem[0] = arg1
                    mem[32] = 11
                    idx = idx + 1
                    continue 
                stor11[arg1][address(msg.sender)].field_0 += msg.value
                stor11[arg1].field_1280 = block.timestamp
                emit 0x8157e109: arg1, msg.sender, msg.value
                return 0
    emit 0x78243600: Array(len=14, data='Invalid Player')
    revert 
}

function sub_5e29a869(?) payable {
    if stor8 != msg.value:
        emit 0x78243600: Array(len=16, data='Insufficient Fee')
        revert 
    idx = 0
    while idx < sub_beff102b:
        mem[0] = stor14[idx]
        mem[32] = 13
        if stor13[stor14[idx]].field_256 != arg1:
            idx = idx + 1
            continue 
        emit 0x78243600: Array(len=16, data='Insufficient Fee')
        revert 
    stor13[address(msg.sender)].field_0 = msg.sender
    stor13[address(msg.sender)].field_512 = 0
    stor13[address(msg.sender)].field_768 = 0
    stor13[address(msg.sender)].field_1280 = 0
    stor13[address(msg.sender)].field_256 = arg1
    stor13[address(msg.sender)].field_272 = 0
    sub_beff102b++
    stor14[stor2] = msg.sender
    call sub_77da2f79Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor9 += msg.value
    emit 0x1a2d4465 
}

function sub_ecc83352(?) {
    idx = 0
    while idx < sub_beff102b:
        mem[0] = idx
        mem[32] = 14
        if stor14[idx] != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = stor14[idx]
        mem[32] = 13
        if stor13[stor14[idx]].field_256 != arg1:
            idx = idx + 1
            continue 
        if stor11[arg1].field_1792 != msg.sender:
            emit 0x78243600: Array(len=12, data='Arb Mismatch')
        else:
            if arg1 > 0:
                if stor11[arg1].field_768:
                    idx = 0
                    while idx < stor11[arg1].field_512:
                        if stor11[arg1][1][idx].field_0 != arg2:
                            mem[0] = arg1
                            mem[32] = 11
                            idx = idx + 1
                            continue 
                        if stor11[arg1][address(arg2)].field_0 != arg3:
                            s = 0
                            t = 0
                            idx = 0
                            while idx < stor11[arg1].field_512:
                                if stor11[arg1][stor11[arg1][1][idx].field_0].field_0 <= 0:
                                    mem[0] = arg1
                                    mem[32] = 11
                                    s = s
                                    t = stor11[arg1][1][idx].field_0
                                    idx = idx + 1
                                    continue 
                                stor11[arg1][stor11[arg1][1][idx].field_0].field_0 = 0
                                call stor11[arg1][1][idx].field_0 with:
                                   value stor11[arg1][stor11[arg1][1][idx].field_0].field_0 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                mem[0] = arg1
                                mem[32] = 11
                                s = stor11[arg1][stor11[arg1][1][idx].field_0].field_0
                                t = stor11[arg1][1][idx].field_0
                                idx = idx + 1
                                continue 
                            stor11[arg1].field_768 = 0
                            stor11[arg1].field_1952 = 2
                            sub_1b2ba6ad++
                            emit 0x296dc718: Array(len=18, data='Game Aborted-Cheat'), arg1
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while idx < stor11[arg1].field_512:
                            if stor11[arg1][1][idx].field_0 != arg2:
                                if stor11[arg1][stor11[arg1][1][idx].field_0].field_0 > 0:
                                    require stor11[arg1][address(arg2)].field_0 >= stor11[arg1][stor11[arg1][1][idx].field_0].field_0 / 2
                            mem[0] = arg1
                            mem[32] = 11
                            s = stor11[arg1][stor11[arg1][1][idx].field_0].field_0
                            s = stor11[arg1][1][idx].field_0
                            idx = idx + 1
                            s = s + stor11[arg1][stor11[arg1][1][idx].field_0].field_0
                            continue 
                        stor11[arg1].field_1280 = block.timestamp
                        stor11[arg1].field_768 = 0
                        stor11[arg1].field_1952 = 0
                        stor11[arg1].field_1536 = arg2
                        call sub_77da2f79Address with:
                           value s / 100 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            t = 0
                            while t < stor11[arg1].field_512:
                                stor11[arg1][stor11[arg1][1][t].field_0].field_0 = 0
                                mem[0] = arg1
                                mem[32] = 11
                                t = t + 1
                                continue 
                            stor13[address(msg.sender)].field_768++
                            sub_de5c2318++
                            call arg2 with:
                               value s - (s / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                emit 0x9a198548: arg1, address(arg2), s - (s / 100)
                            emit 0x78243600: Array(len=10, data='Send Error')
                        revert 
            emit 0x78243600: Array(len=14, data='Invalid Player')
    emit 0x78243600: Array(len=11, data='Invalid Arb')
}



}
