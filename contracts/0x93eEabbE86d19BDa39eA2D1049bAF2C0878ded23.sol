contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 10^16
    stor2 = 2 * 10^18
    stor0 = msg.sender
    return code.data[110 len 4013]
}



// =====================  Runtime code  =====================


address owner;
uint256 minBet;
uint256 maxBet;
mapping of struct gameState;

function maxBet() {
    return maxBet
}

function getGameChance() {
    require gameState[address(msg.sender)].field_520 <= 2
    require gameState[address(msg.sender)].field_0
    return gameState[address(msg.sender)].field_512
}

function games(address arg1) {
    require gameState[arg1].field_520 <= 2
    return gameState[arg1].field_0, 
           gameState[arg1].field_256,
           gameState[arg1].field_512,
           gameState[arg1].field_512,
           gameState[arg1].field_528
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function getGameState() {
    require gameState[address(msg.sender)].field_520 <= 2
    require gameState[address(msg.sender)].field_0
    require gameState[address(msg.sender)].field_520 <= 2
    return gameState[address(msg.sender)].field_512
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function roll(uint8 arg1) payable {
    require gameState[address(msg.sender)].field_520 <= 2
    if gameState[address(msg.sender)].field_0:
        require gameState[address(msg.sender)].field_520 <= 2
        require gameState[address(msg.sender)].field_520
    require msg.value >= minBet
    require msg.value <= maxBet
    require gameState[address(msg.sender)].field_520 <= 2
    if gameState[address(msg.sender)].field_0:
        require gameState[address(msg.sender)].field_520 <= 2
        require gameState[address(msg.sender)].field_520
    gameState[address(msg.sender)].field_0 = msg.sender
    gameState[address(msg.sender)].field_256 = msg.value
    gameState[address(msg.sender)].field_512 = arg1
    gameState[address(msg.sender)].field_520 = 0
    gameState[address(msg.sender)].field_768 = 0
    gameState[address(msg.sender)].field_528 = 3
    require gameState[address(msg.sender)].field_512
    emit log256(block.timestamp);
    emit log256((100 * msg.value / gameState[address(msg.sender)].field_512));
    emit log256(((100 * msg.value / gameState[address(msg.sender)].field_512) - msg.value));
    emit log256(msg.value);
    emit log8(arg1);
    if uint8(sha3(block.hash(block.number), msg.sender, block.timestamp) % 10000) > uint8(100 * arg1):
        emit log8(0);
        gameState[address(msg.sender)].field_520 = 2
    else:
        emit log8(1);
        gameState[address(msg.sender)].field_520 = 1
        call msg.sender with:
           value 100 * msg.value / gameState[address(msg.sender)].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit logStr(Array(len=18, data='Money is not send.'));
}



}
