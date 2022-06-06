contract main {




// =====================  Runtime code  =====================


const isContractMiniGame = 1


uint8 stor0;
address administratorAddress; offset 8
uint256 HALF_TIME;
uint256 round;
address sub_b4bd7d41Address;
address sub_c3f656f1Address;
uint256 miningWarDeadline;
mapping of struct games;
mapping of struct players;

function games(uint256 arg1) {
    return games[arg1].field_0, games[arg1].field_256, games[arg1].field_512, games[arg1].field_768, bool(games[arg1].field_1024)
}

function round() {
    return round
}

function miningWarDeadline() {
    return miningWarDeadline
}

function HALF_TIME() {
    return HALF_TIME
}

function sub_b4bd7d41(?) {
    return sub_b4bd7d41Address
}

function sub_c3f656f1(?) {
    return sub_c3f656f1Address
}

function players(address arg1) {
    return players[arg1].field_0, players[arg1].field_256, players[arg1].field_512, players[arg1].field_768
}

function administrator() {
    return administratorAddress
}

function upgrade(address arg1) {
    require msg.sender == administratorAddress
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function setMiningWarInterface(address arg1) {
    require msg.sender == administratorAddress
    sub_c3f656f1Address = arg1
}

function setupMiniGame(uint256 arg1, uint256 arg2) {
    require ext_code.size(sub_c3f656f1Address)
    call sub_c3f656f1Address.deadline() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    miningWarDeadline = ext_call.return_data[0]
}

function setEngineerInterface(address arg1) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.0x3281d576 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    sub_b4bd7d41Address = arg1
}

function calculateReward(address arg1, uint256 arg2) {
    if games[arg2].field_768 > block.timestamp:
        return 0
    if not games[arg2].field_256:
        return 0
    if not games[arg2].field_512:
        if games[arg2].field_256:
            return (0 / games[arg2].field_256)
    else:
        if games[arg2].field_512:
            if games[arg2].field_512 * players[address(arg1)].field_768 / games[arg2].field_512 == players[address(arg1)].field_768:
                if games[arg2].field_256:
                    return (games[arg2].field_512 * players[address(arg1)].field_768 / games[arg2].field_256)
    revert
}

function startGame() {
    require msg.sender == administratorAddress
    require not stor0
    stor0 = 1
    require ext_code.size(sub_c3f656f1Address)
    call sub_c3f656f1Address.deadline() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    miningWarDeadline = ext_call.return_data[0]
    games[stor2].field_1024 = 1
    require bool(games[stor2].field_1024) == 1
    round++
    require ext_code.size(sub_b4bd7d41Address)
    call sub_b4bd7d41Address.prizePool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_b4bd7d41Address)
        call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if games[stor2].field_256 > 0:
            games[stor2].field_0 = round
            games[stor2].field_256 = 0
            games[stor2].field_512 = 0
        else:
            require games[stor2].field_512 >= 0
            games[stor2].field_0 = round
            games[stor2].field_256 = 0
    else:
        require ext_call.return_data[0]
        require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        require ext_code.size(sub_b4bd7d41Address)
        call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 5 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if games[stor2].field_256 > 0:
            games[stor2].field_0 = round
            games[stor2].field_256 = 0
            games[stor2].field_512 = 5 * ext_call.return_data[0] / 100
        else:
            require (5 * ext_call.return_data[0] / 100) + games[stor2].field_512 >= 5 * ext_call.return_data[0] / 100
            games[stor2].field_0 = round
            games[stor2].field_256 = 0
            games[stor2].field_512 += 5 * ext_call.return_data[0] / 100
    games[stor2].field_768 = block.timestamp + HALF_TIME
    games[stor2].field_1024 = 0
}

