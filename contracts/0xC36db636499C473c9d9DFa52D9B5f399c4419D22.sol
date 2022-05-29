contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    require msg.sender >= 5 * 10^16
    call stor0 with:
       value 333 * msg.value / 50 wei
         gas 2300 * is_zero(value) wei
    if stor1[address(msg.sender)]:
        call msg.sender with:
           value (block.number * 111 * stor1[address(msg.sender)] / 2000) - (stor2[address(msg.sender)] * 111 * stor1[address(msg.sender)] / 2000) / 5900 wei
             gas 2300 * is_zero(value) wei
    stor2[address(msg.sender)] = block.number
    stor1[address(msg.sender)] += msg.value
}



}
