contract main {




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

function validateGasPrice(uint256 arg1) {
    require arg1 > 0
    require arg1 <= gasPrice
}

function setGasPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    gasPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}



}
