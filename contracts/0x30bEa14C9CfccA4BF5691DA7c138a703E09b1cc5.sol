contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 300
    return code.data[39 len 1688]
}



// =====================  Runtime code  =====================


uint256 registerDuration;
uint256 endRegisterTime;
uint256 gameNumber;
uint256 numPlayers;
mapping of address players;
mapping of uint8 stor5;

function endRegisterTime() {
    return endRegisterTime
}

function registerDuration() {
    return registerDuration
}

function registered(uint256 arg1, address arg2) {
    return bool(stor5[arg1][arg2])
}

function numPlayers() {
    return numPlayers
}

function players(uint256 arg1, uint256 arg2) {
    return players[arg1][arg2]
}

function gameNumber() {
    return gameNumber
}

function _fallback() payable {
    if not endRegisterTime:
        endRegisterTime = block.timestamp + registerDuration
        require msg.value
        emit StartedGame(address(msg.sender), endRegisterTime, msg.value, gameNumber);
    else:
        if block.timestamp <= endRegisterTime:
            require not stor5[stor2][address(msg.sender)]
            stor5[stor2][address(msg.sender)] = 1
            players[stor2][stor3] = msg.sender
            numPlayers++
            emit RegisteredPlayer(msg.sender, gameNumber);
        else:
            if numPlayers <= 0:
                require not stor5[stor2][address(msg.sender)]
                stor5[stor2][address(msg.sender)] = 1
                players[stor2][stor3] = msg.sender
                numPlayers++
                emit RegisteredPlayer(msg.sender, gameNumber);
            else:
                require numPlayers
                emit FoundWinner(players[stor2][block.hash(block.number - 1) % stor3], gameNumber);
                endRegisterTime = 0
                numPlayers = 0
                gameNumber++
                call players[stor2][block.hash(block.number - 1) % stor3] with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
}



}
