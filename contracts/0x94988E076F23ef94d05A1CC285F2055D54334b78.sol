contract main {




// =====================  Runtime code  =====================


const ADMIN_FEE = 4

const FEE = 4


mapping of uint256 stor0;
mapping of uint256 stor1;
address stor2;

function getInvestorDividend(address arg1) {
    return ((block.timestamp * 4 * stor0[address(arg1)] / 100) - (stor1[address(arg1)] * 4 * stor0[address(arg1)] / 100) / 24 * 3600)
}

function _fallback() payable {
    if not stor0[msg.sender]:
        stor1[address(msg.sender)] = block.timestamp
        stor0[address(msg.sender)] += msg.value
        if msg.value > 0:
            call stor2 with:
               value 4 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        if (block.timestamp * 4 * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * 4 * stor0[address(msg.sender)] / 100) / 24 * 3600 < eth.balance(this.address):
            call msg.sender with:
               value (block.timestamp * 4 * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * 4 * stor0[address(msg.sender)] / 100) / 24 * 3600 wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        stor1[address(msg.sender)] = block.timestamp
        stor0[address(msg.sender)] += msg.value
        if msg.value > 0:
            call stor2 with:
               value 4 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
}



}
