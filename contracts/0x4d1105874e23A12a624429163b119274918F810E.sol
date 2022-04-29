contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1273 len 20]
    stor2 = code.data[1293 len 32]
    stor3 = code.data[1325 len 32]
    return code.data[119 len 1142]
}



// =====================  Runtime code  =====================


address owner;
address destinationAddress;
uint256 minValue;
uint256 maxValue;

function getDestination() {
    return destinationAddress
}

function owner() {
    return owner
}

function maxValue() {
    return maxValue
}

function minValue() {
    return minValue
}

function destination() {
    return destinationAddress
}

function _fallback() payable {
    revert
}

function setMaximum(uint256 arg1) {
    require owner == msg.sender
    maxValue = arg1
    emit 0x2906351a: arg1
}

function setMinimum(uint256 arg1) {
    require owner == msg.sender
    minValue = arg1
    emit MinimumChanged(arg1);
}

function setDestination(address arg1) {
    require owner == msg.sender
    destinationAddress = arg1
    emit 0xb1472bb6: arg1
}

function accept(uint256 arg1) {
    if minValue:
        require arg1 >= minValue
    if maxValue:
        require arg1 <= maxValue
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLimits(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    minValue = arg1
    emit MinimumChanged(arg1);
    maxValue = arg2
    emit 0x2906351a: arg2
}



}
