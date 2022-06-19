contract main {




// =====================  Runtime code  =====================


#
#  - settleBet(uint256 arg1, bytes32 arg2)
#
address owner;
address stor1;
address stor2;
mapping of uint8 stor3;
address sub_a9c1685bAddress;
uint128 lockedInBets;
uint256 maxProfit;
mapping of struct bets;
mapping of address sub_878a059e;

function bets(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_256, bets[arg1].field_304
}

function sub_878a059e(?) {
    require calldata.size - 4 >= 32
    return sub_878a059e[arg1]
}

function owner() {
    return owner
}

function sub_93a934b2(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if lockedInBets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x2e416c6c20626574732073686f756c642062652070726f6365737365642028736574746c6564206f7220726566756e64656429206265666f72652073656c662d6465737472756374,
                    mem[236 len 24]
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function calcRankFundsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (7 * arg1 / 10000)
}

function calcInviterBenefit(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (7 * arg1 / 10000)
}

function calcJackpotFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 10^17:
        return 0
    return 10^15
}

function calcHouseEdge(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 / 100 >= 4 * 10^14:
        return (arg1 / 100)
    return 4 * 10^14
}

function isJackpot(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < 10^17:
        return arg2 >= 10^17
    return not arg1 % 1000
}

function getResultMask(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.0xe78e0362 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_77e24446(?) {
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.0x77e24446 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[16 len 16]
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe43616e206f6e6c792061636365707420707265617070726f766564206e6577206f776e6572,
                    mem[202 len 26]
    owner = stor1
}

function getMyAccuAmount() {
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.getUserExp(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSecretSigner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    stor2 = arg1
}

function setVIPLibraryAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    sub_a9c1685bAddress = arg1
}

function addCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if not stor3[address(arg1)]:
        stor3[address(arg1)] = 1
}

function getRecoverSigner(uint40 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    mem[261 len 0] = None
    signer = erecover(sha3(mem[261 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1 % 1099511627776, arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function deleteCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if bool(stor3[address(arg1)]) == 1:
        stor3[address(arg1)] = 0
}

function getWinRate(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    require calldata.size - 4 >= 32
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

function approveNextOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function setMaxProfit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg1 >= 300000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e6d617850726f6669742073686f756c6420626520612073616e65206e756d626572,
                    mem[198 len 30]
    maxProfit = arg1
}

function calcBetResult(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
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

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
                    mem[200 len 28]
    if lockedInBets + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getWinAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 / 100 >= 4 * 10^14:
        if arg2 < 10^17:
            if arg1 == 1:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 50000)
            if arg1 == 2:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 50000)
            if arg1 == 4:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 45833)
            if arg1 == 8:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 45833)
            if arg1 == 5:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 25000)
            if arg1 == 9:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 25000)
            if arg1 == 6:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 20833)
            if arg1 == 10:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 20833)
            if arg1 == 16:
                return ((100000 * arg2) - (100000 * arg2 / 100) / 8333)
        else:
            if arg1 == 1:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 50000)
            if arg1 == 2:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 50000)
            if arg1 == 4:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 45833)
            if arg1 == 8:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 45833)
            if arg1 == 5:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 25000)
            if arg1 == 9:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 25000)
            if arg1 == 6:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 20833)
            if arg1 == 10:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 20833)
            if arg1 == 16:
                return ((100000 * arg2) + (-100000 * arg2 / 100) - 100 * 10^18 / 8333)
    else:
        if arg2 < 10^17:
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
                return ((100000 * arg2) - 140 * 10^18 / 50000)
            if arg1 == 2:
                return ((100000 * arg2) - 140 * 10^18 / 50000)
            if arg1 == 4:
                return ((100000 * arg2) - 140 * 10^18 / 45833)
            if arg1 == 8:
                return ((100000 * arg2) - 140 * 10^18 / 45833)
            if arg1 == 5:
                return ((100000 * arg2) - 140 * 10^18 / 25000)
            if arg1 == 9:
                return ((100000 * arg2) - 140 * 10^18 / 25000)
            if arg1 == 6:
                return ((100000 * arg2) - 140 * 10^18 / 20833)
            if arg1 == 10:
                return ((100000 * arg2) - 140 * 10^18 / 20833)
            if arg1 == 16:
                return ((100000 * arg2) - 140 * 10^18 / 8333)
    ('iszero', ('eq', ('param', 'arg1'), 16))
    revert
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not bets[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174,
                    mem[198 len 30]
    if block.number <= bets[arg1].field_264 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d,
                    mem[198 len 30]
    bets[arg1].field_0 = 0
    if bets[arg1].field_0 / 100 >= 4 * 10^14:
        if bets[arg1].field_0 < 10^17:
            if bets[arg1].field_256 == 1:
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - (100000 * bets[arg1].field_0 / 100) / 8333))
        else:
            if bets[arg1].field_256 == 1:
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) + (-100000 * bets[arg1].field_0 / 100) - 100 * 10^18 / 8333))
    else:
        if bets[arg1].field_0 < 10^17:
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
                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 50000))
            else:
                if bets[arg1].field_256 == 2:
                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 50000))
                else:
                    if bets[arg1].field_256 == 4:
                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 45833))
                    else:
                        if bets[arg1].field_256 == 8:
                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 45833))
                        else:
                            if bets[arg1].field_256 == 5:
                                lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 25000))
                            else:
                                if bets[arg1].field_256 == 9:
                                    lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 25000))
                                else:
                                    if bets[arg1].field_256 == 6:
                                        lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 20833))
                                    else:
                                        if bets[arg1].field_256 == 10:
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 20833))
                                        else:
                                            require bets[arg1].field_256 == 16
                                            lockedInBets = uint128(lockedInBets - ((100000 * bets[arg1].field_0) - 140 * 10^18 / 8333))
    call bets[arg1].field_304 with:
       value bets[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refund(bets[arg1].field_0, bets[arg1].field_304);
}

