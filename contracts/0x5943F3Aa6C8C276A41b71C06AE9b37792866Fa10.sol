contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    if 112 * 10^10 == stor1[msg.sender]:
        call 0x85889bbece41bf106675a9ae3b70ee78d86c1649 with:
           value 10 * stor1[address(msg.sender)] / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value stor1[address(msg.sender)] - (10 * stor1[address(msg.sender)] / 100) wei
             gas 2300 * is_zero(value) wei
        stor0[address(msg.sender)] = 0
        stor1[address(msg.sender)] = 0
    else:
        if stor1[address(msg.sender)]:
            if (block.timestamp * stor1[address(msg.sender)] / 100) - (stor0[address(msg.sender)] * stor1[address(msg.sender)] / 100) / 24 * 3600 <= eth.balance(this.address):
                call msg.sender with:
                   value (block.timestamp * stor1[address(msg.sender)] / 100) - (stor0[address(msg.sender)] * stor1[address(msg.sender)] / 100) / 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor0[address(msg.sender)] = block.timestamp
        stor1[address(msg.sender)] += msg.value
}



}
