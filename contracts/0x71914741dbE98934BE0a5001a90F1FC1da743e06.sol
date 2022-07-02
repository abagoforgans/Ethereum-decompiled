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

function redeemEnableTime() {
    return redeemEnableTime
}

function lockingStartTime() {
    return lockingStartTime
}

function totalLocked() {
    return totalLocked
}

function avatar() {
    return avatarAddress
}

function scores(address arg1) {
    require calldata.size - 4 >= 32
    return scores[arg1]
}

function lockers(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return lockers[arg1][arg2].field_0, lockers[arg1][arg2].field_256
}

function lockingEndTime() {
    return lockingEndTime
}

function reputationRewardLeft() {
    return reputationRewardLeft
}

function maxLockingPeriod() {
    return maxLockingPeriod
}

function totalScore() {
    return totalScore
}

function lockingsCounter() {
    return lockingsCounter
}

function totalLockedLeft() {
    return totalLockedLeft
}

function reputationReward() {
    return reputationReward
}

function _fallback() payable {
    revert
}

function release(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if 0 >= lockers[address(arg1)][arg2].field_0:
        revert with 0, 'amount should be > 0'
    lockers[address(arg1)][arg2].field_0 = 0
    if block.timestamp <= lockers[address(arg1)][arg2].field_256:
        revert with 0, 'check the lock period pass'
    require lockers[address(arg1)][arg2].field_0 <= totalLockedLeft
    totalLockedLeft -= lockers[address(arg1)][arg2].field_0
    emit Release(lockers[address(arg1)][arg2].field_0, arg2, arg1);
    call arg1 with:
       value lockers[address(arg1)][arg2].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
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

function redeem(address arg1) {
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
        call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
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
    call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
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

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value <= 0:
        revert with 0, 'locking amount should be > 0'
    if arg1 > maxLockingPeriod:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x656c6f636b696e6720706572696f642073686f756c64206265203c3d206d61784c6f636b696e67506572696f,
                    mem[208 len 20]
    if arg1 <= 0:
        revert with 0, 'locking period should be > 0'
    if block.timestamp > lockingEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x656c6f636b2073686f756c642062652077697468696e2074686520616c6c6f776564206c6f636b696e6720706572696f,
                    mem[212 len 16]
    if block.timestamp < lockingStartTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe6c6f636b2073686f756c64207374617274206166746572206c6f636b696e67537461727454696d,
                    mem[204 len 24]
    require lockingsCounter + 1 >= lockingsCounter
    lockingsCounter++
    lockers[address(msg.sender)][('map', 'address', ('stor', ('name', 'stor6', 6)))].field_0 = msg.value
    lockers[address(msg.sender)][('map', 'address', ('stor', ('name', 'stor6', 6)))].field_256 = arg1 + block.timestamp
    require msg.value + totalLocked >= totalLocked
    totalLocked += msg.value
    require msg.value + totalLockedLeft >= totalLockedLeft
    totalLockedLeft += msg.value
    if not arg1:
        revert with 0, 'score must me > 0'
    require msg.value * arg1 / arg1 == msg.value
    if not msg.value * arg1:
        revert with 0, 'score must me > 0'
    require msg.value * arg1 / msg.value * arg1 == 1
    if msg.value * arg1 <= 0:
        revert with 0, 'score must me > 0'
    require (msg.value * arg1) + scores[address(msg.sender)] >= scores[address(msg.sender)]
    scores[address(msg.sender)] += msg.value * arg1
    require (msg.value * arg1) + scores[address(msg.sender)]
    if (msg.value * arg1 * reputationReward) + (scores[address(msg.sender)] * reputationReward) / (msg.value * arg1) + scores[address(msg.sender)] != reputationReward:
        revert with 0, 'score is too high'
    require (msg.value * arg1) + totalScore >= totalScore
    totalScore += msg.value * arg1
    emit Lock(msg.value, arg1, msg.sender, sha3(this.address, lockingsCounter));
    return sha3(this.address, lockingsCounter)
}



}
