contract main {




// =====================  Runtime code  =====================


const maxNumber = 100

const maxProfitDivisor = 10^6

const minNumber = 2

const houseEdgeDivisor = 1000


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
mapping of uint8 stor8;
uint8 stor9;
address owner; offset 8
mapping of uint256 contractBalance;
mapping of uint256 maxProfit;
uint256 houseEdge;
uint256 maxProfitAsPercentOfHouse;
uint256 minBet;
uint256 totalBets;
uint256 totalZTHWagered;
mapping of struct playerRolls;

function totalZTHWagered() {
    return totalZTHWagered
}

function maxProfitAsPercentOfHouse() {
    return maxProfitAsPercentOfHouse
}

function maxProfit(uint256 arg1) {
    return maxProfit[arg1]
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function totalBets() {
    return totalBets
}

function gamePaused() {
    return bool(stor9)
}

function playerRolls(address arg1) {
    return playerRolls[arg1].field_0, playerRolls[arg1].field_0, playerRolls[arg1].field_0, playerRolls[arg1].field_248
}

function houseEdge() {
    return houseEdge
}

function contractBalance(uint256 arg1) {
    return contractBalance[arg1]
}

function ownerkill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function maxRandom(uint256 arg1, address arg2) {
    return sha3(block.hash(arg1), arg2)
}

function ownerSetMinBet(uint256 arg1) {
    require msg.sender == owner
    minBet = arg1
}

function ownerChangeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function ownerPauseGame(bool arg1) {
    require msg.sender == owner
    stor9 = uint8(arg1)
}

function getMaxProfit(uint256 arg1) {
    return (maxProfitAsPercentOfHouse * contractBalance[arg1] / 10^6)
}

function random(uint256 arg1, uint256 arg2, address arg3) {
    require arg1
    return (sha3(block.hash(arg2), arg3) % arg1)
}

function ownerUpdateContractBalance(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    contractBalance[arg2] = arg1
}

function WithdrawToBankroll() {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function WithdrawAndTransferToBankroll() {
    require ext_code.size(stor0)
    call stor0.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function bankrollExternalUpdateTokens(uint256 arg1, uint256 arg2) {
    if not stor8[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender should be a valid bankroll'
    contractBalance[arg1] = arg2
    maxProfit[arg1] = maxProfitAsPercentOfHouse * contractBalance[arg1] / 10^6
}

function ownerSetMaxProfitAsPercentOfHouse(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 200000
    maxProfitAsPercentOfHouse = arg1
    maxProfit[2] = maxProfitAsPercentOfHouse * contractBalance[2] / 10^6
    maxProfit[5] = maxProfitAsPercentOfHouse * contractBalance[5] / 10^6
    maxProfit[10] = maxProfitAsPercentOfHouse * contractBalance[10] / 10^6
    maxProfit[15] = maxProfitAsPercentOfHouse * contractBalance[15] / 10^6
    maxProfit[20] = maxProfitAsPercentOfHouse * contractBalance[20] / 10^6
    maxProfit[25] = maxProfitAsPercentOfHouse * contractBalance[25] / 10^6
    maxProfit[33] = maxProfitAsPercentOfHouse * contractBalance[33] / 10^6
}

function finishBet() {
    require not stor9
    require 0 < playerRolls[address(msg.sender)].field_0
    require playerRolls[address(msg.sender)].field_192 != block.number
    if block.number - playerRolls[address(msg.sender)].field_192 <= 255:
        if (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 100) + 1 >= playerRolls[address(msg.sender)].field_0:
            emit LogResult(msg.sender, (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 100) + 1, playerRolls[address(msg.sender)].field_0, 0, playerRolls[address(msg.sender)].field_0, 0);
            require playerRolls[address(msg.sender)].field_0 + contractBalance[stor17[address(msg.sender)].field_0] >= contractBalance[stor17[address(msg.sender)].field_0]
            contractBalance[stor17[address(msg.sender)].field_248 << 248] = playerRolls[address(msg.sender)].field_0 + contractBalance[stor17[address(msg.sender)].field_0]
            playerRolls[address(msg.sender)].field_0 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            maxProfit[stor17[address(msg.sender)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6
        else:
            require 1 <= playerRolls[address(msg.sender)].field_0
            require playerRolls[address(msg.sender)].field_0 - 1
            if (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6:
                require (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= contractBalance[stor17[address(msg.sender)].field_0]
                contractBalance[stor17[address(msg.sender)].field_248 << 248] = contractBalance[stor17[address(msg.sender)].field_0] - (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) + playerRolls[address(msg.sender)].field_0
                emit LogResult(msg.sender, (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 100) + 1, playerRolls[address(msg.sender)].field_0, (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0, playerRolls[address(msg.sender)].field_0, 1);
                maxProfit[stor17[address(msg.sender)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6
                playerRolls[address(msg.sender)].field_0 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                if playerRolls[address(msg.sender)].field_0 >= 30:
                    require ext_code.size(stor7)
                    call stor7.0x8ccd227c with:
                         gas gas_remaining wei
                        args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                else:
                    if playerRolls[address(msg.sender)].field_0 >= 25:
                        require ext_code.size(stor6)
                        call stor6.0x8ccd227c with:
                             gas gas_remaining wei
                            args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                    else:
                        if playerRolls[address(msg.sender)].field_0 >= 20:
                            require ext_code.size(stor5)
                            call stor5.0x8ccd227c with:
                                 gas gas_remaining wei
                                args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                        else:
                            if playerRolls[address(msg.sender)].field_0 >= 15:
                                require ext_code.size(stor4)
                                call stor4.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                            else:
                                if playerRolls[address(msg.sender)].field_0 >= 10:
                                    require ext_code.size(stor3)
                                    call stor3.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                                else:
                                    if playerRolls[address(msg.sender)].field_0 >= 5:
                                        require ext_code.size(stor2)
                                        call stor2.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                                    else:
                                        require playerRolls[address(msg.sender)].field_0 >= 2
                                        require ext_code.size(stor1)
                                        call stor1.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
            else:
                require maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6 <= contractBalance[stor17[address(msg.sender)].field_0]
                contractBalance[stor17[address(msg.sender)].field_248 << 248] = contractBalance[stor17[address(msg.sender)].field_0] - (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6)
                emit LogResult(msg.sender, (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 100) + 1, playerRolls[address(msg.sender)].field_0, maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6, playerRolls[address(msg.sender)].field_0, 1);
                maxProfit[stor17[address(msg.sender)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6
                playerRolls[address(msg.sender)].field_0 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                if playerRolls[address(msg.sender)].field_0 >= 30:
                    require ext_code.size(stor7)
                    call stor7.0x8ccd227c with:
                         gas gas_remaining wei
                        args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                else:
                    if playerRolls[address(msg.sender)].field_0 >= 25:
                        require ext_code.size(stor6)
                        call stor6.0x8ccd227c with:
                             gas gas_remaining wei
                            args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                    else:
                        if playerRolls[address(msg.sender)].field_0 >= 20:
                            require ext_code.size(stor5)
                            call stor5.0x8ccd227c with:
                                 gas gas_remaining wei
                                args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                        else:
                            if playerRolls[address(msg.sender)].field_0 >= 15:
                                require ext_code.size(stor4)
                                call stor4.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                            else:
                                if playerRolls[address(msg.sender)].field_0 >= 10:
                                    require ext_code.size(stor3)
                                    call stor3.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                                else:
                                    if playerRolls[address(msg.sender)].field_0 >= 5:
                                        require ext_code.size(stor2)
                                        call stor2.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                                    else:
                                        require playerRolls[address(msg.sender)].field_0 >= 2
                                        require ext_code.size(stor1)
                                        call stor1.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return ((sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 100) + 1)
    if 1000 >= playerRolls[address(msg.sender)].field_240:
        emit LogResult(msg.sender, 1000, playerRolls[address(msg.sender)].field_0, 0, playerRolls[address(msg.sender)].field_0, 0);
        require playerRolls[address(msg.sender)].field_0 + contractBalance[stor17[address(msg.sender)].field_0] >= contractBalance[stor17[address(msg.sender)].field_0]
        contractBalance[stor17[address(msg.sender)].field_248 << 248] = playerRolls[address(msg.sender)].field_0 + contractBalance[stor17[address(msg.sender)].field_0]
        playerRolls[address(msg.sender)].field_0 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        maxProfit[stor17[address(msg.sender)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6
    else:
        require 1 <= playerRolls[address(msg.sender)].field_240
        require playerRolls[address(msg.sender)].field_240 - 1
        if (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6:
            require (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= contractBalance[stor17[address(msg.sender)].field_0]
            contractBalance[stor17[address(msg.sender)].field_248 << 248] = contractBalance[stor17[address(msg.sender)].field_0] - (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) + playerRolls[address(msg.sender)].field_0
            emit LogResult(msg.sender, 1000, playerRolls[address(msg.sender)].field_0, (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0, playerRolls[address(msg.sender)].field_0, 1);
            maxProfit[stor17[address(msg.sender)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6
            playerRolls[address(msg.sender)].field_0 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            if playerRolls[address(msg.sender)].field_248 >= 30:
                require ext_code.size(stor7)
                call stor7.0x8ccd227c with:
                     gas gas_remaining wei
                    args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
            else:
                if playerRolls[address(msg.sender)].field_248 >= 25:
                    require ext_code.size(stor6)
                    call stor6.0x8ccd227c with:
                         gas gas_remaining wei
                        args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                else:
                    if playerRolls[address(msg.sender)].field_248 >= 20:
                        require ext_code.size(stor5)
                        call stor5.0x8ccd227c with:
                             gas gas_remaining wei
                            args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                    else:
                        if playerRolls[address(msg.sender)].field_248 >= 15:
                            require ext_code.size(stor4)
                            call stor4.0x8ccd227c with:
                                 gas gas_remaining wei
                                args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                        else:
                            if playerRolls[address(msg.sender)].field_248 >= 10:
                                require ext_code.size(stor3)
                                call stor3.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                            else:
                                if playerRolls[address(msg.sender)].field_248 >= 5:
                                    require ext_code.size(stor2)
                                    call stor2.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
                                else:
                                    require playerRolls[address(msg.sender)].field_248 >= 2
                                    require ext_code.size(stor1)
                                    call stor1.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_240 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_240 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
        else:
            require maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6 <= contractBalance[stor17[address(msg.sender)].field_0]
            contractBalance[stor17[address(msg.sender)].field_248 << 248] = contractBalance[stor17[address(msg.sender)].field_0] - (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6)
            emit LogResult(msg.sender, 1000, playerRolls[address(msg.sender)].field_0, maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6, playerRolls[address(msg.sender)].field_0, 1);
            maxProfit[stor17[address(msg.sender)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6
            playerRolls[address(msg.sender)].field_0 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            if playerRolls[address(msg.sender)].field_248 >= 30:
                require ext_code.size(stor7)
                call stor7.0x8ccd227c with:
                     gas gas_remaining wei
                    args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
            else:
                if playerRolls[address(msg.sender)].field_248 >= 25:
                    require ext_code.size(stor6)
                    call stor6.0x8ccd227c with:
                         gas gas_remaining wei
                        args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                else:
                    if playerRolls[address(msg.sender)].field_248 >= 20:
                        require ext_code.size(stor5)
                        call stor5.0x8ccd227c with:
                             gas gas_remaining wei
                            args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                    else:
                        if playerRolls[address(msg.sender)].field_248 >= 15:
                            require ext_code.size(stor4)
                            call stor4.0x8ccd227c with:
                                 gas gas_remaining wei
                                args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                        else:
                            if playerRolls[address(msg.sender)].field_248 >= 10:
                                require ext_code.size(stor3)
                                call stor3.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                            else:
                                if playerRolls[address(msg.sender)].field_248 >= 5:
                                    require ext_code.size(stor2)
                                    call stor2.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
                                else:
                                    require playerRolls[address(msg.sender)].field_248 >= 2
                                    require ext_code.size(stor1)
                                    call stor1.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args msg.sender, (maxProfitAsPercentOfHouse * contractBalance[stor17[address(msg.sender)].field_0] / 10^6) + playerRolls[address(msg.sender)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1000
}

function execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    if not stor8[msg.sender]:
        revert with 0, 'msg.sender should be a valid bankroll'
    require not stor9
    mem[ceil32(arg4.length) + 128] = arg1
    require 0 < arg4.length
    require not stor9
    require 1 <= mem[128 len 1]
    require mem[128 len 1] - 1
    require (((101 * arg2) - (mem[128 len 1] * arg2) / mem[128 len 1] - 1 * houseEdge) + (arg2 * houseEdge) / 1000) - arg2 < maxProfitAsPercentOfHouse * contractBalance[arg3] / 10^6
    require arg2 >= minBet
    require mem[128 len 1] >= 2
    require mem[128 len 1] <= 100
    require 0xffffffffffffffffffffffffffffffffffffffffffffffff > arg2
    require block.number < test266151307()
    require arg3 < 255
    require playerRolls[address(arg1)].field_192 != block.number
    if not playerRolls[address(arg1)].field_192:
        playerRolls[address(arg1)].field_0 = 0
        playerRolls[address(arg1)].field_64 = uint128(arg2)
        playerRolls[address(arg1)].field_192 = block.number % 281474976710656
        playerRolls[address(arg1)].field_240 = mem[128 len 1]
        playerRolls[address(arg1)].field_248 = uint8(arg3)
        emit LogBet(address(arg1), arg2, mem[128 len 1]);
    else:
        require 0 < playerRolls[address(arg1)].field_0
        require playerRolls[address(arg1)].field_192 != block.number
        if block.number - playerRolls[address(arg1)].field_192 <= 255:
            if (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 100) + 1 >= playerRolls[address(arg1)].field_0:
                emit LogResult(address(arg1), (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 100) + 1, playerRolls[address(arg1)].field_0, 0, playerRolls[address(arg1)].field_0, 0);
                require playerRolls[address(arg1)].field_0 + contractBalance[stor17[address(arg1)].field_0] >= contractBalance[stor17[address(arg1)].field_0]
                contractBalance[stor17[address(arg1)].field_248 << 248] = playerRolls[address(arg1)].field_0 + contractBalance[stor17[address(arg1)].field_0]
                playerRolls[address(arg1)].field_0 = 0
                playerRolls[address(arg1)].field_256 = 0
                playerRolls[address(arg1)].field_256 = 0
                playerRolls[address(arg1)].field_256 = 0
                playerRolls[address(arg1)].field_256 = 0
                maxProfit[stor17[address(arg1)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6
            else:
                require 1 <= playerRolls[address(arg1)].field_0
                require playerRolls[address(arg1)].field_0 - 1
                if (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6:
                    require (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= contractBalance[stor17[address(arg1)].field_0]
                    contractBalance[stor17[address(arg1)].field_248 << 248] = contractBalance[stor17[address(arg1)].field_0] - (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) + playerRolls[address(arg1)].field_0
                    emit LogResult(address(arg1), (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 100) + 1, playerRolls[address(arg1)].field_0, (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0, playerRolls[address(arg1)].field_0, 1);
                    maxProfit[stor17[address(arg1)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6
                    playerRolls[address(arg1)].field_0 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    if playerRolls[address(arg1)].field_0 >= 30:
                        require ext_code.size(stor7)
                        call stor7.0x8ccd227c with:
                             gas gas_remaining wei
                            args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                    else:
                        if playerRolls[address(arg1)].field_0 >= 25:
                            require ext_code.size(stor6)
                            call stor6.0x8ccd227c with:
                                 gas gas_remaining wei
                                args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                        else:
                            if playerRolls[address(arg1)].field_0 >= 20:
                                require ext_code.size(stor5)
                                call stor5.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                            else:
                                if playerRolls[address(arg1)].field_0 >= 15:
                                    require ext_code.size(stor4)
                                    call stor4.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                                else:
                                    if playerRolls[address(arg1)].field_0 >= 10:
                                        require ext_code.size(stor3)
                                        call stor3.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                                    else:
                                        if playerRolls[address(arg1)].field_0 >= 5:
                                            require ext_code.size(stor2)
                                            call stor2.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                                        else:
                                            require playerRolls[address(arg1)].field_0 >= 2
                                            require ext_code.size(stor1)
                                            call stor1.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                else:
                    require maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6 <= contractBalance[stor17[address(arg1)].field_0]
                    contractBalance[stor17[address(arg1)].field_248 << 248] = contractBalance[stor17[address(arg1)].field_0] - (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6)
                    emit LogResult(address(arg1), (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 100) + 1, playerRolls[address(arg1)].field_0, maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6, playerRolls[address(arg1)].field_0, 1);
                    maxProfit[stor17[address(arg1)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6
                    playerRolls[address(arg1)].field_0 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    if playerRolls[address(arg1)].field_0 >= 30:
                        require ext_code.size(stor7)
                        call stor7.0x8ccd227c with:
                             gas gas_remaining wei
                            args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                    else:
                        if playerRolls[address(arg1)].field_0 >= 25:
                            require ext_code.size(stor6)
                            call stor6.0x8ccd227c with:
                                 gas gas_remaining wei
                                args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                        else:
                            if playerRolls[address(arg1)].field_0 >= 20:
                                require ext_code.size(stor5)
                                call stor5.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                            else:
                                if playerRolls[address(arg1)].field_0 >= 15:
                                    require ext_code.size(stor4)
                                    call stor4.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                                else:
                                    if playerRolls[address(arg1)].field_0 >= 10:
                                        require ext_code.size(stor3)
                                        call stor3.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                                    else:
                                        if playerRolls[address(arg1)].field_0 >= 5:
                                            require ext_code.size(stor2)
                                            call stor2.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                                        else:
                                            require playerRolls[address(arg1)].field_0 >= 2
                                            require ext_code.size(stor1)
                                            call stor1.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            playerRolls[uint64(arg1) << 96].field_0 = uint128(arg2) << 64
            playerRolls[uint64(arg1) << 96].field_192 = block.number % 281474976710656
            playerRolls[uint64(arg1) << 96].field_240 = mem[128 len 1]
            playerRolls[uint64(arg1) << 96].field_248 = uint8(arg3)
            emit LogBet(arg1 << 192, arg2, mem[128 len 1]);
        else:
            if 1000 >= playerRolls[address(arg1)].field_240:
                emit LogResult(address(arg1), 1000, playerRolls[address(arg1)].field_0, 0, playerRolls[address(arg1)].field_0, 0);
                require playerRolls[address(arg1)].field_0 + contractBalance[stor17[address(arg1)].field_0] >= contractBalance[stor17[address(arg1)].field_0]
                contractBalance[stor17[address(arg1)].field_248 << 248] = playerRolls[address(arg1)].field_0 + contractBalance[stor17[address(arg1)].field_0]
                playerRolls[address(arg1)].field_0 = 0
                playerRolls[address(arg1)].field_256 = 0
                playerRolls[address(arg1)].field_256 = 0
                playerRolls[address(arg1)].field_256 = 0
                playerRolls[address(arg1)].field_256 = 0
                maxProfit[stor17[address(arg1)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6
            else:
                require 1 <= playerRolls[address(arg1)].field_240
                require playerRolls[address(arg1)].field_240 - 1
                if (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6:
                    require (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= contractBalance[stor17[address(arg1)].field_0]
                    contractBalance[stor17[address(arg1)].field_248 << 248] = contractBalance[stor17[address(arg1)].field_0] - (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) + playerRolls[address(arg1)].field_0
                    emit LogResult(address(arg1), 1000, playerRolls[address(arg1)].field_0, (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0, playerRolls[address(arg1)].field_0, 1);
                    maxProfit[stor17[address(arg1)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6
                    playerRolls[address(arg1)].field_0 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    if playerRolls[address(arg1)].field_248 >= 30:
                        require ext_code.size(stor7)
                        call stor7.0x8ccd227c with:
                             gas gas_remaining wei
                            args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                    else:
                        if playerRolls[address(arg1)].field_248 >= 25:
                            require ext_code.size(stor6)
                            call stor6.0x8ccd227c with:
                                 gas gas_remaining wei
                                args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                        else:
                            if playerRolls[address(arg1)].field_248 >= 20:
                                require ext_code.size(stor5)
                                call stor5.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                            else:
                                if playerRolls[address(arg1)].field_248 >= 15:
                                    require ext_code.size(stor4)
                                    call stor4.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                                else:
                                    if playerRolls[address(arg1)].field_248 >= 10:
                                        require ext_code.size(stor3)
                                        call stor3.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                                    else:
                                        if playerRolls[address(arg1)].field_248 >= 5:
                                            require ext_code.size(stor2)
                                            call stor2.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                                        else:
                                            require playerRolls[address(arg1)].field_248 >= 2
                                            require ext_code.size(stor1)
                                            call stor1.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_240 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_240 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                else:
                    require maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6 <= contractBalance[stor17[address(arg1)].field_0]
                    contractBalance[stor17[address(arg1)].field_248 << 248] = contractBalance[stor17[address(arg1)].field_0] - (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6)
                    emit LogResult(address(arg1), 1000, playerRolls[address(arg1)].field_0, maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6, playerRolls[address(arg1)].field_0, 1);
                    maxProfit[stor17[address(arg1)].field_248 << 248] = maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6
                    playerRolls[address(arg1)].field_0 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    if playerRolls[address(arg1)].field_248 >= 30:
                        require ext_code.size(stor7)
                        call stor7.0x8ccd227c with:
                             gas gas_remaining wei
                            args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                    else:
                        if playerRolls[address(arg1)].field_248 >= 25:
                            require ext_code.size(stor6)
                            call stor6.0x8ccd227c with:
                                 gas gas_remaining wei
                                args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                        else:
                            if playerRolls[address(arg1)].field_248 >= 20:
                                require ext_code.size(stor5)
                                call stor5.0x8ccd227c with:
                                     gas gas_remaining wei
                                    args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                            else:
                                if playerRolls[address(arg1)].field_248 >= 15:
                                    require ext_code.size(stor4)
                                    call stor4.0x8ccd227c with:
                                         gas gas_remaining wei
                                        args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                                else:
                                    if playerRolls[address(arg1)].field_248 >= 10:
                                        require ext_code.size(stor3)
                                        call stor3.0x8ccd227c with:
                                             gas gas_remaining wei
                                            args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                                    else:
                                        if playerRolls[address(arg1)].field_248 >= 5:
                                            require ext_code.size(stor2)
                                            call stor2.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                                        else:
                                            require playerRolls[address(arg1)].field_248 >= 2
                                            require ext_code.size(stor1)
                                            call stor1.0x8ccd227c with:
                                                 gas gas_remaining wei
                                                args address(arg1), (maxProfitAsPercentOfHouse * contractBalance[stor17[address(arg1)].field_0] / 10^6) + playerRolls[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            playerRolls[address(arg1)].field_0 = 0
            playerRolls[address(arg1)].field_64 = uint128(arg2)
            playerRolls[address(arg1)].field_192 = block.number % 281474976710656
            playerRolls[address(arg1)].field_240 = mem[128 len 1]
            playerRolls[address(arg1)].field_248 = uint8(arg3)
            emit LogBet(address(arg1), arg2, mem[128 len 1]);
    totalBets++
    totalZTHWagered += arg2
    return 1
}



}
