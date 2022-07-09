contract main {




// =====================  Runtime code  =====================


#
#  - settleBet(uint256 arg1)
#  - sub_dc023f15(?)
#
uint256 sub_e0d44b79;
uint8 sub_f2d7afe8; offset 16
uint8 sub_0149e4bb; offset 24
uint8 HOUSE_EDGE_PERCENT; offset 32
uint8 sub_255858b3; offset 40
uint16 luckyNumber;
uint256 sub_371e6ec4;
uint8 sub_f8dbd7ee;
uint8 sub_d930a45a;
uint8 sub_bd0f1df4; offset 8
address sub_22ff5faaAddress;
address owner;
address stor15;
uint256 totalDividends;
uint256 sub_a5197d10;
uint256 maxProfit;
uint256 sub_fc9f12a6;
uint256 sub_33450c5d;
address secretSignerAddress;
address moderatorAddress;
address croupierAddress;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
uint256 stor24;
mapping of struct stor25;
mapping of struct stor26;
mapping of uint256 sub_1d70f55c;

function sub_0149e4bb(?) {
    return sub_0149e4bb
}

function sub_1d70f55c(?) {
    require calldata.size - 4 >= 32
    return sub_1d70f55c[arg1]
}

function sub_22ff5faa(?) {
    return sub_22ff5faaAddress
}

function sub_255858b3(?) {
    return sub_255858b3
}

function sub_33450c5d(?) {
    return sub_33450c5d
}

function sub_371e6ec4(?) {
    return sub_371e6ec4
}

function moderator() {
    return moderatorAddress
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

function totalDividends() {
    return totalDividends
}

function sub_a5197d10(?) {
    return sub_a5197d10
}

function maxProfit() {
    return maxProfit
}

function sub_bd0f1df4(?) {
    return sub_bd0f1df4
}

function HOUSE_EDGE_PERCENT() {
    return HOUSE_EDGE_PERCENT
}

function luckyNumber() {
    return luckyNumber
}

function sub_d930a45a(?) {
    return sub_d930a45a
}

function lockedInBets() {
    return lockedInBets
}

function sub_e0d44b79(?) {
    return sub_e0d44b79
}

function sub_f2d7afe8(?) {
    return sub_f2d7afe8
}

function sub_f8dbd7ee(?) {
    return sub_f8dbd7ee
}

function sub_fc9f12a6(?) {
    return sub_fc9f12a6
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

function acceptNextOwner() {
    if stor15 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e43616e206f6e6c792061636365707420707265617070726f766564206e6577206f776e6572,
                    mem[202 len 26]
    owner = stor15
}

function sub_3bad7e9c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    sub_22ff5faaAddress = arg1
}

function sub_38b48ac3(?) {
    require calldata.size - 4 >= 32
    if sub_1d70f55c[address(arg1)] < 20 * 10^18:
        return 0
    if sub_1d70f55c[address(arg1)] < 100 * 10^18:
        return 1
    if sub_1d70f55c[address(arg1)] < 500 * 10^18:
        return 2
    if sub_1d70f55c[address(arg1)] < 1000 * 10^18:
        return 3
    if sub_1d70f55c[address(arg1)] >= 5000 * 10^18:
        return 5
    return 4
}

function sendDividends() payable {
    if sub_22ff5faaAddress:
        require ext_code.size(sub_22ff5faaAddress)
        call sub_22ff5faaAddress.0x5e78458e with:
           value totalDividends wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalDividends = 0
        emit 0x384e13b2: block.timestamp, totalDividends
}

function sub_d98f9740(?) {
    if owner != msg.sender:
        if moderatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x2e4d6f6465726174696f6e206d6574686f64732063616c6c6564206279206e6f6e2d6d6f64657261746f72,
                        mem[207 len 21]
    stor24 = jackpotSize
}

function sub_5e05f374(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if moderatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x2e4d6f6465726174696f6e206d6574686f64732063616c6c6564206279206e6f6e2d6d6f64657261746f72,
                        mem[207 len 21]
    sub_e0d44b79 = arg1
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
    stor15 = arg1
}

function sub_8f6ead62(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if moderatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x2e4d6f6465726174696f6e206d6574686f64732063616c6c6564206279206e6f6e2d6d6f64657261746f72,
                        mem[207 len 21]
    sub_255858b3 = arg1
    sub_d930a45a = arg2
}

function setAddresses(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    secretSignerAddress = arg2
    croupierAddress = arg1
    moderatorAddress = arg3
}

function sub_db53404c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if moderatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x2e4d6f6465726174696f6e206d6574686f64732063616c6c6564206279206e6f6e2d6d6f64657261746f72,
                        mem[207 len 21]
    require 0 <= arg1
    require arg1 <= 10
    sub_f8dbd7ee = arg1
}

function sub_a84bf40e(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    require arg2 >= 5
    require uint8(arg1 + arg2 + arg3) <= 30
    HOUSE_EDGE_PERCENT = arg1
    sub_0149e4bb = arg3
    sub_f2d7afe8 = arg2
}

function sub_80a1a0e5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if moderatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x2e4d6f6465726174696f6e206d6574686f64732063616c6c6564206279206e6f6e2d6d6f64657261746f72,
                        mem[207 len 21]
    if arg1 >= 300000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe726f756c7474655461626c654c696d69742063616e74206265206772656174207468656e20746f70206c696d6974,
                    mem[211 len 17]
    sub_371e6ec4 = arg1
}

