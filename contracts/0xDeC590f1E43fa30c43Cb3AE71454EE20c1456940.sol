contract main {




// =====================  Runtime code  =====================


#
#  - settleBetUncleMerkleProof(uint256 arg1, uint40 arg2)
#
address owner;
address stor1;
uint256 maxProfit;
address secretSignerAddress;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
address beneficiary_Address;
mapping of struct stor6;
address croupierAddress;

function secretSigner() {
    return secretSignerAddress
}

function beneficiary_() {
    return beneficiary_Address
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
    selfdestruct(beneficiary_Address)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor1
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

function withdrawFunds(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if uint128(jackpotSize + lockedInBets) + arg1 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call beneficiary_Address with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        emit FailedPayment(arg1, beneficiary_Address);
    else:
        emit Payment(arg1, beneficiary_Address);
}

function refundBet(uint256 arg1) {
    if not stor6[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if block.number <= stor6[arg1].field_272 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blockhash can't be queried by EVM.'
    stor6[arg1].field_0 = 0
    if 0 >= stor6[arg1].field_264:
        revert with 0, 'Win probability out of range.'
    if stor6[arg1].field_264 > stor6[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor6[arg1].field_0 < 10^17:
        if 15 * stor6[arg1].field_0 / 1000 >= 125 * 10^9 * 3600:
            if 15 * stor6[arg1].field_0 / 1000 > stor6[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264))
        else:
            if 125 * 10^9 * 3600 > stor6[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264))
    else:
        if 15 * stor6[arg1].field_0 / 1000 >= 125 * 10^9 * 3600:
            if (15 * stor6[arg1].field_0 / 1000) + 10^15 > stor6[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264))
        else:
            if 145 * 10^13 > stor6[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264))
        jackpotSize = uint128(jackpotSize - 10^15)
    call stor6[arg1].field_352 with:
       value stor6[arg1].field_0 wei
         gas gas_remaining wei
    if not ext_call.success:
        emit FailedPayment(stor6[arg1].field_0, stor6[arg1].field_352);
    else:
        emit Payment(stor6[arg1].field_0, stor6[arg1].field_352);
}

function placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes32 arg6) payable {
    if stor6[arg4].field_352:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in a 'clean' state.'
    if arg2 <= 1:
        revert with 0, 'Modulo should be within range.'
    if arg2 > 100:
        revert with 0, 'Modulo should be within range.'
    if msg.value < 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 300000 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 <= 0:
        revert with 0, 'Mask should be within range.'
    if arg1 >= 1099511627776:
        revert with 0, 'Mask should be within range.'
    if block.number > arg3:
        revert with 0, 'Commit has expired.'
    signer = erecover(sha3(arg3 % 1099511627776, Mask(216, 40, arg4) >> 40, mem[197 len 5]), 27, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if secretSignerAddress != address(signer):
        revert with 0, 'ECDSA signature is not valid.'
    if arg2 <= 40:
        if 0 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
            revert with 0, 'Win probability out of range.'
        if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg2:
            revert with 0, 'Win probability out of range.'
        if msg.value < 10^17:
            if 15 * msg.value / 1000 >= 125 * 10^9 * 3600:
                if 15 * msg.value / 1000 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (msg.value * arg2) - (15 * msg.value / 1000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((msg.value * arg2) - (15 * msg.value / 1000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
            else:
                if 125 * 10^9 * 3600 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-45 * 10^13 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-45 * 10^13 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
        else:
            if 15 * msg.value / 1000 >= 125 * 10^9 * 3600:
                if (15 * msg.value / 1000) + 10^15 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-1 * 10^15 * arg2) + (msg.value * arg2) - (15 * msg.value / 1000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-1 * 10^15 * arg2) + (msg.value * arg2) - (15 * msg.value / 1000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
            else:
                if 145 * 10^13 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-145 * 10^13 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-145 * 10^13 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
            jackpotSize = uint128(jackpotSize + 10^15)
        if uint128(jackpotSize + lockedInBets) > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
        emit Commit(arg4);
        stor6[arg4].field_0 = msg.value
        stor6[arg4].field_256 = uint8(arg2)
        stor6[arg4].field_264 = uint8(0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63)
        stor6[arg4].field_272 = block.number % 1099511627776
        stor6[arg4].field_312 = arg1 % 1099511627776
    else:
        if arg1 <= 0:
            revert with 0, 'High modulo range, betMask larger than modulo.'
        if arg1 > arg2:
            revert with 0, 'High modulo range, betMask larger than modulo.'
        if 0 >= arg1:
            revert with 0, 'Win probability out of range.'
        if arg1 > arg2:
            revert with 0, 'Win probability out of range.'
        if msg.value < 10^17:
            if 15 * msg.value / 1000 >= 125 * 10^9 * 3600:
                if 15 * msg.value / 1000 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (msg.value * arg2) - (15 * msg.value / 1000 * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((msg.value * arg2) - (15 * msg.value / 1000 * arg2) / arg1))
            else:
                if 125 * 10^9 * 3600 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (-45 * 10^13 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-45 * 10^13 * arg2) + (msg.value * arg2) / arg1))
        else:
            if 15 * msg.value / 1000 >= 125 * 10^9 * 3600:
                if (15 * msg.value / 1000) + 10^15 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (-1 * 10^15 * arg2) + (msg.value * arg2) - (15 * msg.value / 1000 * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-1 * 10^15 * arg2) + (msg.value * arg2) - (15 * msg.value / 1000 * arg2) / arg1))
            else:
                if 145 * 10^13 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (-145 * 10^13 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-145 * 10^13 * arg2) + (msg.value * arg2) / arg1))
            jackpotSize = uint128(jackpotSize + 10^15)
        if uint128(jackpotSize + lockedInBets) > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
        emit Commit(arg4);
        stor6[arg4].field_0 = msg.value
        stor6[arg4].field_256 = uint8(arg2)
        stor6[arg4].field_264 = uint8(arg1)
        stor6[arg4].field_272 = block.number % 1099511627776
        stor6[arg4].field_312 = 0
    stor6[arg4].field_352 = msg.sender
}

