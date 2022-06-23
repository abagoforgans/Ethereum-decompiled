contract main {




// =====================  Runtime code  =====================


#
#  - buy(address arg1, uint256 arg2, bytes arg3, address arg4, address arg5)
#  - sell(address arg1, uint256 arg2, uint256 arg3, bytes arg4, address arg5, address arg6)
#
address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address tradersAddress;
uint256 stor2;

function tradingEnabled() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function traders() {
    return tradersAddress
}

function _fallback() payable {
  stop
}

function changeFeePercentage(uint256 arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function changeTraders(address arg1) {
    require msg.sender == owner
    tradersAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function changeTradingEnabled(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}



}
