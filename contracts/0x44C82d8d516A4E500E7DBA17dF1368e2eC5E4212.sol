contract main {




// =====================  Runtime code  =====================


mapping of uint256 invested;
mapping of uint256 atBlock;
address stor2;
uint256 stor3;
address stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;

function invested(address arg1) {
    return invested[arg1]
}

function atBlock(address arg1) {
    return atBlock[arg1]
}

function _fallback() payable {
    if invested[msg.sender]:
        if eth.balance(this.address) >= 400 * 10^18:
            call msg.sender with:
               value (block.number * 50 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 50 * invested[msg.sender] / 1000) / 6100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if eth.balance(this.address) >= 300 * 10^18:
                call msg.sender with:
                   value (block.number * 45 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 45 * invested[msg.sender] / 1000) / 6100 wei
                     gas 2300 * is_zero(value) wei
            else:
                if eth.balance(this.address) >= 200 * 10^18:
                    call msg.sender with:
                       value (block.number * 40 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 40 * invested[msg.sender] / 1000) / 6100 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if eth.balance(this.address) < 100 * 10^18:
                        call msg.sender with:
                           value (block.number * 30 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 30 * invested[msg.sender] / 1000) / 6100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value (block.number * 35 * invested[msg.sender] / 1000) - (atBlock[msg.sender] * 35 * invested[msg.sender] / 1000) / 6100 wei
                             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        call stor2 with:
           value msg.value * stor3 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor4 with:
           value msg.value * stor5 / 100 wei
             gas 2300 * is_zero(value) wei
        if not calldata.size:
            call stor6 with:
               value msg.value * stor7 / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if msg.sender == mem[128 len 20]:
                call stor6 with:
                   value msg.value * stor7 / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value msg.value * stor8 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call mem[128 len 20] with:
                   value msg.value * stor7 / 100 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == stor2:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    atBlock[msg.sender] = block.number
    invested[msg.sender] += msg.value
}



}
