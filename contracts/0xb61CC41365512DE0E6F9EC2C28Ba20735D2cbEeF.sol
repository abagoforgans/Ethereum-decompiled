contract main {




// =====================  Runtime code  =====================


const ADMIN_FEE = 8

const REFERRER_FEE = 11

const FEE = 1


mapping of uint256 stor0;
mapping of uint256 stor1;
address stor2;

function getInvestorDividend(address arg1) {
    return ((block.timestamp * stor0[address(arg1)] / 100) - (stor1[address(arg1)] * stor0[address(arg1)] / 100) / 24 * 3600)
}

function _fallback() payable {
    if stor0[address(msg.sender)]:
        if (block.timestamp * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * stor0[address(msg.sender)] / 100) / 24 * 3600 < eth.balance(this.address):
            call msg.sender with:
               value (block.timestamp * stor0[address(msg.sender)] / 100) - (stor1[address(msg.sender)] * stor0[address(msg.sender)] / 100) / 24 * 3600 wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor1[address(msg.sender)] = block.timestamp
    stor0[address(msg.sender)] += msg.value
    if msg.value > 0:
        call stor2 with:
           value 8 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[128 len 20] != msg.sender:
            if stor0[mem[128 len 20]]:
                call mem[128 len 20] with:
                   value 11 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 11 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
