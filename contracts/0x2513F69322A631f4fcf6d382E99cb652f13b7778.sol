contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 challengeDuration;
uint256 challengeStarted;
uint16 creatorFee; offset 160
address creatorAddress;
uint16 cryptoVersusFee; offset 160
address cryptoVersusWalletAddress;
uint256 cryptoVersusPrize;
uint256 challengePrize;
uint256 winner;
bool stor8; offset 256
uint8 isVotingPeriod;
uint8 beforeVoting; offset 8
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;
mapping of struct stor13;

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
    return bool(beforeVoting)
}

function cryptoVersusFee() {
    return cryptoVersusFee
}

function challengePrize() {
    return challengePrize
}

function winner() {
    return winner
}

function isVotingPeriod() {
    return bool(isVotingPeriod)
}

function creatorFee() {
    return creatorFee
}

function _fallback() payable {
    revert
}

function getAllVotes() {
    return stor9.length, stor11
}

function timeOver() {
    return challengeDuration + challengeStarted <= block.timestamp
}

function teams(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return stor9[arg1], stor10[arg1]
}

function currentCoefficient() {
    require challengeDuration
    return (-((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration) + 10^6)
}

function startChallenge() {
    require msg.sender == creatorAddress
    require beforeVoting
    isVotingPeriod = 1
    beforeVoting = 0
    stor8 = 0
    challengeStarted = block.timestamp
    emit ChallengeBegins(creatorAddress, challengeDuration);
}

function sendCryptoVersusReward() {
    require not isVotingPeriod
    if cryptoVersusPrize > 0:
        cryptoVersusPrize = 0
        call cryptoVersusWalletAddress with:
           value cryptoVersusPrize wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit CryptoVersusRewardWasPaid(cryptoVersusWalletAddress, cryptoVersusPrize);
}

function checkEndOfChallenge() {
    require isVotingPeriod
    if challengeDuration + challengeStarted > block.timestamp:
        return 0
    if stor9.length <= stor11:
        winner = 1
    else:
        winner = 0
    require -winner + 1 < 2
    call creatorAddress with:
       value stor9[-stor7 + 1] * creatorFee / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require -winner + 1 < 2
    cryptoVersusPrize = stor9[-stor7 + 1] * cryptoVersusFee / 1000
    require -winner + 1 < 2
    challengePrize = stor9[-stor7 + 1] * uint16(-creatorFee + -cryptoVersusFee + 1000) / 1000
    isVotingPeriod = 0
    require winner < 2
    emit EndOfChallenge(winner, stor9[stor7], challengePrize);
    return 1
}

function voteForCandidate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require isVotingPeriod
    require 0 <= arg1
    require arg1 < 2
    require msg.value > 0
    require challengeDuration + challengeStarted > block.timestamp
    require challengeDuration
    require arg1 < 2
    stor9[arg1] += msg.value
    stor10[arg1] += (10^6 * msg.value) - ((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration * msg.value) / 10^6
    stor13[msg.sender][arg1].field_0 += msg.value
    stor13[msg.sender][arg1].field_512 += (10^6 * msg.value) - ((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration * msg.value) / 10^6
    emit NewVotesFor(msg.sender, arg1, msg.value, -((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration) + 10^6);
}

function voteForCandidate(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require isVotingPeriod
    stor13[msg.sender].field_1024 = arg2
    require 0 <= arg1
    require arg1 < 2
    require msg.value > 0
    require challengeDuration + challengeStarted > block.timestamp
    require challengeDuration
    require arg1 < 2
    stor9[arg1] += msg.value
    stor10[arg1] += (10^6 * msg.value) - ((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration * msg.value) / 10^6
    stor13[msg.sender][arg1].field_0 += msg.value
    stor13[msg.sender][arg1].field_512 += (10^6 * msg.value) - ((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration * msg.value) / 10^6
    emit NewVotesFor(msg.sender, arg1, msg.value, -((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration) + 10^6);
}

function voteForCandidate(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require isVotingPeriod
    stor13[msg.sender].field_1280 = arg3
    stor13[msg.sender].field_1024 = arg2
    require 0 <= arg1
    require arg1 < 2
    require msg.value > 0
    require challengeDuration + challengeStarted > block.timestamp
    require challengeDuration
    require arg1 < 2
    stor9[arg1] += msg.value
    stor10[arg1] += (10^6 * msg.value) - ((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration * msg.value) / 10^6
    stor13[msg.sender][arg1].field_0 += msg.value
    stor13[msg.sender][arg1].field_512 += (10^6 * msg.value) - ((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration * msg.value) / 10^6
    emit NewVotesFor(msg.sender, arg1, msg.value, -((250 * 3600 * block.timestamp) - (250 * 3600 * challengeStarted) / challengeDuration) + 10^6);
}

function sendReward(address arg1) {
    require calldata.size - 4 >= 32
    require not isVotingPeriod
    require winner < 2
    require -winner + 1 < 2
    if stor13[address(arg1)][stor7].field_512 > 0:
        require winner < 2
        require stor10[stor7]
        require winner < 2
        call arg1 with:
           value (challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7]) + stor13[address(arg1)][stor7].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor13[address(arg1)].field_1024:
            require ext_code.size(stor0)
            call stor0.forward(address arg1, address arg2) with:
               value 2 * challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7] / 100 wei
                 gas gas_remaining wei
                args stor13[address(arg1)].field_1024, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            cryptoVersusPrize -= 2 * challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7] / 100
            emit 0xfea1a0fb: address(arg1), stor13[address(arg1)].field_1024, 2 * challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7] / 100
        if stor13[address(arg1)].field_1280:
            require ext_code.size(stor0)
            call stor0.forward(address arg1, address arg2) with:
               value 2 * challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7] / 1000 wei
                 gas gas_remaining wei
                args stor13[address(arg1)].field_1280, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            cryptoVersusPrize -= 2 * challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7] / 1000
            emit 0xfea1a0fb: address(arg1), stor13[address(arg1)].field_1280, 2 * challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7] / 1000
        require winner < 2
        stor13[address(arg1)][stor7].field_0 = 0
        stor13[address(arg1)][stor7].field_512 = 0
        emit RewardWasPaid(address(arg1), challengePrize * stor13[address(arg1)][stor7].field_512 / stor10[stor7]);
    if stor13[address(arg1)][stor7].field_256 > 0:
        if stor13[address(arg1)].field_1024:
            require ext_code.size(stor0)
            call stor0.forward(address arg1, address arg2) with:
               value stor13[address(arg1)][stor7].field_256 / 100 wei
                 gas gas_remaining wei
                args stor13[address(arg1)].field_1024, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            cryptoVersusPrize -= stor13[address(arg1)][stor7].field_256 / 100
            emit 0xfea1a0fb: address(arg1), stor13[address(arg1)].field_1024, stor13[address(arg1)][stor7].field_256 / 100
        if stor13[address(arg1)].field_1280:
            require ext_code.size(stor0)
            call stor0.forward(address arg1, address arg2) with:
               value stor13[address(arg1)][stor7].field_256 / 1000 wei
                 gas gas_remaining wei
                args stor13[address(arg1)].field_1280, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            cryptoVersusPrize -= stor13[address(arg1)][stor7].field_256 / 1000
            emit 0xfea1a0fb: address(arg1), stor13[address(arg1)].field_1280, stor13[address(arg1)][stor7].field_256 / 1000
}



}
