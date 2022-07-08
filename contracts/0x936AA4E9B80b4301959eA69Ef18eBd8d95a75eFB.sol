contract main {




// =====================  Runtime code  =====================


#
#  - getBet(uint256 arg1)
#  - doBet(uint256 arg1)
#
uint256 stor0;
address stor1;
address stor2;

function withdraw() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function setNonce(uint256 arg1) {
    require msg.sender == stor1
    stor0 = arg1
}

function getMaxBet() {
    require msg.sender == stor1
    return ((10 * 80 * eth.balance(stor2) / 100 / 19) - 1000)
}



}
