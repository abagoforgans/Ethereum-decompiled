contract main {




// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
mapping of uint8 stor2;
array of address players;
uint256 playerEther;
uint256 stor5;
uint8 stor6;
uint256 rewards;

function beneficiary() {
    return beneficiaryAddress
}

function playersMap(address arg1) {
    return bool(stor2[arg1])
}

function rewards() {
    return rewards
}

function isLotteryClosed() {
    return bool(stor6)
}

function playerEther() {
    return playerEther
}

function players(uint256 arg1) {
    require arg1 < players.length
    return address(players[arg1])
}

function safeWithdrawal() {
    if stor5 <= players.length:
        if not stor6:
            revert with 0, 'lottery must be closed'
        if msg.sender == beneficiaryAddress:
            call beneficiaryAddress with:
               value rewards wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FundTransfer(beneficiaryAddress, rewards, 0);
        if msg.sender == stor0:
            call stor0 with:
               value players.length * playerEther / 5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FundTransfer(stor0, players.length * playerEther / 5, 0);
}

function _fallback() payable {
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery should not be closed and player should send exact ethers'
    if playerEther != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery should not be closed and player should send exact ethers'
    if stor2[msg.sender]:
        revert with 0, 'player should not attend twice'
    players.length++
    uint256(players[players.length]) = msg.sender or Mask(96, 160, uint256(players[players.length]))
    stor2[msg.sender] = 1
    emit FundTransfer(msg.sender, msg.value, 1);
    if players.length >= stor5:
        if stor6:
            revert with 0, 'lottery must be opened'
        stor6 = 1
        require players.length
        require sha3(block.number - 3, block.number - 2) % players.length < players.length
        beneficiaryAddress = address(players[('map', ('add', -3, 'number'), ('add', -2, 'number')) % players.length])
        rewards = 4 * players.length * playerEther / 5
        emit GoalReached(beneficiaryAddress, 4 * players.length * playerEther / 5);
}



}