function settleBet(uint256 arg1, bytes32 arg2) {
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    if block.number <= stor6[arg1].field_272:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if block.number > stor6[arg1].field_272 + 250:
        revert with 0, 'Blockhash can't be queried by EVM.'
    require block.hash(stor6[arg1].field_272) == arg2
    if not stor6[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    stor6[arg1].field_0 = 0
    require stor6[arg1].field_256
    if 0 >= stor6[arg1].field_264:
        revert with 0, 'Win probability out of range.'
    if stor6[arg1].field_264 > stor6[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor6[arg1].field_0 >= 10^17:
        if 15 * stor6[arg1].field_0 / 1000 >= 125 * 10^9 * 3600:
            if (15 * stor6[arg1].field_0 / 1000) + 10^15 > stor6[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264))
            if stor6[arg1].field_256 > 40:
                if sha3(arg1, arg2) % stor6[arg1].field_256 >= stor6[arg1].field_264:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
            else:
                if not 2^(sha3(arg1, arg2) % stor6[arg1].field_256) or not stor6[arg1].field_312:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^15 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
        else:
            if 145 * 10^13 > stor6[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264))
            if stor6[arg1].field_256 > 40:
                if sha3(arg1, arg2) % stor6[arg1].field_256 >= stor6[arg1].field_264:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
            else:
                if not 2^(sha3(arg1, arg2) % stor6[arg1].field_256) or not stor6[arg1].field_312:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-145 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
    else:
        if 15 * stor6[arg1].field_0 / 1000 >= 125 * 10^9 * 3600:
            if 15 * stor6[arg1].field_0 / 1000 > stor6[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264))
            if stor6[arg1].field_256 > 40:
                if sha3(arg1, arg2) % stor6[arg1].field_256 >= stor6[arg1].field_264:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
            else:
                if not 2^(sha3(arg1, arg2) % stor6[arg1].field_256) or not stor6[arg1].field_312:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((stor6[arg1].field_0 * stor6[arg1].field_256) - (15 * stor6[arg1].field_0 / 1000 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
        else:
            if 125 * 10^9 * 3600 > stor6[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor6[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264))
            if stor6[arg1].field_256 > 40:
                if sha3(arg1, arg2) % stor6[arg1].field_256 >= stor6[arg1].field_264:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
            else:
                if not 2^(sha3(arg1, arg2) % stor6[arg1].field_256) or not stor6[arg1].field_312:
                    if stor6[arg1].field_0 < 10^17:
                        call stor6[arg1].field_352 with:
                           value 1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor6[arg1].field_352);
                        else:
                            emit Payment(0, stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(0, stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor6[arg1].field_352);
                                else:
                                    emit Payment(0, stor6[arg1].field_352);
                else:
                    if stor6[arg1].field_0 < 10^17:
                        if not (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                            call stor6[arg1].field_352 with:
                               value 1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor6[arg1].field_352);
                            else:
                                emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            call stor6[arg1].field_352 with:
                               value (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                emit FailedPayment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                    else:
                        require stor6[arg1].field_256
                        if sha3(arg1, arg2) / stor6[arg1].field_256 % 1000:
                            if not (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value (-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor6[arg1].field_352);
                            if not ((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize:
                                call stor6[arg1].field_352 with:
                                   value 1 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
                            else:
                                call stor6[arg1].field_352 with:
                                   value ((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    emit FailedPayment((((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264) + jackpotSize), stor6[arg1].field_352);
                                else:
                                    emit Payment(((-45 * 10^13 * stor6[arg1].field_256) + (stor6[arg1].field_0 * stor6[arg1].field_256) / stor6[arg1].field_264), stor6[arg1].field_352);
}



}
