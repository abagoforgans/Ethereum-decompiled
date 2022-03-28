contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;

function _fallback() {
    stor4 = msg.sender
    stor3 = code.data[1123 len 32]
    return code.data[131 len 992]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 diff;
uint256 rate;
address owner;
address targetAddress;

function getDiff() {
    return diff
}

function rate() {
    return rate
}

function owner() {
    return owner
}

function diff() {
    return diff
}

function target() {
    return targetAddress
}

function _fallback() payable {
    revert
}

function getTotal() {
    return (diff / 3600 * rate)
}

function start() {
    targetAddress = msg.sender
    stor0 = block.timestamp
}

function end() {
    stor1 = block.timestamp
    diff = stor1 - stor0
    emit Send(owner, targetAddress, rate);
}



}
