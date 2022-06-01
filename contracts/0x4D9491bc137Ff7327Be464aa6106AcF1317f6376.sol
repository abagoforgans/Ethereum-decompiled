contract main {




// =====================  Runtime code  =====================


#
#  - buyWarriors(uint256 arg1, uint256 arg2, uint256 arg3)
#
uint256 playerID_counter;
uint256 devShare;
uint256 affShare;
mapping of struct stor3;
mapping of struct stor4;
mapping of uint256 aff;
mapping of struct _TowerRoundDetails;
address ownerAddress;

function aff(address arg1) {
    return aff[arg1]
}

function GameRounds(uint256 arg1) {
    mem[128] = _TowerRoundDetails[arg1].field_0
    idx = 128
    s = 0
    while _TowerRoundDetails[arg1].length + 96 > idx:
        mem[idx + 32] = _TowerRoundDetails[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=_TowerRoundDetails[arg1].length, data=mem[128 len _TowerRoundDetails[arg1].length]), 
           _TowerRoundDetails[arg1].field_256,
           _TowerRoundDetails[arg1].field_512,
           _TowerRoundDetails[arg1].field_768,
           _TowerRoundDetails[arg1].field_1024,
           _TowerRoundDetails[arg1].field_1280,
           _TowerRoundDetails[arg1].field_1536,
           _TowerRoundDetails[arg1].field_1792
}

function affShare() {
    return affShare
}

function playerID_counter() {
    return playerID_counter
}

function ownerAddress() {
    return ownerAddress
}

function devShare() {
    return devShare
}

function _playerBalance(address arg1) {
    return aff[address(arg1)]
}

function _TowerRoundDetails(uint256 arg1, uint256 arg2) {
    return _TowerRoundDetails[arg1][8][arg2].field_0, 
           _TowerRoundDetails[arg1][8][arg2].field_256,
           _TowerRoundDetails[arg1][8][arg2].field_512,
           _TowerRoundDetails[arg1][8][arg2].field_768,
           _TowerRoundDetails[arg1][8][arg2].field_1024,
           _TowerRoundDetails[arg1][8][arg2].field_1280,
           _TowerRoundDetails[arg1][8][arg2].field_1536,
           _TowerRoundDetails[arg1][8][arg2].field_1792,
           _TowerRoundDetails[arg1][8][arg2].field_2048
}

function _fallback() payable {
    revert
}

function referralCashout() {
    require 0 < aff[msg.sender]
    aff[msg.sender] = 0
    call msg.sender with:
       value aff[msg.sender] wei
         gas 2300 * is_zero(value) wei
}

function _playerInfo(uint256 arg1) {
    mem[128] = stor4[arg1][3].field_0
    idx = 128
    s = 0
    while stor4[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           Array(len=stor4[arg1][3].length, data=mem[128 len stor4[arg1][3].length]),
           aff[stor4[arg1].field_256]
}

function setNickname(string arg1, address arg2) {
    if stor3[msg.sender].field_0:
        stor3[msg.sender][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor4[stor3[msg.sender].field_0][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor3[msg.sender].field_0 = playerID_counter
        stor3[msg.sender].field_256 = msg.sender
        stor3[msg.sender].field_512 = arg2
        stor3[msg.sender][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor4[stor0].field_0 = playerID_counter
        stor4[stor0].field_256 = msg.sender
        stor4[stor0].field_512 = arg2
        stor4[stor0][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        playerID_counter++
}

function _currentPlayerAmountUnclaimed(address arg1, uint256 arg2, uint256 arg3) {
    if arg3:
        if _TowerRoundDetails[arg2][8][arg3].field_768:
            return ((stor3[address(arg1)][4][arg2][1][arg3].field_0 * _TowerRoundDetails[arg2][8][arg3].field_256 * _TowerRoundDetails[arg2].field_1792 / _TowerRoundDetails[arg2][8][arg3].field_768 / 100) - stor3[address(arg1)][4][arg2][1][arg3].field_256)
    else:
        if _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_768:
            return ((stor3[address(arg1)][4][arg2][1][stor6[arg2].field_768].field_0 * _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_256 * _TowerRoundDetails[arg2].field_1792 / _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_768 / 100) - stor3[address(arg1)][4][arg2][1][stor6[arg2].field_768].field_256)
    revert
}

function dividendCashout(uint256 arg1, uint256 arg2) {
    require 0 < _TowerRoundDetails[arg1].field_256
    require stor3[msg.sender][4][arg1][1][arg2].field_0 > 0
    require _TowerRoundDetails[arg1][8][arg2].field_768
    require (stor3[msg.sender][4][arg1][1][arg2].field_0 * _TowerRoundDetails[arg1][8][arg2].field_256 * _TowerRoundDetails[arg1].field_1792 / _TowerRoundDetails[arg1][8][arg2].field_768 / 100) - stor3[msg.sender][4][arg1][1][arg2].field_256 > 0
    stor3[msg.sender][4][arg1][1][arg2].field_256 = stor3[msg.sender][4][arg1][1][arg2].field_0 * _TowerRoundDetails[arg1][8][arg2].field_256 * _TowerRoundDetails[arg1].field_1792 / _TowerRoundDetails[arg1][8][arg2].field_768 / 100
    call msg.sender with:
       value (stor3[msg.sender][4][arg1][1][arg2].field_0 * _TowerRoundDetails[arg1][8][arg2].field_256 * _TowerRoundDetails[arg1].field_1792 / _TowerRoundDetails[arg1][8][arg2].field_768 / 100) - stor3[msg.sender][4][arg1][1][arg2].field_256 wei
         gas 2300 * is_zero(value) wei
}

function players(address arg1) {
    mem[128] = stor3[arg1][3].field_0
    idx = 128
    s = 0
    while stor3[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3[arg1][3].length) + 128] = stor3[arg1].field_0
    mem[ceil32(stor3[arg1][3].length) + 160] = stor3[arg1].field_256
    mem[ceil32(stor3[arg1][3].length) + 192] = stor3[arg1].field_512
    mem[ceil32(stor3[arg1][3].length) + 224] = 128
    mem[ceil32(stor3[arg1][3].length) + 256] = stor3[arg1][3].length
    if 0 < stor3[arg1][3].length:
        mem[ceil32(stor3[arg1][3].length) + 288] = mem[128]
        mem[ceil32(stor3[arg1][3].length) + 320 len floor32(stor3[arg1][3].length - 1)] = mem[160 len floor32(stor3[arg1][3].length - 1)]
    return stor3[arg1].field_0, 
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           Array(len=stor3[arg1][3].length, data=mem[ceil32(stor3[arg1][3].length) + 288 len stor3[arg1][3].length])
}

function playersByID(uint256 arg1) {
    mem[128] = stor4[arg1][3].field_0
    idx = 128
    s = 0
    while stor4[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1][3].length) + 128] = stor4[arg1].field_0
    mem[ceil32(stor4[arg1][3].length) + 160] = stor4[arg1].field_256
    mem[ceil32(stor4[arg1][3].length) + 192] = stor4[arg1].field_512
    mem[ceil32(stor4[arg1][3].length) + 224] = 128
    mem[ceil32(stor4[arg1][3].length) + 256] = stor4[arg1][3].length
    if 0 < stor4[arg1][3].length:
        mem[ceil32(stor4[arg1][3].length) + 288] = mem[128]
        mem[ceil32(stor4[arg1][3].length) + 320 len floor32(stor4[arg1][3].length - 1)] = mem[160 len floor32(stor4[arg1][3].length - 1)]
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           stor4[arg1].field_512,
           Array(len=stor4[arg1][3].length, data=mem[ceil32(stor4[arg1][3].length) + 288 len stor4[arg1][3].length])
}

function _playerRoundsInfo(address arg1, uint256 arg2, uint256 arg3) {
    if _TowerRoundDetails[arg2][8][arg3].field_1024 <= block.timestamp:
        if arg3:
            if _TowerRoundDetails[arg2][8][arg3].field_768:
                return _TowerRoundDetails[arg2].field_1280 * _TowerRoundDetails[arg2][8][arg3].field_256 / 100, 
                       (stor3[address(arg1)][4][arg2][1][arg3].field_0 * _TowerRoundDetails[arg2][8][arg3].field_256 * _TowerRoundDetails[arg2].field_1792 / _TowerRoundDetails[arg2][8][arg3].field_768 / 100) - stor3[address(arg1)][4][arg2][1][arg3].field_256,
                       stor3[address(arg1)][4][arg2][1][arg3].field_0,
                       _TowerRoundDetails[arg2][8][arg3].field_768,
                       1,
                       _TowerRoundDetails[arg2][8][arg3].field_2048
        else:
            if _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_768:
                return _TowerRoundDetails[arg2].field_1280 * _TowerRoundDetails[arg2][8][arg3].field_256 / 100, 
                       (stor3[address(arg1)][4][arg2][1][stor6[arg2].field_768].field_0 * _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_256 * _TowerRoundDetails[arg2].field_1792 / _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_768 / 100) - stor3[address(arg1)][4][arg2][1][stor6[arg2].field_768].field_256,
                       stor3[address(arg1)][4][arg2][1][arg3].field_0,
                       _TowerRoundDetails[arg2][8][arg3].field_768,
                       1,
                       _TowerRoundDetails[arg2][8][arg3].field_2048
    else:
        if arg3:
            if _TowerRoundDetails[arg2][8][arg3].field_768:
                return _TowerRoundDetails[arg2].field_1280 * _TowerRoundDetails[arg2][8][arg3].field_256 / 100, 
                       (stor3[address(arg1)][4][arg2][1][arg3].field_0 * _TowerRoundDetails[arg2][8][arg3].field_256 * _TowerRoundDetails[arg2].field_1792 / _TowerRoundDetails[arg2][8][arg3].field_768 / 100) - stor3[address(arg1)][4][arg2][1][arg3].field_256,
                       stor3[address(arg1)][4][arg2][1][arg3].field_0,
                       _TowerRoundDetails[arg2][8][arg3].field_768,
                       0,
                       _TowerRoundDetails[arg2][8][arg3].field_2048
        else:
            if _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_768:
                return _TowerRoundDetails[arg2].field_1280 * _TowerRoundDetails[arg2][8][arg3].field_256 / 100, 
                       (stor3[address(arg1)][4][arg2][1][stor6[arg2].field_768].field_0 * _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_256 * _TowerRoundDetails[arg2].field_1792 / _TowerRoundDetails[arg2][8][_TowerRoundDetails[arg2].field_768].field_768 / 100) - stor3[address(arg1)][4][arg2][1][stor6[arg2].field_768].field_256,
                       stor3[address(arg1)][4][arg2][1][arg3].field_0,
                       _TowerRoundDetails[arg2][8][arg3].field_768,
                       0,
                       _TowerRoundDetails[arg2][8][arg3].field_2048
    revert
}



}