function placeBet(uint8 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if bets[arg3].field_304:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654265742073686f756c6420626520696e20612027636c65616e27207374617465,
                    mem[197 len 31]
    if msg.value < 10^16:
        revert with 0, 'failed amount >= MIN_BET'
    if msg.value > 300000 * 10^18:
        revert with 0, 'failed amount <= MAX_BET'
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
    mem[261 len 0] = None
    signer = erecover(sha3(mem[261 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2 % 1099511627776, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor2:
        revert with 0, 'failed different signer'
    if msg.value / 100 >= 4 * 10^14:
        if msg.value < 10^17:
            if arg1 == 1:
                if (100000 * msg.value) - (100000 * msg.value / 100) / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) - (100000 * msg.value / 100) / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) - (100000 * msg.value / 100) / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) - (100000 * msg.value / 100) / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) - (100000 * msg.value / 100) / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) - (100000 * msg.value / 100) / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) - (100000 * msg.value / 100) / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) - (100000 * msg.value / 100) / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) - (100000 * msg.value / 100) / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 8333))
        else:
            if arg1 == 1:
                if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 8333))
    else:
        if msg.value < 10^17:
            if arg1 == 1:
                if (100000 * msg.value) - 40 * 10^18 / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) - 40 * 10^18 / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) - 40 * 10^18 / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) - 40 * 10^18 / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) - 40 * 10^18 / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) - 40 * 10^18 / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) - 40 * 10^18 / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) - 40 * 10^18 / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) - 40 * 10^18 / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 8333))
        else:
            if arg1 == 1:
                if (100000 * msg.value) - 140 * 10^18 / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) - 140 * 10^18 / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) - 140 * 10^18 / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) - 140 * 10^18 / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) - 140 * 10^18 / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) - 140 * 10^18 / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) - 140 * 10^18 / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) - 140 * 10^18 / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) - 140 * 10^18 / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 8333))
    if lockedInBets > eth.balance(this.address):
        revert with 0, 'Cannot afford to lose this bet.'
    emit Commit(arg3);
    bets[arg3].field_304 = msg.sender
    bets[arg3].field_0 = msg.value
    bets[arg3].field_256 = arg1
    bets[arg3].field_264 = block.number % 1099511627776
}

