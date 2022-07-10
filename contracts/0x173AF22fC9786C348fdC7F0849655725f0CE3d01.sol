contract main {




// =====================  Runtime code  =====================


#
#  - sub_080dd5d0(?)
#  - getRecoverSigner(uint40 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#  - settleBet(uint256 arg1, bytes32 arg2)
#  - placeBet(uint8 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
address stor0;
address owner;
address stor2;
uint256 maxProfit;
address secretSignerAddress;
uint128 lockedInBets;
mapping of uint8 stor6;
address sub_a9c1685bAddress;
mapping of struct bets;
mapping of address sub_878a059e;

function bets(uint256 arg1) {
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_256, bets[arg1].field_304
}

function secretSigner() {
    return secretSignerAddress
}

function sub_878a059e(?) {
    return sub_878a059e[arg1]
}

function owner() {
    return owner
}

function getSecretSigner() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    return secretSignerAddress
}

function sub_a9c1685b(?) {
    return sub_a9c1685bAddress
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

function calcInviterBenefit(uint256 arg1) {
    return (7 * arg1 / 10000)
}

function calcJackpotFee(uint256 arg1) {
    if arg1 < 3 * 10^16:
        return 0
    return 3 * 10^14
}

function calcHouseEdge(uint256 arg1) {
    if 2 * arg1 / 100 >= 4 * 10^14:
        return (2 * arg1 / 100)
    return 4 * 10^14
}

function isJackpot(bytes32 arg1, uint256 arg2) {
    if arg2 < 3 * 10^16:
        return arg2 >= 3 * 10^16
    return not arg1 % 1000
}

function acceptNextOwner() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor2
}

function setSecretSigner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    secretSignerAddress = arg1
}

function setVIPLibraryAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_a9c1685bAddress = arg1
    stor0 = arg1
}

function addCroupier(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
}

function deleteCroupier(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if bool(stor6[address(arg1)]) == 1:
        stor6[address(arg1)] = 0
}

function getResultMask(uint256 arg1, uint256 arg2) {
    if bool(arg1 + arg2):
        if arg1 == arg2:
            return 17
        if arg1 <= arg2:
            return 9
        return 5
    if arg1 == arg2:
        return 18
    if arg1 <= arg2:
        return 10
    return 6
}

function sub_e78e0362(?) {
    require ext_code.size(stor0)
    call stor0.0xe78e0362 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor2 = arg1
}

function setMaxProfit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 >= 10 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'maxProfit should be a sane number.'
    maxProfit = arg1
}

function getWinRate(uint256 arg1) {
    if arg1 == 1:
        return 50000
    if arg1 == 2:
        return 50000
    if arg1 == 4:
        return 45833
    if arg1 == 8:
        return 45833
    if arg1 == 5:
        return 25000
    if arg1 == 9:
        return 25000
    if arg1 == 6:
        return 20833
    if arg1 == 10:
        return 20833
    if arg1 == 16:
        return 8333
    else:
        return 0
}

function verifyBetMask(uint256 arg1) {
    if arg1 != 1:
        if arg1 != 2:
            if arg1 != 4:
                if arg1 != 8:
                    if arg1 != 5:
                        if arg1 != 9:
                            if arg1 != 6:
                                if arg1 != 10:
                                    if arg1 != 16:
                                        revert with 0, 'invalid betMask'
}