function getData(address arg1) {
    if players[address(arg1)].field_0 != round:
        if players[address(arg1)].field_0 == players[address(arg1)].field_256:
            return games[stor2].field_512, games[stor2].field_256, games[stor2].field_768, players[address(arg1)].field_512, 0
        if games[stor7[address(arg1)].field_0].field_768 > block.timestamp:
            return games[stor2].field_512, games[stor2].field_256, games[stor2].field_768, players[address(arg1)].field_512, 0
        if not games[stor7[address(arg1)].field_0].field_256:
            return games[stor2].field_512, games[stor2].field_256, games[stor2].field_768, players[address(arg1)].field_512, 0
        if not games[stor7[address(arg1)].field_0].field_512:
            if games[stor7[address(arg1)].field_0].field_256:
                return games[stor2].field_512, 
                       games[stor2].field_256,
                       games[stor2].field_768,
                       players[address(arg1)].field_512 + (0 / games[stor7[address(arg1)].field_0].field_256),
                       0
        else:
            if games[stor7[address(arg1)].field_0].field_512:
                if games[stor7[address(arg1)].field_0].field_512 * players[address(arg1)].field_768 / games[stor7[address(arg1)].field_0].field_512 == players[address(arg1)].field_768:
                    if games[stor7[address(arg1)].field_0].field_256:
                        return games[stor2].field_512, 
                               games[stor2].field_256,
                               games[stor2].field_768,
                               players[address(arg1)].field_512 + (games[stor7[address(arg1)].field_0].field_512 * players[address(arg1)].field_768 / games[stor7[address(arg1)].field_0].field_256),
                               0
    else:
        if players[address(arg1)].field_0 == players[address(arg1)].field_256:
            return games[stor2].field_512, 
                   games[stor2].field_256,
                   games[stor2].field_768,
                   players[address(arg1)].field_512,
                   players[address(arg1)].field_768
        if games[stor7[address(arg1)].field_0].field_768 > block.timestamp:
            return games[stor2].field_512, 
                   games[stor2].field_256,
                   games[stor2].field_768,
                   players[address(arg1)].field_512,
                   players[address(arg1)].field_768
        if not games[stor7[address(arg1)].field_0].field_256:
            return games[stor2].field_512, 
                   games[stor2].field_256,
                   games[stor2].field_768,
                   players[address(arg1)].field_512,
                   players[address(arg1)].field_768
        if not games[stor7[address(arg1)].field_0].field_512:
            if games[stor7[address(arg1)].field_0].field_256:
                return games[stor2].field_512, 
                       games[stor2].field_256,
                       games[stor2].field_768,
                       players[address(arg1)].field_512 + (0 / games[stor7[address(arg1)].field_0].field_256),
                       players[address(arg1)].field_768
        else:
            if games[stor7[address(arg1)].field_0].field_512:
                if games[stor7[address(arg1)].field_0].field_512 * players[address(arg1)].field_768 / games[stor7[address(arg1)].field_0].field_512 == players[address(arg1)].field_768:
                    if games[stor7[address(arg1)].field_0].field_256:
                        return games[stor2].field_512, 
                               games[stor2].field_256,
                               games[stor2].field_768,
                               players[address(arg1)].field_512 + (games[stor7[address(arg1)].field_0].field_512 * players[address(arg1)].field_768 / games[stor7[address(arg1)].field_0].field_256),
                               players[address(arg1)].field_768
    revert
}

function withdrawReward() {
    require tx.origin == msg.sender
    if games[stor2].field_768 <= block.timestamp:
        require not games[stor2].field_1024
        require games[stor2].field_768 <= block.timestamp
        games[stor2].field_1024 = 1
        require bool(games[stor2].field_1024) == 1
        round++
        require ext_code.size(sub_b4bd7d41Address)
        call sub_b4bd7d41Address.prizePool() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if games[stor2].field_256 > 0:
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
                games[stor2].field_512 = 0
            else:
                require games[stor2].field_512 >= 0
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
        else:
            require ext_call.return_data[0]
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 5 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if games[stor2].field_256 > 0:
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
                games[stor2].field_512 = 5 * ext_call.return_data[0] / 100
            else:
                require (5 * ext_call.return_data[0] / 100) + games[stor2].field_512 >= 5 * ext_call.return_data[0] / 100
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
                games[stor2].field_512 += 5 * ext_call.return_data[0] / 100
        games[stor2].field_768 = block.timestamp + HALF_TIME
        games[stor2].field_1024 = 0
        emit EndRound(games[stor2].field_0, games[stor2].field_256, games[stor2].field_512, games[stor2].field_768);
    if bool(games[stor7[address(msg.sender)].field_0].field_1024) == 1:
        if players[address(msg.sender)].field_256 < players[address(msg.sender)].field_0:
            if games[stor7[address(msg.sender)].field_0].field_768 > block.timestamp:
                require players[address(msg.sender)].field_512 >= players[address(msg.sender)].field_512
            else:
                if not games[stor7[address(msg.sender)].field_0].field_256:
                    require players[address(msg.sender)].field_512 >= players[address(msg.sender)].field_512
                else:
                    if not games[stor7[address(msg.sender)].field_0].field_512:
                        require games[stor7[address(msg.sender)].field_0].field_256
                        require players[address(msg.sender)].field_512 + (0 / games[stor7[address(msg.sender)].field_0].field_256) >= players[address(msg.sender)].field_512
                        players[address(msg.sender)].field_512 += 0 / games[stor7[address(msg.sender)].field_0].field_256
                    else:
                        require games[stor7[address(msg.sender)].field_0].field_512
                        require games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_512 == players[address(msg.sender)].field_768
                        require games[stor7[address(msg.sender)].field_0].field_256
                        require players[address(msg.sender)].field_512 + (games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_256) >= players[address(msg.sender)].field_512
                        players[address(msg.sender)].field_512 += games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_256
            players[address(msg.sender)].field_256 = players[address(msg.sender)].field_0
    if eth.balance(this.address) >= players[address(msg.sender)].field_512:
        call msg.sender with:
           value players[address(msg.sender)].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        players[address(msg.sender)].field_512 = 0
}

