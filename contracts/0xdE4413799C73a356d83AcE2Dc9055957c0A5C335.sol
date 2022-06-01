contract main {




// =====================  Runtime code  =====================


address owner;
address address;
address controllerAddress;
address walletAddress;
address bookAddress;
array of address alternate;

function getWalletAddress() {
    return walletAddress
}

function getBookAddress() {
    return bookAddress
}

function getAddress() {
    return address
}

function getAlternate(uint256 arg1) {
    require arg1 < 10
    return alternate[arg1]
}

function getOwner() {
    return owner
}

function getControllerAddress() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function setNewOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setAddress(address arg1) {
    require msg.sender == owner
    require arg1
    address = arg1
}

function setBookAddress(address arg1) {
    require msg.sender == owner
    require arg1
    bookAddress = arg1
}

function setWalletAddress(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function setControllerAddress(address arg1) {
    require msg.sender == owner
    require arg1
    controllerAddress = arg1
}

function setAlternate(uint256 arg1, address arg2) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < 10
    require arg2
    require arg1 < 10
    alternate[arg1] = arg2
}



}
