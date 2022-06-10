contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5; offset 1
uint256 _totalSupply;
uint256 latestDifficultyPeriodStarted;
uint256 epochCount;
uint256 _BLOCKS_PER_READJUSTMENT;
uint256 _MINIMUM_TARGET;
uint256 _MAXIMUM_TARGET;
uint256 miningTarget;
uint256 challengeNumber;
uint256 rewardEra;
uint256 maxSupplyForEra;
address lastRewardToAddress;
uint256 stor15;
uint256 lastRewardAmount;
uint256 lastRewardEthBlockNumber;
uint8 stor18;
mapping of uint256 stor19;
uint256 tokensMinted;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 storA315;

function name() {
    return name[0 len name.length].field_0
}

function lastRewardEthBlockNumber() {
    return lastRewardEthBlockNumber
}

function rewardEra() {
    return rewardEra
}

function decimals() {
    return decimals
}

function getMiningTarget() {
    return miningTarget
}

function _totalSupply() {
    return _totalSupply
}

function getChallengeNumber() {
    return challengeNumber
}

function maxSupplyForEra() {
    return maxSupplyForEra
}

function tokensMinted() {
    return tokensMinted
}

function lastRewardTo() {
    return address(lastRewardToAddress)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    return symbol[0 len symbol.length].field_0
}

function _BLOCKS_PER_READJUSTMENT() {
    return _BLOCKS_PER_READJUSTMENT
}

function lastRewardAmount() {
    return lastRewardAmount
}

function latestDifficultyPeriodStarted() {
    return latestDifficultyPeriodStarted
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

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - storA315)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function getMiningReward() {
    require 2^rewardEra > 0
    require 2^rewardEra
    return (50 * 10^decimals / 2^rewardEra)
}

function getMiningDifficulty() {
    require miningTarget > 0
    require miningTarget
    return (_MAXIMUM_TARGET / miningTarget)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkMintSolution(uint256 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) {
    require sha3(arg3, msg.sender, arg1) <= arg4
    return (sha3(arg3, msg.sender, arg1) == arg2)
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _ORAK() {
    require msg.sender == owner
    uint8(symbol.length) = 8
    symbol.length.field_8 = 'ORAK' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(name.length) = 8
    name.length.field_8 = 'ORAK' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 8
    _totalSupply = 100000001919 * 10^8
    require not stor18
    stor18 = 1
    tokensMinted = 1919
    rewardEra = 0
    maxSupplyForEra = stor5
    miningTarget = _MAXIMUM_TARGET
    latestDifficultyPeriodStarted = block.number
    require 2^rewardEra > 0
    require 2^rewardEra
    require (50 * 10^decimals / 2^rewardEra) + tokensMinted >= tokensMinted
    if (50 * 10^decimals / 2^rewardEra) + tokensMinted > maxSupplyForEra:
        if rewardEra < 39:
            rewardEra++
    require 2^(rewardEra + 1) > 0
    require 2^(rewardEra + 1)
    maxSupplyForEra = _totalSupply - (_totalSupply / 2^(rewardEra + 1))
    require epochCount + 1 >= epochCount
    epochCount++
    require _BLOCKS_PER_READJUSTMENT
    if not epochCount + 1 % _BLOCKS_PER_READJUSTMENT:
        if block.number - latestDifficultyPeriodStarted >= 60 * _BLOCKS_PER_READJUSTMENT:
            if block.number - latestDifficultyPeriodStarted:
                require block.number - latestDifficultyPeriodStarted
                require (100 * block.number) - (100 * latestDifficultyPeriodStarted) / block.number - latestDifficultyPeriodStarted == 100
            require 60 * _BLOCKS_PER_READJUSTMENT > 0
            require 60 * _BLOCKS_PER_READJUSTMENT
            require 100 <= (100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT
            if ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT) - 100 <= 1000:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) / miningTarget / 2000 == ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT) - 100
                require (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) + miningTarget >= miningTarget
                miningTarget = (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) + miningTarget
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require (1000 * miningTarget / 2000) + miningTarget >= miningTarget
                miningTarget += 1000 * miningTarget / 2000
        else:
            if 60 * _BLOCKS_PER_READJUSTMENT:
                require 60 * _BLOCKS_PER_READJUSTMENT
                require 6000 * _BLOCKS_PER_READJUSTMENT / 60 * _BLOCKS_PER_READJUSTMENT == 100
            require block.number - latestDifficultyPeriodStarted > 0
            require block.number - latestDifficultyPeriodStarted
            require 100 <= 6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted
            if (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted) - 100 <= 1000:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require (-100 * miningTarget / 2000) + (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000) / miningTarget / 2000 == (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted) - 100
                require (-100 * miningTarget / 2000) + (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000) <= miningTarget
                miningTarget = miningTarget + (100 * miningTarget / 2000) - (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000)
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require 1000 * miningTarget / 2000 <= miningTarget
                miningTarget += -1000 * miningTarget / 2000
        latestDifficultyPeriodStarted = block.number
        if miningTarget < _MINIMUM_TARGET:
            miningTarget = _MINIMUM_TARGET
        if miningTarget > _MAXIMUM_TARGET:
            miningTarget = _MAXIMUM_TARGET
}

