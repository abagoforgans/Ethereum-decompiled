contract main {




// =====================  Runtime code  =====================


#
#  - getActiveBuckets(uint256 arg1, uint256 arg2)
#  - getActiveBucketCreateTimes(uint256 arg1, uint256 arg2)
#  - getActiveBucketIdx(uint256 arg1, uint256 arg2)
#
const sub_580c8f3d(?) = (24 * 3600)

const sub_5fec5c64(?) = 0

const sub_76f70003(?) = 350

const sub_c698d495(?) = 3

const minStakeAmount = 100 * 10^18

const sub_fe8a8b4c(?) = 500


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
address tokenAddress;
mapping of struct buckets;
uint256 stor4;
array of struct sub_423ce1ae;

function sub_423ce1ae(?) {
    require arg2 < sub_423ce1ae[arg1].field_0
    return sub_423ce1ae[arg1][arg2].field_0
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor1[arg1])
}

function buckets(uint256 arg1) {
    return Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), 
           buckets[arg1].field_256,
           buckets[arg1].field_512,
           buckets[arg1].field_768,
           bool(uint8(buckets[arg1].field_1024)),
           buckets[arg1].field_1280,
           address(buckets[arg1].field_1536),
           buckets[arg1].field_1792,
           buckets[arg1].field_2048,
           buckets[arg1].field_2304
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function addAddressToWhitelist(address arg1) {
    require owner == msg.sender
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require owner == msg.sender
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function totalStaked() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function revote(uint256 arg1, bytes12 arg2, bytes arg3) {
    require not uint8(stor0.field_160)
    require msg.sender
    if address(buckets[arg1].field_1536) != msg.sender:
        revert with 0, 'sender is not the owner.'
    if buckets[arg1].field_1280:
        revert with 0, 'cannot revote during unstaking.'
    Mask(96, 0, buckets[arg1].field_0) = Mask(96, 160, arg2) >> 160
    emit BucketUpdated(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_512, buckets[arg1].field_768, bool(uint8(buckets[arg1].field_1024)), address(buckets[arg1].field_1536), Array(len=arg3.length, data=arg3[all]));
}

function addAddressesToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require owner == msg.sender
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require owner == msg.sender
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if not stor1[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function unstake(uint256 arg1, bytes arg2) {
    require not uint8(stor0.field_160)
    require msg.sender
    if address(buckets[arg1].field_1536) != msg.sender:
        revert with 0, 'sender is not the owner.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'bucket 0 cannot be unstaked and withdrawn.'
    if uint8(buckets[arg1].field_1024):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot unstake with nonDecay flag. Need to disable non-decay mode first.'
    require buckets[arg1].field_768 + (24 * 3600 * buckets[arg1].field_512) >= buckets[arg1].field_768
    if buckets[arg1].field_768 + (24 * 3600 * buckets[arg1].field_512) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Staking time does not expire yet. Please wait until staking expires.'
    if buckets[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unstaked already. No need to unstake again.'
    buckets[arg1].field_1280 = block.timestamp
    emit BucketUnstake(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_256, Array(len=arg2.length, data=arg2[all]));
}

function getBucketIndexesByAddress(address arg1) {
    if not sub_423ce1ae[address(arg1)].field_0:
        mem[(32 * sub_423ce1ae[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_423ce1ae[address(arg1)].field_0) + 160] = sub_423ce1ae[address(arg1)].field_0
        mem[(32 * sub_423ce1ae[address(arg1)].field_0) + 192 len floor32(sub_423ce1ae[address(arg1)].field_0)] = mem[128 len floor32(sub_423ce1ae[address(arg1)].field_0)]
        return memory
          from (32 * sub_423ce1ae[address(arg1)].field_0) + 128
           len (96 * sub_423ce1ae[address(arg1)].field_0) + 64
    mem[128] = sub_423ce1ae[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_423ce1ae[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_423ce1ae[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_423ce1ae[address(arg1)].field_0) + 192 len floor32(sub_423ce1ae[address(arg1)].field_0)] = mem[128 len floor32(sub_423ce1ae[address(arg1)].field_0)]
    return Array(len=sub_423ce1ae[address(arg1)].field_0, data=mem[128 len floor32(sub_423ce1ae[address(arg1)].field_0)], mem[(32 * sub_423ce1ae[address(arg1)].field_0) + floor32(sub_423ce1ae[address(arg1)].field_0) + 192 len (32 * sub_423ce1ae[address(arg1)].field_0) - floor32(sub_423ce1ae[address(arg1)].field_0)]), 
}

function restake(uint256 arg1, uint256 arg2, bool arg3, bytes arg4) {
    require not uint8(stor0.field_160)
    require msg.sender
    if address(buckets[arg1].field_1536) != msg.sender:
        revert with 0, 'sender is not the owner.'
    if arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The stake duration is too small or large'
    if arg2 > 350:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The stake duration is too small or large'
    if arg2 % 7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The stake duration should be multiple of 7'
    require buckets[arg1].field_768 + (24 * 3600 * buckets[arg1].field_512) >= buckets[arg1].field_768
    require block.timestamp + (24 * 3600 * arg2) >= block.timestamp
    if block.timestamp + (24 * 3600 * arg2) < buckets[arg1].field_768 + (24 * 3600 * buckets[arg1].field_512):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'current stake duration not finished.'
    if uint8(buckets[arg1].field_1024):
        if arg2 < buckets[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot reduce the stake duration.'
    buckets[arg1].field_512 = arg2
    buckets[arg1].field_768 = block.timestamp
    uint8(buckets[arg1].field_1024) = uint8(arg3)
    buckets[arg1].field_1280 = 0
    emit BucketUpdated(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_512, buckets[arg1].field_768, bool(uint8(buckets[arg1].field_1024)), address(buckets[arg1].field_1536), Array(len=arg4.length, data=arg4[all]));
}

function createBucket(bytes12 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes arg5) {
    require not uint8(stor0.field_160)
    if arg3 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The stake duration is too small or large'
    if arg3 > 350:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The stake duration is too small or large'
    if arg3 % 7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The stake duration should be multiple of 7'
    if arg2 < 100 * 10^18:
        revert with 0, 'amount should >= 100.'
    if sub_423ce1ae[address(msg.sender)].field_0 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'One address can have up limited buckets'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Stake required'
    Mask(96, 0, buckets[stor4].field_0) = Mask(96, 160, arg1) >> 160
    buckets[stor4].field_256 = arg2
    buckets[stor4].field_512 = arg3
    buckets[stor4].field_768 = block.timestamp
    uint8(buckets[stor4].field_1024) = uint8(arg4)
    buckets[stor4].field_1280 = 0
    address(buckets[stor4].field_1536) = msg.sender
    buckets[stor4].field_1792 = block.timestamp
    buckets[stor4].field_2048 = buckets[0].field_2048
    buckets[stor4].field_2304 = 0
    buckets[buckets[0].field_2048].field_2304 = stor4
    buckets[0].field_2048 = stor4
    sub_423ce1ae[address(msg.sender)].field_0++
    sub_423ce1ae[address(msg.sender)][sub_423ce1ae[address(msg.sender)].field_0].field_0 = stor4
    stor4++
    emit BucketCreated(stor4 - 1, Mask(96, 160, arg1), arg2, arg3, arg4, Array(len=arg5.length, data=arg5[all]));
    return (stor4 - 1)
}

function setBucketOwner(uint256 arg1, address arg2, bytes arg3) payable {
    mem[64] = 96
    require not msg.value
    require not uint8(stor0.field_160)
    require stor1[address(msg.sender)]
    require msg.sender
    if address(buckets[arg1].field_1536) != msg.sender:
        revert with 0, 'sender is not the owner.'
    if sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Expect the owner has at least one bucket index'
    mem[0] = address(buckets[arg1].field_1536)
    mem[32] = 5
    idx = 0
    while idx < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0:
        require idx < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
        if sub_423ce1ae[address(stor3[arg1].field_1536)][idx].field_0 != arg1:
            mem[0] = address(buckets[arg1].field_1536)
            mem[32] = 5
            idx = idx + 1
            continue 
        s = idx
        while s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
            require s + 1 < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
            require s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
            sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_0 = sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_256
            mem[0] = address(buckets[arg1].field_1536)
            mem[32] = 5
            s = s + 1
            continue 
        sub_423ce1ae[address(stor3[arg1].field_1536)].field_0--
        if sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
            mem[0] = sha3(address(buckets[arg1].field_1536), 5)
            idx = sha3(mem[0]) + sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1
            while sha3(sha3(address(buckets[arg1].field_1536), 5)) + sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > idx:
                stor[idx] = 0
                mem[0] = address(buckets[arg1].field_1536)
                mem[32] = 5
                idx = idx + 1
                continue 
        address(buckets[arg1].field_1536) = arg2
        sub_423ce1ae[address(arg2)].field_0++
        sub_423ce1ae[address(arg2)][sub_423ce1ae[address(arg2)].field_0].field_0 = arg1
        mem[128 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + 128] = 0
        idx = 0
        while idx < arg3.length:
            mem[ceil32(arg3.length) + idx + 1024] = mem[idx + 128]
            mem[0] = address(buckets[arg1].field_1536)
            mem[32] = 5
            idx = idx + 32
            continue 
        emit BucketUpdated(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_512, buckets[arg1].field_768, bool(uint8(buckets[arg1].field_1024)), address(buckets[arg1].field_1536), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 1024 len arg3.length]));
    s = idx
    while s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
        require s + 1 < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
        require s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
        sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_0 = sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_256
        mem[0] = address(buckets[arg1].field_1536)
        mem[32] = 5
        s = s + 1
        continue 
    sub_423ce1ae[address(stor3[arg1].field_1536)].field_0--
    if sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
        idx = sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1
        while sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > idx:
            sub_423ce1ae[address(stor3[arg1].field_1536)][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(buckets[arg1].field_1536) = arg2
    sub_423ce1ae[address(arg2)].field_0++
    sub_423ce1ae[address(arg2)][sub_423ce1ae[address(arg2)].field_0].field_0 = arg1
    emit BucketUpdated(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_512, buckets[arg1].field_768, bool(uint8(buckets[arg1].field_1024)), address(buckets[arg1].field_1536), Array(len=arg3.length, data=arg3[all]));
}

function withdraw(uint256 arg1, bytes arg2) {
    require not uint8(stor0.field_160)
    require msg.sender
    if address(buckets[arg1].field_1536) != msg.sender:
        revert with 0, 'sender is not the owner.'
    if buckets[arg1].field_1280 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please unstake first before withdraw.'
    require buckets[arg1].field_1280 + (72 * 24 * 3600) >= buckets[arg1].field_1280
    if buckets[arg1].field_1280 + (72 * 24 * 3600) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Stakeholder needs to wait for 3 days before withdrawing tokens.'
    buckets[buckets[arg1].field_2048].field_2304 = buckets[arg1].field_2304
    buckets[buckets[arg1].field_2304].field_2048 = buckets[arg1].field_2048
    buckets[arg1].field_256 = 0
    if sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Expect the owner has at least one bucket index'
    mem[0] = address(buckets[arg1].field_1536)
    idx = 0
    while idx < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0:
        require idx < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
        if sub_423ce1ae[address(stor3[arg1].field_1536)][idx].field_0 != arg1:
            mem[0] = address(buckets[arg1].field_1536)
            mem[32] = 5
            idx = idx + 1
            continue 
        s = idx
        while s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
            require s + 1 < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
            require s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
            sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_0 = sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_256
            mem[0] = address(buckets[arg1].field_1536)
            mem[32] = 5
            s = s + 1
            continue 
        sub_423ce1ae[address(stor3[arg1].field_1536)].field_0--
        if sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
            mem[0] = sha3(address(buckets[arg1].field_1536), 5)
            idx = sha3(mem[0]) + sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1
            while sha3(sha3(address(buckets[arg1].field_1536), 5)) + sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > idx:
                stor[idx] = 0
                mem[0] = address(buckets[arg1].field_1536)
                mem[32] = 5
                idx = idx + 1
                continue 
        Mask(96, 0, buckets[arg1].field_0) = 0
        buckets[arg1].field_256 = 0
        buckets[arg1].field_512 = 0
        buckets[arg1].field_768 = 0
        uint8(buckets[arg1].field_1024) = 0
        buckets[arg1].field_1280 = 0
        address(buckets[arg1].field_1536) = 0
        buckets[arg1].field_1792 = 0
        buckets[arg1].field_2048 = 0
        buckets[arg1].field_2304 = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(buckets[arg1].field_1536), buckets[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Unable to withdraw stake'
        emit BucketWithdraw(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_256, Array(len=arg2.length, data=arg2[all]));
    s = idx
    while s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
        require s + 1 < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
        require s < sub_423ce1ae[address(stor3[arg1].field_1536)].field_0
        sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_0 = sub_423ce1ae[address(stor3[arg1].field_1536)][s].field_256
        mem[0] = address(buckets[arg1].field_1536)
        mem[32] = 5
        s = s + 1
        continue 
    sub_423ce1ae[address(stor3[arg1].field_1536)].field_0--
    if sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1:
        idx = sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 - 1
        while sub_423ce1ae[address(stor3[arg1].field_1536)].field_0 > idx:
            sub_423ce1ae[address(stor3[arg1].field_1536)][idx].field_0 = 0
            idx = idx + 1
            continue 
    Mask(96, 0, buckets[arg1].field_0) = 0
    buckets[arg1].field_256 = 0
    buckets[arg1].field_512 = 0
    buckets[arg1].field_768 = 0
    uint8(buckets[arg1].field_1024) = 0
    buckets[arg1].field_1280 = 0
    address(buckets[arg1].field_1536) = 0
    buckets[arg1].field_1792 = 0
    buckets[arg1].field_2048 = 0
    buckets[arg1].field_2304 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(buckets[arg1].field_1536), buckets[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to withdraw stake'
    emit BucketWithdraw(arg1, Mask(96, 160, Mask(96, 0, buckets[arg1].field_0)), buckets[arg1].field_256, Array(len=arg2.length, data=arg2[all]));
}



}
