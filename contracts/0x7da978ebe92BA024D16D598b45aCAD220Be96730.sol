contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 bid;
address avatarAddress;
uint256 reputationRewardLeft;
uint256 auctionsEndTime;
uint256 auctionsStartTime;
uint256 numberOfAuctions;
uint256 auctionReputationReward;
uint256 auctionPeriod;
uint256 redeemEnableTime;
address tokenAddress;
uint32 stor11;
address walletAddress;
uint256 stor11;

function auctionPeriod() payable {
    return auctionPeriod
}

function auctionReputationReward() payable {
    return auctionReputationReward
}

function getBid(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return bid[arg2][1][address(arg1)]
}

function redeemEnableTime() payable {
    return redeemEnableTime
}

function numberOfAuctions() payable {
    return numberOfAuctions
}

function wallet() payable {
    return address(walletAddress)
}

function auctionsEndTime() payable {
    return auctionsEndTime
}

function auctions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bid[arg1]
}

function avatar() payable {
    return avatarAddress
}

function owner() payable {
    return owner
}

function auctionsStartTime() payable {
    return auctionsStartTime
}

function reputationRewardLeft() payable {
    return reputationRewardLeft
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function transferToWallet() payable {
    if block.timestamp <= auctionsEndTime:
        revert with 0, 'now > auctionsEndTime'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress) > 0
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(stor11)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    require return_data.size
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    if return_data.size:
        require 32 == return_data.size
        require 31 < return_data.size
        require Mask(8, 224, mem[323 len 29]) << 24
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if avatarAddress:
        revert with 0, 'can be called only one time'
    if not arg1:
        revert with 0, 'avatar cannot be zero'
    if arg5 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x656e756d626572206f662061756374696f6e732063616e6e6f74206265207a6572,
                    mem[197 len 31]
    if arg4 <= 15:
        revert with 0, 'auctionPeriod should be > 15'
    auctionPeriod = arg4
    if not arg4:
        auctionsEndTime = arg3
        if arg6 < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x645f72656465656d456e61626c6554696d65203e3d2061756374696f6e73456e6454696d,
                        mem[200 len 28]
    else:
        require arg5 * arg4 / arg4 == arg5
        auctionsEndTime = arg3 + (arg5 * arg4)
        if arg6 < arg3 + (arg5 * arg4):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x645f72656465656d456e61626c6554696d65203e3d2061756374696f6e73456e6454696d,
                        mem[200 len 28]
    tokenAddress = arg7
    avatarAddress = arg1
    auctionsStartTime = arg3
    numberOfAuctions = arg5
    address(walletAddress) = arg8
    auctionReputationReward = arg2
    if not arg2:
        reputationRewardLeft = 0
    else:
        require arg5 * arg2 / arg2 == arg5
        reputationRewardLeft = arg5 * arg2
    redeemEnableTime = arg6
}

function bid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'bidding amount should be > 0'
    if block.timestamp >= auctionsEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe62696464696e672073686f756c642062652077697468696e2074686520616c6c6f7765642062696464696e6720706572696f,
                    mem[215 len 13]
    if block.timestamp < auctionsStartTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x2962696464696e6720697320656e61626c65206f6e6c792061667465722062696464696e672061756374696f6e73537461727454696d,
                    mem[218 len 10]
    require ext_code.size(tokenAddress) > 0
    mem[324 len 96] = Mask(32, 224, sha3(0x657472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536)) >> 224, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[420 len 4]
    require return_data.size
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    if return_data.size:
        require 32 == return_data.size
        require 31 < return_data.size
        require Mask(8, 248, mem[387])
    require auctionPeriod
    if block.timestamp - auctionsStartTime / auctionPeriod != arg2:
        revert with 0, 'auction is not active'
    require arg1 + bid[block.timestamp - stor5 / stor8] >= bid[block.timestamp - stor5 / stor8]
    bid[block.timestamp - stor5 / stor8] += arg1
    require arg1 + bid[block.timestamp - stor5 / stor8][1][msg.sender] >= bid[block.timestamp - stor5 / stor8][1][msg.sender]
    bid[block.timestamp - stor5 / stor8][1][msg.sender] += arg1
    emit Bid(arg1, msg.sender, block.timestamp - auctionsStartTime / auctionPeriod);
    return (block.timestamp - auctionsStartTime / auctionPeriod)
}

function redeem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp <= redeemEnableTime:
        revert with 0, 'now > redeemEnableTime'
    if bid[arg2][1][address(arg1)] <= 0:
        revert with 0, 'bidding amount should be > 0'
    bid[arg2][1][address(arg1)] = 0
    if not bid[arg2][1][address(arg1)]:
        require bid[arg2] > 0
        require bid[arg2]
        require 0 / bid[arg2] <= reputationRewardLeft
        reputationRewardLeft -= 0 / bid[arg2]
        require ext_code.size(avatarAddress)
        staticcall avatarAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xeaf994b2 with:
             gas gas_remaining wei
            args 0 / bid[arg2], address(arg1), avatarAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'mint reputation should succeed'
        emit Redeem((0 / bid[arg2]), arg2, arg1);
        return (0 / bid[arg2])
    require auctionReputationReward * bid[arg2][1][address(arg1)] / bid[arg2][1][address(arg1)] == auctionReputationReward
    require bid[arg2] > 0
    require bid[arg2]
    require auctionReputationReward * bid[arg2][1][address(arg1)] / bid[arg2] <= reputationRewardLeft
    reputationRewardLeft -= auctionReputationReward * bid[arg2][1][address(arg1)] / bid[arg2]
    require ext_code.size(avatarAddress)
    staticcall avatarAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xeaf994b2 with:
         gas gas_remaining wei
        args auctionReputationReward * bid[arg2][1][address(arg1)] / bid[arg2], address(arg1), avatarAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'mint reputation should succeed'
    emit Redeem((auctionReputationReward * bid[arg2][1][address(arg1)] / bid[arg2]), arg2, arg1);
    return (auctionReputationReward * bid[arg2][1][address(arg1)] / bid[arg2])
}



}
