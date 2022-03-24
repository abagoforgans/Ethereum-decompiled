contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of uint256 stor14;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor1 = 1
    stor2 = 4
    stor3 = 5
    stor4 = 16
    stor5 = 24900
    stor6 = 10^17
    stor7 = 10^17
    stor8 = 15000
    stor17 = 6 * 3600
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor14.length = 16
    if not stor14.length <= 16:
        idx = 16
        while stor14.length > idx:
            stor14[idx] = 0
            idx = idx + 1
            continue 
    stor18 = block.timestamp + stor17
    emit GameStart(stor2, stor1);
    return code.data[219 len 3171]
}



// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, uint256 arg2)
#
address owner;
uint256 gameId;
uint256 size;
uint256 nextsize;
uint256 empty;
uint256 benefitMicros;
uint256 price;
uint256 startPrice;
uint256 priceIncrease;
uint256 win;
mapping of uint256 pendingPayouts;
uint256 totalPayouts;
mapping of uint256 balanceOf;
uint256 totalSupply;
array of address theGrid;
array of address players;
address lastPlayerAddress;
uint256 timeout;
uint256 timeoutAt;

function timeoutAt() payable {
    return timeoutAt
}

function totalSupply() payable {
    return totalSupply
}

function nextsize() payable {
    return nextsize
}

function totalPayouts() payable {
    return totalPayouts
}

function win() payable {
    return win
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function timeout() payable {
    return timeout
}

function pendingPayouts(address arg1) payable {
    return pendingPayouts[arg1]
}

function theGrid(uint256 arg1) payable {
    require arg1 < theGrid.length
    return theGrid[arg1]
}

function owner() payable {
    return owner
}

function size() payable {
    return size
}

function price() payable {
    return price
}

function benefitMicros() payable {
    return benefitMicros
}

function gameId() payable {
    return gameId
}

function lastPlayer() payable {
    return lastPlayerAddress
}

function startPrice() payable {
    return startPrice
}

function empty() payable {
    return empty
}

function players(uint256 arg1) payable {
    require arg1 < players.length
    return players[arg1]
}

function priceIncrease() payable {
    return priceIncrease
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    require msg.sender == owner
}

function collect() payable {
    pendingPayouts[address(msg.sender)] = 0
    totalPayouts -= pendingPayouts[address(msg.sender)]
    call msg.sender with:
       value pendingPayouts[address(msg.sender)] wei
         gas 0 wei
    require ext_call.success
    emit Collect(pendingPayouts[address(msg.sender)], msg.sender);
}



}
