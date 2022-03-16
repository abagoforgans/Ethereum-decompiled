contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 164]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    if stor1 > 0:
        if block.timestamp - stor1 > 24 * 3600:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            selfdestruct(address(stor0))
    if msg.value >= 10^18:
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
        stor1 = block.timestamp
}



}
