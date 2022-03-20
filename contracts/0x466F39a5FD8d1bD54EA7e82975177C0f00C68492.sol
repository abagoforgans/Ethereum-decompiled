contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 42
    return code.data[45 len 391]
}



// =====================  Runtime code  =====================


uint256 playCount;
address owner;
mapping of uint256 players;
uint256 stor3;
uint256 stor4;

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
    return stor3, stor4
}

function play(address arg1, uint256 arg2) payable {
    playCount++
    emit Sent(owner, address(arg1), playCount + 1);
    players[address(arg1)] += arg2
    stor3 = msg.value
    stor4 = gas_remaining
    return msg.value
}



}
