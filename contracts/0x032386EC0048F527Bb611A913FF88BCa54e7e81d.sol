contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5; offset 1
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor18;
uint256 stor20;
mapping of uint256 stor21;

function _fallback() payable {
    stor8 = 1024
    stor9 = 65536
    stor10 = 0x40000000000000000000000000000000000000000000000000000000000
    stor18 = 0
    require not msg.value
    stor0 = msg.sender
    require msg.sender == stor0
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'S+H' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 12
    stor3.length.field_8 = 'Green Stamps' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    uint256(stor5.field_0) = 2100 * 10^6 * 10^stor4
    require not stor18
    stor18 = 1
    stor20 = 10^9 * 10^stor4
    stor13 = 0
    stor14 = uint255(stor5.field_1)
    stor11 = stor10
    stor6 = block.number
    require 2^stor13 > 0
    require 2^stor13
    require stor20 + (50 * 10^stor4 / 2^stor13) >= stor20
    if stor20 + (50 * 10^stor4 / 2^stor13) > stor14:
        if stor13 < 39:
            stor13++
    require 2^(stor13 + 1) > 0
    require 2^(stor13 + 1)
    stor14 = uint256(stor5.field_0) - (uint256(stor5.field_0) / 2^(stor13 + 1))
    require stor7 + 1 >= stor7
    stor7++
    require stor8
    if not stor7 % stor8:
        if block.number - stor6 >= 60 * stor8:
            if block.number - stor6:
                require block.number - stor6
                require (100 * block.number) - (100 * stor6) / block.number - stor6 == 100
            require 60 * stor8 > 0
            require 60 * stor8
            require 100 <= (100 * block.number) - (100 * stor6) / 60 * stor8
            if ((100 * block.number) - (100 * stor6) / 60 * stor8) - 100 <= 1000:
                if stor11 / 2000:
                    require stor11 / 2000
                    require (-100 * stor11 / 2000) + ((100 * block.number) - (100 * stor6) / 60 * stor8 * stor11 / 2000) / stor11 / 2000 == ((100 * block.number) - (100 * stor6) / 60 * stor8) - 100
                require stor11 - (100 * stor11 / 2000) + ((100 * block.number) - (100 * stor6) / 60 * stor8 * stor11 / 2000) >= stor11
                stor11 = stor11 - (100 * stor11 / 2000) + ((100 * block.number) - (100 * stor6) / 60 * stor8 * stor11 / 2000)
            else:
                if stor11 / 2000:
                    require stor11 / 2000
                    require 1000 * stor11 / 2000 / stor11 / 2000 == 1000
                require stor11 + (1000 * stor11 / 2000) >= stor11
                stor11 += 1000 * stor11 / 2000
        else:
            if 60 * stor8:
                require 60 * stor8
                require 6000 * stor8 / 60 * stor8 == 100
            require block.number - stor6 > 0
            require block.number - stor6
            require 100 <= 6000 * stor8 / block.number - stor6
            if (6000 * stor8 / block.number - stor6) - 100 <= 1000:
                if stor11 / 2000:
                    require stor11 / 2000
                    require (-100 * stor11 / 2000) + (6000 * stor8 / block.number - stor6 * stor11 / 2000) / stor11 / 2000 == (6000 * stor8 / block.number - stor6) - 100
                require (-100 * stor11 / 2000) + (6000 * stor8 / block.number - stor6 * stor11 / 2000) <= stor11
                stor11 = stor11 + (100 * stor11 / 2000) - (6000 * stor8 / block.number - stor6 * stor11 / 2000)
            else:
                if stor11 / 2000:
                    require stor11 / 2000
                    require 1000 * stor11 / 2000 / stor11 / 2000 == 1000
                require 1000 * stor11 / 2000 <= stor11
                stor11 += -1000 * stor11 / 2000
        stor6 = block.number
        if stor11 < stor9:
            stor11 = stor9
        if stor11 > stor10:
            stor11 = stor10
    stor12 = block.hash(block.number - 1)
    require stor21[stor0] + stor20 >= stor21[stor0]
    stor21[stor0] += stor20
    emit Transfer(stor20, this.address, stor0);
    return code.data[2371 len 8324]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
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
uint256 lastRewardAmount;
uint256 lastRewardEthBlockNumber;
mapping of uint256 stor19;
uint256 tokensMinted;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
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
    return lastRewardToAddress
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
    return symbol[0 len symbol.length]
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
    return (_totalSupply - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function getMintDigest(uint256 arg1, bytes32 arg2, bytes32 arg3) {
    return sha3(arg3, msg.sender, arg1)
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
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function mint(uint256 arg1, bytes32 arg2) {
    require sha3(challengeNumber, msg.sender, arg1) == arg2
    require sha3(challengeNumber, msg.sender, arg1) <= miningTarget
    stor19[stor12] = sha3(challengeNumber, msg.sender, arg1)
    require not stor19[stor12]
    require 2^rewardEra > 0
    require 2^rewardEra
    require balanceOf[address(msg.sender)] + (50 * 10^decimals / 2^rewardEra) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 50 * 10^decimals / 2^rewardEra
    require tokensMinted + (50 * 10^decimals / 2^rewardEra) >= tokensMinted
    tokensMinted += 50 * 10^decimals / 2^rewardEra
    require tokensMinted <= maxSupplyForEra
    lastRewardToAddress = msg.sender
    lastRewardAmount = 50 * 10^decimals / 2^rewardEra
    lastRewardEthBlockNumber = block.number
    require 2^rewardEra > 0
    require 2^rewardEra
    require tokensMinted + (50 * 10^decimals / 2^rewardEra) >= tokensMinted
    if tokensMinted + (50 * 10^decimals / 2^rewardEra) > maxSupplyForEra:
        if rewardEra < 39:
            rewardEra++
    require 2^(rewardEra + 1) > 0
    require 2^(rewardEra + 1)
    maxSupplyForEra = _totalSupply - (_totalSupply / 2^(rewardEra + 1))
    require epochCount + 1 >= epochCount
    epochCount++
    require _BLOCKS_PER_READJUSTMENT
    if not epochCount % _BLOCKS_PER_READJUSTMENT:
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
                require miningTarget - (100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) >= miningTarget
                miningTarget = miningTarget - (100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 60 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000)
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require miningTarget + (1000 * miningTarget / 2000) >= miningTarget
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
    challengeNumber = block.hash(block.number - 1)
    emit Mint(50 * 10^decimals / 2^rewardEra, epochCount, challengeNumber, msg.sender);
    return 1
}



}
