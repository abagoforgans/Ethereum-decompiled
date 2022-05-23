contract main {




// =====================  Runtime code  =====================


const maxNumber = 99

const maxProfitDivisor = 10^6

const minNumber = 2

const houseEdgeDivisor = 1000


uint8 stor0;
address stor0;
address owner; offset 8
address zethrBankrollAddress;
address ZTHTKNADDR;
address ZTHTKNAddress;
uint256 contractBalance;
uint256 houseEdge;
uint256 maxProfit;
uint256 maxProfitAsPercentOfHouse;
uint256 minBet;
uint256 totalBets;
uint256 totalZTHWagered;
mapping of struct playerRolls;

function totalZTHWagered() {
    return totalZTHWagered
}

function ZTHTKN() {
    return ZTHTKNAddress
}

function maxProfitAsPercentOfHouse() {
    return maxProfitAsPercentOfHouse
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

function ZethrBankroll() {
    return zethrBankrollAddress
}

function maxProfit() {
    return maxProfit
}

function totalBets() {
    return totalBets
}

function gamePaused() {
    return bool(uint8(stor0.field_0))
}

function playerRolls(address arg1) {
    return playerRolls[arg1].field_0, playerRolls[arg1].field_0, playerRolls[arg1].field_248
}

function houseEdge() {
    return houseEdge
}

function ZTHTKNADDR() {
    return ZTHTKNADDR
}

function ownerkill() {
    require msg.sender == owner
    require ext_code.size(ZTHTKNAddress)
    call ZTHTKNAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), contractBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() payable {
  stop
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
    uint8(stor0.field_0) = uint8(arg1)
}

function ownerUpdateContractBalance(uint256 arg1) {
    require msg.sender == owner
    contractBalance = arg1
}

function dumpdivs() {
    call zethrBankrollAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function ownerSetMaxProfitAsPercentOfHouse(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 200000
    maxProfitAsPercentOfHouse = arg1
    emit CurrentContractBalance(contractBalance);
    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
}

function ownerTransferZTH(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= contractBalance
    contractBalance -= arg2
    emit CurrentContractBalance(contractBalance);
    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
    require ext_code.size(ZTHTKNAddress)
    call ZTHTKNAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogOwnerTransfer(arg1, arg2);
}

function ownerSetBankroll(address arg1) {
    require msg.sender == owner
    require ext_code.size(ZTHTKNAddress)
    call ZTHTKNAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args zethrBankrollAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    zethrBankrollAddress = arg1
    require ext_code.size(ZTHTKNAddress)
    call ZTHTKNAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function finishBet() {
    require not uint8(stor0.field_0)
    require 0 < playerRolls[address(msg.sender)].field_0
    require playerRolls[address(msg.sender)].field_200 != block.number
    if block.number - playerRolls[address(msg.sender)].field_200 <= 255:
        if (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 99) + 1 >= playerRolls[address(msg.sender)].field_0:
            emit LogResult(msg.sender, (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 99) + 1, playerRolls[address(msg.sender)].field_0, 0, playerRolls[address(msg.sender)].field_0, 0);
            require playerRolls[address(msg.sender)].field_0 + contractBalance >= contractBalance
            contractBalance += playerRolls[address(msg.sender)].field_0
            playerRolls[address(msg.sender)].field_0 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            emit CurrentContractBalance(contractBalance);
            maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
        else:
            require 1 <= playerRolls[address(msg.sender)].field_0
            require playerRolls[address(msg.sender)].field_0 - 1
            if (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= maxProfit:
                require (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= contractBalance
                contractBalance = contractBalance - (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) + playerRolls[address(msg.sender)].field_0
                emit LogResult(msg.sender, (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 99) + 1, playerRolls[address(msg.sender)].field_0, (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_248 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_248 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0, playerRolls[address(msg.sender)].field_0, 1);
                emit CurrentContractBalance(contractBalance);
                maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                playerRolls[address(msg.sender)].field_0 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                require ext_code.size(ZTHTKNAddress)
                call ZTHTKNAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_248 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_248 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
            else:
                require maxProfit <= contractBalance
                contractBalance -= maxProfit
                emit LogResult(msg.sender, (sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 99) + 1, playerRolls[address(msg.sender)].field_0, maxProfit, playerRolls[address(msg.sender)].field_0, 1);
                emit CurrentContractBalance(contractBalance);
                maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                playerRolls[address(msg.sender)].field_0 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                playerRolls[address(msg.sender)].field_256 = 0
                require ext_code.size(ZTHTKNAddress)
                call ZTHTKNAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, maxProfit + playerRolls[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        return ((sha3(block.hash(playerRolls[address(msg.sender)].field_0), msg.sender) % 99) + 1)
    if 1000 >= playerRolls[address(msg.sender)].field_248:
        emit LogResult(msg.sender, 1000, playerRolls[address(msg.sender)].field_0, 0, playerRolls[address(msg.sender)].field_0, 0);
        require playerRolls[address(msg.sender)].field_0 + contractBalance >= contractBalance
        contractBalance += playerRolls[address(msg.sender)].field_0
        playerRolls[address(msg.sender)].field_0 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        playerRolls[address(msg.sender)].field_256 = 0
        emit CurrentContractBalance(contractBalance);
        maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
    else:
        require 1 <= playerRolls[address(msg.sender)].field_248
        require playerRolls[address(msg.sender)].field_248 - 1
        if (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= maxProfit:
            require (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0 <= contractBalance
            contractBalance = contractBalance - (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_0 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_0 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) + playerRolls[address(msg.sender)].field_0
            emit LogResult(msg.sender, 1000, playerRolls[address(msg.sender)].field_0, (((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_248 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_248 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000) - playerRolls[address(msg.sender)].field_0, playerRolls[address(msg.sender)].field_0, 1);
            emit CurrentContractBalance(contractBalance);
            maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
            playerRolls[address(msg.sender)].field_0 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            require ext_code.size(ZTHTKNAddress)
            call ZTHTKNAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((101 * playerRolls[address(msg.sender)].field_0) - (playerRolls[address(msg.sender)].field_248 * playerRolls[address(msg.sender)].field_0) / playerRolls[address(msg.sender)].field_248 - 1 * houseEdge) + (playerRolls[address(msg.sender)].field_0 * houseEdge) / 1000
        else:
            require maxProfit <= contractBalance
            contractBalance -= maxProfit
            emit LogResult(msg.sender, 1000, playerRolls[address(msg.sender)].field_0, maxProfit, playerRolls[address(msg.sender)].field_0, 1);
            emit CurrentContractBalance(contractBalance);
            maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
            playerRolls[address(msg.sender)].field_0 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            playerRolls[address(msg.sender)].field_256 = 0
            require ext_code.size(ZTHTKNAddress)
            call ZTHTKNAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, maxProfit + playerRolls[address(msg.sender)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1000
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == ZTHTKNADDR
    if zethrBankrollAddress == arg1:
        require arg2 + contractBalance >= contractBalance
        contractBalance += arg2
        emit CurrentContractBalance(contractBalance);
        maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
        emit MaxProfitChanged(maxProfit, maxProfit);
    else:
        mem[ceil32(arg3.length) + 128] = arg1
        require 0 < arg3.length
        require not uint8(stor0.field_0)
        require 1 <= mem[128 len 1]
        require mem[128 len 1] - 1
        require (((101 * arg2) - (mem[128 len 1] * arg2) / mem[128 len 1] - 1 * houseEdge) + (arg2 * houseEdge) / 1000) - arg2 < maxProfit
        require arg2 >= minBet
        require mem[128 len 1] > 2
        require mem[128 len 1] < 99
        require 0xffffffffffffffffffffffffffffffffffffffffffffffffff > arg2
        require block.number < test266151307()
        require msg.sender == ZTHTKNADDR
        require playerRolls[address(arg1)].field_200 != block.number
        if not playerRolls[address(arg1)].field_200:
            playerRolls[address(arg1)].field_0 = 0
            playerRolls[address(arg1)].field_56 = Mask(144, 0, arg2)
            playerRolls[address(arg1)].field_200 = block.number % 281474976710656
            playerRolls[address(arg1)].field_248 = mem[128 len 1]
            emit LogBet(address(arg1), arg2, mem[128 len 1]);
        else:
            require 0 < playerRolls[address(arg1)].field_0
            require playerRolls[address(arg1)].field_200 != block.number
            if block.number - playerRolls[address(arg1)].field_200 <= 255:
                if (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 99) + 1 >= playerRolls[address(arg1)].field_0:
                    emit LogResult(address(arg1), (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 99) + 1, playerRolls[address(arg1)].field_0, 0, playerRolls[address(arg1)].field_0, 0);
                    require playerRolls[address(arg1)].field_0 + contractBalance >= contractBalance
                    contractBalance += playerRolls[address(arg1)].field_0
                    playerRolls[address(arg1)].field_0 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    emit CurrentContractBalance(contractBalance);
                    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                else:
                    require 1 <= playerRolls[address(arg1)].field_0
                    require playerRolls[address(arg1)].field_0 - 1
                    if (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= maxProfit:
                        require (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= contractBalance
                        contractBalance = contractBalance - (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) + playerRolls[address(arg1)].field_0
                        emit LogResult(address(arg1), (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 99) + 1, playerRolls[address(arg1)].field_0, (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_248 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_248 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0, playerRolls[address(arg1)].field_0, 1);
                        emit CurrentContractBalance(contractBalance);
                        maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                        playerRolls[address(arg1)].field_0 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        require ext_code.size(ZTHTKNAddress)
                        call ZTHTKNAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_248 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_248 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                    else:
                        require maxProfit <= contractBalance
                        contractBalance -= maxProfit
                        emit LogResult(address(arg1), (sha3(block.hash(playerRolls[address(arg1)].field_0), arg1) % 99) + 1, playerRolls[address(arg1)].field_0, maxProfit, playerRolls[address(arg1)].field_0, 1);
                        emit CurrentContractBalance(contractBalance);
                        maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                        playerRolls[address(arg1)].field_0 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        require ext_code.size(ZTHTKNAddress)
                        call ZTHTKNAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), maxProfit + playerRolls[address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                playerRolls[uint64(arg1) << 96].field_0 = Mask(144, 0, arg2) << 56
                playerRolls[uint64(arg1) << 96].field_200 = block.number % 281474976710656
                playerRolls[uint64(arg1) << 96].field_248 = mem[128 len 1]
                emit LogBet(arg1 << 192, arg2, mem[128 len 1]);
            else:
                if 1000 >= playerRolls[address(arg1)].field_248:
                    emit LogResult(address(arg1), 1000, playerRolls[address(arg1)].field_0, 0, playerRolls[address(arg1)].field_0, 0);
                    require playerRolls[address(arg1)].field_0 + contractBalance >= contractBalance
                    contractBalance += playerRolls[address(arg1)].field_0
                    playerRolls[address(arg1)].field_0 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    playerRolls[address(arg1)].field_256 = 0
                    emit CurrentContractBalance(contractBalance);
                    maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                else:
                    require 1 <= playerRolls[address(arg1)].field_248
                    require playerRolls[address(arg1)].field_248 - 1
                    if (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= maxProfit:
                        require (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0 <= contractBalance
                        contractBalance = contractBalance - (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_0 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_0 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) + playerRolls[address(arg1)].field_0
                        emit LogResult(address(arg1), 1000, playerRolls[address(arg1)].field_0, (((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_248 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_248 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000) - playerRolls[address(arg1)].field_0, playerRolls[address(arg1)].field_0, 1);
                        emit CurrentContractBalance(contractBalance);
                        maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                        playerRolls[address(arg1)].field_0 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        require ext_code.size(ZTHTKNAddress)
                        call ZTHTKNAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ((101 * playerRolls[address(arg1)].field_0) - (playerRolls[address(arg1)].field_248 * playerRolls[address(arg1)].field_0) / playerRolls[address(arg1)].field_248 - 1 * houseEdge) + (playerRolls[address(arg1)].field_0 * houseEdge) / 1000
                    else:
                        require maxProfit <= contractBalance
                        contractBalance -= maxProfit
                        emit LogResult(address(arg1), 1000, playerRolls[address(arg1)].field_0, maxProfit, playerRolls[address(arg1)].field_0, 1);
                        emit CurrentContractBalance(contractBalance);
                        maxProfit = maxProfitAsPercentOfHouse * contractBalance / 10^6
                        playerRolls[address(arg1)].field_0 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        playerRolls[address(arg1)].field_256 = 0
                        require ext_code.size(ZTHTKNAddress)
                        call ZTHTKNAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), maxProfit + playerRolls[address(arg1)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                playerRolls[address(arg1)].field_0 = 0
                playerRolls[address(arg1)].field_56 = Mask(144, 0, arg2)
                playerRolls[address(arg1)].field_200 = block.number % 281474976710656
                playerRolls[address(arg1)].field_248 = mem[128 len 1]
                emit LogBet(address(arg1), arg2, mem[128 len 1]);
        totalBets++
        totalZTHWagered += arg2
    return 1
}



}
