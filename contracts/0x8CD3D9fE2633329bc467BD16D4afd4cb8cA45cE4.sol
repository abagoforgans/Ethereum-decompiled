contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    if stor0[address(msg.sender)]:
        call msg.sender with:
           value (block.number * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * stor0[address(msg.sender)] / 100) / 5900 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor1[address(msg.sender)] = block.number
    stor0[address(msg.sender)] += msg.value
}



}
