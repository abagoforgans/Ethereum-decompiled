contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 42
    return code.data[45 len 539]
}



// =====================  Runtime code  =====================


uint256 playCount;
address owner;
mapping of uint256 players;
uint256 stor3;
uint256 stor4;
uint256 stor5;
bool stor6;
uint256 stor6; offset 1
uint256 stor6;
uint256 stor7;

function owner() payable {
    return owner
}

function playCount() payable {
    return playCount
}

function players(address arg1) payable {
    return players[arg1]
}

function terminate() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function terminateAlt() payable {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function aggregate() payable {
    return stor3, stor4, stor5, uint256(stor6.field_0), stor7
}

function play(address arg1, uint256 arg2) payable {
    playCount++
    emit Sent(owner, address(arg1), playCount + 1);
    players[0] += arg2
    stor3 = msg.value
    stor4 = gas_remaining
    stor5 = 0x68d0d86df8dca7abdad4da5986f7e33fa7637ee85775a64ae965e10e3841923e
    bool(stor6.field_0) = bool(sha3(gas_remaining))
    uint255(stor6.field_1) = 0
    uint256(stor6.field_0) = sha3(gas_remaining) % 3
    return msg.value
}



}
