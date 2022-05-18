contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[98 len 496]
}



// =====================  Runtime code  =====================


uint256 bal;
address owner;

function bal() {
    return bal
}

function owner() {
    return owner
}

function debug(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    bal += msg.value
}



}
