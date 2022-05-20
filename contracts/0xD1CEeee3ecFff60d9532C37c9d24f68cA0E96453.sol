contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 maxProfit;
address secretSignerAddress;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
mapping of struct stor5;

function secretSigner() {
    return secretSignerAddress
}

function jackpotSize() {
    return jackpotSize
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
    require msg.sender == owner
    require not lockedInBets
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    require msg.sender == stor1
    owner = stor1
}

function setSecretSigner(address arg1) {
    require msg.sender == owner
    secretSignerAddress = arg1
}

function approveNextOwner(address arg1) {
    require msg.sender == owner
    require owner != arg1
    stor1 = arg1
}

function setMaxProfit(uint256 arg1) {
    require msg.sender == owner
    require arg1 < 300000 * 10^18
    maxProfit = arg1
}

function increaseJackpot(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    require arg1 + uint128(lockedInBets + jackpotSize) <= eth.balance(this.address)
    jackpotSize = uint128(jackpotSize + arg1)
}

function clearStorage(uint256[] arg1) {
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        if not stor5[cd[((32 * idx) + arg1 + 36)]].field_0:
            if block.number > stor5[cd[((32 * idx) + arg1 + 36)]].field_272 + 250:
                stor5[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
        idx = idx + 1
        continue 
}

function withdrawFunds(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    require arg2 + uint128(lockedInBets + jackpotSize) <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}

function refundBet(uint256 arg1) {
    require stor5[arg1].field_0
    require block.number > stor5[arg1].field_272 + 250
    stor5[arg1].field_0 = 0
    require 0 < stor5[arg1].field_264
    require stor5[arg1].field_264 <= stor5[arg1].field_256
    require stor5[arg1].field_264
    lockedInBets = uint128(lockedInBets - (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100))
    call stor5[arg1].field_352 with:
       value stor5[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(stor5[arg1].field_0, stor5[arg1].field_352);
    else:
        emit Payment(stor5[arg1].field_0, stor5[arg1].field_352);
}

function placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes32 arg6) payable {
    require not stor5[arg4].field_352
    require arg2 > 1
    require arg2 <= 100
    require msg.value >= 10^16
    require msg.value <= 300000 * 10^18
    require arg1 > 0
    require arg1 < 1099511627776
    require arg3 >= block.number
    signer = erecover(sha3(arg3 % 1099511627776, Mask(216, 40, arg4) >> 40, mem[197 len 5]), 27, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == secretSignerAddress
    if arg2 <= 40:
        require 0 < 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
        require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= arg2
        require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
        require 98 * arg2 * msg.value / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 / 100 <= msg.value + maxProfit
        jackpotSize = uint128((50 * 2 * msg.value / 100 / 100) + jackpotSize)
        lockedInBets = 0
        lockedInBets = uint128((98 * arg2 * msg.value / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 / 100) + lockedInBets)
        require uint128((0 or uint128((98 * arg2 * msg.value / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 / 100) + lockedInBets)) + uint128((50 * 2 * msg.value / 100 / 100) + jackpotSize)) <= eth.balance(this.address)
        stor5[arg4].field_0 = msg.value
        stor5[arg4].field_256 = uint8(arg2)
        stor5[arg4].field_264 = uint8(0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63)
        stor5[arg4].field_272 = block.number % 1099511627776
        stor5[arg4].field_312 = arg1 % 1099511627776
    else:
        require arg1 > 0
        require arg1 <= arg2
        require 0 < arg1
        require arg1 <= arg2
        require arg1
        require 98 * arg2 * msg.value / arg1 / 100 <= msg.value + maxProfit
        jackpotSize = uint128((50 * 2 * msg.value / 100 / 100) + jackpotSize)
        lockedInBets = 0
        lockedInBets = uint128((98 * arg2 * msg.value / arg1 / 100) + lockedInBets)
        require uint128((0 or uint128((98 * arg2 * msg.value / arg1 / 100) + lockedInBets)) + uint128((50 * 2 * msg.value / 100 / 100) + jackpotSize)) <= eth.balance(this.address)
        stor5[arg4].field_0 = msg.value
        stor5[arg4].field_256 = uint8(arg2)
        stor5[arg4].field_264 = uint8(arg1)
        stor5[arg4].field_272 = block.number % 1099511627776
        stor5[arg4].field_312 = 0
    stor5[arg4].field_352 = msg.sender
}

function settleBet(uint256 arg1, uint256 arg2) {
    require stor5[arg1].field_0 != 0
    require stor5[arg1].field_272 < block.number
    require block.number <= stor5[arg1].field_272 + 250
    stor5[arg1].field_0 = 0
    require stor5[arg1].field_256
    require 0 < stor5[arg1].field_264
    require stor5[arg1].field_264 <= stor5[arg1].field_256
    require stor5[arg1].field_264
    lockedInBets = uint128(lockedInBets - (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100))
    if stor5[arg1].field_256 > 40:
        if sha3(arg1, 0, block.hash(stor5[arg1].field_272)) % stor5[arg1].field_256 >= stor5[arg1].field_264:
            if stor5[arg1].field_0 < 10^17:
                call stor5[arg1].field_352 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor5[arg1].field_352);
                else:
                    emit Payment(0, stor5[arg1].field_352);
                if arg2:
                    if not stor5[arg2].field_0:
                        if block.number > stor5[arg2].field_272 + 250:
                            stor5[arg2].field_256 = 0
            else:
                require stor5[arg1].field_256
                if sha3(arg1, 0, block.hash(stor5[arg1].field_272)) / stor5[arg1].field_256 % 1000:
                    call stor5[arg1].field_352 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_352);
                    else:
                        emit Payment(0, stor5[arg1].field_352);
                    if arg2:
                        if not stor5[arg2].field_0:
                            if block.number > stor5[arg2].field_272 + 250:
                                stor5[arg2].field_256 = 0
                else:
                    jackpotSize = 0
                    if jackpotSize > 0:
                        emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                    if jackpotSize:
                        call stor5[arg1].field_352 with:
                           value jackpotSize wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                    else:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
        else:
            if stor5[arg1].field_0 < 10^17:
                if 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100:
                    call stor5[arg1].field_352 with:
                       value 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                    else:
                        emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                    if arg2:
                        if not stor5[arg2].field_0:
                            if block.number > stor5[arg2].field_272 + 250:
                                stor5[arg2].field_256 = 0
                else:
                    call stor5[arg1].field_352 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_352);
                    else:
                        emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                    if arg2:
                        if not stor5[arg2].field_0:
                            if block.number > stor5[arg2].field_272 + 250:
                                stor5[arg2].field_256 = 0
            else:
                require stor5[arg1].field_256
                if sha3(arg1, 0, block.hash(stor5[arg1].field_272)) / stor5[arg1].field_256 % 1000:
                    if 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100:
                        call stor5[arg1].field_352 with:
                           value 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                    else:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                else:
                    jackpotSize = 0
                    if jackpotSize > 0:
                        emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                    if jackpotSize + (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100):
                        call stor5[arg1].field_352 with:
                           value jackpotSize + (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((jackpotSize + (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100)), stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                    else:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
    else:
        if not stor5[arg1].field_312 and 2^(sha3(arg1, 0, block.hash(stor5[arg1].field_272)) % stor5[arg1].field_256) % 1099511627776:
            if stor5[arg1].field_0 < 10^17:
                call stor5[arg1].field_352 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor5[arg1].field_352);
                else:
                    emit Payment(0, stor5[arg1].field_352);
                if arg2:
                    if not stor5[arg2].field_0:
                        if block.number > stor5[arg2].field_272 + 250:
                            stor5[arg2].field_256 = 0
            else:
                require stor5[arg1].field_256
                if sha3(arg1, 0, block.hash(stor5[arg1].field_272)) / stor5[arg1].field_256 % 1000:
                    call stor5[arg1].field_352 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_352);
                    else:
                        emit Payment(0, stor5[arg1].field_352);
                    if arg2:
                        if not stor5[arg2].field_0:
                            if block.number > stor5[arg2].field_272 + 250:
                                stor5[arg2].field_256 = 0
                else:
                    jackpotSize = 0
                    if jackpotSize > 0:
                        emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                    if jackpotSize:
                        call stor5[arg1].field_352 with:
                           value jackpotSize wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                    else:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
        else:
            if stor5[arg1].field_0 < 10^17:
                if 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100:
                    call stor5[arg1].field_352 with:
                       value 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                    else:
                        emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                    if arg2:
                        if not stor5[arg2].field_0:
                            if block.number > stor5[arg2].field_272 + 250:
                                stor5[arg2].field_256 = 0
                else:
                    call stor5[arg1].field_352 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_352);
                    else:
                        emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                    if arg2:
                        if not stor5[arg2].field_0:
                            if block.number > stor5[arg2].field_272 + 250:
                                stor5[arg2].field_256 = 0
            else:
                require stor5[arg1].field_256
                if sha3(arg1, 0, block.hash(stor5[arg1].field_272)) / stor5[arg1].field_256 % 1000:
                    if 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100:
                        call stor5[arg1].field_352 with:
                           value 98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                    else:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                else:
                    jackpotSize = 0
                    if jackpotSize > 0:
                        emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                    if jackpotSize + (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100):
                        call stor5[arg1].field_352 with:
                           value jackpotSize + (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((jackpotSize + (98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100)), stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
                    else:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment((98 * stor5[arg1].field_256 * stor5[arg1].field_0 / stor5[arg1].field_264 / 100), stor5[arg1].field_352);
                        if arg2:
                            if not stor5[arg2].field_0:
                                if block.number > stor5[arg2].field_272 + 250:
                                    stor5[arg2].field_256 = 0
}



}
