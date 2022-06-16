contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;

function close() {
    if address(stor0) != msg.sender:
    if block.timestamp < stor1:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setup(uint256 arg1) payable {
    if msg.value >= 10^18:
        stor1 = arg1
}

function setOwner() {
    if not address(stor0):
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}



}