function mint(uint256 arg1, bytes32 arg2) {
    require sha3(challengeNumber, msg.sender, arg1) == arg2
    require sha3(challengeNumber, msg.sender, arg1) <= miningTarget
    stor19[stor12] = sha3(challengeNumber, msg.sender, arg1)
    require not stor19[stor12]
    require 2^rewardEra > 0
    require 2^rewardEra
    require (50 * 10^decimals / 2^rewardEra) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += 50 * 10^decimals / 2^rewardEra
    require (50 * 10^decimals / 2^rewardEra) + tokensMinted >= tokensMinted
    tokensMinted += 50 * 10^decimals / 2^rewardEra
    require maxSupplyForEra >= (50 * 10^decimals / 2^rewardEra) + tokensMinted
    uint256(stor15) = msg.sender or Mask(96, 160, uint256(stor15))
    lastRewardAmount = 50 * 10^decimals / 2^rewardEra
    lastRewardEthBlockNumber = block.number
    require 2^rewardEra > 0
    require 2^rewardEra
    require (50 * 10^decimals / 2^rewardEra) + tokensMinted >= tokensMinted
    if (50 * 10^decimals / 2^rewardEra) + tokensMinted > maxSupplyForEra:
        if rewardEra < 39:
            rewardEra++
    require 2^(rewardEra + 1) > 0
    require 2^(rewardEra + 1)
    maxSupplyForEra = _totalSupply - (_totalSupply / 2^(rewardEra + 1))
    require epochCount + 1 >= epochCount
    epochCount++
    require _BLOCKS_PER_READJUSTMENT
    if not epochCount + 1 % _BLOCKS_PER_READJUSTMENT:
        if block.number - latestDifficultyPeriodStarted >= 60 * _BLOCKS_PER_READJUSTMENT:
            if block.number - latestDifficultyPeriodStarted:
                require block.number - latestDifficultyPeriodStarted
                require (100 * block.number) - (100 * latestDifficultyPeriodStarted) / block.number - latestDifficultyPeriodStarted == 100
            require 60 * _BLOCKS_PER_READJUSTMENT > 0
            require 60 * _BLOCKS_PER_READJUSTMENT
            require 100 <= (100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT
            if ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT) - 100 <= 1000:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) / miningTarget / 2000 == ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT) - 100
                require (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) + miningTarget >= miningTarget
                miningTarget = (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) + miningTarget
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require (1000 * miningTarget / 2000) + miningTarget >= miningTarget
                miningTarget += 1000 * miningTarget / 2000
        else:
            if 60 * _BLOCKS_PER_READJUSTMENT:
                require 60 * _BLOCKS_PER_READJUSTMENT
                require 6000 * _BLOCKS_PER_READJUSTMENT / 60 * _BLOCKS_PER_READJUSTMENT == 100
            require block.number - latestDifficultyPeriodStarted > 0
            require block.number - latestDifficultyPeriodStarted
            require 100 <= 6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted
            if (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted) - 100 <= 1000:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require (-100 * miningTarget / 2000) + (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000) / miningTarget / 2000 == (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted) - 100
                require (-100 * miningTarget / 2000) + (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000) <= miningTarget
                miningTarget = miningTarget + (100 * miningTarget / 2000) - (6000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000)
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require 1000 * miningTarget / 2000 <= miningTarget
                miningTarget += -1000 * miningTarget / 2000
        latestDifficultyPeriodStarted = block.number
        if miningTarget < _MINIMUM_TARGET:
            miningTarget = _MINIMUM_TARGET
        if miningTarget > _MAXIMUM_TARGET:
            miningTarget = _MAXIMUM_TARGET
    emit Mint(50 * 10^decimals / 2^rewardEra, epochCount, challengeNumber, msg.sender);
    return 1
}



}
