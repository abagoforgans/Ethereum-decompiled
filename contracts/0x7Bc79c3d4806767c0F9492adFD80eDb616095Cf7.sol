contract main {




// =====================  Runtime code  =====================


address avatarAddress;
mapping of struct lockers;
mapping of uint256 scores;
uint256 totalLocked;
uint256 totalLockedLeft;
uint256 totalScore;
uint256 lockingsCounter;
uint256 reputationReward;
uint256 reputationRewardLeft;
uint256 lockingEndTime;
uint256 maxLockingPeriod;
uint256 lockingStartTime;
uint256 redeemEnableTime;
address priceOracleContractAddress;
mapping of address lockedTokens;

function redeemEnableTime() payable {
    return redeemEnableTime
}

function priceOracleContract() payable {
    return priceOracleContractAddress
}

function lockingStartTime() payable {
    return lockingStartTime
}

function totalLocked() payable {
    return totalLocked
}

function avatar() payable {
    return avatarAddress
}

function scores(address arg1) payable {
    require calldata.size - 4 >= 32
    return scores[arg1]
}

function lockers(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return lockers[arg1][arg2].field_0, lockers[arg1][arg2].field_256
}

function lockingEndTime() payable {
    return lockingEndTime
}

function reputationRewardLeft() payable {
    return reputationRewardLeft
}

function maxLockingPeriod() payable {
    return maxLockingPeriod
}

function totalScore() payable {
    return totalScore
}

function lockingsCounter() payable {
    return lockingsCounter
}

function totalLockedLeft() payable {
    return totalLockedLeft
}

function lockedTokens(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedTokens[arg1]
}

function reputationReward() payable {
    return reputationReward
}

function _fallback() payable {
    revert
}

function release(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if 0 >= lockers[address(arg1)][arg2].field_0:
        revert with 0, 'amount should be > 0'
    lockers[address(arg1)][arg2].field_0 = 0
    if block.timestamp <= lockers[address(arg1)][arg2].field_256:
        revert with 0, 'check the lock period pass'
    require lockers[address(arg1)][arg2].field_0 <= totalLockedLeft
    totalLockedLeft -= lockers[address(arg1)][arg2].field_0
    emit Release(lockers[address(arg1)][arg2].field_0, arg2, arg1);
    require ext_code.size(lockedTokens[arg2]) > 0
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, lockers[address(arg1)][arg2].field_32
    call lockedTokens[arg2] with:
         gas gas_remaining wei
        args lockers[address(arg1)][arg2].field_0, mem[324 len 4]
    require return_data.size
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    if return_data.size:
        require 32 == return_data.size
        require 31 < return_data.size
        require Mask(8, 224, mem[323 len 29]) << 24
    return 1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    priceOracleContractAddress = arg7
    if avatarAddress:
        revert with 0, 'can be called only one time'
    if not arg1:
        revert with 0, 'avatar cannot be zero'
    if arg4 <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x646c6f636b696e6720656e642074696d652073686f756c642062652067726561746572207468616e206c6f636b696e672073746172742074696d,
                    mem[222 len 6]
    if arg5 < arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6472656465656d456e61626c6554696d65203e3d206c6f636b696e67456e6454696d,
                    mem[198 len 30]
    reputationReward = arg2
    reputationRewardLeft = arg2
    lockingEndTime = arg4
    maxLockingPeriod = arg6
    avatarAddress = arg1
    lockingStartTime = arg3
    redeemEnableTime = arg5
}

function redeem(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= redeemEnableTime:
        revert with 0, 'now > redeemEnableTime'
    if scores[address(arg1)] <= 0:
        revert with 0, 'score should be > 0'
    scores[address(arg1)] = 0
    if not scores[address(arg1)]:
        require totalScore > 0
        require totalScore
        require 0 / totalScore <= reputationRewardLeft
        reputationRewardLeft -= 0 / totalScore
        require ext_code.size(avatarAddress)
        staticcall avatarAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xeaf994b2 with:
             gas gas_remaining wei
            args 0 / totalScore, address(arg1), avatarAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'mint reputation should succeed'
        emit Redeem((0 / totalScore), arg1);
        return (0 / totalScore)
    require reputationReward * scores[address(arg1)] / scores[address(arg1)] == reputationReward
    require totalScore > 0
    require totalScore
    require reputationReward * scores[address(arg1)] / totalScore <= reputationRewardLeft
    reputationRewardLeft -= reputationReward * scores[address(arg1)] / totalScore
    require ext_code.size(avatarAddress)
    staticcall avatarAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xeaf994b2 with:
         gas gas_remaining wei
        args reputationReward * scores[address(arg1)] / totalScore, address(arg1), avatarAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'mint reputation should succeed'
    emit Redeem((reputationReward * scores[address(arg1)] / totalScore), arg1);
    return (reputationReward * scores[address(arg1)] / totalScore)
}

function lock(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(priceOracleContractAddress)
    staticcall priceOracleContractAddress.getPrice(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'numerator should be > 0'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'denominator should be > 0'
    require ext_code.size(arg3) > 0
    mem[324 len 96] = Mask(32, 224, sha3(0xfe7472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536)) >> 224, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[448 len 4] = uint32(arg1)
    call arg3 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[420 len 4]
    require return_data.size
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    if return_data.size:
        require 32 == return_data.size
        require 31 < return_data.size
        require Mask(8, 248, mem[387])
    if arg1 <= 0:
        revert with 0, 'locking amount should be > 0'
    if arg2 > maxLockingPeriod:
        revert with 0, 
                    32,
                    44,
                    0x656c6f636b696e6720706572696f642073686f756c64206265203c3d206d61784c6f636b696e67506572696f,
                    mem[ceil32(return_data.size) + 437 len 20]
    if arg2 <= 0:
        revert with 0, 'locking period should be > 0'
    if block.timestamp > lockingEndTime:
        revert with 0, 
                    32,
                    48,
                    0x656c6f636b2073686f756c642062652077697468696e2074686520616c6c6f776564206c6f636b696e6720706572696f,
                    mem[ceil32(return_data.size) + 441 len 16]
    if block.timestamp < lockingStartTime:
        revert with 0, 
                    32,
                    40,
                    0x296c6f636b2073686f756c64207374617274206166746572206c6f636b696e67537461727454696d,
                    mem[ceil32(return_data.size) + 433 len 24]
    require lockingsCounter + 1 >= lockingsCounter
    lockingsCounter++
    lockers[address(msg.sender)][('map', 'address', ('stor', ('name', 'stor6', 6)))].field_0 = arg1
    lockers[address(msg.sender)][('map', 'address', ('stor', ('name', 'stor6', 6)))].field_256 = arg2 + block.timestamp
    require arg1 + totalLocked >= totalLocked
    totalLocked += arg1
    require arg1 + totalLockedLeft >= totalLockedLeft
    totalLockedLeft += arg1
    if not arg2:
        require ext_call.return_data[32] > 0
        require ext_call.return_data[32]
        if 0 / ext_call.return_data[32] <= 0:
            revert with 0, 'score must me > 0'
        require (0 / ext_call.return_data[32]) + scores[address(msg.sender)] >= scores[address(msg.sender)]
        scores[address(msg.sender)] += 0 / ext_call.return_data[32]
        require (0 / ext_call.return_data[32]) + scores[address(msg.sender)]
        if (0 / ext_call.return_data[32] * reputationReward) + (scores[address(msg.sender)] * reputationReward) / (0 / ext_call.return_data[32]) + scores[address(msg.sender)] != reputationReward:
            revert with 0, 'score is too high'
        require (0 / ext_call.return_data[32]) + totalScore >= totalScore
        totalScore += 0 / ext_call.return_data[32]
    else:
        require arg1 * arg2 / arg2 == arg1
        if not arg1 * arg2:
            require ext_call.return_data[32] > 0
            require ext_call.return_data[32]
            if 0 / ext_call.return_data[32] <= 0:
                revert with 0, 'score must me > 0'
            require (0 / ext_call.return_data[32]) + scores[address(msg.sender)] >= scores[address(msg.sender)]
            scores[address(msg.sender)] += 0 / ext_call.return_data[32]
            require (0 / ext_call.return_data[32]) + scores[address(msg.sender)]
            if (0 / ext_call.return_data[32] * reputationReward) + (scores[address(msg.sender)] * reputationReward) / (0 / ext_call.return_data[32]) + scores[address(msg.sender)] != reputationReward:
                revert with 0, 'score is too high'
            require (0 / ext_call.return_data[32]) + totalScore >= totalScore
            totalScore += 0 / ext_call.return_data[32]
        else:
            require ext_call.return_data[0] * arg1 * arg2 / arg1 * arg2 == ext_call.return_data[0]
            require ext_call.return_data[32] > 0
            require ext_call.return_data[32]
            if ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32] <= 0:
                revert with 0, 'score must me > 0'
            require (ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32]) + scores[address(msg.sender)] >= scores[address(msg.sender)]
            scores[address(msg.sender)] += ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32]
            require (ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32]) + scores[address(msg.sender)]
            if (ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32] * reputationReward) + (scores[address(msg.sender)] * reputationReward) / (ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32]) + scores[address(msg.sender)] != reputationReward:
                revert with 0, 'score is too high'
            require (ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32]) + totalScore >= totalScore
            totalScore += ext_call.return_data[0] * arg1 * arg2 / ext_call.return_data[32]
    emit Lock(arg1, arg2, msg.sender, sha3(this.address, lockingsCounter));
    lockedTokens[this.address][stor6] = arg3
    emit LockToken(ext_call.return_data[0], ext_call.return_data[32], sha3(this.address, lockingsCounter), arg3);
    return sha3(this.address, lockingsCounter)
}



}
