contract main {




// =====================  Runtime code  =====================


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

function sub_6896a9d2(?) {
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
    sub_bd0f1df4 = arg1
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

function setMaxProfit(uint256 arg1) {
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
                    39,
                    0x2e6d617850726f6669742063616e74206265206772656174207468656e20746f70206c696d6974,
                    mem[203 len 25]
    maxProfit = arg1
}

function sub_8ca02232(?) {
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
                    45,
                    0x2e6d617850726f666974506c696e6b6f2063616e74206265206772656174207468656e20746f70206c696d6974,
                    mem[209 len 19]
    sub_fc9f12a6 = arg1
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

function sub_92f8dc5e(?) {
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
                    0x2e6d617850726f666974526f756c657474652063616e74206265206772656174207468656e20746f70206c696d6974,
                    mem[211 len 17]
    sub_33450c5d = arg1
}

function increaseJackpot(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if moderatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x2e4d6f6465726174696f6e206d6574686f64732063616c6c6564206279206e6f6e2d6d6f64657261746f72,
                        mem[207 len 21]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x65496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
                    mem[200 len 28]
    if uint128(jackpotSize + lockedInBets) + arg1 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    jackpotSize = uint128(jackpotSize + arg1)
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
                    0x65496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
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
                    0x65496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
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



}
