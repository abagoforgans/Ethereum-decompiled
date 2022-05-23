contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3; offset 1
uint256 tokensInPlay;
uint256 contractBalance;
address currentWinnerAddress;
uint256 gameStarted;
uint256 gameEnds;
uint8 stor8;
address stor8; offset 8
address stor9;
address stor10;
mapping of uint8 stor11;
mapping of uint256 stor12;

function gameStarted() {
    return gameStarted
}

function balanceOf() {
    return contractBalance
}

function contractBalance() {
    return contractBalance
}

function gameEnds() {
    return gameEnds
}

function currentWinner() {
    return currentWinnerAddress
}

function tokensInPlay() {
    return tokensInPlay
}

function gameActive() {
    return bool(uint8(stor8.field_0))
}

function _fallback() payable {
  stop
}

function pauseGame() {
    require msg.sender == stor0
    uint8(stor8.field_0) = 0
}

function resumeGame() {
    require msg.sender == stor0
    uint8(stor8.field_0) = 1
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function changeBankroll(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function addTokenTime(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    stor11[arg1] = 1
    stor12[arg1] = arg2
}

function removeTokenTime(uint256 arg1) {
    require msg.sender == stor0
    stor11[arg1] = 0
    stor12[arg1] = 5568 * 24 * 3600
}

function retrieveHouseTake() {
    if stor0 != msg.sender:
        require msg.sender == stor1
    stor2 = 0
    require stor2 <= contractBalance
    contractBalance -= stor2
    require ext_code.size(stor10)
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit HouseRetrievedTake(block.timestamp, stor2);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require uint8(stor8.field_0)
    require msg.sender == address(stor8.field_8)
    require stor11[arg2]
    if block.timestamp > gameEnds:
        uint8(stor8.field_0) = 0
        require stor3 <= contractBalance
        contractBalance -= stor3
        if 0 < tokensInPlay:
            require ext_code.size(stor10)
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args currentWinnerAddress, stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) > 0:
                call stor9 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit GameEnded(currentWinnerAddress, 2 * Mask(256, -1, stor3), block.timestamp);
        require stor3 <= tokensInPlay
        tokensInPlay -= stor3
        uint8(stor8.field_0) = 1
    require stor12[arg2] + block.timestamp >= block.timestamp
    gameStarted = block.timestamp
    gameEnds = stor12[arg2] + block.timestamp
    currentWinnerAddress = arg1
    require arg2 + contractBalance >= contractBalance
    contractBalance += arg2
    require arg2 / 100 <= arg2
    require (arg2 / 100) + stor2 >= stor2
    stor2 += arg2 / 100
    require arg2 - (arg2 / 100) + tokensInPlay >= tokensInPlay
    tokensInPlay = arg2 - (arg2 / 100) + tokensInPlay
    emit TokensWagered(address(arg1), arg2, stor12[arg2] + block.timestamp);
    return 1
}



}
