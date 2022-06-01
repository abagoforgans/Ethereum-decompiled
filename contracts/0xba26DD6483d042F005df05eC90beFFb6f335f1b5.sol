contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    if not stor0[address(msg.sender)]:
        stor1[address(msg.sender)] = block.number
        stor0[address(msg.sender)] += msg.value
        mem[160 len calldata.size] = call.data[0 len calldata.size]
        if stor0[mem[160 len 20]] <= 0:
            stor0[0xa8a297c1ac6a11c2118173ba976ea2d45cc82188] += msg.value / 5
        else:
            if mem[160 len 20] == msg.sender:
                stor0[0xa8a297c1ac6a11c2118173ba976ea2d45cc82188] += msg.value / 5
            else:
                stor0[address(msg.sender)] += msg.value / 10
                stor0[address(mem[160 len 20])] += msg.value / 10
    else:
        if ((block.number * 5 * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * 5 * stor0[address(msg.sender)] / 100) / 5900) + ((block.number * 5 * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * 5 * stor0[address(msg.sender)] / 100) / 5900 * block.number - 6550501 / 118000) <= eth.balance(this.address):
            call msg.sender with:
               value ((block.number * 5 * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * 5 * stor0[address(msg.sender)] / 100) / 5900) + ((block.number * 5 * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * 5 * stor0[address(msg.sender)] / 100) / 5900 * block.number - 6550501 / 118000) wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        stor1[address(msg.sender)] = block.number
        stor0[address(msg.sender)] += msg.value
        mem[160 len calldata.size] = call.data[0 len calldata.size]
        if stor0[mem[160 len 20]] <= 0:
            stor0[0xa8a297c1ac6a11c2118173ba976ea2d45cc82188] += msg.value / 5
        else:
            if mem[160 len 20] == msg.sender:
                stor0[0xa8a297c1ac6a11c2118173ba976ea2d45cc82188] += msg.value / 5
            else:
                stor0[address(msg.sender)] += msg.value / 10
                stor0[address(mem[160 len 20])] += msg.value / 10
}



}
