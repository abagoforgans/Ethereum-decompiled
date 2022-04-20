contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1168]
}



// =====================  Runtime code  =====================


const delimiter = 100


uint32 rate; offset 160
address owner;

function rate() {
    return rate
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function converted(uint256 arg1) {
    return (arg1 * rate / 100)
}

function setRate(uint32 arg1) {
    require msg.sender == owner
    rate = arg1
    emit RateUpdated(rate);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
