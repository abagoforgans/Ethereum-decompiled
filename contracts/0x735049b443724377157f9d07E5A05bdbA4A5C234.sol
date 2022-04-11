contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
uint8 stor5; offset 32
uint32 stor5; offset 8
address stor5; offset 40
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor12 = 0
    stor14 = 0
    stor15 = 0
    require not msg.value
    address(stor5.field_40) = msg.sender
    stor6 = msg.sender
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        bool(stor2.length) = 0
        stor2.length.field_1 = 11
        stor2.length.field_8 = 'eth_mainnet' / 256
        idx = 0
        while stor2.length + 31 / 32 > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
            stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            bool(stor2.length) = 0
            stor2.length.field_1 = 12
            stor2.length.field_8 = 'eth_ropsten3' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                bool(stor2.length) = 0
                stor2.length.field_1 = 9
                stor2.length.field_8 = 'eth_kovan' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                else:
                    stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 11
                    stor2.length.field_8 = 'eth_rinkeby' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setProofType(bytes1 rg1) with:
         gas gas_remaining - 710 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require msg.sender == address(stor5.field_40)
    stor8 = 990
    stor10 = 100000
    stor9 = stor7 * stor10 / 10^6
    require msg.sender == address(stor5.field_40)
    stor11 = 10^17
    stor5.field_8 % 16777216 = 250000
    uint8(stor5.field_32) = 0
    return code.data[3142 len 17203]
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


uint8 stor5;
uint8 stor5; offset 200
uint32 gasForOraclize; offset 8
uint64 stor5; offset 200
address owner; offset 40
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
    return bool(uint8(stor5.field_200))
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
    return bool(uint8(stor5.field_0))
}

function houseEdge() {
    return houseEdge
}

function maxPendingPayouts() {
    return maxPendingPayouts
}

function ownerkill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function ownerSetMinBet(uint256 arg1) {
    require msg.sender == owner
    minBet = arg1
}

function ownerChangeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function ownerSetHouseEdge(uint256 arg1) {
    require msg.sender == owner
    houseEdge = arg1
}

function ownerSetTreasury(address arg1) {
    require msg.sender == owner
    treasuryAddress = arg1
}

function ownerSetOraclizeSafeGas(uint32 arg1) {
    require msg.sender == owner
    gasForOraclize = arg1
}

function ownerPauseGame(bool arg1) {
    require msg.sender == owner
    uint8(stor5.field_0) = uint8(arg1)
}

function ownerUpdateContractBalance(uint256 arg1) {
    require msg.sender == owner
    contractBalance = arg1
}

function ownerPausePayouts(bool arg1) {
    require msg.sender == owner
    stor5.field_200 % 72057594037927936 = arg1 % 72057594037927936
}

function ownerSetMaxProfitAsPercentOfHouse(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 100000
    maxProfitAsPercentOfHouse = arg1
    maxProfit = contractBalance * maxProfitAsPercentOfHouse / 10^6
}

function _fallback() payable {
    require msg.sender == treasuryAddress
    require contractBalance + msg.value >= contractBalance
    contractBalance += msg.value
    maxProfit = contractBalance * maxProfitAsPercentOfHouse / 10^6
}

function playerWithdrawPendingTransactions() {
    require bool(uint8(stor5.field_200)) != 1
    playerGetPendingTxBy[address(msg.sender)] = 0
    call msg.sender with:
       value playerGetPendingTxBy[address(msg.sender)] wei
         gas gas_remaining - 34710 wei
    if not ext_call.success:
        return 0
    return 1
}

function ownerRefundPlayer(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require arg3 <= maxPendingPayouts
    maxPendingPayouts -= arg3
    call arg2 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefund(arg1, arg2, arg4);
}

function ownerTransferEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= contractBalance
    contractBalance -= arg2
    maxProfit = contractBalance * maxProfitAsPercentOfHouse / 10^6
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogOwnerTransfer(arg1, arg2);
}



}