function sub_88475e4e(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg2 > sub_a5197d10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
                    mem[200 len 28]
    sub_a5197d10 -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x5e93fffc: address(arg1), 0, arg2, 128, 8, uint64('withdraw')
    else:
        emit 0xe0be3e38: address(arg1), 0, arg2, 128, 8, uint64('withdraw')
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
    if uint128(jackpotSize + lockedInBets) + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x5e93fffc: address(arg1), 0, arg2, 128, 8, uint64('withdraw')
    else:
        emit 0xe0be3e38: address(arg1), 0, arg2, 128, 8, uint64('withdraw')
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor25[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174,
                    mem[198 len 30]
    if block.number <= stor25[arg1].field_424 + 250 % 1099511627776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d,
                    mem[198 len 30]
    stor25[arg1].field_0 = 0
    lockedInBets = uint128(lockedInBets - stor25[arg1].field_256)
    if stor25[arg1].field_0 < 10^17:
        call stor25[arg1].field_808 with:
           value stor25[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x5e93fffc: stor25[arg1].field_768, arg1, stor25[arg1].field_0, 'refund'
        else:
            emit 0xe0be3e38: stor25[arg1].field_768, arg1, stor25[arg1].field_0, 'refund'
    else:
        if jackpotSize > 10^15:
            jackpotSize = uint128(jackpotSize - 10^15)
        call stor25[arg1].field_808 with:
           value stor25[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x5e93fffc: stor25[arg1].field_768, arg1, stor25[arg1].field_0, 'refund'
        else:
            emit 0xe0be3e38: stor25[arg1].field_768, arg1, stor25[arg1].field_0, 'refund'
}

function sub_98c7d1e3(?) {
    require calldata.size - 4 >= 32
    if not stor26[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174,
                    mem[198 len 30]
    if block.number <= stor26[arg1].field_1024 + 250 % 1099511627776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d,
                    mem[198 len 30]
    stor26[arg1].field_0 = 0
    idx = 0
    while uint8(idx) < stor26[arg1].field_1952:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 26) + 2
        stor26[arg1][2][idx << 248].field_0 = 0
        idx = idx + 1
        continue 
    lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
    if stor26[arg1].field_0 < 10^17:
        call stor26[arg1].field_1792 with:
           value stor26[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x5e93fffc: stor26[arg1].field_1792, arg1, stor26[arg1].field_0, 'refund'
        else:
            emit 0xe0be3e38: stor26[arg1].field_1792, arg1, stor26[arg1].field_0, 'refund'
    else:
        if jackpotSize > 10^15:
            jackpotSize = uint128(jackpotSize - 10^15)
        call stor26[arg1].field_1792 with:
           value stor26[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x5e93fffc: stor26[arg1].field_1792, arg1, stor26[arg1].field_0, 'refund'
        else:
            emit 0xe0be3e38: stor26[arg1].field_1792, arg1, stor26[arg1].field_0, 'refund'
}

function sub_e9c90d01(?) {
    require calldata.size - 4 >= 32
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e4f6e6c7943726f7570696572206d6574686f64732063616c6c6564206279206e6f6e2d63726f7570696572,
                    mem[208 len 20]
    if stor26[arg1].field_0 <= 0:
        revert with 0, 'Bet already processed'
    if block.number <= stor26[arg1].field_1024:
        revert with 0, 
                    32,
                    51,
                    0x2e736574746c6542657420696e207468652073616d6520626c6f636b20617320706c6163654265742c206f72206265666f7265,
                    mem[279 len 13]
    if block.number > stor26[arg1].field_1024 + 250:
        revert with 0, 'Can't be queried by EVM.'
    if not stor26[arg1].field_0:
        revert with 0, 32, 34, 0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174, mem[262 len 30]
    if stor26[arg1].field_0 < 10^17:
        if sub_1d70f55c[stor26[arg1].field_1792] < 20 * 10^18:
            idx = 0
            s = 0
            t = 0
            while uint8(idx) < stor26[arg1].field_1952:
                mem[0] = uint8(idx)
                mem[32] = sha3(sha3(arg1), 26) + 6
                if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                mem[0] = uint8(idx)
                mem[32] = sha3(sha3(arg1), 26) + 3
                if 0 >= stor26[arg1][3][idx << 248].field_0:
                    revert with 0, 'Win probability out of range.'
                if stor26[arg1][3][idx << 248].field_0 > 36:
                    revert with 0, 'Win probability out of range.'
                if sub_255858b3 != 1:
                    if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8) / 1000 >= 3 * 10^14:
                        if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8) / 1000 > stor26[arg1][2][idx << 248].field_0:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8) / 1000) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8) / 1000) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                    else:
                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                else:
                    if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 >= 3 * 10^14:
                        if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 > stor26[arg1][2][idx << 248].field_0:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                    else:
                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                revert
            lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
            if stor26[arg1].field_0 < 10^17:
                if not t:
                    call stor26[arg1].field_1792 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                    else:
                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    call stor26[arg1].field_1792 with:
                       value t wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
            else:
                if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                    if not t:
                        call stor26[arg1].field_1792 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        call stor26[arg1].field_1792 with:
                           value t wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    jackpotSize = 0
                    if jackpotSize > 0:
                        emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                    if not t + jackpotSize:
                        call stor26[arg1].field_1792 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        call stor26[arg1].field_1792 with:
                           value t + jackpotSize wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
        else:
            if sub_1d70f55c[stor26[arg1].field_1792] < 100 * 10^18:
                idx = 0
                s = 0
                t = 0
                while uint8(idx) < stor26[arg1].field_1952:
                    mem[0] = uint8(idx)
                    mem[32] = sha3(sha3(arg1), 26) + 6
                    if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = sha3(sha3(arg1), 26) + 3
                    if 0 >= stor26[arg1][3][idx << 248].field_0:
                        revert with 0, 'Win probability out of range.'
                    if stor26[arg1][3][idx << 248].field_0 > 36:
                        revert with 0, 'Win probability out of range.'
                    if sub_255858b3 != 1:
                        if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1) / 1000 >= 3 * 10^14:
                            if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1) / 1000 > stor26[arg1][2][idx << 248].field_0:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                        else:
                            if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                    else:
                        if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 >= 3 * 10^14:
                            if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 > stor26[arg1][2][idx << 248].field_0:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                        else:
                            if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                    ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                    revert
                lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                if stor26[arg1].field_0 < 10^17:
                    if not t:
                        call stor26[arg1].field_1792 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        call stor26[arg1].field_1792 with:
                           value t wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                        if not t:
                            call stor26[arg1].field_1792 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            call stor26[arg1].field_1792 with:
                               value t wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        jackpotSize = 0
                        if jackpotSize > 0:
                            emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                        if not t + jackpotSize:
                            call stor26[arg1].field_1792 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            call stor26[arg1].field_1792 with:
                               value t + jackpotSize wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
            else:
                if sub_1d70f55c[stor26[arg1].field_1792] < 500 * 10^18:
                    idx = 0
                    s = 0
                    t = 0
                    while uint8(idx) < stor26[arg1].field_1952:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(sha3(arg1), 26) + 6
                        if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = sha3(sha3(arg1), 26) + 3
                        if 0 >= stor26[arg1][3][idx << 248].field_0:
                            revert with 0, 'Win probability out of range.'
                        if stor26[arg1][3][idx << 248].field_0 > 36:
                            revert with 0, 'Win probability out of range.'
                        if sub_255858b3 != 1:
                            if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2) / 1000 >= 3 * 10^14:
                                if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2) / 1000 > stor26[arg1][2][idx << 248].field_0:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                            else:
                                if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                        else:
                            if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 >= 3 * 10^14:
                                if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 > stor26[arg1][2][idx << 248].field_0:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                            else:
                                if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                        ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                        revert
                    lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                    if stor26[arg1].field_0 < 10^17:
                        if not t:
                            call stor26[arg1].field_1792 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            call stor26[arg1].field_1792 with:
                               value t wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                            if not t:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                            if not t + jackpotSize:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    if sub_1d70f55c[stor26[arg1].field_1792] < 1000 * 10^18:
                        idx = 0
                        s = 0
                        t = 0
                        while uint8(idx) < stor26[arg1].field_1952:
                            mem[0] = uint8(idx)
                            mem[32] = sha3(sha3(arg1), 26) + 6
                            if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            mem[0] = uint8(idx)
                            mem[32] = sha3(sha3(arg1), 26) + 3
                            if 0 >= stor26[arg1][3][idx << 248].field_0:
                                revert with 0, 'Win probability out of range.'
                            if stor26[arg1][3][idx << 248].field_0 > 36:
                                revert with 0, 'Win probability out of range.'
                            if sub_255858b3 != 1:
                                if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3) / 1000 >= 3 * 10^14:
                                    if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3) / 1000 > stor26[arg1][2][idx << 248].field_0:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                                else:
                                    if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                            else:
                                if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 >= 3 * 10^14:
                                    if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 > stor26[arg1][2][idx << 248].field_0:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                                else:
                                    if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                            ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                            revert
                        lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                        if stor26[arg1].field_0 < 10^17:
                            if not t:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                                if not t:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                                if not t + jackpotSize:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        if sub_1d70f55c[stor26[arg1].field_1792] >= 5000 * 10^18:
                            idx = 0
                            s = 0
                            t = 0
                            while uint8(idx) < stor26[arg1].field_1952:
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 6
                                if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 3
                                if 0 >= stor26[arg1][3][idx << 248].field_0:
                                    revert with 0, 'Win probability out of range.'
                                if stor26[arg1][3][idx << 248].field_0 > 36:
                                    revert with 0, 'Win probability out of range.'
                                if sub_255858b3 != 1:
                                    if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5) / 1000 >= 3 * 10^14:
                                        if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5) / 1000 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                else:
                                    if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 >= 3 * 10^14:
                                        if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                                revert
                        else:
                            idx = 0
                            s = 0
                            t = 0
                            while uint8(idx) < stor26[arg1].field_1952:
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 6
                                if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 3
                                if 0 >= stor26[arg1][3][idx << 248].field_0:
                                    revert with 0, 'Win probability out of range.'
                                if stor26[arg1][3][idx << 248].field_0 > 36:
                                    revert with 0, 'Win probability out of range.'
                                if sub_255858b3 != 1:
                                    if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4) / 1000 >= 3 * 10^14:
                                        if stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4) / 1000 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                else:
                                    if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 >= 3 * 10^14:
                                        if stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0:
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                                revert
                        lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                        if stor26[arg1].field_0 < 10^17:
                            if not t:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                                if not t:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                                if not t + jackpotSize:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
    else:
        require stor26[arg1].field_1952
        if sub_1d70f55c[stor26[arg1].field_1792] < 20 * 10^18:
            idx = 0
            s = 0
            t = 0
            while uint8(idx) < stor26[arg1].field_1952:
                mem[0] = uint8(idx)
                mem[32] = sha3(sha3(arg1), 26) + 6
                if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                mem[0] = uint8(idx)
                mem[32] = sha3(sha3(arg1), 26) + 3
                if 0 >= stor26[arg1][3][idx << 248].field_0:
                    revert with 0, 'Win probability out of range.'
                if stor26[arg1][3][idx << 248].field_0 > 36:
                    revert with 0, 'Win probability out of range.'
                if sub_255858b3 != 1:
                    if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) / 1000 >= 3 * 10^14:
                        if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                    else:
                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                else:
                    if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 >= 3 * 10^14:
                        if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                    else:
                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                        if stor26[arg1][3][idx << 248].field_0:
                            idx = idx + 1
                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                            continue 
                ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                revert
            lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
            if stor26[arg1].field_0 < 10^17:
                if not t:
                    call stor26[arg1].field_1792 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                    else:
                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    call stor26[arg1].field_1792 with:
                       value t wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
            else:
                if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                    if not t:
                        call stor26[arg1].field_1792 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        call stor26[arg1].field_1792 with:
                           value t wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    jackpotSize = 0
                    if jackpotSize > 0:
                        emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                    if not t + jackpotSize:
                        call stor26[arg1].field_1792 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        call stor26[arg1].field_1792 with:
                           value t + jackpotSize wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
        else:
            if sub_1d70f55c[stor26[arg1].field_1792] < 100 * 10^18:
                idx = 0
                s = 0
                t = 0
                while uint8(idx) < stor26[arg1].field_1952:
                    mem[0] = uint8(idx)
                    mem[32] = sha3(sha3(arg1), 26) + 6
                    if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = sha3(sha3(arg1), 26) + 3
                    if 0 >= stor26[arg1][3][idx << 248].field_0:
                        revert with 0, 'Win probability out of range.'
                    if stor26[arg1][3][idx << 248].field_0 > 36:
                        revert with 0, 'Win probability out of range.'
                    if sub_255858b3 != 1:
                        if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) / 1000 >= 3 * 10^14:
                            if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 1)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                        else:
                            if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                    else:
                        if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 >= 3 * 10^14:
                            if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                        else:
                            if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                            if stor26[arg1][3][idx << 248].field_0:
                                idx = idx + 1
                                s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                continue 
                    ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                    revert
                lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                if stor26[arg1].field_0 < 10^17:
                    if not t:
                        call stor26[arg1].field_1792 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        call stor26[arg1].field_1792 with:
                           value t wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                        if not t:
                            call stor26[arg1].field_1792 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            call stor26[arg1].field_1792 with:
                               value t wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        jackpotSize = 0
                        if jackpotSize > 0:
                            emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                        if not t + jackpotSize:
                            call stor26[arg1].field_1792 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            call stor26[arg1].field_1792 with:
                               value t + jackpotSize wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
            else:
                if sub_1d70f55c[stor26[arg1].field_1792] < 500 * 10^18:
                    idx = 0
                    s = 0
                    t = 0
                    while uint8(idx) < stor26[arg1].field_1952:
                        mem[0] = uint8(idx)
                        mem[32] = sha3(sha3(arg1), 26) + 6
                        if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        mem[0] = uint8(idx)
                        mem[32] = sha3(sha3(arg1), 26) + 3
                        if 0 >= stor26[arg1][3][idx << 248].field_0:
                            revert with 0, 'Win probability out of range.'
                        if stor26[arg1][3][idx << 248].field_0 > 36:
                            revert with 0, 'Win probability out of range.'
                        if sub_255858b3 != 1:
                            if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) / 1000 >= 3 * 10^14:
                                if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 2)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                            else:
                                if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                        else:
                            if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 >= 3 * 10^14:
                                if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                            else:
                                if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                    revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                if stor26[arg1][3][idx << 248].field_0:
                                    idx = idx + 1
                                    s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                    continue 
                        ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                        revert
                    lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                    if stor26[arg1].field_0 < 10^17:
                        if not t:
                            call stor26[arg1].field_1792 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            call stor26[arg1].field_1792 with:
                               value t wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                            if not t:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                            if not t + jackpotSize:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                else:
                    if sub_1d70f55c[stor26[arg1].field_1792] < 1000 * 10^18:
                        idx = 0
                        s = 0
                        t = 0
                        while uint8(idx) < stor26[arg1].field_1952:
                            mem[0] = uint8(idx)
                            mem[32] = sha3(sha3(arg1), 26) + 6
                            if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            mem[0] = uint8(idx)
                            mem[32] = sha3(sha3(arg1), 26) + 3
                            if 0 >= stor26[arg1][3][idx << 248].field_0:
                                revert with 0, 'Win probability out of range.'
                            if stor26[arg1][3][idx << 248].field_0 > 36:
                                revert with 0, 'Win probability out of range.'
                            if sub_255858b3 != 1:
                                if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) / 1000 >= 3 * 10^14:
                                    if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 3)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                                else:
                                    if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                            else:
                                if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 >= 3 * 10^14:
                                    if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                                else:
                                    if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                        revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                    if stor26[arg1][3][idx << 248].field_0:
                                        idx = idx + 1
                                        s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                        continue 
                            ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                            revert
                        lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                        if stor26[arg1].field_0 < 10^17:
                            if not t:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                                if not t:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                                if not t + jackpotSize:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                    else:
                        if sub_1d70f55c[stor26[arg1].field_1792] >= 5000 * 10^18:
                            idx = 0
                            s = 0
                            t = 0
                            while uint8(idx) < stor26[arg1].field_1952:
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 6
                                if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 3
                                if 0 >= stor26[arg1][3][idx << 248].field_0:
                                    revert with 0, 'Win probability out of range.'
                                if stor26[arg1][3][idx << 248].field_0 > 36:
                                    revert with 0, 'Win probability out of range.'
                                if sub_255858b3 != 1:
                                    if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) / 1000 >= 3 * 10^14:
                                        if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 5)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                else:
                                    if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 >= 3 * 10^14:
                                        if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                                revert
                        else:
                            idx = 0
                            s = 0
                            t = 0
                            while uint8(idx) < stor26[arg1].field_1952:
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 6
                                if not 2^(sha3(arg1, stor26[arg1].field_1280) % 37) or not stor26[arg1][6][idx << 248].field_0:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                mem[0] = uint8(idx)
                                mem[32] = sha3(sha3(arg1), 26) + 3
                                if 0 >= stor26[arg1][3][idx << 248].field_0:
                                    revert with 0, 'Win probability out of range.'
                                if stor26[arg1][3][idx << 248].field_0 > 36:
                                    revert with 0, 'Win probability out of range.'
                                if sub_255858b3 != 1:
                                    if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) / 1000 >= 3 * 10^14:
                                        if (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) - (10^15 / stor26[arg1].field_1952 * uint8(HOUSE_EDGE_PERCENT + sub_0149e4bb + sub_f2d7afe8 - 4)) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                else:
                                    if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 >= 3 * 10^14:
                                        if (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) - (36 * 10^15 / stor26[arg1].field_1952) - (36 * (stor26[arg1][2][idx << 248].field_0 * sub_f8dbd7ee) - (10^15 / stor26[arg1].field_1952 * sub_f8dbd7ee) / 1000) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                    else:
                                        if 3 * 10^14 > stor26[arg1][2][idx << 248].field_0 - (10^15 / stor26[arg1].field_1952):
                                            revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
                                        if stor26[arg1][3][idx << 248].field_0:
                                            idx = idx + 1
                                            s = uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            t = t + uint128((36 * stor26[arg1][2][idx << 248].field_0) + (-36 * 10^15 / stor26[arg1].field_1952) - (3 * 10^12 * 24 * 3600) / stor26[arg1][3][idx << 248].field_0)
                                            continue 
                                ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 8, 0, 248, ('var', 0)), ('array', 3, ('map', ('data', ('param', 'arg1')), ('name', 'stor26', 26)))))))
                                revert
                        lockedInBets = uint128(lockedInBets - stor26[arg1].field_256)
                        if stor26[arg1].field_0 < 10^17:
                            if not t:
                                call stor26[arg1].field_1792 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                call stor26[arg1].field_1792 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                        else:
                            if sha3(arg1, stor26[arg1].field_1280) / 37 % 1000 != luckyNumber:
                                if not t:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                            else:
                                jackpotSize = 0
                                if jackpotSize > 0:
                                    emit JackpotPayment(sha3(arg1), jackpotSize, stor26[arg1].field_1792);
                                if not t + jackpotSize:
                                    call stor26[arg1].field_1792 with:
                                       value 1 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), 1, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
                                else:
                                    call stor26[arg1].field_1792 with:
                                       value t + jackpotSize wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        emit 0x5e93fffc: stor26[arg1].field_1792, sha3(arg1), t + jackpotSize, 'payment'
                                    else:
                                        emit 0xe0be3e38: stor26[arg1].field_1792, sha3(arg1), t, 'payment'
    stor26[arg1].field_0 = 0
}



}
