contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 totalSpins;
uint256 totalZTHWagered;
uint256 contractBalance;
uint8 stor5;
address stor5; offset 8
address stor7;
mapping of struct playerSpins;

function totalZTHWagered() {
    return totalZTHWagered
}

function playerSpins(address arg1) {
    return playerSpins[arg1].field_0, playerSpins[arg1].field_200
}

function balanceOf() {
    return contractBalance
}

function contractBalance() {
    return contractBalance
}

function totalSpins() {
    return totalSpins
}

function gameActive() {
    return bool(uint8(stor5.field_0))
}

function _fallback() payable {
  stop
}

function pauseGame() {
    require msg.sender == stor0
    uint8(stor5.field_0) = 0
}

function resumeGame() {
    require msg.sender == stor0
    uint8(stor5.field_0) = 1
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function changeBankroll(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function divertDividendsToBankroll() {
    require msg.sender == stor0
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finishSpin() {
    require 1 == bool(uint8(stor5.field_0))
    require 0 < playerSpins[address(msg.sender)].field_0
    require playerSpins[address(msg.sender)].field_200 != block.number
    if block.number - playerSpins[address(msg.sender)].field_200 > 255:
        require playerSpins[address(msg.sender)].field_0 + contractBalance >= contractBalance
        contractBalance += playerSpins[address(msg.sender)].field_0
        emit Loss(msg.sender, playerSpins[address(msg.sender)].field_200);
        emit LogResult(msg.sender, 10^6, 0, playerSpins[address(msg.sender)].field_0, 0, 0);
        playerSpins[address(msg.sender)].field_0 = 0
        emit SpinConcluded(msg.sender, playerSpins[address(msg.sender)].field_200);
        return 10^6
    if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 > 476662:
        require playerSpins[address(msg.sender)].field_0 + contractBalance >= contractBalance
        contractBalance += playerSpins[address(msg.sender)].field_0
        emit Loss(msg.sender, playerSpins[address(msg.sender)].field_200);
        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 0, 0);
    else:
        if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 2:
            if not playerSpins[address(msg.sender)].field_0:
                emit ThreeMoonJackpot(msg.sender, playerSpins[address(msg.sender)].field_200);
                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 1, 1);
                require 0 <= contractBalance
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require 500 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 500
                emit ThreeMoonJackpot(msg.sender, playerSpins[address(msg.sender)].field_200);
                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 500 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 1, 1);
                require 500 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                contractBalance += -500 * playerSpins[address(msg.sender)].field_0
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 500 * playerSpins[address(msg.sender)].field_0
        else:
            if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 299:
                if not playerSpins[address(msg.sender)].field_0:
                    emit TwoMoonPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 2, 1);
                    require 0 <= contractBalance
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    require 232 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 232
                    emit TwoMoonPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 232 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 2, 1);
                    require 232 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                    contractBalance += -232 * playerSpins[address(msg.sender)].field_0
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 232 * playerSpins[address(msg.sender)].field_0
            else:
                if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 3128:
                    if not playerSpins[address(msg.sender)].field_0:
                        emit ZTHPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 3, 1);
                        require 0 <= contractBalance
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        require 232 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 232
                        emit ZTHPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 232 * playerSpins[address(msg.sender)].field_0 / 10, playerSpins[address(msg.sender)].field_0, 3, 1);
                        require 232 * playerSpins[address(msg.sender)].field_0 / 10 <= contractBalance
                        contractBalance -= 232 * playerSpins[address(msg.sender)].field_0 / 10
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 232 * playerSpins[address(msg.sender)].field_0 / 10
                else:
                    if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 5957:
                        if not playerSpins[address(msg.sender)].field_0:
                            emit ThreeZSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 4, 1);
                            require 0 <= contractBalance
                            require ext_code.size(stor7)
                            call stor7.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            require 25 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 25
                            emit ThreeZSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 25 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 4, 1);
                            require 25 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                            contractBalance += -25 * playerSpins[address(msg.sender)].field_0
                            require ext_code.size(stor7)
                            call stor7.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 25 * playerSpins[address(msg.sender)].field_0
                    else:
                        if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 8786:
                            if not playerSpins[address(msg.sender)].field_0:
                                emit ThreeTSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 5, 1);
                                require 0 <= contractBalance
                                require ext_code.size(stor7)
                                call stor7.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                require 25 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 25
                                emit ThreeTSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 25 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 5, 1);
                                require 25 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                                contractBalance += -25 * playerSpins[address(msg.sender)].field_0
                                require ext_code.size(stor7)
                                call stor7.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 25 * playerSpins[address(msg.sender)].field_0
                        else:
                            if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 11615:
                                if not playerSpins[address(msg.sender)].field_0:
                                    emit ThreeHSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 6, 1);
                                    require 0 <= contractBalance
                                    require ext_code.size(stor7)
                                    call stor7.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    require 25 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 25
                                    emit ThreeHSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 25 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 6, 1);
                                    require 25 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                                    contractBalance += -25 * playerSpins[address(msg.sender)].field_0
                                    require ext_code.size(stor7)
                                    call stor7.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 25 * playerSpins[address(msg.sender)].field_0
                            else:
                                if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 14444:
                                    if not playerSpins[address(msg.sender)].field_0:
                                        emit ThreeEtherIcons(msg.sender, playerSpins[address(msg.sender)].field_200);
                                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 7, 1);
                                        require 0 <= contractBalance
                                        require ext_code.size(stor7)
                                        call stor7.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        require 50 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 50
                                        emit ThreeEtherIcons(msg.sender, playerSpins[address(msg.sender)].field_200);
                                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 50 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 7, 1);
                                        require 50 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                                        contractBalance += -50 * playerSpins[address(msg.sender)].field_0
                                        require ext_code.size(stor7)
                                        call stor7.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 50 * playerSpins[address(msg.sender)].field_0
                                else:
                                    if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 17273:
                                        if not playerSpins[address(msg.sender)].field_0:
                                            emit ThreePurplePyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 8, 1);
                                            require 0 <= contractBalance
                                            require ext_code.size(stor7)
                                            call stor7.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            require 40 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 40
                                            emit ThreePurplePyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 40 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 8, 1);
                                            require 40 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                                            contractBalance += -40 * playerSpins[address(msg.sender)].field_0
                                            require ext_code.size(stor7)
                                            call stor7.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 40 * playerSpins[address(msg.sender)].field_0
                                    else:
                                        if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 20102:
                                            if not playerSpins[address(msg.sender)].field_0:
                                                emit ThreeGoldPyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 9, 1);
                                                require 0 <= contractBalance
                                                require ext_code.size(stor7)
                                                call stor7.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                require 20 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 20
                                                emit ThreeGoldPyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 20 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 9, 1);
                                                require 20 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                                                contractBalance += -20 * playerSpins[address(msg.sender)].field_0
                                                require ext_code.size(stor7)
                                                call stor7.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 20 * playerSpins[address(msg.sender)].field_0
                                        else:
                                            if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 22930:
                                                if not playerSpins[address(msg.sender)].field_0:
                                                    emit ThreeRockets(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 10, 1);
                                                    require 0 <= contractBalance
                                                    require ext_code.size(stor7)
                                                    call stor7.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                else:
                                                    require 20 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 20
                                                    emit ThreeRockets(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 20 * playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 10, 1);
                                                    require 20 * playerSpins[address(msg.sender)].field_0 <= contractBalance
                                                    contractBalance += -20 * playerSpins[address(msg.sender)].field_0
                                                    require ext_code.size(stor7)
                                                    call stor7.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 20 * playerSpins[address(msg.sender)].field_0
                                            else:
                                                if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 52333:
                                                    if not playerSpins[address(msg.sender)].field_0:
                                                        emit OneMoonPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 11, 1);
                                                        require 0 <= contractBalance
                                                        require ext_code.size(stor7)
                                                        call stor7.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                    else:
                                                        require 125 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 125
                                                        emit OneMoonPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 125 * playerSpins[address(msg.sender)].field_0 / 10, playerSpins[address(msg.sender)].field_0, 11, 1);
                                                        require 125 * playerSpins[address(msg.sender)].field_0 / 10 <= contractBalance
                                                        contractBalance -= 125 * playerSpins[address(msg.sender)].field_0 / 10
                                                        require ext_code.size(stor7)
                                                        call stor7.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 125 * playerSpins[address(msg.sender)].field_0 / 10
                                                else:
                                                    if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 120226:
                                                        if not playerSpins[address(msg.sender)].field_0:
                                                            emit OneOfEachPyramidPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 12, 1);
                                                            require 0 <= contractBalance
                                                            require ext_code.size(stor7)
                                                            call stor7.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                        else:
                                                            require 15 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 15
                                                            emit OneOfEachPyramidPrize(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 15 * playerSpins[address(msg.sender)].field_0 / 10, playerSpins[address(msg.sender)].field_0, 12, 1);
                                                            require 15 * playerSpins[address(msg.sender)].field_0 / 10 <= contractBalance
                                                            contractBalance -= 15 * playerSpins[address(msg.sender)].field_0 / 10
                                                            require ext_code.size(stor7)
                                                            call stor7.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 15 * playerSpins[address(msg.sender)].field_0 / 10
                                                    else:
                                                        if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 171147:
                                                            if not playerSpins[address(msg.sender)].field_0:
                                                                emit TwoZSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 13, 1);
                                                                require 0 <= contractBalance
                                                                require ext_code.size(stor7)
                                                                call stor7.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                            else:
                                                                require 232 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 232
                                                                emit TwoZSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 232 * playerSpins[address(msg.sender)].field_0 / 100, playerSpins[address(msg.sender)].field_0, 13, 1);
                                                                require 232 * playerSpins[address(msg.sender)].field_0 / 100 <= contractBalance
                                                                contractBalance -= 232 * playerSpins[address(msg.sender)].field_0 / 100
                                                                require ext_code.size(stor7)
                                                                call stor7.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 232 * playerSpins[address(msg.sender)].field_0 / 100
                                                        else:
                                                            if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 222068:
                                                                if not playerSpins[address(msg.sender)].field_0:
                                                                    emit TwoTSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 14, 1);
                                                                    require 0 <= contractBalance
                                                                    require ext_code.size(stor7)
                                                                    call stor7.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                else:
                                                                    require 232 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 232
                                                                    emit TwoTSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 232 * playerSpins[address(msg.sender)].field_0 / 100, playerSpins[address(msg.sender)].field_0, 14, 1);
                                                                    require 232 * playerSpins[address(msg.sender)].field_0 / 100 <= contractBalance
                                                                    contractBalance -= 232 * playerSpins[address(msg.sender)].field_0 / 100
                                                                    require ext_code.size(stor7)
                                                                    call stor7.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 232 * playerSpins[address(msg.sender)].field_0 / 100
                                                            else:
                                                                if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 272989:
                                                                    if not playerSpins[address(msg.sender)].field_0:
                                                                        emit TwoHSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 15, 1);
                                                                        require 0 <= contractBalance
                                                                        require ext_code.size(stor7)
                                                                        call stor7.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                    else:
                                                                        require 232 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 232
                                                                        emit TwoHSymbols(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                        emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 232 * playerSpins[address(msg.sender)].field_0 / 100, playerSpins[address(msg.sender)].field_0, 15, 1);
                                                                        require 232 * playerSpins[address(msg.sender)].field_0 / 100 <= contractBalance
                                                                        contractBalance -= 232 * playerSpins[address(msg.sender)].field_0 / 100
                                                                        require ext_code.size(stor7)
                                                                        call stor7.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 232 * playerSpins[address(msg.sender)].field_0 / 100
                                                                else:
                                                                    if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 323910:
                                                                        if not playerSpins[address(msg.sender)].field_0:
                                                                            emit TwoEtherIcons(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 16, 1);
                                                                            require 0 <= contractBalance
                                                                            require ext_code.size(stor7)
                                                                            call stor7.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0
                                                                        else:
                                                                            require 375 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 375
                                                                            emit TwoEtherIcons(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                            emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 375 * playerSpins[address(msg.sender)].field_0 / 100, playerSpins[address(msg.sender)].field_0, 16, 1);
                                                                            require 375 * playerSpins[address(msg.sender)].field_0 / 100 <= contractBalance
                                                                            contractBalance -= 375 * playerSpins[address(msg.sender)].field_0 / 100
                                                                            require ext_code.size(stor7)
                                                                            call stor7.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 375 * playerSpins[address(msg.sender)].field_0 / 100
                                                                    else:
                                                                        if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 < 374831:
                                                                            if not playerSpins[address(msg.sender)].field_0:
                                                                                emit TwoPurplePyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 17, 1);
                                                                                require 0 <= contractBalance
                                                                                require ext_code.size(stor7)
                                                                                call stor7.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0
                                                                            else:
                                                                                require 35 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 35
                                                                                emit TwoPurplePyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                                emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 35 * playerSpins[address(msg.sender)].field_0 / 10, playerSpins[address(msg.sender)].field_0, 17, 1);
                                                                                require 35 * playerSpins[address(msg.sender)].field_0 / 10 <= contractBalance
                                                                                contractBalance -= 35 * playerSpins[address(msg.sender)].field_0 / 10
                                                                                require ext_code.size(stor7)
                                                                                call stor7.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 35 * playerSpins[address(msg.sender)].field_0 / 10
                                                                        else:
                                                                            if (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1 >= 425752:
                                                                                if not playerSpins[address(msg.sender)].field_0:
                                                                                    emit TwoRockets(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 19, 1);
                                                                                    require 0 <= contractBalance
                                                                                    require ext_code.size(stor7)
                                                                                    call stor7.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0
                                                                                else:
                                                                                    require 2 * Mask(200, 0, playerSpins[address(msg.sender)].field_0) / playerSpins[address(msg.sender)].field_0 == 2
                                                                                    emit TwoRockets(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, playerSpins[address(msg.sender)].field_0, playerSpins[address(msg.sender)].field_0, 19, 1);
                                                                                    require 2 * Mask(200, 0, playerSpins[address(msg.sender)].field_0) <= contractBalance
                                                                                    contractBalance -= 2 * Mask(200, 0, playerSpins[address(msg.sender)].field_0)
                                                                                    require ext_code.size(stor7)
                                                                                    call stor7.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 2 * Mask(200, 0, playerSpins[address(msg.sender)].field_0)
                                                                            else:
                                                                                if not playerSpins[address(msg.sender)].field_0:
                                                                                    emit TwoGoldPyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 0, playerSpins[address(msg.sender)].field_0, 18, 1);
                                                                                    require 0 <= contractBalance
                                                                                    require ext_code.size(stor7)
                                                                                    call stor7.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0
                                                                                else:
                                                                                    require 225 * playerSpins[address(msg.sender)].field_0 / playerSpins[address(msg.sender)].field_0 == 225
                                                                                    emit TwoGoldPyramids(msg.sender, playerSpins[address(msg.sender)].field_200);
                                                                                    emit LogResult(msg.sender, (sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1, 225 * playerSpins[address(msg.sender)].field_0 / 100, playerSpins[address(msg.sender)].field_0, 18, 1);
                                                                                    require 225 * playerSpins[address(msg.sender)].field_0 / 100 <= contractBalance
                                                                                    contractBalance -= 225 * playerSpins[address(msg.sender)].field_0 / 100
                                                                                    require ext_code.size(stor7)
                                                                                    call stor7.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 225 * playerSpins[address(msg.sender)].field_0 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    playerSpins[address(msg.sender)].field_0 = 0
    emit SpinConcluded(msg.sender, playerSpins[address(msg.sender)].field_200);
    return ((sha3(this.address, block.hash(playerSpins[address(msg.sender)].field_200), msg.sender) % 10^6) + 1)
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    if stor1 == arg1:
        require arg2 + contractBalance >= contractBalance
        contractBalance += arg2
    else:
        require uint8(stor5.field_0)
        require 10^18 <= arg2
        require msg.sender == address(stor5.field_8)
        if not arg2:
            if contractBalance / 10:
                require 9 * contractBalance / 10 / contractBalance / 10 == 9
                require 0 <= 9 * contractBalance / 10
        else:
            require 500 * arg2 / arg2 == 500
            if not contractBalance / 10:
                require 500 * arg2 <= 0
            else:
                require 9 * contractBalance / 10 / contractBalance / 10 == 9
                require 500 * arg2 <= 9 * contractBalance / 10
        require 0xffffffffffffffffffffffffffffffffffffffffffffffffff > arg2
        require block.number < test266151307()
        require playerSpins[address(arg1)].field_200 != block.number
        if not playerSpins[address(arg1)].field_200:
            playerSpins[address(arg1)].field_0 = 0
            playerSpins[address(arg1)].field_56 = Mask(144, 0, arg2)
            playerSpins[address(arg1)].field_200 = block.number % 72057594037927936
        else:
            require 0 < playerSpins[address(arg1)].field_0
            require playerSpins[address(arg1)].field_200 != block.number
            if block.number - playerSpins[address(arg1)].field_200 > 255:
                require playerSpins[address(arg1)].field_0 + contractBalance >= contractBalance
                contractBalance += playerSpins[address(arg1)].field_0
                emit Loss(address(arg1), playerSpins[address(arg1)].field_200);
                emit LogResult(address(arg1), 10^6, 0, playerSpins[address(arg1)].field_0, 0, 0);
                playerSpins[address(arg1)].field_0 = 0
                emit SpinConcluded(address(arg1), playerSpins[address(arg1)].field_200);
                playerSpins[address(arg1)].field_0 = 0
                playerSpins[address(arg1)].field_56 = Mask(144, 0, arg2)
                playerSpins[address(arg1)].field_200 = block.number % 72057594037927936
            else:
                if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 > 476662:
                    require playerSpins[address(arg1)].field_0 + contractBalance >= contractBalance
                    contractBalance += playerSpins[address(arg1)].field_0
                    emit Loss(address(arg1), playerSpins[address(arg1)].field_200);
                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 0, 0);
                else:
                    if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 2:
                        if not playerSpins[address(arg1)].field_0:
                            emit ThreeMoonJackpot(address(arg1), playerSpins[address(arg1)].field_200);
                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 1, 1);
                            require 0 <= contractBalance
                            require ext_code.size(stor7)
                            call stor7.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                        else:
                            require 500 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 500
                            emit ThreeMoonJackpot(address(arg1), playerSpins[address(arg1)].field_200);
                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 500 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 1, 1);
                            require 500 * playerSpins[address(arg1)].field_0 <= contractBalance
                            contractBalance += -500 * playerSpins[address(arg1)].field_0
                            require ext_code.size(stor7)
                            call stor7.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 500 * playerSpins[address(arg1)].field_0
                    else:
                        if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 299:
                            if not playerSpins[address(arg1)].field_0:
                                emit TwoMoonPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 2, 1);
                                require 0 <= contractBalance
                                require ext_code.size(stor7)
                                call stor7.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                            else:
                                require 232 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 232
                                emit TwoMoonPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 232 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 2, 1);
                                require 232 * playerSpins[address(arg1)].field_0 <= contractBalance
                                contractBalance += -232 * playerSpins[address(arg1)].field_0
                                require ext_code.size(stor7)
                                call stor7.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 232 * playerSpins[address(arg1)].field_0
                        else:
                            if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 3128:
                                if not playerSpins[address(arg1)].field_0:
                                    emit ZTHPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 3, 1);
                                    require 0 <= contractBalance
                                    require ext_code.size(stor7)
                                    call stor7.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                else:
                                    require 232 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 232
                                    emit ZTHPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 232 * playerSpins[address(arg1)].field_0 / 10, playerSpins[address(arg1)].field_0, 3, 1);
                                    require 232 * playerSpins[address(arg1)].field_0 / 10 <= contractBalance
                                    contractBalance -= 232 * playerSpins[address(arg1)].field_0 / 10
                                    require ext_code.size(stor7)
                                    call stor7.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), 232 * playerSpins[address(arg1)].field_0 / 10
                            else:
                                if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 5957:
                                    if not playerSpins[address(arg1)].field_0:
                                        emit ThreeZSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 4, 1);
                                        require 0 <= contractBalance
                                        require ext_code.size(stor7)
                                        call stor7.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                    else:
                                        require 25 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 25
                                        emit ThreeZSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 25 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 4, 1);
                                        require 25 * playerSpins[address(arg1)].field_0 <= contractBalance
                                        contractBalance += -25 * playerSpins[address(arg1)].field_0
                                        require ext_code.size(stor7)
                                        call stor7.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), 25 * playerSpins[address(arg1)].field_0
                                else:
                                    if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 8786:
                                        if not playerSpins[address(arg1)].field_0:
                                            emit ThreeTSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 5, 1);
                                            require 0 <= contractBalance
                                            require ext_code.size(stor7)
                                            call stor7.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                        else:
                                            require 25 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 25
                                            emit ThreeTSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 25 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 5, 1);
                                            require 25 * playerSpins[address(arg1)].field_0 <= contractBalance
                                            contractBalance += -25 * playerSpins[address(arg1)].field_0
                                            require ext_code.size(stor7)
                                            call stor7.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), 25 * playerSpins[address(arg1)].field_0
                                    else:
                                        if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 11615:
                                            if not playerSpins[address(arg1)].field_0:
                                                emit ThreeHSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 6, 1);
                                                require 0 <= contractBalance
                                                require ext_code.size(stor7)
                                                call stor7.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0
                                            else:
                                                require 25 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 25
                                                emit ThreeHSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 25 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 6, 1);
                                                require 25 * playerSpins[address(arg1)].field_0 <= contractBalance
                                                contractBalance += -25 * playerSpins[address(arg1)].field_0
                                                require ext_code.size(stor7)
                                                call stor7.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 25 * playerSpins[address(arg1)].field_0
                                        else:
                                            if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 14444:
                                                if not playerSpins[address(arg1)].field_0:
                                                    emit ThreeEtherIcons(address(arg1), playerSpins[address(arg1)].field_200);
                                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 7, 1);
                                                    require 0 <= contractBalance
                                                    require ext_code.size(stor7)
                                                    call stor7.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), 0
                                                else:
                                                    require 50 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 50
                                                    emit ThreeEtherIcons(address(arg1), playerSpins[address(arg1)].field_200);
                                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 50 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 7, 1);
                                                    require 50 * playerSpins[address(arg1)].field_0 <= contractBalance
                                                    contractBalance += -50 * playerSpins[address(arg1)].field_0
                                                    require ext_code.size(stor7)
                                                    call stor7.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), 50 * playerSpins[address(arg1)].field_0
                                            else:
                                                if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 17273:
                                                    if not playerSpins[address(arg1)].field_0:
                                                        emit ThreePurplePyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 8, 1);
                                                        require 0 <= contractBalance
                                                        require ext_code.size(stor7)
                                                        call stor7.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(arg1), 0
                                                    else:
                                                        require 40 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 40
                                                        emit ThreePurplePyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 40 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 8, 1);
                                                        require 40 * playerSpins[address(arg1)].field_0 <= contractBalance
                                                        contractBalance += -40 * playerSpins[address(arg1)].field_0
                                                        require ext_code.size(stor7)
                                                        call stor7.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(arg1), 40 * playerSpins[address(arg1)].field_0
                                                else:
                                                    if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 20102:
                                                        if not playerSpins[address(arg1)].field_0:
                                                            emit ThreeGoldPyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 9, 1);
                                                            require 0 <= contractBalance
                                                            require ext_code.size(stor7)
                                                            call stor7.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), 0
                                                        else:
                                                            require 20 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 20
                                                            emit ThreeGoldPyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 20 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 9, 1);
                                                            require 20 * playerSpins[address(arg1)].field_0 <= contractBalance
                                                            contractBalance += -20 * playerSpins[address(arg1)].field_0
                                                            require ext_code.size(stor7)
                                                            call stor7.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), 20 * playerSpins[address(arg1)].field_0
                                                    else:
                                                        if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 22930:
                                                            if not playerSpins[address(arg1)].field_0:
                                                                emit ThreeRockets(address(arg1), playerSpins[address(arg1)].field_200);
                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 10, 1);
                                                                require 0 <= contractBalance
                                                                require ext_code.size(stor7)
                                                                call stor7.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), 0
                                                            else:
                                                                require 20 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 20
                                                                emit ThreeRockets(address(arg1), playerSpins[address(arg1)].field_200);
                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 20 * playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 10, 1);
                                                                require 20 * playerSpins[address(arg1)].field_0 <= contractBalance
                                                                contractBalance += -20 * playerSpins[address(arg1)].field_0
                                                                require ext_code.size(stor7)
                                                                call stor7.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), 20 * playerSpins[address(arg1)].field_0
                                                        else:
                                                            if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 52333:
                                                                if not playerSpins[address(arg1)].field_0:
                                                                    emit OneMoonPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 11, 1);
                                                                    require 0 <= contractBalance
                                                                    require ext_code.size(stor7)
                                                                    call stor7.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), 0
                                                                else:
                                                                    require 125 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 125
                                                                    emit OneMoonPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 125 * playerSpins[address(arg1)].field_0 / 10, playerSpins[address(arg1)].field_0, 11, 1);
                                                                    require 125 * playerSpins[address(arg1)].field_0 / 10 <= contractBalance
                                                                    contractBalance -= 125 * playerSpins[address(arg1)].field_0 / 10
                                                                    require ext_code.size(stor7)
                                                                    call stor7.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), 125 * playerSpins[address(arg1)].field_0 / 10
                                                            else:
                                                                if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 120226:
                                                                    if not playerSpins[address(arg1)].field_0:
                                                                        emit OneOfEachPyramidPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 12, 1);
                                                                        require 0 <= contractBalance
                                                                        require ext_code.size(stor7)
                                                                        call stor7.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), 0
                                                                    else:
                                                                        require 15 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 15
                                                                        emit OneOfEachPyramidPrize(address(arg1), playerSpins[address(arg1)].field_200);
                                                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 15 * playerSpins[address(arg1)].field_0 / 10, playerSpins[address(arg1)].field_0, 12, 1);
                                                                        require 15 * playerSpins[address(arg1)].field_0 / 10 <= contractBalance
                                                                        contractBalance -= 15 * playerSpins[address(arg1)].field_0 / 10
                                                                        require ext_code.size(stor7)
                                                                        call stor7.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), 15 * playerSpins[address(arg1)].field_0 / 10
                                                                else:
                                                                    if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 171147:
                                                                        if not playerSpins[address(arg1)].field_0:
                                                                            emit TwoZSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 13, 1);
                                                                            require 0 <= contractBalance
                                                                            require ext_code.size(stor7)
                                                                            call stor7.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args address(arg1), 0
                                                                        else:
                                                                            require 232 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 232
                                                                            emit TwoZSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 232 * playerSpins[address(arg1)].field_0 / 100, playerSpins[address(arg1)].field_0, 13, 1);
                                                                            require 232 * playerSpins[address(arg1)].field_0 / 100 <= contractBalance
                                                                            contractBalance -= 232 * playerSpins[address(arg1)].field_0 / 100
                                                                            require ext_code.size(stor7)
                                                                            call stor7.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args address(arg1), 232 * playerSpins[address(arg1)].field_0 / 100
                                                                    else:
                                                                        if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 222068:
                                                                            if not playerSpins[address(arg1)].field_0:
                                                                                emit TwoTSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 14, 1);
                                                                                require 0 <= contractBalance
                                                                                require ext_code.size(stor7)
                                                                                call stor7.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args address(arg1), 0
                                                                            else:
                                                                                require 232 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 232
                                                                                emit TwoTSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 232 * playerSpins[address(arg1)].field_0 / 100, playerSpins[address(arg1)].field_0, 14, 1);
                                                                                require 232 * playerSpins[address(arg1)].field_0 / 100 <= contractBalance
                                                                                contractBalance -= 232 * playerSpins[address(arg1)].field_0 / 100
                                                                                require ext_code.size(stor7)
                                                                                call stor7.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args address(arg1), 232 * playerSpins[address(arg1)].field_0 / 100
                                                                        else:
                                                                            if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 272989:
                                                                                if not playerSpins[address(arg1)].field_0:
                                                                                    emit TwoHSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 15, 1);
                                                                                    require 0 <= contractBalance
                                                                                    require ext_code.size(stor7)
                                                                                    call stor7.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args address(arg1), 0
                                                                                else:
                                                                                    require 232 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 232
                                                                                    emit TwoHSymbols(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                    emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 232 * playerSpins[address(arg1)].field_0 / 100, playerSpins[address(arg1)].field_0, 15, 1);
                                                                                    require 232 * playerSpins[address(arg1)].field_0 / 100 <= contractBalance
                                                                                    contractBalance -= 232 * playerSpins[address(arg1)].field_0 / 100
                                                                                    require ext_code.size(stor7)
                                                                                    call stor7.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args address(arg1), 232 * playerSpins[address(arg1)].field_0 / 100
                                                                            else:
                                                                                if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 323910:
                                                                                    if not playerSpins[address(arg1)].field_0:
                                                                                        emit TwoEtherIcons(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 16, 1);
                                                                                        require 0 <= contractBalance
                                                                                        require ext_code.size(stor7)
                                                                                        call stor7.0xa9059cbb with:
                                                                                             gas gas_remaining wei
                                                                                            args address(arg1), 0
                                                                                    else:
                                                                                        require 375 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 375
                                                                                        emit TwoEtherIcons(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                        emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 375 * playerSpins[address(arg1)].field_0 / 100, playerSpins[address(arg1)].field_0, 16, 1);
                                                                                        require 375 * playerSpins[address(arg1)].field_0 / 100 <= contractBalance
                                                                                        contractBalance -= 375 * playerSpins[address(arg1)].field_0 / 100
                                                                                        require ext_code.size(stor7)
                                                                                        call stor7.0xa9059cbb with:
                                                                                             gas gas_remaining wei
                                                                                            args address(arg1), 375 * playerSpins[address(arg1)].field_0 / 100
                                                                                else:
                                                                                    if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 < 374831:
                                                                                        if not playerSpins[address(arg1)].field_0:
                                                                                            emit TwoPurplePyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 17, 1);
                                                                                            require 0 <= contractBalance
                                                                                            require ext_code.size(stor7)
                                                                                            call stor7.0xa9059cbb with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg1), 0
                                                                                        else:
                                                                                            require 35 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 35
                                                                                            emit TwoPurplePyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                            emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 35 * playerSpins[address(arg1)].field_0 / 10, playerSpins[address(arg1)].field_0, 17, 1);
                                                                                            require 35 * playerSpins[address(arg1)].field_0 / 10 <= contractBalance
                                                                                            contractBalance -= 35 * playerSpins[address(arg1)].field_0 / 10
                                                                                            require ext_code.size(stor7)
                                                                                            call stor7.0xa9059cbb with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg1), 35 * playerSpins[address(arg1)].field_0 / 10
                                                                                    else:
                                                                                        if (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1 >= 425752:
                                                                                            if not playerSpins[address(arg1)].field_0:
                                                                                                emit TwoRockets(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 19, 1);
                                                                                                require 0 <= contractBalance
                                                                                                require ext_code.size(stor7)
                                                                                                call stor7.0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args address(arg1), 0
                                                                                            else:
                                                                                                require 2 * Mask(200, 0, playerSpins[address(arg1)].field_0) / playerSpins[address(arg1)].field_0 == 2
                                                                                                emit TwoRockets(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, playerSpins[address(arg1)].field_0, playerSpins[address(arg1)].field_0, 19, 1);
                                                                                                require 2 * Mask(200, 0, playerSpins[address(arg1)].field_0) <= contractBalance
                                                                                                contractBalance -= 2 * Mask(200, 0, playerSpins[address(arg1)].field_0)
                                                                                                require ext_code.size(stor7)
                                                                                                call stor7.0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args address(arg1), 2 * Mask(200, 0, playerSpins[address(arg1)].field_0)
                                                                                        else:
                                                                                            if not playerSpins[address(arg1)].field_0:
                                                                                                emit TwoGoldPyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 0, playerSpins[address(arg1)].field_0, 18, 1);
                                                                                                require 0 <= contractBalance
                                                                                                require ext_code.size(stor7)
                                                                                                call stor7.0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args address(arg1), 0
                                                                                            else:
                                                                                                require 225 * playerSpins[address(arg1)].field_0 / playerSpins[address(arg1)].field_0 == 225
                                                                                                emit TwoGoldPyramids(address(arg1), playerSpins[address(arg1)].field_200);
                                                                                                emit LogResult(address(arg1), (sha3(this.address, block.hash(playerSpins[address(arg1)].field_200), arg1) % 10^6) + 1, 225 * playerSpins[address(arg1)].field_0 / 100, playerSpins[address(arg1)].field_0, 18, 1);
                                                                                                require 225 * playerSpins[address(arg1)].field_0 / 100 <= contractBalance
                                                                                                contractBalance -= 225 * playerSpins[address(arg1)].field_0 / 100
                                                                                                require ext_code.size(stor7)
                                                                                                call stor7.0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args address(arg1), 225 * playerSpins[address(arg1)].field_0 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                playerSpins[address(arg1)].field_0 = 0
                emit SpinConcluded(address(arg1), playerSpins[address(arg1)].field_200);
                playerSpins[uint64(arg1) << 96].field_0 = 0
                playerSpins[uint64(arg1) << 96].field_56 = Mask(144, 0, arg2)
                playerSpins[uint64(arg1) << 96].field_200 = block.number % 72057594037927936
        totalSpins++
        totalZTHWagered += arg2
        emit TokensWagered(address(arg1), arg2);
    return 1
}



}
