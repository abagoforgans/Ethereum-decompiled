contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 currentPlayers;
array of address players;
mapping of uint8 stor3;

function enabled() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function playersMap(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function currentPlayers() {
    return currentPlayers
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return address(players[arg1])
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function withdrawPool() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require msg.sender
    require msg.value == 5 * 10^16
    require bool(stor3[msg.sender]) != 1
    require 50 > currentPlayers
    players.length++
    uint256(players[players.length]) = msg.sender or Mask(96, 160, uint256(players[players.length]))
    stor3[msg.sender] = 1
    currentPlayers++
    emit NewPlayer(msg.sender);
}

function registerPlayer() payable {
    require uint8(stor0.field_160)
    require msg.sender
    require msg.value == 5 * 10^16
    require bool(stor3[msg.sender]) != 1
    require 50 > currentPlayers
    players.length++
    uint256(players[players.length]) = msg.sender or Mask(96, 160, uint256(players[players.length]))
    stor3[msg.sender] = 1
    currentPlayers++
    emit NewPlayer(msg.sender);
}



}
