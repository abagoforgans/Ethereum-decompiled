contract main {




// =====================  Runtime code  =====================


const JACKPOT_MODULO = 1000

const MIN_JACKPOT_BET = 10^17

const HOUSE_EDGE_OF_TEN_THOUSAND = 100

const HOUSE_EDGE_MINIMUM_AMOUNT = 3 * 10^14

const JACKPOT_FEE = 10^15


address owner1;
address owner2;
address withdrawerAddress;
uint8 stor3; offset 128
uint128 maxProfit;
address secretSignerAddress;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
mapping of struct betInfo;
address croupierAddress;

function secretSigner() {
    return secretSignerAddress
}

function owner2() {
    return owner2
}

function jackpotSize() {
    return jackpotSize
}

function croupier() {
    return croupierAddress
}

function owner1() {
    return owner1
}

function stopped() {
    return bool(stor3)
}

function getBetInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return betInfo[arg1].field_0, 
           betInfo[arg1].field_0,
           betInfo[arg1].field_0,
           betInfo[arg1].field_256,
           betInfo[arg1].field_296,
           betInfo[arg1].field_0
}

function maxProfit() {
    return maxProfit
}

function withdrawer() {
    return withdrawerAddress
}

function lockedInBets() {
    return lockedInBets
}

function stop(bool arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
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
    if arg1:
        selfdestruct(owner1)
    stor3 = 1
    call owner1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBetInfoByReveal(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sha3(arg1), 
           betInfo[arg1].field_0,
           betInfo[arg1].field_0,
           betInfo[arg1].field_0,
           betInfo[arg1].field_256,
           betInfo[arg1].field_256,
           betInfo[arg1].field_96
}

function setCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    croupierAddress = arg1
}

function setSecretSigner(address arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    secretSignerAddress = arg1
}

function setWithdrawer(address arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    require arg1
    require withdrawerAddress != arg1
    withdrawerAddress = arg1
}

function setOwner1(address arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    require arg1
    require owner1 != arg1
    require owner2 != arg1
    owner1 = arg1
}

function setOwner2(address arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    require arg1
    require owner1 != arg1
    require owner2 != arg1
    owner2 = arg1
}

function setMaxProfit(uint128 arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    if arg1 >= 300000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe6d617850726f6669742073686f756c6420626520612073616e65206e756d626572,
                    mem[198 len 30]
    maxProfit = arg1
}

function increaseJackpot(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                        mem[202 len 26]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
                    mem[200 len 28]
    if arg1 + uint128(lockedInBets + jackpotSize) > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    jackpotSize = uint128(jackpotSize + arg1)
}

function kill() {
    if owner1 != msg.sender:
        if owner2 != msg.sender:
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
    stor3 = 1
    jackpotSize = 0
    call owner1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner1 != msg.sender:
        if owner2 != msg.sender:
            if withdrawerAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x2e6f6e6c7957697468647261776572206d6574686f64732063616c6c6564206279206e6f6e2d77697468647261776572,
                            mem[212 len 16]
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e576974686472617720616d6f756e74206c6172676572207468616e2062616c616e6365,
                    mem[200 len 28]
    if arg2 + uint128(lockedInBets + jackpotSize) > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, 0, arg1);
    else:
        emit Payment(arg2, 0, arg1);
}