function share(uint256 arg1) {
    require tx.origin == msg.sender
    require miningWarDeadline > block.timestamp
    require not games[stor2].field_1024
    require arg1 >= 10000
    require ext_code.size(sub_c3f656f1Address)
    call sub_c3f656f1Address.subCrystal(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if games[stor2].field_768 > block.timestamp:
        if bool(games[stor7[address(msg.sender)].field_0].field_1024) != 1:
            if not arg1:
                require games[stor2].field_256 >= games[stor2].field_256
                if players[address(msg.sender)].field_0 == round:
                    require players[address(msg.sender)].field_768 >= players[address(msg.sender)].field_768
                else:
                    players[address(msg.sender)].field_768 = 0
                    players[address(msg.sender)].field_0 = round
            else:
                require arg1
                require 24 * 3600 * arg1 / arg1 == 24 * 3600
                require games[stor2].field_256 + (24 * 3600 * arg1) >= games[stor2].field_256
                games[stor2].field_256 += 24 * 3600 * arg1
                if players[address(msg.sender)].field_0 != round:
                    players[address(msg.sender)].field_768 = 24 * 3600 * arg1
                    players[address(msg.sender)].field_0 = round
                else:
                    require players[address(msg.sender)].field_768 + (24 * 3600 * arg1) >= players[address(msg.sender)].field_768
                    players[address(msg.sender)].field_768 += 24 * 3600 * arg1
            emit Deposit(address(msg.sender), 1, 1, arg1, 0, 0);
        else:
            if players[address(msg.sender)].field_256 >= players[address(msg.sender)].field_0:
                if not arg1:
                    require games[stor2].field_256 >= games[stor2].field_256
                    if players[address(msg.sender)].field_0 == round:
                        require players[address(msg.sender)].field_768 >= players[address(msg.sender)].field_768
                    else:
                        players[address(msg.sender)].field_768 = 0
                        players[address(msg.sender)].field_0 = round
                else:
                    require arg1
                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                    require games[stor2].field_256 + (24 * 3600 * arg1) >= games[stor2].field_256
                    games[stor2].field_256 += 24 * 3600 * arg1
                    if players[address(msg.sender)].field_0 != round:
                        players[address(msg.sender)].field_768 = 24 * 3600 * arg1
                        players[address(msg.sender)].field_0 = round
                    else:
                        require players[address(msg.sender)].field_768 + (24 * 3600 * arg1) >= players[address(msg.sender)].field_768
                        players[address(msg.sender)].field_768 += 24 * 3600 * arg1
                emit Deposit(address(msg.sender), 1, 1, arg1, 0, 0);
            else:
                if games[stor7[address(msg.sender)].field_0].field_768 > block.timestamp:
                    require players[address(msg.sender)].field_512 >= players[address(msg.sender)].field_512
                else:
                    if not games[stor7[address(msg.sender)].field_0].field_256:
                        require players[address(msg.sender)].field_512 >= players[address(msg.sender)].field_512
                    else:
                        if not games[stor7[address(msg.sender)].field_0].field_512:
                            require games[stor7[address(msg.sender)].field_0].field_256
                            require players[address(msg.sender)].field_512 + (0 / games[stor7[address(msg.sender)].field_0].field_256) >= players[address(msg.sender)].field_512
                            players[address(msg.sender)].field_512 += 0 / games[stor7[address(msg.sender)].field_0].field_256
                        else:
                            require games[stor7[address(msg.sender)].field_0].field_512
                            require games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_512 == players[address(msg.sender)].field_768
                            require games[stor7[address(msg.sender)].field_0].field_256
                            require players[address(msg.sender)].field_512 + (games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_256) >= players[address(msg.sender)].field_512
                            players[address(msg.sender)].field_512 += games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_256
                players[address(msg.sender)].field_256 = players[address(msg.sender)].field_0
                if not arg1:
                    require games[stor2].field_256 >= games[stor2].field_256
                    if players[address(msg.sender)].field_0 == round:
                        require players[address(msg.sender)].field_768 >= players[address(msg.sender)].field_768
                    else:
                        players[address(msg.sender)].field_768 = 0
                        players[address(msg.sender)].field_0 = round
                else:
                    require arg1
                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                    require games[stor2].field_256 + (24 * 3600 * arg1) >= games[stor2].field_256
                    games[stor2].field_256 += 24 * 3600 * arg1
                    if players[address(msg.sender)].field_0 != round:
                        players[address(msg.sender)].field_768 = 24 * 3600 * arg1
                        players[address(msg.sender)].field_0 = round
                    else:
                        require players[address(msg.sender)].field_768 + (24 * 3600 * arg1) >= players[address(msg.sender)].field_768
                        players[address(msg.sender)].field_768 += 24 * 3600 * arg1
                emit Deposit(msg.sender, 1, 1, arg1, 0, 0);
    else:
        require not games[stor2].field_1024
        require games[stor2].field_768 <= block.timestamp
        games[stor2].field_1024 = 1
        require bool(games[stor2].field_1024) == 1
        round++
        require ext_code.size(sub_b4bd7d41Address)
        call sub_b4bd7d41Address.prizePool() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if games[stor2].field_256 > 0:
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
                games[stor2].field_512 = 0
            else:
                require games[stor2].field_512 >= 0
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
        else:
            require ext_call.return_data[0]
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
            require ext_code.size(sub_b4bd7d41Address)
            call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 5 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if games[stor2].field_256 > 0:
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
                games[stor2].field_512 = 5 * ext_call.return_data[0] / 100
            else:
                require (5 * ext_call.return_data[0] / 100) + games[stor2].field_512 >= 5 * ext_call.return_data[0] / 100
                games[stor2].field_0 = round
                games[stor2].field_256 = 0
                games[stor2].field_512 += 5 * ext_call.return_data[0] / 100
        games[stor2].field_768 = block.timestamp + HALF_TIME
        games[stor2].field_1024 = 0
        emit EndRound(games[stor2].field_0, games[stor2].field_256, games[stor2].field_512, games[stor2].field_768);
        if bool(games[stor7[address(msg.sender)].field_0].field_1024) == 1:
            if players[address(msg.sender)].field_256 < players[address(msg.sender)].field_0:
                if games[stor7[address(msg.sender)].field_0].field_768 > block.timestamp:
                    require players[address(msg.sender)].field_512 >= players[address(msg.sender)].field_512
                else:
                    if not games[stor7[address(msg.sender)].field_0].field_256:
                        require players[address(msg.sender)].field_512 >= players[address(msg.sender)].field_512
                    else:
                        if not games[stor7[address(msg.sender)].field_0].field_512:
                            require games[stor7[address(msg.sender)].field_0].field_256
                            require players[address(msg.sender)].field_512 + (0 / games[stor7[address(msg.sender)].field_0].field_256) >= players[address(msg.sender)].field_512
                            players[address(msg.sender)].field_512 += 0 / games[stor7[address(msg.sender)].field_0].field_256
                        else:
                            require games[stor7[address(msg.sender)].field_0].field_512
                            require games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_512 == players[address(msg.sender)].field_768
                            require games[stor7[address(msg.sender)].field_0].field_256
                            require players[address(msg.sender)].field_512 + (games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_256) >= players[address(msg.sender)].field_512
                            players[address(msg.sender)].field_512 += games[stor7[address(msg.sender)].field_0].field_512 * players[address(msg.sender)].field_768 / games[stor7[address(msg.sender)].field_0].field_256
                players[address(msg.sender)].field_256 = players[address(msg.sender)].field_0
        if not arg1:
            require games[stor2].field_256 >= games[stor2].field_256
            if players[address(msg.sender)].field_0 == round:
                require players[address(msg.sender)].field_768 >= players[address(msg.sender)].field_768
            else:
                players[address(msg.sender)].field_768 = 0
                players[address(msg.sender)].field_0 = round
        else:
            require arg1
            require 24 * 3600 * arg1 / arg1 == 24 * 3600
            require games[stor2].field_256 + (24 * 3600 * arg1) >= games[stor2].field_256
            games[stor2].field_256 += 24 * 3600 * arg1
            if players[address(msg.sender)].field_0 != round:
                players[address(msg.sender)].field_768 = 24 * 3600 * arg1
                players[address(msg.sender)].field_0 = round
            else:
                require players[address(msg.sender)].field_768 + (24 * 3600 * arg1) >= players[address(msg.sender)].field_768
                players[address(msg.sender)].field_768 += 24 * 3600 * arg1
        emit Deposit(msg.sender, 1, 1, arg1, 0, 0);
}



}
