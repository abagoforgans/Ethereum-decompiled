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
    stor12 = 138472
    stor14 = 61779454774685332087870
    stor15 = 213696169063866525745355
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
        require ext_code.size(stor0)
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
    if ext_call.return_data[12 len 20] != address(stor1):
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
    require address(stor5.field_40) == msg.sender
    stor8 = 990
    stor10 = 10000
    stor9 = stor10 * stor7 / 10^6
    require address(stor5.field_40) == msg.sender
    stor11 = 10^17
    stor5.field_8 % 16777216 = 235000
    uint8(stor5.field_32) = 0
    return code.data[2256 len 10432]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
const maxNumber = 99

const maxProfitDivisor = 10^6

const minNumber = 2

const houseEdgeDivisor = 1000


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
uint8 stor5;
uint8 stor5; offset 200
uint32 stor5;
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
mapping of address stor16;
mapping of uint256 stor18;
mapping of uint256 stor19;
mapping of uint256 stor22;
mapping of uint256 playerGetPendingTxBy;
mapping of uint256 stor24;

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

function ownerPauseGame(bool arg1) {
    require owner == msg.sender
    uint8(stor5.field_0) = uint8(arg1)
}

function ownerUpdateContractBalance(uint256 arg1) {
    require owner == msg.sender
    contractBalance = arg1
}

function ownerPausePayouts(bool arg1) {
    require owner == msg.sender
    stor5.field_200 % 72057594037927936 = arg1 % 72057594037927936
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

function playerRollDice(uint256 arg1) payable {
    require bool(uint8(stor5.field_0)) != 1
    require 1 <= arg1
    require arg1 - 1
    require (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value <= maxProfit
    require msg.value >= minBet
    require arg1 >= 2
    require arg1 <= 99
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
        require ext_code.size(stor0)
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
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 'nested', uint32(stor5.field_0)
    require ext_call.success
    if ext_call.return_data[0] > (gasForOraclize * block.gasprice) + 10^18:
        stor18[0] = 0
        stor22[0] = arg1
        stor19[0] = msg.value
        stor16[0] = msg.sender
        require 1 <= arg1
        require arg1 - 1
        stor24[0] = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value
        require maxPendingPayouts + (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value >= maxPendingPayouts
        maxPendingPayouts = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts
        require (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts < contractBalance
        require stor19[0] + stor24[0] >= stor19[0]
        emit LogBet(stor24[0], stor19[0], stor22[0], stor18[0], stor16[0], stor24[0] + stor19[0]);
    else:
        require ext_code.size(address(stor1))
        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9710 wei
            args 0, 128, 192, uint32(stor5.field_0), 6, 'nested' << 208, 436, 0xb95b55524c5d205b276a736f6e2868747470733a2f2f6170692e72616e646f6d2e6f72672f6a736f6e2d7270632f312f696e766f6b65292e726573756c742e72616e646f6d5b2273657269616c4e756d626572222c2264617461225d272c20275c6e7b226a736f6e727063223a22322e30222c226d6574686f64223a2267656e65726174655369676e6564496e746567657273222c22706172616d73223a7b226170694b6579223a247b5b646563727970745d20424b3855784945484c6159384a4551446c31736a4b37332b66445a617a65326f527970334f7a674933513158627a377846474a37704b746d4b586479694d4c356532364859656f784f34664f466f5651376948425664334f6c6d30676f774a36306f4969432b4f66724f422b64736f6f62617a7463466d454b4d676837624c5852454c394f524162377255443444566c48344e707851346d666b674b7674453d7d2c226e223a312c226d696e223a312c226d6178223a3130302c227265706c6163656d656e74223a747275652c2262617365223a3130247b5b6964656e746974795d20227d227d2c226964223a31247b5b6964656e746974795d20227d227d27, mem[628 len 12] >> 3072, Mask(160, -3328, mem[628 len 12]) << 3328
        require ext_call.success
        stor18[ext_call.return_data[0]] = ext_call.return_data[0]
        stor22[ext_call.return_data[0]] = arg1
        stor19[ext_call.return_data[0]] = msg.value
        stor16[ext_call.return_data[0]] = msg.sender
        require 1 <= arg1
        require arg1 - 1
        stor24[ext_call.return_data[0]] = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value
        require maxPendingPayouts + (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value >= maxPendingPayouts
        maxPendingPayouts = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts
        require (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts < contractBalance
        require stor19[ext_call.return_data[0]] + stor24[ext_call.return_data[0]] >= stor19[ext_call.return_data[0]]
        emit LogBet(stor24[ext_call.return_data[0]], stor19[ext_call.return_data[0]], stor22[ext_call.return_data[0]], stor18[ext_call.return_data[0]], stor16[ext_call.return_data[0]], stor24[ext_call.return_data[0]] + stor19[ext_call.return_data[0]]);
}



}
