contract main {




// =====================  Runtime code  =====================


mapping of uint256 invested;
mapping of uint256 atBlock;

function invested(address arg1) {
    return invested[arg1]
}

function atBlock(address arg1) {
    return atBlock[arg1]
}

function _fallback() payable {
    if invested[msg.sender]:
        call msg.sender with:
           value (block.number * invested[msg.sender] / 10) - (atBlock[msg.sender] * invested[msg.sender] / 10) / 5900 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    atBlock[msg.sender] = block.number
    invested[msg.sender] += msg.value
}



}
