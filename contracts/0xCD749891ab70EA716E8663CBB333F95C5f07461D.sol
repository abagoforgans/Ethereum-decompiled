contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - update()
#
uint256 price;
uint256 lastUpdate;
array of uint256 currency;
uint256 decimalUnits;
address stor9;

function decimalUnits() {
    return decimalUnits
}

function price() {
    return price
}

function lastUpdate() {
    return lastUpdate
}

function currency() {
    return currency[0 len currency.length]
}

function deactivate() {
    require msg.sender == stor9
    selfdestruct(stor9)
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}



}
