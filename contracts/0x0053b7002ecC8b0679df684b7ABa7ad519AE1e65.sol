contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    if stor0[msg.sender]:
        call msg.sender with:
           value (block.number * 4 * stor0[msg.sender] / 100) - (stor1[msg.sender] * 4 * stor0[msg.sender] / 100) / 5900 wei
             gas 2300 * is_zero(value) wei
    stor1[msg.sender] = block.number
    stor0[msg.sender] += msg.value
}



}
