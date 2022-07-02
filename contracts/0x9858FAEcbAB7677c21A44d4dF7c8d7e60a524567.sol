contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1)
#
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
address owner;
address sub_7f33ccacAddress;
array of uint256 sub_f0167cfa;
mapping of uint8 stor16;
mapping of uint8 stor17;

function redeemEnableTime() payable {
    return redeemEnableTime
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

function sub_7f33ccac(?) payable {
    return sub_7f33ccacAddress
}

function lockers(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return lockers[arg1][arg2].field_0, lockers[arg1][arg2].field_256
}

function owner() payable {
    return owner
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

function sub_dd9d2deb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function sub_e397cb9e(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function reputationReward() payable {
    return reputationReward
}

function sub_f0167cfa(?) payable {
    return sub_f0167cfa[0 len sub_f0167cfa.length]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function register() payable {
    stor17[msg.sender] = 1
    emit Register(msg.sender);
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_eff5c5bd(?) payable {
    require calldata.size - 4 >= 224
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + ('cd', 196).length + 36 <= calldata.size
    if cd[100] <= cd[68]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x655f636c61696d696e67456e6454696d652073686f756c642062652067726561746572207468616e205f636c61696d696e67537461727454696d,
                    mem[222 len 6]
    sub_7f33ccacAddress = address(cd[164])
    sub_f0167cfa.length = (2 * ('cd', 196).length) + 1
    s = 0
    idx = cd[196] + 36
    while cd[196] + ('cd', 196).length + 36 > idx:
        sub_f0167cfa[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 196).length + 31) >> 5
    while sub_f0167cfa.length + 31 / 32 > idx:
        sub_f0167cfa[idx] = 0
        idx = idx + 1
        continue 
    if avatarAddress:
        revert with 0, 'can be called only one time'
    if not address(cd[4]):
        revert with 0, 'avatar cannot be zero'
    if cd[100] <= cd[68]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x646c6f636b696e6720656e642074696d652073686f756c642062652067726561746572207468616e206c6f636b696e672073746172742074696d,
                    mem[222 len 6]
    if cd[132] < cd[100]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6472656465656d456e61626c6554696d65203e3d206c6f636b696e67456e6454696d,
                    mem[198 len 30]
    reputationReward = cd[36]
    reputationRewardLeft = cd[36]
    lockingEndTime = cd[100]
    maxLockingPeriod = 1
    avatarAddress = address(cd[4])
    lockingStartTime = cd[68]
    redeemEnableTime = cd[132]
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



}
