contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 192
uint32 stor1; offset 168
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() {
    stor2 = msg.sender
    stor3 = msg.sender
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
    else:
        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
            stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
        else:
            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
            else:
                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                else:
                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                    else:
                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require stor2 == msg.sender
    stor5 = 990
    stor7 = 10000
    stor6 = stor7 * stor4 / 10^6
    require stor2 == msg.sender
    stor8 = 10^17
    stor1.field_168 % 16777216 = 250000
    uint8(stor1.field_192) = 0
    return code.data[1041 len 10240]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - playerRollDice(uint256 arg1)
#
const maxNumber = 99

const maxProfitDivisor = 10^6

const minNumber = 2

const houseEdgeDivisor = 1000


uint8 stor1; offset 160
uint32 gasForOraclize; offset 168
uint128 stor1; offset 160
uint8 stor2; offset 160
uint128 stor2; offset 160
address owner;
address treasuryAddress;
uint256 contractBalance;
uint256 houseEdge;
uint256 maxProfit;
uint256 maxProfitAsPercentOfHouse;
uint256 minBet;
uint256 totalBets;
uint256 maxPendingPayouts;
uint256 totalWeiWon;
uint256 totalWeiWagered;
mapping of uint256 playerGetPendingTxBy;

function totalWeiWon() {
    return totalWeiWon
}

function maxProfitAsPercentOfHouse() {
    return maxProfitAsPercentOfHouse
}

function payoutsPaused() {
    return bool(uint8(stor2.field_160))
}

function playerGetPendingTxByAddress(address arg1) {
    return playerGetPendingTxBy[address(arg1)]
}

function treasury() {
    return treasuryAddress
}

function totalWeiWagered() {
    return totalWeiWagered
}

function gasForOraclize() {
    return gasForOraclize
}

function contractBalance() {
    return contractBalance
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function maxProfit() {
    return maxProfit
}

function totalBets() {
    return totalBets
}

function gamePaused() {
    return bool(uint8(stor1.field_160))
}

function houseEdge() {
    return houseEdge
}

function maxPendingPayouts() {
    return maxPendingPayouts
}

function ownerkill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function ownerSetMinBet(uint256 arg1) {
    require owner == msg.sender
    minBet = arg1
}

function ownerChangeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function ownerSetHouseEdge(uint256 arg1) {
    require owner == msg.sender
    houseEdge = arg1
}

function ownerSetTreasury(address arg1) {
    require owner == msg.sender
    treasuryAddress = arg1
}

function ownerSetOraclizeSafeGas(uint32 arg1) {
    require owner == msg.sender
    gasForOraclize = arg1
}

function ownerUpdateContractBalance(uint256 arg1) {
    require owner == msg.sender
    contractBalance = arg1
}

function ownerPauseGame(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function ownerPausePayouts(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function ownerSetMaxProfitAsPercentOfHouse(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 10000
    maxProfitAsPercentOfHouse = arg1
    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
}

function _fallback() payable {
    require treasuryAddress == msg.sender
    require contractBalance + msg.value >= contractBalance
    contractBalance += msg.value
    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
}

function playerWithdrawPendingTransactions() {
    require bool(uint8(stor2.field_160)) != 1
    playerGetPendingTxBy[address(msg.sender)] = 0
    call msg.sender with:
       value playerGetPendingTxBy[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        return 0
    return 1
}

function ownerRefundPlayer(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require arg3 <= maxPendingPayouts
    maxPendingPayouts -= arg3
    call arg2 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefund(arg1, arg2, arg4);
}

function ownerTransferEther(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= contractBalance
    contractBalance -= arg2
    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogOwnerTransfer(arg1, arg2);
}



}
