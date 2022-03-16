contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 461]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    if stor2 <= 0:
        if msg.value < 10^18:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if stor2:
                call address(stor0) with:
                   value 10^16 wei
                     gas 0 wei
            else:
                uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            stor2 = block.timestamp
    else:
        if block.timestamp - stor2 > 120:
            call address(stor1) with:
               value eth.balance(this.address) - msg.value wei
                 gas 0 wei
            stor2 = 0
        if msg.value < 10^18:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if stor2:
                call address(stor0) with:
                   value 10^16 wei
                     gas 0 wei
            else:
                uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            stor2 = block.timestamp
}



}
