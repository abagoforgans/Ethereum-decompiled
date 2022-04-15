contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = 10^18 * code.data[2018 len 32]
    stor3 = stor2
    return code.data[149 len 1869]
}



// =====================  Runtime code  =====================


address rootAddress;
array of uint256 token;
uint256 price;
uint256 lastPrice;
uint256 lastUpdated;
mapping of uint8 stor5;

function lastPrice() {
    return lastPrice
}

function admins(address arg1) {
    return bool(stor5[arg1])
}

function getPrice() {
    return price
}

function price() {
    return price
}

function lastUpdated() {
    return lastUpdated
}

function getLastPrice() {
    return lastPrice
}

function root() {
    return rootAddress
}

function token() {
    return token[0 len token.length]
}

function _fallback() {
    revert
}

function getAvgPrice() {
    return (price + lastPrice / 2)
}

function getConversion(uint256 arg1) {
    require arg1
    return (price / arg1)
}

function setAdmin(address arg1, bool arg2) {
    require rootAddress == msg.sender
    stor5[address(arg1)] = uint8(arg2)
    return 1
}

function setPrice(uint256 arg1) {
    if rootAddress != msg.sender:
        require bool(stor5[address(msg.sender)]) == 1
    lastPrice = price
    price = 10^18 * arg1
    lastUpdated = block.timestamp
    emit Updated(address(msg.sender), arg1, lastPrice, lastUpdated);
    return 1
}



}
