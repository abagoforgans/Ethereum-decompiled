contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = 10^18
    return code.data[31 len 351]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    if stor2 <= 0:
        if msg.value < stor3:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            stor1 = address(stor0)
            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
            stor3 = msg.value
            stor2 = block.timestamp
    else:
        if block.timestamp - stor2 <= 24 * 3600:
            if msg.value < stor3:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor1 = address(stor0)
                uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                stor3 = msg.value
                stor2 = block.timestamp
        else:
            if address(stor0):
                call address(stor0) with:
                   value (6 * eth.balance(this.address)) - (6 * msg.value) / 10 wei
                     gas 0 wei
            if stor1 != 0:
                call stor1 with:
                   value 2 * eth.balance(this.address) - msg.value / 10 wei
                     gas 0 wei
            stor2 = 0
            address(stor0) = 0
            stor1 = 0
            stor3 = 10^18
            if msg.value < stor3:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor1 = address(stor0)
                uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                stor3 = msg.value
                stor2 = block.timestamp
}



}
