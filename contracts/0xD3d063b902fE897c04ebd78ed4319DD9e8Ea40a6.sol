contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


uint256 challengeDuration;
uint256 challengePrize;
uint256 creatorPrize;
uint256 cryptoVersusPrize;
uint256 challengeStarted;
uint256 candidatesNumber;
uint16 stor6;
uint16 creatorFee; offset 160
address creatorAddress;
uint16 cryptoVersusFee; offset 160
address cryptoVersusWalletAddress;
uint256 winner;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
array of struct votes;
mapping of uint256 userVotesDistribution;
uint256 stor12;

function creator() {
    return creatorAddress
}

function challengeStarted() {
    return challengeStarted
}

function challengeDuration() {
    return challengeDuration
}

function cryptoVersusPrize() {
    return cryptoVersusPrize
}

function cryptoVersusWallet() {
    return cryptoVersusWalletAddress
}

function beforeVoting() {
    return bool(uint8(stor9.field_8))
}

function votes(uint256 arg1) {
    require arg1 < votes.length
    return votes[arg1].field_0
}

function candidatesNumber() {
    return candidatesNumber
}

function cryptoVersusFee() {
    return cryptoVersusFee
}

function challengePrize() {
    return challengePrize
}

function creatorPrize() {
    return creatorPrize
}

function userVotesDistribution(address arg1, uint256 arg2) {
    return userVotesDistribution[arg1][arg2]
}

function winner() {
    return winner
}

function isVotingPeriod() {
    return bool(uint8(stor9.field_0))
}

function creatorFee() {
    return creatorFee
}

function _fallback() payable {
    revert
}

function changeCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function changeWallet(address arg1) {
    require msg.sender == cryptoVersusWalletAddress
    cryptoVersusWalletAddress = arg1
}

function startChallenge() {
    require msg.sender == creatorAddress
    require uint8(stor9.field_8)
    uint8(stor9.field_0) = 1
    Mask(248, 0, stor9.field_8) = 0
    challengeStarted = block.timestamp
    emit ChallengeBegins(creatorAddress, stor6, candidatesNumber, challengeDuration);
}

function sendCreatorReward() {
    require not uint8(stor9.field_0)
    if creatorPrize > 0:
        creatorPrize = 0
        call creatorAddress with:
           value creatorPrize wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit CreatorRewardWasPaid(creatorAddress, creatorPrize);
}

function transferVotes(address arg1, uint256 arg2) {
    require uint8(stor9.field_0)
    require userVotesDistribution[address(msg.sender)][arg2] > 0
    userVotesDistribution[address(msg.sender)][arg2] = 0
    userVotesDistribution[address(arg1)][arg2] += userVotesDistribution[address(msg.sender)][arg2]
    emit TransferVotes(address(msg.sender), address(arg1), arg2, userVotesDistribution[address(msg.sender)][arg2]);
}

function sendCryptoVersusReward() {
    require not uint8(stor9.field_0)
    if cryptoVersusPrize > 0:
        cryptoVersusPrize = 0
        call cryptoVersusWalletAddress with:
           value cryptoVersusPrize wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit CryptoVersusRewardWasPaid(cryptoVersusWalletAddress, cryptoVersusPrize);
}

function sendReward(address arg1) {
    require not uint8(stor9.field_0)
    if userVotesDistribution[address(arg1)][stor8] > 0:
        userVotesDistribution[address(arg1)][stor8] = 0
        require winner < votes.length
        require votes[stor8].field_0
        call arg1 with:
           value challengePrize * userVotesDistribution[address(arg1)][stor8] / votes[stor8].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardWasPaid(address(arg1), challengePrize * userVotesDistribution[address(arg1)][stor8] / votes[stor8].field_0);
}

function getReward() {
    require not uint8(stor9.field_0)
    if userVotesDistribution[address(msg.sender)][stor8] > 0:
        userVotesDistribution[address(msg.sender)][stor8] = 0
        require winner < votes.length
        require votes[stor8].field_0
        call msg.sender with:
           value challengePrize * userVotesDistribution[address(msg.sender)][stor8] / votes[stor8].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardWasPaid(msg.sender, challengePrize * userVotesDistribution[address(msg.sender)][stor8] / votes[stor8].field_0);
}

function getAllVotes() {
    if not votes.length:
        mem[(32 * votes.length) + 128] = 32
        mem[(32 * votes.length) + 160] = votes.length
        mem[(32 * votes.length) + 192 len floor32(votes.length)] = mem[128 len floor32(votes.length)]
        return memory
          from (32 * votes.length) + 128
           len (96 * votes.length) + 64
    mem[128] = uint256(votes.field_0)
    idx = 128
    s = 0
    while (32 * votes.length) + 96 > idx:
        mem[idx + 32] = votes[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * votes.length) + 192 len floor32(votes.length)] = mem[128 len floor32(votes.length)]
    return Array(len=votes.length, data=mem[128 len floor32(votes.length)], mem[(32 * votes.length) + floor32(votes.length) + 192 len (32 * votes.length) - floor32(votes.length)]), 
}

function checkEndOfChallenge() {
    require uint8(stor9.field_0)
    if challengeStarted + challengeDuration > block.timestamp:
        return 0
    idx = 1
    s = 0
    t = 0
    while idx <= candidatesNumber:
        require idx < votes.length
        mem[0] = 10
        if votes[idx].field_0 <= s:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < votes.length
        mem[0] = 10
        idx = idx + 1
        s = votes[idx].field_0
        t = idx
        continue 
    winner = t
    creatorPrize = (eth.balance(this.address) * creatorFee) - (stor12 * creatorFee) / 1000
    cryptoVersusPrize = (eth.balance(this.address) * cryptoVersusFee) - (stor12 * cryptoVersusFee) / 1000
    challengePrize = eth.balance(this.address) - stor12 - creatorPrize - cryptoVersusPrize
    uint8(stor9.field_0) = 0
    emit EndOfChallenge(winner, s, challengePrize);
    return 1
}

function voteForCandidate(uint256 arg1) payable {
    require uint8(stor9.field_0)
    require arg1 <= candidatesNumber
    require arg1 > 0
    require msg.value > 0
    stor12 = msg.value
    require uint8(stor9.field_0)
    if challengeStarted + challengeDuration > block.timestamp:
        stor12 = 0
        require arg1 < votes.length
        votes[arg1].field_0 += msg.value
        userVotesDistribution[address(msg.sender)][arg1] += msg.value
        emit NewVotesFor(msg.sender, arg1, msg.value);
    else:
        idx = 1
        s = 0
        t = 0
        while idx <= candidatesNumber:
            require idx < votes.length
            mem[0] = 10
            if votes[idx].field_0 <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < votes.length
            mem[0] = 10
            idx = idx + 1
            s = votes[idx].field_0
            t = idx
            continue 
        winner = t
        creatorPrize = (eth.balance(this.address) * creatorFee) - (stor12 * creatorFee) / 1000
        cryptoVersusPrize = (eth.balance(this.address) * cryptoVersusFee) - (stor12 * cryptoVersusFee) / 1000
        challengePrize = eth.balance(this.address) - stor12 - creatorPrize - cryptoVersusPrize
        uint8(stor9.field_0) = 0
        emit EndOfChallenge(winner, s, challengePrize);
        call msg.sender with:
           value stor12 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
