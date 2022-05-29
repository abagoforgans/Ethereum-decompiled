contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    call stor0 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if stor1[address(msg.sender)]:
        call msg.sender with:
           value (block.number * 2 * stor1[address(msg.sender)] / 100) - (stor2[address(msg.sender)] * 2 * stor1[address(msg.sender)] / 100) / 5900 wei
             gas 2300 * is_zero(value) wei
    stor2[address(msg.sender)] = block.number
    stor1[address(msg.sender)] += msg.value
}



}
