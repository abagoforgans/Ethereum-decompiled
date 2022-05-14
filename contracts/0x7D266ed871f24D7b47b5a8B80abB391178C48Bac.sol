contract main {




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
uint256 annualInterest;
uint256 totalSupply;
uint256 maxTotalSupply;
uint256 totalInitialSupply;
mapping of uint128 balanceOf;
mapping of uint256 allowance;
array of struct stor19;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function maxTotalSupply() {
    return maxTotalSupply
}

function MintProofOfStake() {
    return annualInterest
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalInitialSupply() {
    return totalInitialSupply
}

function annualInterest() {
    return annualInterest
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

function stakeMaxAge() {
    return stakeMaxAge
}

function _fallback() payable {
    revert
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    annualInterest = arg1 * 10^decimals
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getBlockNumber() {
    require chainStartBlockNumber <= block.number
    return (block.number - chainStartBlockNumber)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ownerSetStakeStartTime(uint256 arg1) {
    require msg.sender == owner
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

function ownerBurnToken(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= uint256(balanceOf[address(msg.sender)])
    uint256(balanceOf[address(msg.sender)]) -= arg1
    uint256(stor19[address(msg.sender)].field_0) = 0
    idx = 0
    while uint256(stor19[address(msg.sender)].field_0) > idx:
        uint128(stor19[address(msg.sender)][idx].field_0) = 0
        uint64(stor19[address(msg.sender)][idx].field_128) = 0
        idx = idx + 1
        continue 
    uint256(stor19[address(msg.sender)].field_0)++
    uint128(stor19[address(msg.sender)][uint256(stor19[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
    uint64(stor19[address(msg.sender)][uint256(stor19[address(msg.sender)].field_0)].field_128) = uint64(block.timestamp)
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalInitialSupply
    totalInitialSupply -= arg1
    require 10 * arg1 <= maxTotalSupply
    maxTotalSupply += -10 * arg1
    emit Burn(arg1, msg.sender);
}

function coinAge() {
    if uint256(stor19[address(msg.sender)].field_0) > 0:
        idx = 0
        while idx < uint256(stor19[address(msg.sender)].field_0):
            require idx < uint256(stor19[address(msg.sender)].field_0)
            require uint64(stor19[address(msg.sender)][idx].field_128) + stakeMinAge >= uint64(stor19[address(msg.sender)][idx].field_128)
            if block.timestamp >= uint64(stor19[address(msg.sender)][idx].field_128) + stakeMinAge:
                require idx < uint256(stor19[address(msg.sender)].field_0)
                require uint64(stor19[address(msg.sender)][idx].field_128) <= block.timestamp
                require idx < uint256(stor19[address(msg.sender)].field_0)
                if block.timestamp - uint64(stor19[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                    require uint128(stor19[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor19[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                else:
                    require uint128(stor19[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
            mem[0] = msg.sender
            mem[32] = 19
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= uint256(balanceOf[address(arg1)])
    uint256(balanceOf[address(arg1)]) -= arg3
    require uint256(balanceOf[address(arg2)]) + arg3 >= uint256(balanceOf[address(arg2)])
    uint256(balanceOf[address(arg2)]) += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if uint256(stor19[address(arg1)].field_0) > 0:
        uint256(stor19[address(arg1)].field_0) = 0
        idx = 0
        while uint256(stor19[address(arg1)].field_0) > idx:
            uint128(stor19[address(arg1)][idx].field_0) = 0
            uint64(stor19[address(arg1)][idx].field_128) = 0
            idx = idx + 1
            continue 
    uint256(stor19[address(arg1)].field_0)++
    uint128(stor19[address(arg1)][uint256(stor19[address(arg1)].field_0)].field_0) = uint128(balanceOf[address(arg1)])
    uint64(stor19[address(arg1)][uint256(stor19[address(arg1)].field_0)].field_128) = uint64(block.timestamp)
    uint256(stor19[address(arg2)].field_0)++
    uint128(stor19[address(arg2)][uint256(stor19[address(arg2)].field_0)].field_0) = uint128(arg3)
    uint64(stor19[address(arg2)][uint256(stor19[address(arg2)].field_0)].field_128) = uint64(block.timestamp)
    return 1
}

function mint() {
    require totalSupply < maxTotalSupply
    if uint256(balanceOf[address(msg.sender)]) > 0:
        if uint256(stor19[address(msg.sender)].field_0) > 0:
            require block.timestamp >= stakeStartTime
            require stakeStartTime > 0
            if uint256(stor19[address(msg.sender)].field_0) > 0:
                idx = 0
                while idx < uint256(stor19[address(msg.sender)].field_0):
                    require idx < uint256(stor19[address(msg.sender)].field_0)
                    require uint64(stor19[address(msg.sender)][idx].field_128) + stakeMinAge >= uint64(stor19[address(msg.sender)][idx].field_128)
                    if block.timestamp >= uint64(stor19[address(msg.sender)][idx].field_128) + stakeMinAge:
                        require idx < uint256(stor19[address(msg.sender)].field_0)
                        require uint64(stor19[address(msg.sender)][idx].field_128) <= block.timestamp
                        require idx < uint256(stor19[address(msg.sender)].field_0)
                        if block.timestamp - uint64(stor19[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                            require uint128(stor19[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor19[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                        else:
                            require uint128(stor19[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
                    mem[0] = msg.sender
                    mem[32] = 19
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if msg.sender == arg1:
        require totalSupply < maxTotalSupply
        if uint256(balanceOf[address(msg.sender)]) > 0:
            if uint256(stor19[address(msg.sender)].field_0) > 0:
                require block.timestamp >= stakeStartTime
                require stakeStartTime > 0
                if uint256(stor19[address(msg.sender)].field_0) > 0:
                    idx = 0
                    while idx < uint256(stor19[address(msg.sender)].field_0):
                        require idx < uint256(stor19[address(msg.sender)].field_0)
                        require uint64(stor19[address(msg.sender)][idx].field_128) + stakeMinAge >= uint64(stor19[address(msg.sender)][idx].field_128)
                        if block.timestamp >= uint64(stor19[address(msg.sender)][idx].field_128) + stakeMinAge:
                            require idx < uint256(stor19[address(msg.sender)].field_0)
                            require uint64(stor19[address(msg.sender)][idx].field_128) <= block.timestamp
                            require idx < uint256(stor19[address(msg.sender)].field_0)
                            if block.timestamp - uint64(stor19[address(msg.sender)][idx].field_128) <= stakeMaxAge:
                                require uint128(stor19[address(msg.sender)][idx].field_0) * block.timestamp - uint64(stor19[address(msg.sender)][idx].field_128) / 24 * 3600 >= 0
                            else:
                                require uint128(stor19[address(msg.sender)][idx].field_0) * stakeMaxAge / 24 * 3600 >= 0
                        mem[0] = msg.sender
                        mem[32] = 19
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
    require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
    uint256(balanceOf[address(arg1)]) += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if uint256(stor19[address(msg.sender)].field_0) > 0:
        uint256(stor19[address(msg.sender)].field_0) = 0
        idx = 0
        while uint256(stor19[address(msg.sender)].field_0) > idx:
            uint128(stor19[address(msg.sender)][idx].field_0) = 0
            uint64(stor19[address(msg.sender)][idx].field_128) = 0
            idx = idx + 1
            continue 
    uint256(stor19[address(msg.sender)].field_0)++
    uint128(stor19[address(msg.sender)][uint256(stor19[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
    uint64(stor19[address(msg.sender)][uint256(stor19[address(msg.sender)].field_0)].field_128) = uint64(block.timestamp)
    uint256(stor19[address(arg1)].field_0)++
    uint128(stor19[address(arg1)][uint256(stor19[address(arg1)].field_0)].field_0) = uint128(arg2)
    uint64(stor19[address(arg1)][uint256(stor19[address(arg1)].field_0)].field_128) = uint64(block.timestamp)
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    mem[0] = msg.sender
    mem[32] = 17
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= uint256(balanceOf[address(msg.sender)])
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        require uint256(balanceOf[mem[(32 * idx) + 140 len 20]]) + mem[(32 * idx) + (32 * arg1.length) + 160] >= uint256(balanceOf[mem[(32 * idx) + 140 len 20]])
        require idx < mem[96]
        uint256(balanceOf[mem[(32 * idx) + 140 len 20]]) += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 19
        _143 = sha3(mem[(32 * idx) + 140 len 20], 19)
        _144 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[(32 * arg1.length) + 128]
        mem[_144] = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
        mem[_144 + 32] = uint64(block.timestamp)
        uint256(stor[_143].field_0)++
        mem[0] = _143
        uint128(stor[sha3(_143) + uint256(stor[_143].field_0)].field_0) = mem[_144 + 16 len 16]
        uint64(stor[sha3(_143) + uint256(stor[_143].field_0)].field_128) = uint64(block.timestamp)
        require idx < mem[96]
        _151 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[mem[64]], msg.sender, address(_151));
        idx = idx + 1
        continue 
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= uint256(balanceOf[address(msg.sender)])
    uint256(balanceOf[address(msg.sender)]) += -1 * s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    if uint256(stor19[address(msg.sender)].field_0) > 0:
        uint256(stor19[address(msg.sender)].field_0) = 0
        idx = 0
        while uint256(stor19[address(msg.sender)].field_0) > idx:
            uint128(stor19[address(msg.sender)][idx].field_0) = 0
            uint64(stor19[address(msg.sender)][idx].field_128) = 0
            idx = idx + 1
            continue 
    if uint256(balanceOf[address(msg.sender)]) > 0:
        uint256(stor19[address(msg.sender)].field_0)++
        uint128(stor19[address(msg.sender)][uint256(stor19[address(msg.sender)].field_0)].field_0) = uint128(balanceOf[address(msg.sender)])
        uint64(stor19[address(msg.sender)][uint256(stor19[address(msg.sender)].field_0)].field_128) = uint64(block.timestamp)
    return 1
}



}
