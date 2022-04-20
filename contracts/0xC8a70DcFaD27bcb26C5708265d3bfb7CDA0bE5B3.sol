contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[838 len 32] > 0
    stor2 = code.data[838 len 32]
    return code.data[113 len 725]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 gasPrice;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function gasPrice() {
    return gasPrice
}

function _fallback() payable {
    revert
}

function setGasPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    gasPrice = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}



}
