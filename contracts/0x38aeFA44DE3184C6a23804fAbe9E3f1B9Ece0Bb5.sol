contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
uint256 stor2; offset 8
address stor3;
array of uint256 stor4;
address stor8;
address stor9;
address stor10;
address stor11;

function _fallback() {
    stor0 = code.data[11453 len 32]
    stor1 = code.data[11453 len 32] + code.data[11485 len 32]
    uint8(stor2.field_0) = uint8(code.data[11517 len 32])
    Mask(248, 0, stor2.field_8) = 0
    stor3 = msg.sender
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = '1.0.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = address(code.data[11549 len 32])
    stor9 = address(code.data[11581 len 32])
    stor10 = address(code.data[11613 len 32])
    stor11 = address(code.data[11645 len 32])
    return code.data[740 len 10713]
}



// =====================  Runtime code  =====================


const MAX_ATHENIANS = 100 * 10^18

const BATTLE_POINT_DECIMALS = 18

const WAD = 10^18

const BP_ATHENIAN = 100

const BATTLE_CASUALTIES = 10

const MAX_PERSIANS = 300000 * 10^18

const MAX_SPARTANS = 300 * 10^18

const BP_PERSIAN = 1

const MAX_IMMORTALS = 100

const BP_IMMORTAL = 100

const BP_SPARTAN = 1000


uint256 startTime;
uint256 endTime;
uint8 stor2;
uint256 stor2; offset 8
uint256 avarageBlockTime;
address stor3;
array of uint256 VERSION;
uint8 stor5;
array of uint256 newVersion;
address newAddress;
address persiansAddress;
address immortalsAddress;
address spartansAddress;
address atheniansAddress;
mapping of uint256 immortalsOnTheBattlefield;
mapping of uint256 warriorsOnTheBattlefield;

function immortals() {
    return immortalsAddress
}

function deprecated() {
    return bool(stor5)
}

function getImmortalsOnTheBattlefield(address arg1) {
    return immortalsOnTheBattlefield[address(arg1)][stor9]
}

function newVersion() {
    return newVersion[0 len newVersion.length]
}

function endTime() {
    return endTime
}

function athenians() {
    return atheniansAddress
}

function getPersiansOnTheBattlefield(address arg1) {
    return immortalsOnTheBattlefield[address(arg1)][stor8]
}

function startTime() {
    return startTime
}

function avarageBlockTime() {
    return avarageBlockTime
}

function persians() {
    return persiansAddress
}

function getAtheniansOnTheBattlefield(address arg1) {
    return immortalsOnTheBattlefield[address(arg1)][stor11]
}

function warriorsOnTheBattlefield(address arg1) {
    return warriorsOnTheBattlefield[arg1]
}

function warriorsByPlayer(address arg1, address arg2) {
    return immortalsOnTheBattlefield[arg1][arg2]
}

function spartans() {
    return spartansAddress
}

function getSpartansOnTheBattlefield(address arg1) {
    return immortalsOnTheBattlefield[address(arg1)][stor10]
}

function newAddress() {
    return newAddress
}

function VERSION() {
    return VERSION[0 len VERSION.length]
}

function _fallback() payable {
    revert
}

function isEnded() {
    return block.timestamp + avarageBlockTime >= endTime
}

function isInProgress() {
    return (block.timestamp + avarageBlockTime < endTime)
}

function isTimeExpired() {
    return block.timestamp + avarageBlockTime >= endTime
}

function setTime(uint256 arg1, uint256 arg2, uint8 arg3) {
    startTime = arg1
    endTime = arg1 + arg2
    uint8(stor2.field_0) = arg3
    Mask(248, 0, stor2.field_8) = 0
}

function isInTime() {
    if block.timestamp < startTime - avarageBlockTime:
        return block.timestamp >= startTime - avarageBlockTime
    return (block.timestamp + avarageBlockTime < endTime)
}

function setDeprecated(string arg1, address arg2) {
    require msg.sender == stor3
    require not stor5
    stor5 = 1
    newVersion[] = Array(len=arg1.length, data=arg1[all])
    newAddress = arg2
    return 1
}

function getGreeksBattlePoints() {
    require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
    require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
    return ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]))
}

function getPersiansBattlePoints() {
    require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
    require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
    return (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]))
}