function _fallback() payable {
    if msg.sender == withdrawerAddress:
        if owner1 != msg.sender:
            if owner2 != msg.sender:
                if withdrawerAddress != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x2e6f6e6c7957697468647261776572206d6574686f64732063616c6c6564206279206e6f6e2d77697468647261776572,
                                mem[212 len 16]
        if 101 * msg.value > eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x2e576974686472617720616d6f756e74206c6172676572207468616e2062616c616e6365,
                        mem[200 len 28]
        if (101 * msg.value) + uint128(lockedInBets + jackpotSize) > eth.balance(this.address):
            revert with 0, 'Not enough funds.'
        call withdrawerAddress with:
           value 101 * msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit FailedPayment(101 * msg.value, 0, withdrawerAddress);
        else:
            emit Payment(101 * msg.value, 0, withdrawerAddress);
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not betInfo[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174,
                    mem[198 len 30]
    if block.number <= betInfo[arg1].field_256 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d,
                    mem[198 len 30]
    betInfo[arg1].field_0 = 0
    if 0 >= betInfo[arg1].field_88:
        revert with 0, 'Win probability out of range.'
    if betInfo[arg1].field_88 > betInfo[arg1].field_80:
        revert with 0, 'Win probability out of range.'
    if betInfo[arg1].field_0 < 10^17:
        if 100 * betInfo[arg1].field_0 / 10000 >= 3 * 10^14:
            if betInfo[arg1].field_0 < 100 * betInfo[arg1].field_0 / 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
        else:
            if betInfo[arg1].field_0 < 3 * 10^14:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
    else:
        if 100 * betInfo[arg1].field_0 / 10000 >= 3 * 10^14:
            if betInfo[arg1].field_0 < (100 * betInfo[arg1].field_0 / 10000) + 10^15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
        else:
            if betInfo[arg1].field_0 < 13 * 10^14:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
        if 10^15 <= jackpotSize:
            jackpotSize = uint128(jackpotSize - 10^15)
    call betInfo[arg1].field_96 with:
       value betInfo[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(betInfo[arg1].field_0, arg1, betInfo[arg1].field_96);
    else:
        emit Payment(betInfo[arg1].field_0, arg1, betInfo[arg1].field_96);
}

function placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes32 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if stor3:
        revert with 0, 'contract killed'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654265742073686f756c6420626520696e20612027636c65616e27207374617465,
                    mem[197 len 31]
    if betInfo[arg4].field_96:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654265742073686f756c6420626520696e20612027636c65616e27207374617465,
                    mem[197 len 31]
    if arg2 < 2:
        revert with 0, 'Modulo should be within range.'
    if arg2 > 216:
        revert with 0, 'Modulo should be within range.'
    if msg.value < 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 300000 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 <= 0:
        revert with 0, 'Mask should be within range.'
    if arg1 >= 0x1000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Mask should be within range.'
    if arg3 < block.number:
        revert with 0, 'Commit has expired.'
    signer = erecover(sha3(arg3, arg4), 27, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != secretSignerAddress:
        revert with 0, 'ECDSA signature is not valid.'
    if arg2 <= 40:
        if 0 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
            revert with 0, 'Win probability out of range.'
        if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg2:
            revert with 0, 'Win probability out of range.'
        if msg.value < 10^17:
            if 100 * msg.value / 10000 >= 3 * 10^14:
                if msg.value < 100 * msg.value / 10000:
                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = 0
                lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)
                if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                    revert with 0, 'Cannot afford to lose this bet.'
            else:
                if msg.value < 3 * 10^14:
                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-3 * 10^14 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = 0
                lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)
                if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                    revert with 0, 'Cannot afford to lose this bet.'
        else:
            if 100 * msg.value / 10000 >= 3 * 10^14:
                if msg.value < (100 * msg.value / 10000) + 10^15:
                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                jackpotSize = uint128(jackpotSize + 10^15)
                lockedInBets = 0
                lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)
                if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                    revert with 0, 'Cannot afford to lose this bet.'
            else:
                if msg.value < 13 * 10^14:
                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-13 * 10^14 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                jackpotSize = uint128(jackpotSize + 10^15)
                lockedInBets = 0
                lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)
                if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                    revert with 0, 'Cannot afford to lose this bet.'
        emit Commit(arg4, arg7);
        betInfo[arg4].field_256 = block.number % 1099511627776
        betInfo[arg4].field_296 = Mask(216, 0, arg1)
        betInfo[arg4].field_0 = Mask(80, 0, msg.value)
        betInfo[arg4].field_80 = uint8(arg2)
        betInfo[arg4].field_88 = uint8(0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63)
    else:
        if arg2 <= 80:
            idx = 1
            s = 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63
            t = arg1
            while idx < 2:
                idx = idx + 1
                s = (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, t) >> 40 % 63) + s
                t = Mask(216, 40, t) >> 40
                continue 
            if 0 >= (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63):
                revert with 0, 'Win probability out of range.'
            if (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63) > arg2:
                revert with 0, 'Win probability out of range.'
            if msg.value < 10^17:
                if 100 * msg.value / 10000 >= 3 * 10^14:
                    if msg.value < 100 * msg.value / 10000:
                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)
                    if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63) > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = 0
                    lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)
                    if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                        revert with 0, 'Cannot afford to lose this bet.'
                else:
                    if msg.value < 3 * 10^14:
                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)
                    if (-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63) > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    lockedInBets = 0
                    lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)
                    if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                        revert with 0, 'Cannot afford to lose this bet.'
            else:
                if 100 * msg.value / 10000 >= 3 * 10^14:
                    if msg.value < (100 * msg.value / 10000) + 10^15:
                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)
                    if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63) > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    jackpotSize = uint128(jackpotSize + 10^15)
                    lockedInBets = 0
                    lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)
                    if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                        revert with 0, 'Cannot afford to lose this bet.'
                else:
                    if msg.value < 13 * 10^14:
                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)
                    if (-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63) > msg.value + maxProfit:
                        revert with 0, 'maxProfit limit violation.'
                    jackpotSize = uint128(jackpotSize + 10^15)
                    lockedInBets = 0
                    lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)
                    if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                        revert with 0, 'Cannot afford to lose this bet.'
            emit Commit(arg4, arg7);
            betInfo[arg4].field_256 = block.number % 1099511627776
            betInfo[arg4].field_296 = Mask(216, 0, arg1)
            betInfo[arg4].field_0 = Mask(80, 0, msg.value)
            betInfo[arg4].field_80 = uint8(arg2)
            betInfo[arg4].field_88 = uint8((0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 216) >> 40 % 63))
        else:
            if 100 == arg2:
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                46,
                                0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                                Mask(112, 0, arg6),
                                mem[352 len 4]
                if arg1 > arg2:
                    revert with 0, 
                                32,
                                46,
                                0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                                Mask(112, 0, arg6),
                                mem[352 len 4]
                if 0 >= arg1:
                    revert with 0, 'Win probability out of range.'
                if arg1 > arg2:
                    revert with 0, 'Win probability out of range.'
                if msg.value < 10^17:
                    if 100 * msg.value / 10000 >= 3 * 10^14:
                        if msg.value < 100 * msg.value / 10000:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                        require arg1
                        if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = 0
                        lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)
                        if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                            revert with 0, 'Cannot afford to lose this bet.'
                    else:
                        if msg.value < 3 * 10^14:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                        require arg1
                        if (-3 * 10^14 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        lockedInBets = 0
                        lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)
                        if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                            revert with 0, 'Cannot afford to lose this bet.'
                else:
                    if 100 * msg.value / 10000 >= 3 * 10^14:
                        if msg.value < (100 * msg.value / 10000) + 10^15:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                        require arg1
                        if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        jackpotSize = uint128(jackpotSize + 10^15)
                        lockedInBets = 0
                        lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)
                        if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                            revert with 0, 'Cannot afford to lose this bet.'
                    else:
                        if msg.value < 13 * 10^14:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                        require arg1
                        if (-13 * 10^14 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                            revert with 0, 'maxProfit limit violation.'
                        jackpotSize = uint128(jackpotSize + 10^15)
                        lockedInBets = 0
                        lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)
                        if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                            revert with 0, 'Cannot afford to lose this bet.'
                emit Commit(arg4, arg7);
                betInfo[arg4].field_256 = block.number % 1099511627776
                betInfo[arg4].field_296 = 0
                betInfo[arg4].field_0 = Mask(80, 0, msg.value)
                betInfo[arg4].field_80 = uint8(arg2)
                betInfo[arg4].field_88 = uint8(arg1)
            else:
                if arg2 <= 120:
                    idx = 1
                    s = 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63
                    t = arg1
                    while idx < 3:
                        idx = idx + 1
                        s = (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, t) >> 40 % 63) + s
                        t = Mask(216, 40, t) >> 40
                        continue 
                    if 0 >= (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63):
                        revert with 0, 'Win probability out of range.'
                    if (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63) > arg2:
                        revert with 0, 'Win probability out of range.'
                    if msg.value < 10^17:
                        if 100 * msg.value / 10000 >= 3 * 10^14:
                            if msg.value < 100 * msg.value / 10000:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                            require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)
                            if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63) > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = 0
                            lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)
                            if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                revert with 0, 'Cannot afford to lose this bet.'
                        else:
                            if msg.value < 3 * 10^14:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                            require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)
                            if (-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63) > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            lockedInBets = 0
                            lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)
                            if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                revert with 0, 'Cannot afford to lose this bet.'
                    else:
                        if 100 * msg.value / 10000 >= 3 * 10^14:
                            if msg.value < (100 * msg.value / 10000) + 10^15:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                            require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)
                            if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63) > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            jackpotSize = uint128(jackpotSize + 10^15)
                            lockedInBets = 0
                            lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)
                            if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                revert with 0, 'Cannot afford to lose this bet.'
                        else:
                            if msg.value < 13 * 10^14:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                            require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)
                            if (-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63) > msg.value + maxProfit:
                                revert with 0, 'maxProfit limit violation.'
                            jackpotSize = uint128(jackpotSize + 10^15)
                            lockedInBets = 0
                            lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)
                            if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                revert with 0, 'Cannot afford to lose this bet.'
                    emit Commit(arg4, arg7);
                    betInfo[arg4].field_256 = block.number % 1099511627776
                    betInfo[arg4].field_296 = Mask(216, 0, arg1)
                    betInfo[arg4].field_0 = Mask(80, 0, msg.value)
                    betInfo[arg4].field_80 = uint8(arg2)
                    betInfo[arg4].field_88 = uint8((0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (2 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 432) >> 40 % 63))
                else:
                    if arg2 <= 160:
                        idx = 1
                        s = 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63
                        t = arg1
                        while idx < 4:
                            idx = idx + 1
                            s = (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, t) >> 40 % 63) + s
                            t = Mask(216, 40, t) >> 40
                            continue 
                        if 0 >= (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63):
                            revert with 0, 'Win probability out of range.'
                        if (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63) > arg2:
                            revert with 0, 'Win probability out of range.'
                        if msg.value < 10^17:
                            if 100 * msg.value / 10000 >= 3 * 10^14:
                                if msg.value < 100 * msg.value / 10000:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)
                                if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63) > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = 0
                                lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)
                                if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                    revert with 0, 'Cannot afford to lose this bet.'
                            else:
                                if msg.value < 3 * 10^14:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)
                                if (-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63) > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                lockedInBets = 0
                                lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)
                                if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                    revert with 0, 'Cannot afford to lose this bet.'
                        else:
                            if 100 * msg.value / 10000 >= 3 * 10^14:
                                if msg.value < (100 * msg.value / 10000) + 10^15:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)
                                if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63) > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                jackpotSize = uint128(jackpotSize + 10^15)
                                lockedInBets = 0
                                lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)
                                if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                    revert with 0, 'Cannot afford to lose this bet.'
                            else:
                                if msg.value < 13 * 10^14:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)
                                if (-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63) > msg.value + maxProfit:
                                    revert with 0, 'maxProfit limit violation.'
                                jackpotSize = uint128(jackpotSize + 10^15)
                                lockedInBets = 0
                                lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)
                                if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                    revert with 0, 'Cannot afford to lose this bet.'
                        emit Commit(arg4, arg7);
                        betInfo[arg4].field_256 = block.number % 1099511627776
                        betInfo[arg4].field_296 = Mask(216, 0, arg1)
                        betInfo[arg4].field_0 = Mask(80, 0, msg.value)
                        betInfo[arg4].field_80 = uint8(arg2)
                        betInfo[arg4].field_88 = uint8((0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (3 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 648) >> 40 % 63))
                    else:
                        if arg2 <= 200:
                            idx = 1
                            s = 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63
                            t = arg1
                            while idx < 5:
                                idx = idx + 1
                                s = (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, t) >> 40 % 63) + s
                                t = Mask(216, 40, t) >> 40
                                continue 
                            if 0 >= (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63):
                                revert with 0, 'Win probability out of range.'
                            if (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63) > arg2:
                                revert with 0, 'Win probability out of range.'
                            if msg.value < 10^17:
                                if 100 * msg.value / 10000 >= 3 * 10^14:
                                    if msg.value < 100 * msg.value / 10000:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)
                                    if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63) > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = 0
                                    lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)
                                    if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                        revert with 0, 'Cannot afford to lose this bet.'
                                else:
                                    if msg.value < 3 * 10^14:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)
                                    if (-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63) > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    lockedInBets = 0
                                    lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)
                                    if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                        revert with 0, 'Cannot afford to lose this bet.'
                            else:
                                if 100 * msg.value / 10000 >= 3 * 10^14:
                                    if msg.value < (100 * msg.value / 10000) + 10^15:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)
                                    if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63) > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    jackpotSize = uint128(jackpotSize + 10^15)
                                    lockedInBets = 0
                                    lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)
                                    if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                        revert with 0, 'Cannot afford to lose this bet.'
                                else:
                                    if msg.value < 13 * 10^14:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                    require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)
                                    if (-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63) > msg.value + maxProfit:
                                        revert with 0, 'maxProfit limit violation.'
                                    jackpotSize = uint128(jackpotSize + 10^15)
                                    lockedInBets = 0
                                    lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)
                                    if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                        revert with 0, 'Cannot afford to lose this bet.'
                            emit Commit(arg4, arg7);
                            betInfo[arg4].field_256 = block.number % 1099511627776
                            betInfo[arg4].field_296 = Mask(216, 0, arg1)
                            betInfo[arg4].field_0 = Mask(80, 0, msg.value)
                            betInfo[arg4].field_80 = uint8(arg2)
                            betInfo[arg4].field_88 = uint8((0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (4 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 864) >> 40 % 63))
                        else:
                            if arg2 <= 216:
                                idx = 1
                                s = 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63
                                t = arg1
                                while idx < 6:
                                    idx = idx + 1
                                    s = (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, t) >> 40 % 63) + s
                                    t = Mask(216, 40, t) >> 40
                                    continue 
                                if 0 >= (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63):
                                    revert with 0, 'Win probability out of range.'
                                if (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63) > arg2:
                                    revert with 0, 'Win probability out of range.'
                                if msg.value < 10^17:
                                    if 100 * msg.value / 10000 >= 3 * 10^14:
                                        if msg.value < 100 * msg.value / 10000:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)
                                        if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63) > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = 0
                                        lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)
                                        if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                    else:
                                        if msg.value < 3 * 10^14:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)
                                        if (-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63) > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = 0
                                        lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)
                                        if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                else:
                                    if 100 * msg.value / 10000 >= 3 * 10^14:
                                        if msg.value < (100 * msg.value / 10000) + 10^15:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)
                                        if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63) > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        jackpotSize = uint128(jackpotSize + 10^15)
                                        lockedInBets = 0
                                        lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)
                                        if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                    else:
                                        if msg.value < 13 * 10^14:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)
                                        if (-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63) > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        jackpotSize = uint128(jackpotSize + 10^15)
                                        lockedInBets = 0
                                        lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)
                                        if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / (0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63)) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                emit Commit(arg4, arg7);
                                betInfo[arg4].field_256 = block.number % 1099511627776
                                betInfo[arg4].field_296 = Mask(216, 0, arg1)
                                betInfo[arg4].field_0 = Mask(80, 0, msg.value)
                                betInfo[arg4].field_80 = uint8(arg2)
                                betInfo[arg4].field_88 = uint8((0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 1099511627776 % 63) + (5 * 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * Mask(40, 40, arg1 + 1080) >> 40 % 63))
                            else:
                                if arg1 <= 0:
                                    revert with 0, 
                                                32,
                                                46,
                                                0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                                                Mask(112, 0, arg6),
                                                mem[352 len 4]
                                if arg1 > arg2:
                                    revert with 0, 
                                                32,
                                                46,
                                                0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                                                Mask(112, 0, arg6),
                                                mem[352 len 4]
                                if 0 >= arg1:
                                    revert with 0, 'Win probability out of range.'
                                if arg1 > arg2:
                                    revert with 0, 'Win probability out of range.'
                                if msg.value < 10^17:
                                    if 100 * msg.value / 10000 >= 3 * 10^14:
                                        if msg.value < 100 * msg.value / 10000:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require arg1
                                        if (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = 0
                                        lockedInBets = uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)
                                        if uint128((0 or uint128(((msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                    else:
                                        if msg.value < 3 * 10^14:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require arg1
                                        if (-3 * 10^14 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        lockedInBets = 0
                                        lockedInBets = uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)
                                        if uint128((0 or uint128(((-3 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)) + jackpotSize) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                else:
                                    if 100 * msg.value / 10000 >= 3 * 10^14:
                                        if msg.value < (100 * msg.value / 10000) + 10^15:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require arg1
                                        if (-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        jackpotSize = uint128(jackpotSize + 10^15)
                                        lockedInBets = 0
                                        lockedInBets = uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)
                                        if uint128((0 or uint128(((-1 * 10^15 * arg2) + (msg.value * arg2) - (100 * msg.value / 10000 * arg2) / arg1) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                    else:
                                        if msg.value < 13 * 10^14:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[352 len 4]
                                        require arg1
                                        if (-13 * 10^14 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                                            revert with 0, 'maxProfit limit violation.'
                                        jackpotSize = uint128(jackpotSize + 10^15)
                                        lockedInBets = 0
                                        lockedInBets = uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)
                                        if uint128((0 or uint128(((-13 * 10^14 * arg2) + (msg.value * arg2) / arg1) + lockedInBets)) + uint128(jackpotSize + 10^15)) > eth.balance(this.address):
                                            revert with 0, 'Cannot afford to lose this bet.'
                                emit Commit(arg4, arg7);
                                betInfo[arg4].field_256 = block.number % 1099511627776
                                betInfo[arg4].field_296 = 0
                                betInfo[arg4].field_0 = Mask(80, 0, msg.value)
                                betInfo[arg4].field_80 = uint8(arg2)
                                betInfo[arg4].field_88 = uint8(arg1)
    betInfo[arg4].field_96 = msg.sender
}

function settleBet(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e4f6e6c7943726f7570696572206d6574686f64732063616c6c6564206279206e6f6e2d63726f7570696572,
                    mem[208 len 20]
    if betInfo[arg1].field_256 >= block.number:
        revert with 0, 
                    32,
                    51,
                    0x2e736574746c6542657420696e207468652073616d6520626c6f636b20617320706c6163654265742c206f72206265666f7265,
                    mem[279 len 13]
    if block.number > betInfo[arg1].field_256 + 250:
        revert with 0, 32, 34, 0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d, mem[262 len 30]
    if arg2 != block.hash(betInfo[arg1].field_256):
        revert with 0, 'blockHash invalid'
    if not betInfo[arg1].field_0:
        revert with 0, 32, 34, 0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174, mem[262 len 30]
    betInfo[arg1].field_0 = 0
    require betInfo[arg1].field_80
    if 0 >= betInfo[arg1].field_88:
        revert with 0, 'Win probability out of range.'
    if betInfo[arg1].field_88 > betInfo[arg1].field_80:
        revert with 0, 'Win probability out of range.'
    if betInfo[arg1].field_0 >= 10^17:
        if 100 * betInfo[arg1].field_0 / 10000 >= 3 * 10^14:
            if betInfo[arg1].field_0 < (100 * betInfo[arg1].field_0 / 10000) + 10^15:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
            if betInfo[arg1].field_80 == 100:
                if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                    if betInfo[arg1].field_0 < 10^17:
                        call betInfo[arg1].field_96 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if betInfo[arg1].field_0 < 10^17:
                        if not (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            call betInfo[arg1].field_96 with:
                               value (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            if not (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize + ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
            else:
                if betInfo[arg1].field_80 > 216:
                    if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if not Mask(216, 0, betInfo[arg1].field_296 and 2^(sha3(arg1, arg2) % betInfo[arg1].field_80)):
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-1 * 10^15 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
        else:
            if betInfo[arg1].field_0 < 13 * 10^14:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
            if betInfo[arg1].field_80 == 100:
                if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                    if betInfo[arg1].field_0 < 10^17:
                        call betInfo[arg1].field_96 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if betInfo[arg1].field_0 < 10^17:
                        if not (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            call betInfo[arg1].field_96 with:
                               value (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            if not (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize + ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
            else:
                if betInfo[arg1].field_80 > 216:
                    if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if not Mask(216, 0, betInfo[arg1].field_296 and 2^(sha3(arg1, arg2) % betInfo[arg1].field_80)):
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-13 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
    else:
        if 100 * betInfo[arg1].field_0 / 10000 >= 3 * 10^14:
            if betInfo[arg1].field_0 < 100 * betInfo[arg1].field_0 / 10000:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
            if betInfo[arg1].field_80 == 100:
                if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                    if betInfo[arg1].field_0 < 10^17:
                        call betInfo[arg1].field_96 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if betInfo[arg1].field_0 < 10^17:
                        if not (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            call betInfo[arg1].field_96 with:
                               value (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            if not (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize + ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
            else:
                if betInfo[arg1].field_80 > 216:
                    if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if not Mask(216, 0, betInfo[arg1].field_296 and 2^(sha3(arg1, arg2) % betInfo[arg1].field_80)):
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((betInfo[arg1].field_0 * betInfo[arg1].field_80) - (100 * betInfo[arg1].field_0 / 10000 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
        else:
            if betInfo[arg1].field_0 < 3 * 10^14:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require betInfo[arg1].field_88
            lockedInBets = uint128(lockedInBets - ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88))
            if betInfo[arg1].field_80 == 100:
                if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                    if betInfo[arg1].field_0 < 10^17:
                        call betInfo[arg1].field_96 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if betInfo[arg1].field_0 < 10^17:
                        if not (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            call betInfo[arg1].field_96 with:
                               value (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        require betInfo[arg1].field_80
                        if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                            if not (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                            if not jackpotSize + ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
            else:
                if betInfo[arg1].field_80 > 216:
                    if sha3(arg1, arg2) % betInfo[arg1].field_80 >= betInfo[arg1].field_88:
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                else:
                    if not Mask(216, 0, betInfo[arg1].field_296 and 2^(sha3(arg1, arg2) % betInfo[arg1].field_80)):
                        if betInfo[arg1].field_0 < 10^17:
                            call betInfo[arg1].field_96 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment(0, sha3(arg1), betInfo[arg1].field_96);
                    else:
                        if betInfo[arg1].field_0 < 10^17:
                            if not (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                call betInfo[arg1].field_96 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                call betInfo[arg1].field_96 with:
                                   value (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                        else:
                            require betInfo[arg1].field_80
                            if sha3(arg1, arg2) / betInfo[arg1].field_80 % 1000:
                                if not (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88:
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value (-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                if not jackpotSize + ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88):
                                    call betInfo[arg1].field_96 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit FailedPayment(1, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
                                else:
                                    call betInfo[arg1].field_96 with:
                                       value ((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit FailedPayment(((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88) + jackpotSize, sha3(arg1), betInfo[arg1].field_96);
                                    else:
                                        emit Payment((-3 * 10^14 * betInfo[arg1].field_80) + (betInfo[arg1].field_0 * betInfo[arg1].field_80) / betInfo[arg1].field_88, sha3(arg1), betInfo[arg1].field_96);
}



}
