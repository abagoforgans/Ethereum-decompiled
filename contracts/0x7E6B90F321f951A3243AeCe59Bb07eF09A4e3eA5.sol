contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 42
    return code.data[45 len 732]
}



// =====================  Runtime code  =====================


uint256 playCount;
address owner;
mapping of uint256 players;
array of address customers;
uint256 stor4;
uint256 stor5;
uint256 stor6;
bool stor7;
uint256 stor7; offset 1
uint256 stor7;
uint256 stor8;

function owner() payable {
    return owner
}

function playCount() payable {
    return playCount
}

function customers(uint256 arg1) payable {
    require arg1 < customers.length
    return address(customers[arg1])
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
    return stor4, stor5, stor6, uint256(stor7.field_0), stor8
}

function play(address arg1, uint256 arg2) payable {
    playCount++
    emit Sent(owner, address(arg1), playCount + 1);
    players[0] += arg2
    stor4 = msg.value
    stor5 = gas_remaining
    stor6 = 0x68d0d86df8dca7abdad4da5986f7e33fa7637ee85775a64ae965e10e3841923e
    bool(stor7.field_0) = bool(sha3(gas_remaining))
    uint255(stor7.field_1) = 0
    uint256(stor7.field_0) = sha3(gas_remaining) % 3
    require playCount < customers.length
    uint256(customers[stor0]) = arg1 or Mask(96, 160, uint256(customers[stor0]))
    return msg.value
}



}