function getGreeksBattlePointsBy(address arg1) {
    require 100 * immortalsOnTheBattlefield[address(arg1)][stor11] / 100 == immortalsOnTheBattlefield[address(arg1)][stor11]
    require 1000 * immortalsOnTheBattlefield[address(arg1)][stor10] / 1000 == immortalsOnTheBattlefield[address(arg1)][stor10]
    return ((1000 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * immortalsOnTheBattlefield[address(arg1)][stor11]))
}

function getPersiansBattlePointsBy(address arg1) {
    require 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9] / 10^18 == immortalsOnTheBattlefield[address(arg1)][stor9]
    require 100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9] / 100 == 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]
    require immortalsOnTheBattlefield[address(arg1)][stor8] == immortalsOnTheBattlefield[address(arg1)][stor8]
    return (immortalsOnTheBattlefield[address(arg1)][stor8] + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]))
}

function isDraw() {
    require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
    require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
    require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
    require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
    return (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) == (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]))
}

function getTotalSlaves(address arg1) {
    require 10^18 * warriorsOnTheBattlefield[address(arg1)] / 10^18 == warriorsOnTheBattlefield[address(arg1)]
    require (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 >= 10^18 * warriorsOnTheBattlefield[address(arg1)]
    require 10 * (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 / 100
    require (10 * (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 / 100
    require warriorsOnTheBattlefield[address(arg1)] - ((10 * (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[address(arg1)]
    return (warriorsOnTheBattlefield[address(arg1)] - ((10 * (10^18 * warriorsOnTheBattlefield[address(arg1)]) + 50 / 100) + 5 * 10^17 / 10^18))
}

function assignPersiansToBattle(uint256 arg1) {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require warriorsOnTheBattlefield[stor8] + arg1 >= warriorsOnTheBattlefield[stor8]
    require warriorsOnTheBattlefield[stor8] + arg1 <= 300000 * 10^18
    require ext_code.size(persiansAddress)
    call persiansAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require immortalsOnTheBattlefield[address(msg.sender)][stor8] + arg1 >= immortalsOnTheBattlefield[address(msg.sender)][stor8]
    immortalsOnTheBattlefield[address(msg.sender)][stor8] += arg1
    require warriorsOnTheBattlefield[stor8] + arg1 >= warriorsOnTheBattlefield[stor8]
    warriorsOnTheBattlefield[stor8] += arg1
    emit WarriorsAssignedToBattlefield(persiansAddress, arg1 / 10^18, msg.sender);
    return 1
}

function assignImmortalsToBattle(uint256 arg1) {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require warriorsOnTheBattlefield[stor9] + arg1 >= warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor9] + arg1 <= 100
    require ext_code.size(immortalsAddress)
    call immortalsAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require immortalsOnTheBattlefield[address(msg.sender)][stor9] + arg1 >= immortalsOnTheBattlefield[address(msg.sender)][stor9]
    immortalsOnTheBattlefield[address(msg.sender)][stor9] += arg1
    require warriorsOnTheBattlefield[stor9] + arg1 >= warriorsOnTheBattlefield[stor9]
    warriorsOnTheBattlefield[stor9] += arg1
    require 100 * arg1 / 100 == arg1
    emit WarriorsAssignedToBattlefield(immortalsAddress, 100 * arg1, msg.sender);
    return 1
}

function assignSpartansToBattle(uint256 arg1) {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require warriorsOnTheBattlefield[stor10] + arg1 >= warriorsOnTheBattlefield[stor10]
    require warriorsOnTheBattlefield[stor10] + arg1 <= 300 * 10^18
    require ext_code.size(spartansAddress)
    call spartansAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require immortalsOnTheBattlefield[address(msg.sender)][stor10] + arg1 >= immortalsOnTheBattlefield[address(msg.sender)][stor10]
    immortalsOnTheBattlefield[address(msg.sender)][stor10] += arg1
    require warriorsOnTheBattlefield[stor10] + arg1 >= warriorsOnTheBattlefield[stor10]
    warriorsOnTheBattlefield[stor10] += arg1
    require 1000 * arg1 / 10^18 / 1000 == arg1 / 10^18
    emit WarriorsAssignedToBattlefield(spartansAddress, 1000 * arg1 / 10^18, msg.sender);
    return 1
}

function assignAtheniansToBattle(uint256 arg1) {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require warriorsOnTheBattlefield[stor11] + arg1 >= warriorsOnTheBattlefield[stor11]
    require warriorsOnTheBattlefield[stor11] + arg1 <= 100 * 10^18
    require ext_code.size(atheniansAddress)
    call atheniansAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require immortalsOnTheBattlefield[address(msg.sender)][stor11] + arg1 >= immortalsOnTheBattlefield[address(msg.sender)][stor11]
    immortalsOnTheBattlefield[address(msg.sender)][stor11] += arg1
    require warriorsOnTheBattlefield[stor11] + arg1 >= warriorsOnTheBattlefield[stor11]
    warriorsOnTheBattlefield[stor11] += arg1
    require 100 * arg1 / 10^18 / 100 == arg1 / 10^18
    emit WarriorsAssignedToBattlefield(atheniansAddress, 100 * arg1 / 10^18, msg.sender);
    return 1
}

function getWinningFaction() {
    if block.timestamp + avarageBlockTime < endTime:
        return 'The battle is still in progress'
    require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
    require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
    require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
    require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
    if warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) == (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]):
        return 'The battle ended in a draw!'
    require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
    require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
    require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
    require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
    if warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) > (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]):
        return 'Persians'
    return 'Greeks'
}

function computeSlaves(address arg1, address arg2) {
    if arg2 != spartansAddress:
        require 10^18 * warriorsOnTheBattlefield[stor8] / 10^18 == warriorsOnTheBattlefield[stor8]
        require (10^18 * warriorsOnTheBattlefield[stor8]) + 50 >= 10^18 * warriorsOnTheBattlefield[stor8]
        require 10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100
        require (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100
        require warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[stor8]
        require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
        require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
        require 100 * immortalsOnTheBattlefield[address(arg1)][stor11] / 100 == immortalsOnTheBattlefield[address(arg1)][stor11]
        require 1000 * immortalsOnTheBattlefield[address(arg1)][stor10] / 1000 == immortalsOnTheBattlefield[address(arg1)][stor10]
        require (1000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor11]) / 10^18 == (1000 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * immortalsOnTheBattlefield[address(arg1)][stor11])
        require (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2 >= 0
        require (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])
        if not warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18):
            return 0
        require warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18)
        require (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) / warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18) == (1000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])
        return ((warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + 5 * 10^17 / 10^18)
    require 10^18 * warriorsOnTheBattlefield[stor10] / 10^18 == warriorsOnTheBattlefield[stor10]
    require (10^18 * warriorsOnTheBattlefield[stor10]) + 50 >= 10^18 * warriorsOnTheBattlefield[stor10]
    require 10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100
    require (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100
    require warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[stor10]
    require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
    require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
    require 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9] / 10^18 == immortalsOnTheBattlefield[address(arg1)][stor9]
    require 100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9] / 100 == 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]
    require immortalsOnTheBattlefield[address(arg1)][stor8] == immortalsOnTheBattlefield[address(arg1)][stor8]
    require (10^18 * immortalsOnTheBattlefield[address(arg1)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]) / 10^18 == immortalsOnTheBattlefield[address(arg1)][stor8] + (100 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9])
    require warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2 >= 0
    require warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])
    if not warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18):
        return 0
    require warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18)
    require (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(arg1)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(arg1)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) / warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18) == (10^18 * immortalsOnTheBattlefield[address(arg1)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])
    return ((warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(arg1)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(arg1)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(arg1)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + 5 * 10^17 / 10^18)
}

