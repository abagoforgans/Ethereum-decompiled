contract main {




// =====================  Runtime code  =====================


#
#  - buy(address arg1, uint256 arg2, bytes arg3, address arg4, address arg5)
#  - sell(address arg1, uint256 arg2, uint256 arg3, bytes arg4, address arg5, address arg6)
#
const VERSION = '2.0.0'


address owner;
address tradersAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address feeWalletAddress;

function tradingEnabled() {
    return bool(uint8(stor2.field_160))
}

function owner() {
    return owner
}

function traders() {
    return tradersAddress
}

function feeWallet() {
    return feeWalletAddress
}

function _fallback() payable {
  stop
}

function changeTraders(address arg1) {
    require msg.sender == owner
    tradersAddress = arg1
}

function changeFeeWallet(address arg1) {
    require msg.sender == owner
    feeWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function changeTradingEnabled(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}



}
