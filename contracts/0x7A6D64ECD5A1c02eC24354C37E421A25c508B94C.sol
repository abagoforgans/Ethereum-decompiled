contract main {




// =====================  Runtime code  =====================


mapping of uint256 invested;
mapping of uint256 atBlock;
address stor2;
uint256 stor3;
uint256 stor4;

function invested(address arg1) {
    return invested[arg1]
}

function atBlock(address arg1) {
    return atBlock[arg1]
}

function _fallback() payable {
    if invested[msg.sender]:
        if eth.balance(this.address) >= 10000 * 10^18:
            call msg.sender with:
               value (block.number * 10 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 10 * invested[msg.sender] / 1000) / 18500 wei
                 gas 2300 * is_zero(value) wei
        else:
            if eth.balance(this.address) >= 7000 * 10^18:
                call msg.sender with:
                   value (block.number * 16 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 16 * invested[msg.sender] / 1000) / 18500 wei
                     gas 2300 * is_zero(value) wei
            else:
                if eth.balance(this.address) >= 5000 * 10^18:
                    call msg.sender with:
                       value (block.number * 11 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 11 * invested[msg.sender] / 1000) / 18500 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if eth.balance(this.address) >= 3000 * 10^18:
                        call msg.sender with:
                           value (block.number * 15 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 15 * invested[msg.sender] / 1000) / 18500 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if eth.balance(this.address) >= 1000 * 10^18:
                            call msg.sender with:
                               value (block.number * 14 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 14 * invested[msg.sender] / 1000) / 18500 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if eth.balance(this.address) >= 500 * 10^18:
                                call msg.sender with:
                                   value (block.number * 13 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 13 * invested[msg.sender] / 1000) / 18500 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                if eth.balance(this.address) >= 300 * 10^18:
                                    call msg.sender with:
                                       value (block.number * 12 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 12 * invested[msg.sender] / 1000) / 18500 wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    if eth.balance(this.address) < 100 * 10^18:
                                        call msg.sender with:
                                           value (block.number * 10 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 10 * invested[msg.sender] / 1000) / 18500 wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        call msg.sender with:
                                           value (block.number * 11 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 11 * invested[msg.sender] / 1000) / 18500 wei
                                             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        if not calldata.size:
            call stor2 with:
               value msg.value * stor3 / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if msg.sender == mem[128 len 20]:
                call stor2 with:
                   value msg.value * stor3 / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value msg.value * stor4 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call mem[128 len 20] with:
                   value msg.value * stor3 / 100 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    atBlock[msg.sender] = block.number
    invested[msg.sender] += msg.value
}



}
