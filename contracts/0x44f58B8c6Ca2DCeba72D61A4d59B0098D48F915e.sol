contract main {




// =====================  Runtime code  =====================


address bnbTokenAddress;
address stor1;
array of address winners;
mapping of uint8 withdrew;
uint256 endBlock;
uint256 reward;

function endBlock() payable {
    return endBlock
}

function reward() payable {
    return reward
}

function bnbToken() payable {
    return bnbTokenAddress
}

function winnerNumber() payable {
    return winners.length
}

function winners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < winners.length
    return winners[arg1]
}

function withdrew(address arg1) payable {
    require calldata.size - 4 >= 32
    return withdrew[arg1]
}

function _fallback() payable {
    revert
}

function setReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    reward = arg1
    return 1
}

function addWinner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require block.number <= endBlock
    require not withdrew[address(arg1)]
    winners.length++
    winners[winners.length] = arg1
    withdrew[address(arg1)] = 1
    return 1
}

function balance() payable {
    require ext_code.size(bnbTokenAddress)
    staticcall bnbTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() payable {
    if block.number <= endBlock:
        revert with 0, 'Is underway.'
    require 1 == withdrew[msg.sender]
    require winners.length > 0
    require winners.length
    withdrew[msg.sender] = 2
    require ext_code.size(bnbTokenAddress)
    call bnbTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, reward / winners.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal((reward / winners.length), msg.sender);
    return 1
}



}
