contract main {




// =====================  Runtime code  =====================


address stakeTokenContractAddress;
mapping of uint8 stor1;
array of address allGames;
uint256 houseEdge;
uint256 minimumBet;
array of address allPlayers;
mapping of uint256 playersToTotalBets;
array of uint256 playersToBetIndices;
array of struct bets;
uint256 betsLength;
mapping of uint256 oraclizeQueryIdsToBetIndices;
address owner;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function allPlayers(uint256 arg1) {
    require arg1 < allPlayers.length
    return allPlayers[arg1]
}

function bets(uint256 arg1) {
    require arg1 < bets.length
    require bets[arg1].field_1280 <= 4
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_768,
           bets[arg1].field_1024,
           bets[arg1].field_1280
}

function playersToBetIndices(address arg1, uint256 arg2) {
    require arg2 < playersToBetIndices[arg1]
    return playersToBetIndices[arg1][arg2]
}

function oraclizeQueryIdsToBetIndices(bytes32 arg1) {
    return oraclizeQueryIdsToBetIndices[arg1]
}

function amountOfGames() {
    return allGames.length
}

function stakeTokenContract() {
    return stakeTokenContractAddress
}

function playerAmountOfBets(address arg1) {
    return playersToBetIndices[address(arg1)]
}

function totalUniquePlayers() {
    return allPlayers.length
}

function owner() {
    return owner
}

function allGames(uint256 arg1) {
    require arg1 < allGames.length
    return allGames[arg1]
}

function playersToTotalBets(address arg1) {
    return playersToTotalBets[arg1]
}

function betsLength() {
    return betsLength
}

function minimumBet() {
    return minimumBet
}

function houseEdge() {
    return houseEdge
}

function addressIsStakeDiceGameContract(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function amountOfBets() {
    return (bets.length - 1)
}

function depositEther() payable {
    require msg.sender == owner
}

function setMinimumBet(uint256 arg1) {
    require msg.sender == owner
    minimumBet = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setHouseEdge(uint256 arg1) {
    require msg.sender == owner
    require arg1 < 10000
    houseEdge = arg1
}

function withdrawEther(uint256 arg1) payable {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawStakeTokens(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stakeTokenContractAddress)
    call stakeTokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addNewStakeDiceGame(uint256 arg1) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
}

function cancelBet(uint256 arg1) {
    require msg.sender == owner
    require arg1 < bets.length
    require bets[arg1].field_1280 <= 4
    require bets[arg1].field_1280 == 1
    require arg1 < bets.length
    bets[arg1].field_1280 = 4
    require arg1 < bets.length
    require ext_code.size(stakeTokenContractAddress)
    call stakeTokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args bets[arg1].field_0, bets[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < bets.length
    emit BetCanceled(arg1, bets[arg1].field_0);
    playersToTotalBets[stor8[arg1].field_0] -= bets[arg1].field_512
}

function betPlaced(address arg1, uint256 arg2) {
    require bool(stor1[address(arg1)]) == 1
    require arg2 >= minimumBet
    require ext_code.size(arg1)
    call arg1.maximumBet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(stakeTokenContractAddress)
    call stakeTokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.multiplierOnWin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit BetPlaced(bets.length, msg.sender);
    playersToBetIndices[msg.sender]++
    playersToBetIndices[msg.sender][playersToBetIndices[msg.sender]] = bets.length
    require ext_code.size(arg1)
    call arg1.winningChance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    bets.length++
    bets[bets.length].field_0 = msg.sender
    bets[bets.length].field_256 = ext_call.return_data[0]
    bets[bets.length].field_512 = arg2
    bets[bets.length].field_768 = ext_call.return_data[0] * arg2 / 10000
    bets[bets.length].field_1024 = 0
    bets[bets.length].field_1280 = 1
    betsLength++
    if not playersToTotalBets[msg.sender]:
        allPlayers.length++
        stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
    playersToTotalBets[msg.sender] += arg2
    require betsLength < bets.length
    require bets[stor9].field_1280 <= 4
    require bets[stor9].field_1280 == 1
    bets[stor9].field_1024 = uint8(sha3(block.timestamp, block.difficulty) % 100)
    bets[stor9].field_1032 = 0
    if uint8(sha3(block.timestamp, block.difficulty) % 100) >= bets[stor9].field_256 / 100:
        bets[stor9].field_1280 = 3
        require ext_code.size(stakeTokenContractAddress)
        call stakeTokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args bets[stor9].field_0, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit BetLost(betsLength, bets[stor9].field_0);
    else:
        require ext_code.size(stakeTokenContractAddress)
        call stakeTokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= bets[stor9].field_768:
            bets[stor9].field_1280 = 2
            require ext_code.size(stakeTokenContractAddress)
            call stakeTokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args bets[stor9].field_0, bets[stor9].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit BetWon(betsLength, bets[stor9].field_0);
        else:
            require betsLength < bets.length
            require bets[stor9].field_1280 <= 4
            require bets[stor9].field_1280 == 1
            require betsLength < bets.length
            bets[stor9].field_1280 = 4
            require betsLength < bets.length
            require ext_code.size(stakeTokenContractAddress)
            call stakeTokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args bets[stor9].field_0, bets[stor9].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require betsLength < bets.length
            emit BetCanceled(betsLength, bets[stor9].field_0);
            playersToTotalBets[stor8[stor9].field_0] -= bets[stor9].field_512
}

function createDefaultGames() {
    require not allGames.length
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 1000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 1500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 2000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 2500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 3000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 3500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 4000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 4500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 5000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 5500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 6000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 6500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 7000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 7500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 8000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 8500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 9000
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4892 len 1655], address(this.address), 9500
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    allGames.length++
    allGames[allGames.length] = address(create.new_address)
}



}