function sub_080dd5d0(?) payable {
    require calldata.size - 4 >= 224
    if not arg7:
        revert with 0, 'inviter != address (0)'
    if not sub_878a059e[address(msg.sender)]:
        sub_878a059e[address(msg.sender)] = arg7
    if bets[arg3].field_304:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654265742073686f756c6420626520696e20612027636c65616e27207374617465,
                    mem[197 len 31]
    if msg.value < 10^16:
        revert with 0, 'failed amount >= MIN_BET'
    if msg.value > 300000 * 10^18:
        revert with 0, 'failed amount <= MAX_BET'
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
    mem[261 len 0] = None
    signer = erecover(sha3(mem[261 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2 % 1099511627776, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor2:
        revert with 0, 'failed different signer'
    if msg.value / 100 >= 4 * 10^14:
        if msg.value < 10^17:
            if arg1 == 1:
                if (100000 * msg.value) - (100000 * msg.value / 100) / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) - (100000 * msg.value / 100) / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) - (100000 * msg.value / 100) / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) - (100000 * msg.value / 100) / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) - (100000 * msg.value / 100) / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) - (100000 * msg.value / 100) / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) - (100000 * msg.value / 100) / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) - (100000 * msg.value / 100) / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) - (100000 * msg.value / 100) / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - (100000 * msg.value / 100) / 8333))
        else:
            if arg1 == 1:
                if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) + (-100000 * msg.value / 100) - 100 * 10^18 / 8333))
    else:
        if msg.value < 10^17:
            if arg1 == 1:
                if (100000 * msg.value) - 40 * 10^18 / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) - 40 * 10^18 / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) - 40 * 10^18 / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) - 40 * 10^18 / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) - 40 * 10^18 / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) - 40 * 10^18 / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) - 40 * 10^18 / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) - 40 * 10^18 / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) - 40 * 10^18 / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 40 * 10^18 / 8333))
        else:
            if arg1 == 1:
                if (100000 * msg.value) - 140 * 10^18 / 50000 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 50000))
            else:
                if arg1 == 2:
                    if (100000 * msg.value) - 140 * 10^18 / 50000 > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 50000))
                else:
                    if arg1 == 4:
                        if (100000 * msg.value) - 140 * 10^18 / 45833 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 45833))
                    else:
                        if arg1 == 8:
                            if (100000 * msg.value) - 140 * 10^18 / 45833 > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 45833))
                        else:
                            if arg1 == 5:
                                if (100000 * msg.value) - 140 * 10^18 / 25000 > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 25000))
                            else:
                                if arg1 == 9:
                                    if (100000 * msg.value) - 140 * 10^18 / 25000 > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 25000))
                                else:
                                    if arg1 == 6:
                                        if (100000 * msg.value) - 140 * 10^18 / 20833 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 20833))
                                    else:
                                        if arg1 == 10:
                                            if (100000 * msg.value) - 140 * 10^18 / 20833 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 20833))
                                        else:
                                            require arg1 == 16
                                            if (100000 * msg.value) - 140 * 10^18 / 8333 > msg.value + maxProfit:
                                                revert with 0, 'maxProfit limit violation.'
                                            lockedInBets = uint128(lockedInBets + ((100000 * msg.value) - 140 * 10^18 / 8333))
    if lockedInBets > eth.balance(this.address):
        revert with 0, 'Cannot afford to lose this bet.'
    emit Commit(arg3);
    bets[arg3].field_304 = msg.sender
    bets[arg3].field_0 = msg.value
    bets[arg3].field_256 = arg1
    bets[arg3].field_264 = block.number % 1099511627776
}



}
