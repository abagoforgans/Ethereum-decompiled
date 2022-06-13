contract main {




// =====================  Runtime code  =====================


#
#  - sub_bc7aa54d(?)
#
address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _maxSupply;
uint256 _totalSupply;
uint256 latestDifficultyPeriodStarted;
uint256 epochCount;
uint256 _MINIMUM_TARGET;
uint256 _MAXIMUM_TARGET;
uint256 miningTarget;
uint256 challengeNumber;
address lastRewardToAddress;
uint256 lastRewardAmount;
uint256 lastRewardEthBlockNumber;
uint256 sub_e1968232;
mapping of uint256 solutionForChallenge;
mapping of uint256 miningTarget;
mapping of uint256 timeStampForEpoch;
mapping of uint256 balanceOf;
mapping of address donationTo;
mapping of uint256 allowance;
array of uint256 messages;

function name() {
    return name[0 len name.length]
}

function lastRewardEthBlockNumber() {
    return lastRewardEthBlockNumber
}

function _maxSupply() {
    return _maxSupply
}

function timeStampForEpoch(uint256 arg1) {
    return timeStampForEpoch[arg1]
}

function decimals() {
    return decimals
}

function getMiningTarget() {
    return miningTarget[stor8]
}

function _totalSupply() {
    return _totalSupply
}

function getChallengeNumber() {
    return challengeNumber
}

function messages(address arg1) {
    return messages[arg1][0 len messages[arg1].length]
}

function lastRewardTo() {
    return lastRewardToAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function targetForEpoch(uint256 arg1) {
    return miningTarget[arg1]
}

function epochCount() {
    return epochCount
}

function _MAXIMUM_TARGET() {
    return _MAXIMUM_TARGET
}

function miningTarget() {
    return miningTarget
}

function challengeNumber() {
    return challengeNumber
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function solutionForChallenge(bytes32 arg1) {
    return solutionForChallenge[arg1]
}

function lastRewardAmount() {
    return lastRewardAmount
}

function latestDifficultyPeriodStarted() {
    return latestDifficultyPeriodStarted
}

function donationTo(address arg1) {
    return donationTo[address(arg1)]
}

function newOwner() {
    return newOwner
}

function _MINIMUM_TARGET() {
    return _MINIMUM_TARGET
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1968232(?) {
    return sub_e1968232
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function totalSupply() {
    require balanceOf[0] <= _totalSupply
    return (_totalSupply - balanceOf[0])
}

function getMintDigest(uint256 arg1, bytes32 arg2, bytes32 arg3) {
    return sha3(arg3, msg.sender, arg1)
}

function changeDonation(address arg1) {
    donationTo[address(msg.sender)] = arg1
    emit DonationAddressOf(msg.sender, arg1);
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function getMiningDifficulty() {
    require miningTarget[stor8] > 0
    require miningTarget[stor8]
    return (_MAXIMUM_TARGET / miningTarget[stor8])
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkMintSolution(uint256 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) {
    require sha3(arg3, msg.sender, arg1) <= arg4
    return (sha3(arg3, msg.sender, arg1) == arg2)
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferAndDonateTo(address arg1, uint256 arg2, address arg3) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -arg2 + 5000
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(arg3)] + 5000 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)] += 5000
    emit Transfer(arg2, msg.sender, arg1);
    emit Donation(arg3);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -arg2 + 5000
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require balanceOf[stor21[address(msg.sender)]] + 5000 >= balanceOf[stor21[address(msg.sender)]]
    balanceOf[stor21[address(msg.sender)]] += 5000
    emit Transfer(arg2, msg.sender, arg1);
    emit Donation(donationTo[address(msg.sender)]);
    return 1
}

function getMiningReward() {
    if epochCount > 160000:
        return (50000 * 10^decimals)
    if epochCount > 140000:
        return (75000 * 10^decimals)
    if epochCount > 120000:
        return (125000 * 10^decimals)
    if epochCount > 100000:
        return (250000 * 10^decimals)
    if epochCount > 80000:
        return (500000 * 10^decimals)
    if epochCount > 60000:
        return (10^6 * 10^decimals)
    if epochCount > 40000:
        return (sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals)
    if epochCount <= 20000:
        return (sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals)
    return (sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[stor21[address(arg1)]] + 5000 >= balanceOf[stor21[address(arg1)]]
    balanceOf[stor21[address(arg1)]] += 5000
    require balanceOf[stor21[address(msg.sender)]] + 5000 >= balanceOf[stor21[address(msg.sender)]]
    balanceOf[stor21[address(msg.sender)]] += 5000
    emit Transfer(arg3, arg1, arg2);
    emit Donation(donationTo[address(arg1)]);
    emit Donation(donationTo[address(msg.sender)]);
    return 1
}

function mint(uint256 arg1, bytes32 arg2) {
    require sha3(challengeNumber, msg.sender, arg1) == arg2
    require sha3(challengeNumber, msg.sender, arg1) <= miningTarget
    solutionForChallenge[stor12] = sha3(challengeNumber, msg.sender, arg1)
    require not solutionForChallenge[arg2]
    if epochCount > 160000:
        require _totalSupply + (50000 * 10^decimals) >= _totalSupply
        require _totalSupply + (50000 * 10^decimals) <= _maxSupply
        require balanceOf[address(msg.sender)] + (50000 * 10^decimals) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 50000 * 10^decimals
        require _totalSupply + (50000 * 10^decimals) >= _totalSupply
        _totalSupply += 50000 * 10^decimals
        lastRewardToAddress = msg.sender
        lastRewardAmount = 50000 * 10^decimals
        lastRewardEthBlockNumber = block.number
        timeStampForEpoch[stor8] = block.timestamp
        require epochCount + 1 >= epochCount
        epochCount++
        require 2 <= epochCount
        require 1 <= epochCount
        require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
        if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
            require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
            require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
        require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
        require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
        require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
        require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
        require 1 <= epochCount
        if miningTarget[stor8 - 1]:
            require miningTarget[stor8 - 1]
            require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
        require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
        require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
        miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
        latestDifficultyPeriodStarted = block.number
        miningTarget = miningTarget[stor8]
        require 1 <= block.number
        challengeNumber = block.hash(block.number - 1)
        emit Mint(50000 * 10^decimals, epochCount, challengeNumber, msg.sender);
    else:
        if epochCount > 140000:
            require _totalSupply + (75000 * 10^decimals) >= _totalSupply
            require _totalSupply + (75000 * 10^decimals) <= _maxSupply
            require balanceOf[address(msg.sender)] + (75000 * 10^decimals) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 75000 * 10^decimals
            require _totalSupply + (75000 * 10^decimals) >= _totalSupply
            _totalSupply += 75000 * 10^decimals
            lastRewardToAddress = msg.sender
            lastRewardAmount = 75000 * 10^decimals
            lastRewardEthBlockNumber = block.number
            timeStampForEpoch[stor8] = block.timestamp
            require epochCount + 1 >= epochCount
            epochCount++
            require 2 <= epochCount
            require 1 <= epochCount
            require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
            if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
            require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
            require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
            require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
            require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
            require 1 <= epochCount
            if miningTarget[stor8 - 1]:
                require miningTarget[stor8 - 1]
                require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
            require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
            require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
            miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
            latestDifficultyPeriodStarted = block.number
            miningTarget = miningTarget[stor8]
            require 1 <= block.number
            challengeNumber = block.hash(block.number - 1)
            emit Mint(75000 * 10^decimals, epochCount, challengeNumber, msg.sender);
        else:
            if epochCount > 120000:
                require _totalSupply + (125000 * 10^decimals) >= _totalSupply
                require _totalSupply + (125000 * 10^decimals) <= _maxSupply
                require balanceOf[address(msg.sender)] + (125000 * 10^decimals) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 125000 * 10^decimals
                require _totalSupply + (125000 * 10^decimals) >= _totalSupply
                _totalSupply += 125000 * 10^decimals
                lastRewardToAddress = msg.sender
                lastRewardAmount = 125000 * 10^decimals
                lastRewardEthBlockNumber = block.number
                timeStampForEpoch[stor8] = block.timestamp
                require epochCount + 1 >= epochCount
                epochCount++
                require 2 <= epochCount
                require 1 <= epochCount
                require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                    require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                    require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                require 1 <= epochCount
                if miningTarget[stor8 - 1]:
                    require miningTarget[stor8 - 1]
                    require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                latestDifficultyPeriodStarted = block.number
                miningTarget = miningTarget[stor8]
                require 1 <= block.number
                challengeNumber = block.hash(block.number - 1)
                emit Mint(125000 * 10^decimals, epochCount, challengeNumber, msg.sender);
            else:
                if epochCount > 100000:
                    require _totalSupply + (250000 * 10^decimals) >= _totalSupply
                    require _totalSupply + (250000 * 10^decimals) <= _maxSupply
                    require balanceOf[address(msg.sender)] + (250000 * 10^decimals) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 250000 * 10^decimals
                    require _totalSupply + (250000 * 10^decimals) >= _totalSupply
                    _totalSupply += 250000 * 10^decimals
                    lastRewardToAddress = msg.sender
                    lastRewardAmount = 250000 * 10^decimals
                    lastRewardEthBlockNumber = block.number
                    timeStampForEpoch[stor8] = block.timestamp
                    require epochCount + 1 >= epochCount
                    epochCount++
                    require 2 <= epochCount
                    require 1 <= epochCount
                    require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                    if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                        require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                        require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                    require 1 <= epochCount
                    if miningTarget[stor8 - 1]:
                        require miningTarget[stor8 - 1]
                        require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                    miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                    latestDifficultyPeriodStarted = block.number
                    miningTarget = miningTarget[stor8]
                    require 1 <= block.number
                    challengeNumber = block.hash(block.number - 1)
                    emit Mint(250000 * 10^decimals, epochCount, challengeNumber, msg.sender);
                else:
                    if epochCount > 80000:
                        require _totalSupply + (500000 * 10^decimals) >= _totalSupply
                        require _totalSupply + (500000 * 10^decimals) <= _maxSupply
                        require balanceOf[address(msg.sender)] + (500000 * 10^decimals) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 500000 * 10^decimals
                        require _totalSupply + (500000 * 10^decimals) >= _totalSupply
                        _totalSupply += 500000 * 10^decimals
                        lastRewardToAddress = msg.sender
                        lastRewardAmount = 500000 * 10^decimals
                        lastRewardEthBlockNumber = block.number
                        timeStampForEpoch[stor8] = block.timestamp
                        require epochCount + 1 >= epochCount
                        epochCount++
                        require 2 <= epochCount
                        require 1 <= epochCount
                        require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                        if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                            require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                            require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                        require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                        require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                        require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                        require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                        require 1 <= epochCount
                        if miningTarget[stor8 - 1]:
                            require miningTarget[stor8 - 1]
                            require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                        require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                        require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                        miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                        latestDifficultyPeriodStarted = block.number
                        miningTarget = miningTarget[stor8]
                        require 1 <= block.number
                        challengeNumber = block.hash(block.number - 1)
                        emit Mint(500000 * 10^decimals, epochCount, challengeNumber, msg.sender);
                    else:
                        if epochCount > 60000:
                            require _totalSupply + (10^6 * 10^decimals) >= _totalSupply
                            require _totalSupply + (10^6 * 10^decimals) <= _maxSupply
                            require balanceOf[address(msg.sender)] + (10^6 * 10^decimals) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^6 * 10^decimals
                            require _totalSupply + (10^6 * 10^decimals) >= _totalSupply
                            _totalSupply += 10^6 * 10^decimals
                            lastRewardToAddress = msg.sender
                            lastRewardAmount = 10^6 * 10^decimals
                            lastRewardEthBlockNumber = block.number
                            timeStampForEpoch[stor8] = block.timestamp
                            require epochCount + 1 >= epochCount
                            epochCount++
                            require 2 <= epochCount
                            require 1 <= epochCount
                            require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                            if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                                require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                                require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                            require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                            require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                            require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                            require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                            require 1 <= epochCount
                            if miningTarget[stor8 - 1]:
                                require miningTarget[stor8 - 1]
                                require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                            require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                            require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                            miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                            latestDifficultyPeriodStarted = block.number
                            miningTarget = miningTarget[stor8]
                            require 1 <= block.number
                            challengeNumber = block.hash(block.number - 1)
                            emit Mint(10^6 * 10^decimals, epochCount, challengeNumber, msg.sender);
                        else:
                            if epochCount > 40000:
                                require _totalSupply + (sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals) >= _totalSupply
                                require _totalSupply + (sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals) <= _maxSupply
                                require balanceOf[address(msg.sender)] + (sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals
                                require _totalSupply + (sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals) >= _totalSupply
                                _totalSupply += sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals
                                lastRewardToAddress = msg.sender
                                lastRewardAmount = sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals
                                lastRewardEthBlockNumber = block.number
                                timeStampForEpoch[stor8] = block.timestamp
                                require epochCount + 1 >= epochCount
                                epochCount++
                                require 2 <= epochCount
                                require 1 <= epochCount
                                require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                                if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                                    require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                                    require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                                require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                                require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                                require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                                require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                                require 1 <= epochCount
                                if miningTarget[stor8 - 1]:
                                    require miningTarget[stor8 - 1]
                                    require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                                require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                                require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                                miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                                latestDifficultyPeriodStarted = block.number
                                miningTarget = miningTarget[stor8]
                                require 1 <= block.number
                                challengeNumber = block.hash(block.number - 1)
                                emit Mint(sha3(solutionForChallenge[stor12]) % 2500000 * 10^decimals, epochCount, challengeNumber, msg.sender);
                            else:
                                if epochCount <= 20000:
                                    require _totalSupply + (sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals) >= _totalSupply
                                    require _totalSupply + (sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals) <= _maxSupply
                                    require balanceOf[address(msg.sender)] + (sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals
                                    require _totalSupply + (sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals) >= _totalSupply
                                    _totalSupply += sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals
                                    lastRewardToAddress = msg.sender
                                    lastRewardAmount = sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals
                                    lastRewardEthBlockNumber = block.number
                                    timeStampForEpoch[stor8] = block.timestamp
                                    require epochCount + 1 >= epochCount
                                    epochCount++
                                    require 2 <= epochCount
                                    require 1 <= epochCount
                                    require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                                    if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                                        require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                                        require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                                    require 1 <= epochCount
                                    if miningTarget[stor8 - 1]:
                                        require miningTarget[stor8 - 1]
                                        require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                                    miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                                    latestDifficultyPeriodStarted = block.number
                                    miningTarget = miningTarget[stor8]
                                    require 1 <= block.number
                                    challengeNumber = block.hash(block.number - 1)
                                    emit Mint(sha3(solutionForChallenge[stor12]) % 5 * 10^6 * 10^decimals, epochCount, challengeNumber, msg.sender);
                                else:
                                    require _totalSupply + (sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals) >= _totalSupply
                                    require _totalSupply + (sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals) <= _maxSupply
                                    require balanceOf[address(msg.sender)] + (sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals
                                    require _totalSupply + (sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals) >= _totalSupply
                                    _totalSupply += sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals
                                    lastRewardToAddress = msg.sender
                                    lastRewardAmount = sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals
                                    lastRewardEthBlockNumber = block.number
                                    timeStampForEpoch[stor8] = block.timestamp
                                    require epochCount + 1 >= epochCount
                                    epochCount++
                                    require 2 <= epochCount
                                    require 1 <= epochCount
                                    require timeStampForEpoch[stor8 - 2] <= timeStampForEpoch[stor8 - 1]
                                    if timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]:
                                        require timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2]
                                        require (1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / timeStampForEpoch[stor8 - 1] - timeStampForEpoch[stor8 - 2] == 1042
                                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 >= 5180
                                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180 > 0
                                    require ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 >= 24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180
                                    require 1 <= epochCount
                                    if miningTarget[stor8 - 1]:
                                        require miningTarget[stor8 - 1]
                                        require 10000 * miningTarget[stor8 - 1] / miningTarget[stor8 - 1] == 10000
                                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180 > 0
                                    require (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                                    miningTarget[stor8] = 10000 * miningTarget[stor8 - 1] / (24225600 / ((1042 * timeStampForEpoch[stor8 - 1]) - (1042 * timeStampForEpoch[stor8 - 2]) / 300) + 5180) + 6180
                                    latestDifficultyPeriodStarted = block.number
                                    miningTarget = miningTarget[stor8]
                                    require 1 <= block.number
                                    challengeNumber = block.hash(block.number - 1)
                                    emit Mint(sha3(solutionForChallenge[stor12]) % 3500000 * 10^decimals, epochCount, challengeNumber, msg.sender);
    return 1
}



}