function withdrawFunds(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if lockedInBets + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function calcBetResult(uint256 arg1, bytes32 arg2) {
    if bool((arg2 % 12) + (arg2 / 16 % 12) + 2):
        if (arg2 % 12) + 1 == (arg2 / 16 % 12) + 1:
            return 17 and arg1 == arg1, (arg2 % 12) + 1, (arg2 / 16 % 12) + 1
        if arg2 % 12 <= arg2 / 16 % 12:
            return 9 and arg1 == arg1, (arg2 % 12) + 1, (arg2 / 16 % 12) + 1
        return 5 and arg1 == arg1, (arg2 % 12) + 1, (arg2 / 16 % 12) + 1
    if (arg2 % 12) + 1 == (arg2 / 16 % 12) + 1:
        return 18 and arg1 == arg1, (arg2 % 12) + 1, (arg2 / 16 % 12) + 1
    if arg2 % 12 <= arg2 / 16 % 12:
        return 10 and arg1 == arg1, (arg2 % 12) + 1, (arg2 / 16 % 12) + 1
    return Mask(2, 1, arg1) == arg1, (arg2 % 12) + 1, (arg2 / 16 % 12) + 1
}

function getWinAmount(uint256 arg1, uint256 arg2) {
    if 2 * arg2 / 100 >= 4 * 10^14:
        if arg2 < 3 * 10^16:
            if arg1 == 1:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 50000)
            if arg1 == 2:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 50000)
            if arg1 == 4:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 45833)
            if arg1 == 8:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 45833)
            if arg1 == 5:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 25000)
            if arg1 == 9:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 25000)
            if arg1 == 6:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 20833)
            if arg1 == 10:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 20833)
            if arg1 == 16:
                return ((100000 * arg2) - (100000 * 2 * arg2 / 100) / 8333)
        else:
            if arg1 == 1:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 50000)
            if arg1 == 2:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 50000)
            if arg1 == 4:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 45833)
            if arg1 == 8:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 45833)
            if arg1 == 5:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 25000)
            if arg1 == 9:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 25000)
            if arg1 == 6:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 20833)
            if arg1 == 10:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 20833)
            if arg1 == 16:
                return ((100000 * arg2) + (-100000 * 2 * arg2 / 100) - 30 * 10^18 / 8333)
    else:
        if arg2 < 3 * 10^16:
            if arg1 == 1:
                return ((100000 * arg2) - 40 * 10^18 / 50000)
            if arg1 == 2:
                return ((100000 * arg2) - 40 * 10^18 / 50000)
            if arg1 == 4:
                return ((100000 * arg2) - 40 * 10^18 / 45833)
            if arg1 == 8:
                return ((100000 * arg2) - 40 * 10^18 / 45833)
            if arg1 == 5:
                return ((100000 * arg2) - 40 * 10^18 / 25000)
            if arg1 == 9:
                return ((100000 * arg2) - 40 * 10^18 / 25000)
            if arg1 == 6:
                return ((100000 * arg2) - 40 * 10^18 / 20833)
            if arg1 == 10:
                return ((100000 * arg2) - 40 * 10^18 / 20833)
            if arg1 == 16:
                return ((100000 * arg2) - 40 * 10^18 / 8333)
        else:
            if arg1 == 1:
                return ((100000 * arg2) - 70 * 10^18 / 50000)
            if arg1 == 2:
                return ((100000 * arg2) - 70 * 10^18 / 50000)
            if arg1 == 4:
                return ((100000 * arg2) - 70 * 10^18 / 45833)
            if arg1 == 8:
                return ((100000 * arg2) - 70 * 10^18 / 45833)
            if arg1 == 5:
                return ((100000 * arg2) - 70 * 10^18 / 25000)
            if arg1 == 9:
                return ((100000 * arg2) - 70 * 10^18 / 25000)
            if arg1 == 6:
                return ((100000 * arg2) - 70 * 10^18 / 20833)
            if arg1 == 10:
                return ((100000 * arg2) - 70 * 10^18 / 20833)
            if arg1 == 16:
                return ((100000 * arg2) - 70 * 10^18 / 8333)
    ('iszero', ('eq', ('param', 'arg1'), 16))
    revert
}

function refundBet(uint256 arg1) {
    if not bets[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if block.number <= bets[arg1].field_264 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blockhash can't be queried by EVM.'
    bets[arg1].field_0 = 0
    if 2 * bets[arg1].field_0 / 100 >= 4 * 10^14:
        if bets[arg1].field_0 < 3 * 10^16:
            if bets[arg1].field_256 == 1:
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * 2 * bets[arg1].field_0 / 100) / 8333))
        else:
            if bets[arg1].field_256 == 1:
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * 2 * bets[arg1].field_0 / 100) - 30 * 10^18 / 8333))
    else:
        if bets[arg1].field_0 < 3 * 10^16:
            if bets[arg1].field_256 == 1:
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 40 * 10^18 / 8333))
        else:
            if bets[arg1].field_256 == 1:
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 70 * 10^18 / 8333))
    call bets[arg1].field_304 with:
       value bets[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refund(bets[arg1].field_0, bets[arg1].field_304);
}



}
