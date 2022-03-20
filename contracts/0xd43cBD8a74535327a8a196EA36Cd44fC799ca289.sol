contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[42 len 320]
}



// =====================  Runtime code  =====================


address stor1;
mapping of uint256 players;

function players(address arg1) payable {
    return players[arg1]
}

function terminate() payable {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function terminateAlt() payable {
    require stor1 == msg.sender
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function play(address arg1, uint256 arg2) payable {
    emit Sent(stor1, address(arg1), 1);
    players[address(arg1)] += arg2
    return 1
}

function play2(address arg1, uint256 arg2) payable {
    emit Sent(stor1, address(arg1), 1);
    players[address(arg1)] += arg2
    return 1
}

function play1(address arg1, uint256 arg2) payable {
    emit Sent(stor1, address(arg1), 1);
    players[address(arg1)] += arg2
    return 1
}

function play4(address arg1, uint256 arg2) payable {
    emit Sent(stor1, address(arg1), 1);
    players[address(arg1)] += arg2
    return 1
}



}
