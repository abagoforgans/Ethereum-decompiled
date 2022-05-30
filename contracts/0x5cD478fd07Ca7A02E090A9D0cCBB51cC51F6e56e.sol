contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    if stor0[msg.sender]:
        call msg.sender with:
           value (block.number * 314 * stor0[msg.sender] / 10000) - (stor1[msg.sender] * 314 * stor0[msg.sender] / 10000) / 5900 wei
             gas 2300 * is_zero(value) wei
    call 0x64508a1d8b2ce732ed6b28881398c13995b63d67 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[msg.sender] = block.number
    stor0[msg.sender] += msg.value
}



}