function redeemWarriors() {
    require block.timestamp > endTime
    require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
    require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
    require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
    require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
    require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
    if warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) > (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]):
        if spartansAddress != spartansAddress:
            require 10^18 * warriorsOnTheBattlefield[stor8] / 10^18 == warriorsOnTheBattlefield[stor8]
            require (10^18 * warriorsOnTheBattlefield[stor8]) + 50 >= 10^18 * warriorsOnTheBattlefield[stor8]
            require 10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100
            require (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100
            require warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[stor8]
            require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
            require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
            require 100 * immortalsOnTheBattlefield[address(msg.sender)][stor11] / 100 == immortalsOnTheBattlefield[address(msg.sender)][stor11]
            require 1000 * immortalsOnTheBattlefield[address(msg.sender)][stor10] / 1000 == immortalsOnTheBattlefield[address(msg.sender)][stor10]
            require (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) / 10^18 == (1000 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * immortalsOnTheBattlefield[address(msg.sender)][stor11])
            require (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2 >= 0
            require (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])
            if warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18):
                require warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18)
                require (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) / warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18) == (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])
                if (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + 5 * 10^17 / 10^18 > 0:
                    require ext_code.size(spartansAddress)
                    call spartansAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + 5 * 10^17 / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
        else:
            require 10^18 * warriorsOnTheBattlefield[stor10] / 10^18 == warriorsOnTheBattlefield[stor10]
            require (10^18 * warriorsOnTheBattlefield[stor10]) + 50 >= 10^18 * warriorsOnTheBattlefield[stor10]
            require 10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100
            require (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100
            require warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[stor10]
            require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
            require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
            require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
            require 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9] / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor9]
            require 100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9] / 100 == 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]
            require immortalsOnTheBattlefield[address(msg.sender)][stor8] == immortalsOnTheBattlefield[address(msg.sender)][stor8]
            require (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor8] + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9])
            require warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2 >= 0
            require warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])
            if warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18):
                require warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18)
                require (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) / warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18) == (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])
                if (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + 5 * 10^17 / 10^18 > 0:
                    require ext_code.size(spartansAddress)
                    call spartansAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + 5 * 10^17 / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
        if immortalsOnTheBattlefield[address(msg.sender)][stor8] > 0:
            require 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8] / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor8]
            require (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 >= 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]
            require 10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100 / 10 == (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100
            require (10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100
            require immortalsOnTheBattlefield[address(msg.sender)][stor8] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 / 10^18) <= immortalsOnTheBattlefield[address(msg.sender)][stor8]
            immortalsOnTheBattlefield[address(msg.sender)][stor8] = 0
            require ext_code.size(persiansAddress)
            call persiansAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, immortalsOnTheBattlefield[address(msg.sender)][stor8] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 / 10^18)
            require ext_call.success
            require ext_call.return_data[0]
            emit WarriorsBackToHome(persiansAddress, immortalsOnTheBattlefield[address(msg.sender)][stor8] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 / 10^18), msg.sender);
    else:
        require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
        require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
        require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
        require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
        require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
        if warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) >= (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]):
            if immortalsOnTheBattlefield[address(msg.sender)][stor8] > 0:
                require 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8] / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor8]
                require (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 >= 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]
                require 10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100 / 10 == (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100
                require (10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100
                require immortalsOnTheBattlefield[address(msg.sender)][stor8] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 / 10^18) <= immortalsOnTheBattlefield[address(msg.sender)][stor8]
                immortalsOnTheBattlefield[address(msg.sender)][stor8] = 0
                require ext_code.size(persiansAddress)
                call persiansAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, immortalsOnTheBattlefield[address(msg.sender)][stor8] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 / 10^18)
                require ext_call.success
                require ext_call.return_data[0]
                emit WarriorsBackToHome(persiansAddress, immortalsOnTheBattlefield[address(msg.sender)][stor8] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + 50 / 100) + 5 * 10^17 / 10^18), msg.sender);
        else:
            if persiansAddress != spartansAddress:
                require 10^18 * warriorsOnTheBattlefield[stor8] / 10^18 == warriorsOnTheBattlefield[stor8]
                require (10^18 * warriorsOnTheBattlefield[stor8]) + 50 >= 10^18 * warriorsOnTheBattlefield[stor8]
                require 10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100
                require (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100
                require warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[stor8]
                require 100 * warriorsOnTheBattlefield[stor11] / 100 == warriorsOnTheBattlefield[stor11]
                require 1000 * warriorsOnTheBattlefield[stor10] / 1000 == warriorsOnTheBattlefield[stor10]
                require 100 * immortalsOnTheBattlefield[address(msg.sender)][stor11] / 100 == immortalsOnTheBattlefield[address(msg.sender)][stor11]
                require 1000 * immortalsOnTheBattlefield[address(msg.sender)][stor10] / 1000 == immortalsOnTheBattlefield[address(msg.sender)][stor10]
                require (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) / 10^18 == (1000 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * immortalsOnTheBattlefield[address(msg.sender)][stor11])
                require (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2 >= 0
                require (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])
                if warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18):
                    require warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18)
                    require (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) / warriorsOnTheBattlefield[stor8] - ((10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18) == (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])
                    if (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + 5 * 10^17 / 10^18 > 0:
                        require ext_code.size(persiansAddress)
                        call persiansAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (warriorsOnTheBattlefield[stor8] * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor8]) + 50 / 100) + 5 * 10^17 / 10^18 * (1000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor11]) + ((1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11]) / 2) / (1000 * warriorsOnTheBattlefield[stor10]) + (100 * warriorsOnTheBattlefield[stor11])) + 5 * 10^17 / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
            else:
                require 10^18 * warriorsOnTheBattlefield[stor10] / 10^18 == warriorsOnTheBattlefield[stor10]
                require (10^18 * warriorsOnTheBattlefield[stor10]) + 50 >= 10^18 * warriorsOnTheBattlefield[stor10]
                require 10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100 / 10 == (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100
                require (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100
                require warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18) <= warriorsOnTheBattlefield[stor10]
                require 10^18 * warriorsOnTheBattlefield[stor9] / 10^18 == warriorsOnTheBattlefield[stor9]
                require 100 * 10^18 * warriorsOnTheBattlefield[stor9] / 100 == 10^18 * warriorsOnTheBattlefield[stor9]
                require warriorsOnTheBattlefield[stor8] == warriorsOnTheBattlefield[stor8]
                require 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9] / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor9]
                require 100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9] / 100 == 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]
                require immortalsOnTheBattlefield[address(msg.sender)][stor8] == immortalsOnTheBattlefield[address(msg.sender)][stor8]
                require (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor8] + (100 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9])
                require warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2 >= 0
                require warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])
                if warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18):
                    require warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18)
                    require (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) / warriorsOnTheBattlefield[stor10] - ((10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18) == (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])
                    if (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + 5 * 10^17 / 10^18 > 0:
                        require ext_code.size(persiansAddress)
                        call persiansAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (warriorsOnTheBattlefield[stor10] * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + (-1 * (10 * (10^18 * warriorsOnTheBattlefield[stor10]) + 50 / 100) + 5 * 10^17 / 10^18 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor8]) + (100000000000000000000 * 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor9]) + (warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9]) / 2) / warriorsOnTheBattlefield[stor8] + (100 * 10^18 * warriorsOnTheBattlefield[stor9])) + 5 * 10^17 / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
        if immortalsOnTheBattlefield[address(msg.sender)][stor10] > 0:
            require 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10] / 10^18 == immortalsOnTheBattlefield[address(msg.sender)][stor10]
            require (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 >= 10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]
            require 10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100 / 10 == (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100
            require (10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100) + 5 * 10^17 >= 10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100
            require immortalsOnTheBattlefield[address(msg.sender)][stor10] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100) + 5 * 10^17 / 10^18) <= immortalsOnTheBattlefield[address(msg.sender)][stor10]
            immortalsOnTheBattlefield[address(msg.sender)][stor10] = 0
            require ext_code.size(spartansAddress)
            call spartansAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, immortalsOnTheBattlefield[address(msg.sender)][stor10] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100) + 5 * 10^17 / 10^18)
            require ext_call.success
            require ext_call.return_data[0]
            emit WarriorsBackToHome(spartansAddress, immortalsOnTheBattlefield[address(msg.sender)][stor10] - ((10 * (10^18 * immortalsOnTheBattlefield[address(msg.sender)][stor10]) + 50 / 100) + 5 * 10^17 / 10^18), msg.sender);
    if immortalsOnTheBattlefield[address(msg.sender)][stor9] > 0:
        immortalsOnTheBattlefield[address(msg.sender)][stor9] = 0
        require ext_code.size(immortalsAddress)
        call immortalsAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, immortalsOnTheBattlefield[address(msg.sender)][stor9]
        require ext_call.success
        require ext_call.return_data[0]
        emit WarriorsBackToHome(immortalsAddress, immortalsOnTheBattlefield[address(msg.sender)][stor9], msg.sender);
    if immortalsOnTheBattlefield[address(msg.sender)][stor11] > 0:
        immortalsOnTheBattlefield[address(msg.sender)][stor11] = 0
        require ext_code.size(atheniansAddress)
        call atheniansAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, immortalsOnTheBattlefield[address(msg.sender)][stor11]
        require ext_call.success
        require ext_call.return_data[0]
        emit WarriorsBackToHome(atheniansAddress, immortalsOnTheBattlefield[address(msg.sender)][stor11], msg.sender);
    return 1
}



}
