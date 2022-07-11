contract main {




// =====================  Runtime code  =====================


#
#  - settleBetUncleMerkleProof(uint256 arg1, uint40 arg2)
#  - placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7)
#
address owner;
address stor1;
uint256 maxProfit;
address secretSignerAddress;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
mapping of struct bets;
address croupierAddress;

function bets(uint256 arg1) {
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_256,
           bets[arg1].field_256,
           bets[arg1].field_312,
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_768
}

function secretSigner() {
    return secretSignerAddress
}

function jackpotSize() {
    return jackpotSize
}

function croupier() {
    return croupierAddress
}

function owner() {
    return owner
}

function maxProfit() {
    return maxProfit
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if lockedInBets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'All bets should be processed (settled or refunded) before self-destruct.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor1
}

function sub_936b4f2f(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    lockedInBets = arg1
}

function setCroupier(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    croupierAddress = arg1
}

function setSecretSigner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    secretSignerAddress = arg1
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function setMaxProfit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 >= 300000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'maxProfit should be a sane number.'
    maxProfit = arg1
}

function increaseJackpot(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if uint128(jackpotSize + lockedInBets) + arg1 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    jackpotSize = uint128(jackpotSize + arg1)
}

function withdrawFunds(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if uint128(jackpotSize + lockedInBets) + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}

function sub_a0c1de3b(?) {
    if arg3 > 40:
        if arg1 >= 10^17:
            if arg1 / 100 >= 3 * 10^14:
                if arg2:
                    return (-1 * 10^15 * arg3) + (arg1 * arg3) - (arg1 / 100 * arg3) / arg2, 10^15
            else:
                if arg2:
                    return (-13 * 10^14 * arg3) + (arg1 * arg3) / arg2, 10^15
        else:
            if arg1 / 100 >= 3 * 10^14:
                if arg2:
                    return (arg1 * arg3) - (arg1 / 100 * arg3) / arg2, 0
            else:
                if arg2:
                    return (-3 * 10^14 * arg3) + (arg1 * arg3) / arg2, 0
        ('iszero', ('param', 'arg2'))
    else:
        if arg1 >= 10^17:
            if arg1 / 100 >= 3 * 10^14:
                if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63:
                    return (-1 * 10^15 * arg3) + (arg1 * arg3) - (arg1 / 100 * arg3) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63, 
                           10^15
            else:
                if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63:
                    return (-13 * 10^14 * arg3) + (arg1 * arg3) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63, 
                           10^15
        else:
            if arg1 / 100 >= 3 * 10^14:
                if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63:
                    return (arg1 * arg3) - (arg1 / 100 * arg3) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63, 
                           0
            else:
                if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63:
                    return (-3 * 10^14 * arg3) + (arg1 * arg3) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg2 % 63, 
                           0
        ('iszero', ('mod', ('and', 1794892256282803128465572064246774365285063006349835132060044394963931201, ('mul', 51422017416311072843540092035432428522196642838281063615168513, ('param', 'arg2'))), 63))
    revert
}

function refundBet(uint256 arg1) {
    if not bets[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if block.number <= bets[arg1].field_272 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blockhash can't be queried by EVM.'
    bets[arg1].field_0 = 0
    if 0 >= bets[arg1].field_264:
        revert with 0, 'Win probability out of range.'
    if bets[arg1].field_264 > bets[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if bets[arg1].field_0 < 10^17:
        if bets[arg1].field_0 / 100 >= 3 * 10^14:
            if bets[arg1].field_0 / 100 > bets[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264))
        else:
            if 3 * 10^14 > bets[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264))
    else:
        if bets[arg1].field_0 / 100 >= 3 * 10^14:
            if (bets[arg1].field_0 / 100) + 10^15 > bets[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264))
        else:
            if 13 * 10^14 > bets[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264))
        jackpotSize = uint128(jackpotSize - 10^15)
    call bets[arg1].field_352 with:
       value bets[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(bets[arg1].field_0, bets[arg1].field_352);
    else:
        emit Payment(bets[arg1].field_0, bets[arg1].field_352);
}

function settleBet(uint256 arg1, bytes32 arg2) {
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    if block.number <= bets[arg1].field_272:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if block.number > bets[arg1].field_272 + 250:
        revert with 0, 'Blockhash can't be queried by EVM.'
    require block.hash(bets[arg1].field_272) == arg2
    if not bets[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    bets[arg1].field_0 = 0
    require bets[arg1].field_256
    if 0 >= bets[arg1].field_264:
        revert with 0, 'Win probability out of range.'
    if bets[arg1].field_264 > bets[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if bets[arg1].field_0 >= 10^17:
        if bets[arg1].field_0 / 100 >= 3 * 10^14:
            if (bets[arg1].field_0 / 100) + 10^15 > bets[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264))
            if bets[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % bets[arg1].field_256 >= bets[arg1].field_264:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % bets[arg1].field_256) or not bets[arg1].field_312:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
        else:
            if 13 * 10^14 > bets[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264))
            if bets[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % bets[arg1].field_256 >= bets[arg1].field_264:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % bets[arg1].field_256) or not bets[arg1].field_312:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
    else:
        if bets[arg1].field_0 / 100 >= 3 * 10^14:
            if bets[arg1].field_0 / 100 > bets[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264))
            if bets[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % bets[arg1].field_256 >= bets[arg1].field_264:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % bets[arg1].field_256) or not bets[arg1].field_312:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((bets[arg1].field_0 * bets[arg1].field_256) - (bets[arg1].field_0 / 100 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
        else:
            if 3 * 10^14 > bets[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require bets[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264))
            if bets[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % bets[arg1].field_256 >= bets[arg1].field_264:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % bets[arg1].field_256) or not bets[arg1].field_312:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = 0
                        bets[arg1].field_768 = 0
                        call bets[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, bets[arg1].field_352);
                        else:
                            emit Payment(0, bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = 0
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(0, bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = 0
                            bets[arg1].field_768 = jackpotSize
                            if not jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, bets[arg1].field_352);
                                else:
                                    emit Payment(0, bets[arg1].field_352);
                else:
                    if bets[arg1].field_0 < 10^17:
                        bets[arg1].field_512 = (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                        bets[arg1].field_768 = 0
                        if not (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                            call bets[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, bets[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            call bets[arg1].field_352 with:
                               value (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                    else:
                        require bets[arg1].field_256
                        if sha3(arg1, 0, arg2) / bets[arg1].field_256 % 1000:
                            bets[arg1].field_512 = (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = 0
                            if not (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, bets[arg1].field_352);
                            bets[arg1].field_512 = (-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264
                            bets[arg1].field_768 = jackpotSize
                            if not ((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize:
                                call bets[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
                            else:
                                call bets[arg1].field_352 with:
                                   value ((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264) + jackpotSize), bets[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^14 * bets[arg1].field_256) + (bets[arg1].field_0 * bets[arg1].field_256) / bets[arg1].field_264), bets[arg1].field_352);
}



}
