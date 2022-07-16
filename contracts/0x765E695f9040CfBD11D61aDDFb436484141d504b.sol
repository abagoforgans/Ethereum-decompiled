contract main {


// =======================  Init code  ======================


array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 11
    stor4.length.field_8 = 'ThunderCore' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 2
    stor5.length.field_8 = 'TT' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor10 = 0
    stor11 = 2160 * 24 * 3600
    stor12 = 10^17
    require not msg.value
    return code.data[421 len 7701]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 chainStartTime;
uint256 chainStartBlockNumber;
uint256 stakeStartTime;
uint256 stakeMinAge;
uint256 stakeMaxAge;
uint256 maxMintProofOfStake;
uint256 totalSupply;
uint256 maxTotalSupply;
uint256 totalInitialSupply;
mapping of uint128 balanceOf;
array of struct stor17;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function totalInitialSupply() {
    return totalInitialSupply
}

function stakeMinAge() {
    return stakeMinAge
}

function chainStartBlockNumber() {
    return chainStartBlockNumber
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

function getBlockNumber() {
    require chainStartBlockNumber <= block.number
    return (block.number - chainStartBlockNumber)
}

function ONEX() {
    maxTotalSupply = 10000000 * 10^18
    totalInitialSupply = 1000000 * 10^18
    chainStartTime = block.timestamp
    stakeStartTime = block.timestamp
    chainStartBlockNumber = block.number
    uint256(balanceOf[address(msg.sender)]) = totalInitialSupply
    totalSupply = totalInitialSupply
}

function annualInterest() {
    require stakeStartTime <= block.timestamp
    if not block.timestamp - stakeStartTime / 8760 * 24 * 3600:
        return (770 * maxMintProofOfStake / 100)
    require stakeStartTime <= block.timestamp
    if block.timestamp - stakeStartTime / 8760 * 24 * 3600 != 1:
        return maxMintProofOfStake
    return (435 * maxMintProofOfStake / 100)
}

function coinAge(address arg1) {
    if stor17[address(arg1)].field_0 > 0:
        idx = 0
        while idx < stor17[address(arg1)].field_0:
            require idx < stor17[address(arg1)].field_0
            require stor17[address(arg1)][idx].field_128 + stakeMinAge >= stor17[address(arg1)][idx].field_128
            if block.timestamp >= stor17[address(arg1)][idx].field_128 + stakeMinAge:
                require idx < stor17[address(arg1)].field_0
                require stor17[address(arg1)][idx].field_128 <= block.timestamp
                require idx < stor17[address(arg1)].field_0
                if block.timestamp - stor17[address(arg1)][idx].field_128 <= stakeMaxAge:
                    require stor17[address(arg1)][idx].field_0 * block.timestamp - stor17[address(arg1)][idx].field_128 / 24 * 3600 >= 0
                else:
                    require stor17[address(arg1)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
            mem[0] = arg1
            mem[32] = 17
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function mint() {
    require totalSupply < maxTotalSupply
    if uint256(balanceOf[address(msg.sender)]) > 0:
        if stor17[address(msg.sender)].field_0 > 0:
            require block.timestamp >= stakeStartTime
            require stakeStartTime > 0
            if stor17[address(msg.sender)].field_0 > 0:
                idx = 0
                while idx < stor17[address(msg.sender)].field_0:
                    require idx < stor17[address(msg.sender)].field_0
                    require stor17[address(msg.sender)][idx].field_128 + stakeMinAge >= stor17[address(msg.sender)][idx].field_128
                    if block.timestamp >= stor17[address(msg.sender)][idx].field_128 + stakeMinAge:
                        require idx < stor17[address(msg.sender)].field_0
                        require stor17[address(msg.sender)][idx].field_128 <= block.timestamp
                        require idx < stor17[address(msg.sender)].field_0
                        if block.timestamp - stor17[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                            require stor17[address(msg.sender)][idx].field_0 * block.timestamp - stor17[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                        else:
                            require stor17[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                    mem[0] = msg.sender
                    mem[32] = 17
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
    if ext_code.size(arg1) <= 0:
        if msg.sender == arg1:
            require totalSupply < maxTotalSupply
            if uint256(balanceOf[address(msg.sender)]) > 0:
                if stor17[address(msg.sender)].field_0 > 0:
                    require block.timestamp >= stakeStartTime
                    require stakeStartTime > 0
                    if stor17[address(msg.sender)].field_0 > 0:
                        idx = 0
                        while idx < stor17[address(msg.sender)].field_0:
                            require idx < stor17[address(msg.sender)].field_0
                            require stor17[address(msg.sender)][idx].field_128 + stakeMinAge >= stor17[address(msg.sender)][idx].field_128
                            if block.timestamp >= stor17[address(msg.sender)][idx].field_128 + stakeMinAge:
                                require idx < stor17[address(msg.sender)].field_0
                                require stor17[address(msg.sender)][idx].field_128 <= block.timestamp
                                require idx < stor17[address(msg.sender)].field_0
                                if block.timestamp - stor17[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                                    require stor17[address(msg.sender)][idx].field_0 * block.timestamp - stor17[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                                else:
                                    require stor17[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                            mem[0] = msg.sender
                            mem[32] = 17
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        require uint256(balanceOf[address(msg.sender)]) >= arg2
        require arg2 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg2
        require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
        uint256(balanceOf[address(arg1)]) += arg2
        if stor17[address(msg.sender)].field_0 <= 0:
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 <= stor17[address(arg1)].field_0 + 1:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                emit Transfer(arg2, msg.sender, arg1);
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var40001 = 0
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
        else:
            stor17[address(msg.sender)].field_0 = 0
            idx = 0
            while stor17[address(msg.sender)].field_0 > idx:
                stor17[address(msg.sender)][idx].field_0 = 0
                stor17[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var42001 = 0
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var49001 = 0
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var49001 = 0
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == arg1:
            require totalSupply < maxTotalSupply
            if uint256(balanceOf[address(msg.sender)]) > 0:
                if stor17[address(msg.sender)].field_0 > 0:
                    require block.timestamp >= stakeStartTime
                    require stakeStartTime > 0
                    if stor17[address(msg.sender)].field_0 > 0:
                        idx = 0
                        while idx < stor17[address(msg.sender)].field_0:
                            require idx < stor17[address(msg.sender)].field_0
                            require stor17[address(msg.sender)][idx].field_128 + stakeMinAge >= stor17[address(msg.sender)][idx].field_128
                            if block.timestamp >= stor17[address(msg.sender)][idx].field_128 + stakeMinAge:
                                require idx < stor17[address(msg.sender)].field_0
                                require stor17[address(msg.sender)][idx].field_128 <= block.timestamp
                                require idx < stor17[address(msg.sender)].field_0
                                if block.timestamp - stor17[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                                    require stor17[address(msg.sender)][idx].field_0 * block.timestamp - stor17[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                                else:
                                    require stor17[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                            mem[0] = msg.sender
                            mem[32] = 17
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        require uint256(balanceOf[address(msg.sender)]) >= arg2
        require arg2 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg2
        require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
        uint256(balanceOf[address(arg1)]) += arg2
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
        if stor17[address(msg.sender)].field_0 <= 0:
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 <= stor17[address(arg1)].field_0 + 1:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                emit Transfer(arg2, msg.sender, arg1);
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var46001 = 0
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
        else:
            stor17[address(msg.sender)].field_0 = 0
            idx = 0
            while stor17[address(msg.sender)].field_0 > idx:
                stor17[address(msg.sender)][idx].field_0 = 0
                stor17[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var48001 = 0
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var55001 = 0
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var55001 = 0
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
    emit ERC223Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                        arg2,
                        64,
                        0,
                        msg.sender,
                        arg1,
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if ext_code.size(arg1) <= 0:
        if msg.sender == arg1:
            require totalSupply < maxTotalSupply
            if uint256(balanceOf[address(msg.sender)]) > 0:
                if stor17[address(msg.sender)].field_0 > 0:
                    require block.timestamp >= stakeStartTime
                    require stakeStartTime > 0
                    if stor17[address(msg.sender)].field_0 > 0:
                        idx = 0
                        while idx < stor17[address(msg.sender)].field_0:
                            require idx < stor17[address(msg.sender)].field_0
                            require stor17[address(msg.sender)][idx].field_128 + stakeMinAge >= stor17[address(msg.sender)][idx].field_128
                            if block.timestamp >= stor17[address(msg.sender)][idx].field_128 + stakeMinAge:
                                require idx < stor17[address(msg.sender)].field_0
                                require stor17[address(msg.sender)][idx].field_128 <= block.timestamp
                                require idx < stor17[address(msg.sender)].field_0
                                if block.timestamp - stor17[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                                    require stor17[address(msg.sender)][idx].field_0 * block.timestamp - stor17[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                                else:
                                    require stor17[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                            mem[0] = msg.sender
                            mem[32] = 17
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        require uint256(balanceOf[address(msg.sender)]) >= arg2
        require arg2 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg2
        require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
        uint256(balanceOf[address(arg1)]) += arg2
        if stor17[address(msg.sender)].field_0 <= 0:
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 <= stor17[address(arg1)].field_0 + 1:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                emit Transfer(arg2, msg.sender, arg1);
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var38001 = ceil32(arg3.length)
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
        else:
            stor17[address(msg.sender)].field_0 = 0
            idx = 0
            while stor17[address(msg.sender)].field_0 > idx:
                stor17[address(msg.sender)][idx].field_0 = 0
                stor17[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var40001 = ceil32(arg3.length)
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var47001 = ceil32(arg3.length)
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var47001 = ceil32(arg3.length)
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == arg1:
            require totalSupply < maxTotalSupply
            if uint256(balanceOf[address(msg.sender)]) > 0:
                if stor17[address(msg.sender)].field_0 > 0:
                    require block.timestamp >= stakeStartTime
                    require stakeStartTime > 0
                    if stor17[address(msg.sender)].field_0 > 0:
                        idx = 0
                        while idx < stor17[address(msg.sender)].field_0:
                            require idx < stor17[address(msg.sender)].field_0
                            require stor17[address(msg.sender)][idx].field_128 + stakeMinAge >= stor17[address(msg.sender)][idx].field_128
                            if block.timestamp >= stor17[address(msg.sender)][idx].field_128 + stakeMinAge:
                                require idx < stor17[address(msg.sender)].field_0
                                require stor17[address(msg.sender)][idx].field_128 <= block.timestamp
                                require idx < stor17[address(msg.sender)].field_0
                                if block.timestamp - stor17[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                                    require stor17[address(msg.sender)][idx].field_0 * block.timestamp - stor17[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                                else:
                                    require stor17[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                            mem[0] = msg.sender
                            mem[32] = 17
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        require uint256(balanceOf[address(msg.sender)]) >= arg2
        require arg2 <= uint256(balanceOf[address(msg.sender)])
        uint256(balanceOf[address(msg.sender)]) -= arg2
        require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
        uint256(balanceOf[address(arg1)]) += arg2
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
        if stor17[address(msg.sender)].field_0 <= 0:
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 <= stor17[address(arg1)].field_0 + 1:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                emit Transfer(arg2, msg.sender, arg1);
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var44001 = ceil32(arg3.length)
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
        else:
            stor17[address(msg.sender)].field_0 = 0
            idx = 0
            while stor17[address(msg.sender)].field_0 > idx:
                stor17[address(msg.sender)][idx].field_0 = 0
                stor17[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor17[address(msg.sender)].field_0++
            if not stor17[address(msg.sender)].field_0 > stor17[address(msg.sender)].field_0 + 1:
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var46001 = ceil32(arg3.length)
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var53001 = ceil32(arg3.length)
            else:
                idx = stor17[address(msg.sender)].field_0 + 1
                while stor17[address(msg.sender)].field_0 > idx:
                    stor17[address(msg.sender)][idx].field_0 = 0
                    stor17[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor17[address(msg.sender)][stor17[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor17[address(arg1)].field_0++
                if not stor17[address(arg1)].field_0 > stor17[address(arg1)].field_0 + 1:
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
                    var53001 = ceil32(arg3.length)
                else:
                    idx = stor17[address(arg1)].field_0 + 1
                    while stor17[address(arg1)].field_0 > idx:
                        stor17[address(arg1)][idx].field_0 = 0
                        stor17[address(arg1)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_0 = uint128(arg2)
                    stor17[address(arg1)][stor17[address(arg1)].field_0].field_128 = uint64(block.timestamp)
                    emit Transfer(arg2, msg.sender, arg1);
    emit ERC223Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}



}
