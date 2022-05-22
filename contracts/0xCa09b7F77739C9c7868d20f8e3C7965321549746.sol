contract main {




// =====================  Runtime code  =====================


#
#  - generateNumberWinner()
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - bet(uint256 arg1)
#
const sub_1900874b(?) = 100


uint256 minimumBet;
uint256 totalBet;
uint256 numberOfBets;
uint256 maxAmountOfBets;
uint256 numberWinner;
array of address players;
array of address stor12;
mapping of uint256 stor13;

function numberOfBets() {
    return numberOfBets
}

function numberWinner() {
    return numberWinner
}

function minimumBet() {
    return minimumBet
}

function maxAmountOfBets() {
    return maxAmountOfBets
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1]
}

function totalBet() {
    return totalBet
}

function _fallback() payable {
    revert
}

function checkPlayerExists(address arg1) {
    if stor13[address(arg1)] <= 0:
        return 0
    return 1
}

function distributePrizes() {
    if numberOfBets >= maxAmountOfBets:
        require uint256(stor12[stor10])
        idx = 0
        while idx < uint256(stor12[stor10]):
            require idx < uint256(stor12[stor10])
            call address(stor12[stor10][idx]) with:
               value totalBet / uint256(stor12[stor10]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = numberWinner
            mem[32] = 12
            idx = idx + 1
            continue 
        idx = 1
        while idx <= 10:
            mem[0] = idx
            mem[32] = 12
            uint256(stor12[idx]) = 0
            if uint256(stor12[idx]) > 0:
                mem[0] = sha3(idx, 12)
                s = sha3(sha3(idx, 12))
                while sha3(sha3(idx, 12)) + uint256(stor12[idx]) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        totalBet = 0
        numberOfBets = 0
}



}
