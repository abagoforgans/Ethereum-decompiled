contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^18
    stor2 = 720 * 24 * 3600
    return code.data[61 len 701]
}



// =====================  Runtime code  =====================


address stor0;
uint256 price;
uint256 duration;
uint256 numSubscribed;
mapping of uint256 subscribers;
uint256 balance;
uint256 stor6;

function duration() payable {
    return duration
}

function subscribers(address arg1) payable {
    return subscribers[arg1]
}

function numSubscribed() payable {
    return numSubscribed
}

function price() payable {
    return price
}

function balance() payable {
    return balance
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function set(uint256 arg1) payable {
    if stor0 == msg.sender:
        stor6 = arg1
}

function setPrice(uint256 arg1) payable {
    if stor0 == msg.sender:
        price = arg1
}

function setDuration(uint256 arg1) payable {
    if stor0 == msg.sender:
        duration = arg1
}

function get() payable {
    if subscribers[address(msg.sender)] <= block.timestamp:
        if stor0 != msg.sender:
            return 0
    return stor6
}

function payout(address arg1) payable {
    if msg.sender == stor0:
        call arg1 with:
           value balance wei
             gas 0 wei
        balance = 0
}

function subscribe(address arg1) payable {
    if msg.value >= price:
        if subscribers[address(arg1)]:
            if subscribers[address(arg1)] <= block.timestamp:
                subscribers[address(arg1)] = block.timestamp + duration
            else:
                subscribers[address(arg1)] += duration
        else:
            numSubscribed++
            subscribers[address(arg1)] = block.timestamp + duration
        balance += msg.value
}



}
