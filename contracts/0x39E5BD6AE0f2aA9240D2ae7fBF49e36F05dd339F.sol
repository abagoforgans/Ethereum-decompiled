contract main {


// =======================  Init code  ======================


address stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
mapping of uint256 stor21;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 18
    stor5.length.field_8 = 'Ethereum Unlimited' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'ETHU' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 18
    stor11 = 24 * 3600
    stor12 = 8760 * 24 * 3600
    stor13 = 10^17
    require not msg.value
    stor4 = msg.sender
    stor15 = 100000000000000 * 10^18
    stor16 = 10000000 * 10^18
    stor17 = 10 * 10^18
    stor18 = 10000 * 10^18
    stor19 = 0
    stor8 = block.timestamp
    stor9 = block.number
    stor21[address(msg.sender)] = 10000000 * 10^18
    stor14 = 10000000 * 10^18
    return code.data[508 len 7012]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 chainStartTime;
uint256 chainStartBlockNumber;
uint256 stakeStartTime;
uint256 stakeMinAge;
uint256 stakeMaxAge;
uint256 maxMintProofOfStake;
uint256 totalSupply;
uint256 maxTotalSupply;
uint256 totalInitialSupply;
uint256 airdropReward;
uint256 airRewardmaxTotalSupply;
uint256 airRewardTotalSupply;
mapping of uint8 stor20;
mapping of uint128 balanceOf;
mapping of uint256 allowance;
array of struct stor23;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function maxTotalSupply() {
    return maxTotalSupply
}

function decimals() {
    return decimals
}

function chainStartTime() {
    return chainStartTime
}

function balanceOf(address arg1) {
    return uint256(balanceOf[address(arg1)])
}

function stakeStartTime() {
    return stakeStartTime
}

function AirdropReward() {
    return airdropReward
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalInitialSupply() {
    return totalInitialSupply
}

function AirRewardmaxTotalSupply() {
    return airRewardmaxTotalSupply
}

function stakeMinAge() {
    return stakeMinAge
}

function chainStartBlockNumber() {
    return chainStartBlockNumber
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function AirRewardTotalSupply() {
    return airRewardTotalSupply
}

function stakeMaxAge() {
    return stakeMaxAge
}

function maxMintProofOfStake() {
    return maxMintProofOfStake
}

function _fallback() payable {
    revert
}

function annualInterest() {
    return (4000 * maxMintProofOfStake / 100)
}

function ResetAirdrop(uint256 arg1) {
    require owner == msg.sender
    airRewardTotalSupply = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function getBlockNumber() {
    require chainStartBlockNumber <= block.number
    return (block.number - chainStartBlockNumber)
}

function ownerSetStakeStartTime(uint256 arg1) {
    require owner == msg.sender
    require stakeStartTime <= 0
    require arg1 >= chainStartTime
    stakeStartTime = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function coinAge() {
    if uint256(stor23[address(msg.sender)].field_0) > 0:
        idx = 0
        while idx < uint256(stor23[address(msg.sender)].field_0):
            require idx < uint256(stor23[address(msg.sender)].field_0)
            require stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128) >= uint64(stor23[address(msg.sender)][idx].field_128)
            if block.timestamp >= stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128):
                require idx < uint256(stor23[address(msg.sender)].field_0)
                require uint64(stor23[address(msg.sender)][idx].field_128) <= block.timestamp
                require idx < uint256(stor23[address(msg.sender)].field_0)
                if block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                    require uint128(stor23[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                else:
                    require uint128(stor23[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
            mem[0] = msg.sender
            mem[32] = 23
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function checkPos() {
    require block.timestamp >= stakeStartTime
    require stakeStartTime > 0
    if uint256(stor23[address(msg.sender)].field_0) > 0:
        idx = 0
        while idx < uint256(stor23[address(msg.sender)].field_0):
            require idx < uint256(stor23[address(msg.sender)].field_0)
            require stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128) >= uint64(stor23[address(msg.sender)][idx].field_128)
            if block.timestamp >= stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128):
                require idx < uint256(stor23[address(msg.sender)].field_0)
                require uint64(stor23[address(msg.sender)][idx].field_128) <= block.timestamp
                require idx < uint256(stor23[address(msg.sender)].field_0)
                if block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                    require uint128(stor23[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                else:
                    require uint128(stor23[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
            mem[0] = msg.sender
            mem[32] = 23
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function ownerBurnToken(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= uint256(balanceOf[address(msg.sender)])
    uint256(balanceOf[address(msg.sender)]) -= arg1
    uint256(stor23[address(msg.sender)].field_0) = 0
    idx = 0
    while uint256(stor23[address(msg.sender)].field_0) > idx:
        Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor23[address(msg.sender)].field_0)++
    if not uint256(stor23[address(msg.sender)].field_0) <= uint256(stor23[address(msg.sender)].field_0) + 1:
        idx = uint256(stor23[address(msg.sender)].field_0) + 1
        while uint256(stor23[address(msg.sender)].field_0) > idx:
            Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint128(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
    uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) or uint64(block.timestamp) << 128
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalInitialSupply
    totalInitialSupply -= arg1
    require 10 * arg1 <= maxTotalSupply
    maxTotalSupply += -10 * arg1
    emit Burn(arg1, msg.sender);
}

function getAirdrop() {
    require airRewardTotalSupply < airRewardmaxTotalSupply
    require not stor20[address(msg.sender)]
    if airdropReward < 10000:
        airdropReward = 10000
    stor20[address(msg.sender)] = 1
    uint256(balanceOf[address(msg.sender)]) += airdropReward
    airRewardTotalSupply += airdropReward
    emit 0xffddf252: airdropReward, this.address, msg.sender
    uint256(stor23[address(msg.sender)].field_0) = 0
    idx = 0
    while uint256(stor23[address(msg.sender)].field_0) > idx:
        Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor23[address(msg.sender)].field_0)++
    if not uint256(stor23[address(msg.sender)].field_0) <= uint256(stor23[address(msg.sender)].field_0) + 1:
        idx = uint256(stor23[address(msg.sender)].field_0) + 1
        while uint256(stor23[address(msg.sender)].field_0) > idx:
            Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint128(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
    uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) or uint64(block.timestamp) << 128
    emit AirdropMined(airdropReward, msg.sender);
    airdropReward -= 10000
    return 1
}

function mint() {
    require totalSupply < maxTotalSupply
    if uint256(balanceOf[address(msg.sender)]) > 0:
        if uint256(stor23[address(msg.sender)].field_0) > 0:
            require block.timestamp >= stakeStartTime
            require stakeStartTime > 0
            if uint256(stor23[address(msg.sender)].field_0) > 0:
                idx = 0
                while idx < uint256(stor23[address(msg.sender)].field_0):
                    require idx < uint256(stor23[address(msg.sender)].field_0)
                    require stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128) >= uint64(stor23[address(msg.sender)][idx].field_128)
                    if block.timestamp >= stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128):
                        require idx < uint256(stor23[address(msg.sender)].field_0)
                        require uint64(stor23[address(msg.sender)][idx].field_128) <= block.timestamp
                        require idx < uint256(stor23[address(msg.sender)].field_0)
                        if block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                            require uint128(stor23[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                        else:
                            require uint128(stor23[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
                    mem[0] = msg.sender
                    mem[32] = 23
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= uint256(balanceOf[address(arg1)])
    uint256(balanceOf[address(arg1)]) -= arg3
    require arg3 + uint256(balanceOf[arg2]) >= uint256(balanceOf[arg2])
    uint256(balanceOf[address(arg2)]) = arg3 + uint256(balanceOf[arg2])
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0xffddf252: arg3, arg1, arg2
    if uint256(stor23[address(arg1)].field_0) > 0:
        uint256(stor23[address(arg1)].field_0) = 0
        idx = 0
        while uint256(stor23[address(arg1)].field_0) > idx:
            Mask(192, 0, stor23[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor23[address(arg1)].field_0)++
    if not uint256(stor23[address(arg1)].field_0) <= uint256(stor23[address(arg1)].field_0) + 1:
        idx = uint256(stor23[address(arg1)].field_0) + 1
        while uint256(stor23[address(arg1)].field_0) > idx:
            Mask(192, 0, stor23[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint128(stor23[address(arg1)][uint256(stor23[address(arg1)].field_0)].field_0) = uint128(balanceOf[address(arg1)])
    uint256(stor23[address(arg1)][uint256(stor23[address(arg1)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(arg1)][uint256(stor23[address(arg1)].field_0)].field_0) or uint64(block.timestamp) << 128
    uint256(stor23[address(arg2)].field_0)++
    if not uint256(stor23[address(arg2)].field_0) <= uint256(stor23[address(arg2)].field_0) + 1:
        idx = uint256(stor23[address(arg2)].field_0) + 1
        while uint256(stor23[address(arg2)].field_0) > idx:
            Mask(192, 0, stor23[address(arg2)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint128(stor23[address(arg2)][uint256(stor23[address(arg2)].field_0)].field_0) = uint128(arg3)
    uint256(stor23[address(arg2)][uint256(stor23[address(arg2)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(arg2)][uint256(stor23[address(arg2)].field_0)].field_0) or uint64(block.timestamp) << 128
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if msg.sender == arg1:
        require totalSupply < maxTotalSupply
        if uint256(balanceOf[address(msg.sender)]) > 0:
            if uint256(stor23[address(msg.sender)].field_0) > 0:
                require block.timestamp >= stakeStartTime
                require stakeStartTime > 0
                if uint256(stor23[address(msg.sender)].field_0) > 0:
                    idx = 0
                    while idx < uint256(stor23[address(msg.sender)].field_0):
                        require idx < uint256(stor23[address(msg.sender)].field_0)
                        require stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128) >= uint64(stor23[address(msg.sender)][idx].field_128)
                        if block.timestamp >= stakeMinAge + uint64(stor23[address(msg.sender)][idx].field_128):
                            require idx < uint256(stor23[address(msg.sender)].field_0)
                            require uint64(stor23[address(msg.sender)][idx].field_128) <= block.timestamp
                            require idx < uint256(stor23[address(msg.sender)].field_0)
                            if block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                                require uint128(stor23[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor23[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                            else:
                                require uint128(stor23[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
                        mem[0] = msg.sender
                        mem[32] = 23
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    require arg2 <= uint256(balanceOf[address(msg.sender)])
    uint256(balanceOf[address(msg.sender)]) -= arg2
    require arg2 + uint256(balanceOf[arg1]) >= uint256(balanceOf[arg1])
    uint256(balanceOf[address(arg1)]) = arg2 + uint256(balanceOf[arg1])
    emit 0xffddf252: arg2, msg.sender, arg1
    if uint256(stor23[address(msg.sender)].field_0) > 0:
        uint256(stor23[address(msg.sender)].field_0) = 0
        idx = 0
        while uint256(stor23[address(msg.sender)].field_0) > idx:
            Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor23[address(msg.sender)].field_0)++
    if not uint256(stor23[address(msg.sender)].field_0) <= uint256(stor23[address(msg.sender)].field_0) + 1:
        idx = uint256(stor23[address(msg.sender)].field_0) + 1
        while uint256(stor23[address(msg.sender)].field_0) > idx:
            Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint128(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
    uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) or uint64(block.timestamp) << 128
    uint256(stor23[address(arg1)].field_0)++
    if not uint256(stor23[address(arg1)].field_0) <= uint256(stor23[address(arg1)].field_0) + 1:
        idx = uint256(stor23[address(arg1)].field_0) + 1
        while uint256(stor23[address(arg1)].field_0) > idx:
            Mask(192, 0, stor23[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint128(stor23[address(arg1)][uint256(stor23[address(arg1)].field_0)].field_0) = uint128(arg2)
    uint256(stor23[address(arg1)][uint256(stor23[address(arg1)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(arg1)][uint256(stor23[address(arg1)].field_0)].field_0) or uint64(block.timestamp) << 128
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
        continue 
    mem[0] = msg.sender
    mem[32] = 21
    require mem[(32 * arg2.length) + (32 * arg1.length) + 160] * arg2.length <= uint256(balanceOf[address(msg.sender)])
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + uint256(balanceOf[mem[(32 * idx) + 140 len 20]]) >= uint256(balanceOf[mem[(32 * idx) + 140 len 20]])
        require idx < mem[96]
        uint256(balanceOf[mem[(32 * idx) + 140 len 20]]) += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        mem[32] = 23
        _227 = sha3(mem[(32 * idx) + 140 len 20], 23)
        uint256(stor23[mem[(32 * idx) + 140 len 20]].field_0)++
        if not uint256(stor23[mem[(32 * idx) + 140 len 20]].field_0) > uint256(stor23[mem[(32 * idx) + 140 len 20]].field_0) + 1:
            mem[0] = sha3(mem[(32 * idx) + 140 len 20], 23)
            _238 = sha3(sha3(mem[(32 * idx) + 140 len 20], 23))
            _239 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg1.length) + 128]
            mem[_239] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            mem[_239 + 32] = uint64(block.timestamp)
            uint128(stor[uint256(stor[_227]) + _238]) = mem[_239 + 16 len 16]
            uint256(stor[uint256(stor[_227]) + _238]) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor[uint256(stor[_227]) + _238]) or uint64(block.timestamp) << 128
            require idx < mem[96]
            _249 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit 0xffddf252: mem[mem[64]], msg.sender, address(_249)
        else:
            s = uint256(stor23[mem[(32 * idx) + 140 len 20]].field_0) + sha3(sha3(mem[(32 * idx) + 140 len 20], 23)) + 1
            while sha3(sha3(mem[(32 * idx) + 140 len 20], 23)) + uint256(stor23[mem[(32 * idx) + 140 len 20]].field_0) > s:
                Mask(192, 0, stor[s]) = 0
                s = s + 1
                continue 
            mem[0] = sha3(mem[(32 * idx) + 140 len 20], 23)
            _311 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg1.length) + 128]
            mem[_311] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            mem[_311 + 32] = uint64(block.timestamp)
            uint128(stor[uint256(stor[_227]) + sha3(_227)]) = mem[_311 + 16 len 16]
            uint256(stor[uint256(stor[_227]) + sha3(_227)]) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor[uint256(stor[_227]) + sha3(_227)]) or uint64(block.timestamp) << 128
            require idx < mem[96]
            _324 = mem[(32 * idx) + 128]
            mem[0] = _227
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit 0xffddf252: mem[mem[64]], msg.sender, address(_324)
        idx = idx + 1
        continue 
    require s <= uint256(balanceOf[address(msg.sender)])
    uint256(balanceOf[address(msg.sender)]) -= s
    if uint256(stor23[address(msg.sender)].field_0) > 0:
        uint256(stor23[address(msg.sender)].field_0) = 0
        idx = 0
        while uint256(stor23[address(msg.sender)].field_0) > idx:
            Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    if uint256(balanceOf[address(msg.sender)]) > 0:
        uint256(stor23[address(msg.sender)].field_0)++
        if not uint256(stor23[address(msg.sender)].field_0) <= uint256(stor23[address(msg.sender)].field_0) + 1:
            idx = uint256(stor23[address(msg.sender)].field_0) + 1
            while uint256(stor23[address(msg.sender)].field_0) > idx:
                Mask(192, 0, stor23[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint128(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
        uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) = 0xffffffffffffffff0000000000000000ffffffffffffffffffffffffffffff and uint256(stor23[address(msg.sender)][uint256(stor23[address(msg.sender)].field_0)].field_0) or uint64(block.timestamp) << 128
    return 1
}



}
