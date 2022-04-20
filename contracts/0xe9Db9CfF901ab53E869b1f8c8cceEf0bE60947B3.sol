contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint8 stor517;
uint256 stor518;
uint8 stor519;
uint256 stor520;
uint256 stor521;

function _fallback() payable {
    stor0 = 5 * 10^15
    stor1 = msg.sender
    stor2 = 1
    stor520 = stor0
    stor4 = 0
    stor517 = 0
    stor518 = 0
    stor519 = 0
    stor521 = stor0
    return code.data[199 len 4815]
}



// =====================  Runtime code  =====================


#
#  - claimTile(uint256 arg1, uint256 arg2, uint256 arg3)
#
const NUM_TILES = 256


uint256 DEFAULT_GAME_COST;
address stor1;
uint256 currentGameNumber;
uint256 currentGameBalance;
uint256 numTilesClaimed;
uint8 gameStopped;
uint256 gameEarnings;
uint8 willChangeCost;
uint256 currentGameCost;
uint256 nextGameCost;
mapping of uint256 pendingWithdrawals;
mapping of address gameToWinner;

function gameStopped() {
    return bool(gameStopped)
}

function numTilesClaimed() {
    return numTilesClaimed
}

function currentGameBalance() {
    return currentGameBalance
}

function DEFAULT_GAME_COST() {
    return DEFAULT_GAME_COST
}

function willChangeCost() {
    return bool(willChangeCost)
}

function currentGameNumber() {
    return currentGameNumber
}

function currentGameCost() {
    return currentGameCost
}

function gameEarnings() {
    return gameEarnings
}

function gameToWinner(uint256 arg1) {
    return gameToWinner[arg1]
}

function nextGameCost() {
    return nextGameCost
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function getLeftCoordinate(bytes1 arg1) {
    return (Mask(4, 252, arg1) >> 252)
}

function getRightCoordinate(bytes1 arg1) {
    return (Mask(4, 248, arg1) >> 248)
}

function updateGameCost(uint256 arg1) {
    require msg.sender == stor1
    nextGameCost = arg1
    willChangeCost = 1
    return 0
}

function tiles(uint256 arg1, uint256 arg2) {
    require arg1 < 16
    require arg2 < 16
    return uint256(stor[(2 * arg2) + (32 * arg1) + 5].field_0), address(stor[(2 * arg2) + (32 * arg1) + 6].field_0)
}

function claimOwnersEarnings() {
    require msg.sender == stor1
    if gameEarnings:
        call stor1 with:
           value gameEarnings wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            gameEarnings = 0
}

function claimWinnings() {
    if pendingWithdrawals[address(msg.sender)]:
        call msg.sender with:
           value pendingWithdrawals[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit FailedToClaim(msg.sender, pendingWithdrawals[address(msg.sender)]);
        else:
            emit WinningsClaimed(msg.sender, pendingWithdrawals[address(msg.sender)]);
            pendingWithdrawals[address(msg.sender)] = 0
}

function cancelContract() {
    require msg.sender == stor1
    gameStopped = 1
    mem[64] = 160
    s = 0
    idx = 0
    s = 96
    while idx < 16:
        t = 0
        u = s
        while t < 16:
            require idx < 16
            require t < 16
            _38 = mem[64]
            mem[64] = mem[64] + 64
            mem[_38] = uint256(stor[(2 * t) + (32 * idx) + 5].field_0)
            mem[_38 + 32] = address(stor[(2 * t) + (32 * idx) + 6].field_0)
            if uint256(stor[(2 * t) + (32 * idx) + 5].field_0) == currentGameNumber:
                call address(stor[(2 * t) + (32 * idx) + 6].field_0) with:
                   value currentGameCost wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    _45 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_45] = 0
                    mem[_45 + 32] = 0
                    require idx < 16
                    require t < 16
                    uint256(stor[(2 * t) + (32 * idx) + 5].field_0) = 0
                    address(stor[(2 * t) + (32 * idx) + 6].field_0) = 0
                    stor[(2 * t) + (32 * idx) + 6].field_256 % 1 = 0
            t = t + 1
            u = _38
            continue 
        s = t
        idx = idx + 1
        s = u
        continue 
    idx = 1
    s = 0
    s = 0
    while idx <= currentGameNumber:
        mem[0] = gameToWinner[idx]
        mem[32] = 522
        if pendingWithdrawals[stor523[idx]]:
            call gameToWinner[idx] with:
               value pendingWithdrawals[stor523[idx]] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                mem[0] = gameToWinner[idx]
                mem[32] = 522
                pendingWithdrawals[stor523[idx]] = 0
        idx = idx + 1
        s = pendingWithdrawals[stor523[idx]]
        s = gameToWinner[idx]
        continue 
    return 0
}



}
