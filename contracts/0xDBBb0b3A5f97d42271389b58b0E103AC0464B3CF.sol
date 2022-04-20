contract main {


// =======================  Init code  ======================


uint256 stor0;
uint64 stor3; offset 160
address stor3;
uint16 stor4; offset 120
uint32 stor4;
uint32 stor4; offset 32
uint64 stor4; offset 72
uint256 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10; offset 32
uint32 stor10;
address stor10; offset 40
uint256 stor10; offset 32

function _fallback() payable {
    uint256(stor4.field_0) = 0xffffffffffffffffffffffffffff00ffffffffffffffff00ffffffffffffffff and uint256(stor4.field_0)
    stor5 = 20
    stor9 = 18
    uint8(stor10.field_32) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    uint64(stor3.field_160) = uint64(block.timestamp)
    require address(stor3.field_0) == msg.sender
    stor7 = 'Legal Token'
    stor8 = 'LGL'
    emit UpdatedTokenInformation('Legal Token', 'LGL');
    stor0 = 0
    uint32(stor10.field_0) = uint32(code.data[10988 len 32])
    Mask(224, 0, stor10.field_32) = uint8(stor10.field_32)
    address(stor10.field_40) = address(code.data[10956 len 32])
    uint64(stor3.field_160) = uint64(block.timestamp)
    uint32(stor4.field_0) = uint32(code.data[11020 len 32])
    uint32(stor4.field_32) = 0
    stor4.field_72 % 281474976710656 = 2233383003083
    uint16(stor4.field_120) = 0
    emit LogRegisteredInterval(uint64 rg1, uint64 rg2):
                               block.timestamp << 192,
                               0,
                               uint32(code.data[11020 len 32]),
    return code.data[1183 len 9773]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint64 stor3;
uint64 lastUpdate; offset 160
address owner;
uint8 stor4; offset 64
uint8 stor4; offset 136
uint32 stor4; offset 72
uint64 intervalDuration;
uint256 stor5;
array of struct tokenGrantsCount;
uint256 name;
uint256 symbol;
uint256 decimals;
uint8 stor10; offset 32
uint32 inflationCompBPS;
address rewardWalletAddress; offset 40

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function mintingFinished() {
    return bool(uint8(stor4.field_136))
}

function name() {
    return name
}

function totalSupply() {
    return totalSupply
}

function grants(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[arg1].field_0
    return tokenGrantsCount[arg1][arg2].field_0, 
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_640,
           bool(tokenGrantsCount[arg1][arg2].field_704),
           bool(tokenGrantsCount[arg1][arg2].field_712)
}

function intervalDuration() {
    return intervalDuration
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function inflationCompBPS() {
    return inflationCompBPS
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function released() {
    return bool(stor10)
}

function lastUpdate() {
    return lastUpdate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function rewardWallet() {
    return rewardWalletAddress
}

function _fallback() payable {
    revert
}

function releaseTokenTransfer() {
    require owner == msg.sender
    stor10 = 1
}

function enableScheduler() {
    require owner == msg.sender
    uint8(stor4.field_64) = 1
}

function setRewardWallet(address arg1) {
    require owner == msg.sender
    rewardWalletAddress = arg1
}

function finishMinting() {
    require owner == msg.sender
    uint8(stor4.field_136) = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenInformation(bytes32 arg1, bytes32 arg2) {
    require owner == msg.sender
    name = arg1
    symbol = arg2
    emit UpdatedTokenInformation(arg1, arg2);
}

function lastTokenIsTransferableDate(address arg1) {
    idx = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 6
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        idx = idx + 1
        continue 
    return uint64(block.timestamp)
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor4.field_136)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit 0x91ddf252: arg2, 0, arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require stor10
    require intervalDuration
    if uint8(stor4.field_64):
        if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
            emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
            ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function calculateVestedTokens(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if arg2 < arg4:
        return 0
    if arg2 >= arg5:
        return arg1
    require arg3 <= arg2
    if not arg1:
        if arg3 <= arg5:
            if arg5 - arg3:
                return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    else:
        if arg1:
            if (arg2 * arg1) - (arg3 * arg1) / arg1 == arg2 - arg3:
                if arg3 <= arg5:
                    if arg5 - arg3:
                        return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    revert
}

function increaseApproval(address arg1, uint256 arg2) {
    require stor10
    require intervalDuration
    if uint8(stor4.field_64):
        if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
            emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
            ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require stor10
    require intervalDuration
    if uint8(stor4.field_64):
        if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
            emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
            ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function tokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               0,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
    if not tokenGrantsCount[address(arg1)][arg2].field_256:
        if tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576:
            if tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512:
                return tokenGrantsCount[address(arg1)][arg2].field_0, 
                       tokenGrantsCount[address(arg1)][arg2].field_256,
                       (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
                       tokenGrantsCount[address(arg1)][arg2].field_512,
                       tokenGrantsCount[address(arg1)][arg2].field_512,
                       tokenGrantsCount[address(arg1)][arg2].field_512,
                       bool(tokenGrantsCount[address(arg1)][arg2].field_704),
                       bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    else:
        if tokenGrantsCount[address(arg1)][arg2].field_256:
            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512:
                if tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576:
                    if tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512:
                        return tokenGrantsCount[address(arg1)][arg2].field_0, 
                               tokenGrantsCount[address(arg1)][arg2].field_256,
                               (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
                               tokenGrantsCount[address(arg1)][arg2].field_512,
                               tokenGrantsCount[address(arg1)][arg2].field_512,
                               tokenGrantsCount[address(arg1)][arg2].field_512,
                               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
                               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    revert
}

function transferableTokens(address arg1, uint64 arg2) payable {
    mem[64] = 96
    require not msg.value
    if tokenGrantsCount[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 6
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 6)
            _25 = mem[64]
            mem[64] = mem[64] + 224
            mem[_25] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_25 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_25 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_25 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_25 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_25 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_25 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if arg2 < tokenGrantsCount[address(arg1)][idx].field_512:
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if arg2 >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_640 <= arg2:
                        if not tokenGrantsCount[address(arg1)][idx].field_256:
                            if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                        else:
                            if tokenGrantsCount[address(arg1)][idx].field_256:
                                if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == arg2 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                        if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                    continue 
            revert
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require stor10
    require intervalDuration
    if not uint8(stor4.field_64):
        if not tokenGrantsCount[address(arg1)].field_0:
            require arg3 <= balanceOf[address(arg1)]
        else:
            idx = 0
            s = 0
            while idx < tokenGrantsCount[address(arg1)].field_0:
                mem[32] = 6
                require idx < tokenGrantsCount[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 6)
                _125 = mem[64]
                mem[64] = mem[64] + 224
                mem[_125] = tokenGrantsCount[address(arg1)][idx].field_0
                mem[_125 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                mem[_125 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                mem[_125 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                mem[_125 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                mem[_125 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                mem[_125 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                    if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                            idx = idx + 1
                            s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                            continue 
                else:
                    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                        if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                            if s >= s:
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(arg1)][idx].field_256:
                                if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                    if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                            if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                continue 
                            else:
                                if tokenGrantsCount[address(arg1)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                            if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                    if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                        continue 
                revert
            require s <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                require arg3 <= balanceOf[address(arg1)] - s
            else:
                require arg3 <= balanceOf[address(arg1)]
    else:
        if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
            emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
            ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
        if not tokenGrantsCount[address(arg1)].field_0:
            require arg3 <= balanceOf[address(arg1)]
        else:
            idx = 0
            s = 0
            while idx < tokenGrantsCount[address(arg1)].field_0:
                mem[32] = 6
                require idx < tokenGrantsCount[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 6)
                _126 = mem[64]
                mem[64] = mem[64] + 224
                mem[_126] = tokenGrantsCount[address(arg1)][idx].field_0
                mem[_126 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
                mem[_126 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
                mem[_126 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
                mem[_126 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
                mem[_126 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
                mem[_126 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                    if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                            idx = idx + 1
                            s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                            continue 
                else:
                    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                        if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                            if s >= s:
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(arg1)][idx].field_256:
                                if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                    if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                            if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                continue 
                            else:
                                if tokenGrantsCount[address(arg1)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                                            if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                    if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                        continue 
                revert
            require s <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
                require arg3 <= balanceOf[address(arg1)] - s
            else:
                require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x91ddf252: arg3, arg1, arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require stor10
    require intervalDuration
    if not uint8(stor4.field_64):
        if not tokenGrantsCount[address(msg.sender)].field_0:
            require arg2 <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                mem[32] = 6
                require idx < tokenGrantsCount[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 6)
                _101 = mem[64]
                mem[64] = mem[64] + 224
                mem[_101] = tokenGrantsCount[address(msg.sender)][idx].field_0
                mem[_101 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                mem[_101 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                mem[_101 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                mem[_101 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                mem[_101 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                mem[_101 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                    if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                        if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                else:
                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                        if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if s >= s:
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                revert
            require s <= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                require arg2 <= balanceOf[address(msg.sender)] - s
            else:
                require arg2 <= balanceOf[address(msg.sender)]
    else:
        if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
            emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
            ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
        if not tokenGrantsCount[address(msg.sender)].field_0:
            require arg2 <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < tokenGrantsCount[address(msg.sender)].field_0:
                mem[32] = 6
                require idx < tokenGrantsCount[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 6)
                _102 = mem[64]
                mem[64] = mem[64] + 224
                mem[_102] = tokenGrantsCount[address(msg.sender)][idx].field_0
                mem[_102 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                mem[_102 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                mem[_102 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                mem[_102 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                mem[_102 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                mem[_102 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                    if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                        if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                            idx = idx + 1
                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                            continue 
                else:
                    if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                        if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if s >= s:
                                idx = idx + 1
                                s = s
                                continue 
                    else:
                        if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                idx = idx + 1
                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                revert
            require s <= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                require arg2 <= balanceOf[address(msg.sender)] - s
            else:
                require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x91ddf252: arg2, msg.sender, arg1
    return 1
}

function revokeTokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    require tokenGrantsCount[address(arg1)][arg2].field_704
    require tokenGrantsCount[address(arg1)][arg2].field_0 == msg.sender
    if tokenGrantsCount[address(arg1)][arg2].field_712:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[57005] >= balanceOf[57005]
            balanceOf[57005] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit 0x91ddf252: tokenGrantsCount[address(arg1)][arg2].field_256, arg1, 57005
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[57005] >= balanceOf[57005]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit 0x91ddf252: 0, arg1, 57005
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require tokenGrantsCount[address(arg1)][arg2].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[57005] >= balanceOf[57005]
                balanceOf[57005] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[57005]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit 0x91ddf252: (tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, 57005
    else:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit 0x91ddf252: tokenGrantsCount[address(arg1)][arg2].field_256, arg1, msg.sender
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit 0x91ddf252: 0, arg1, msg.sender
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require tokenGrantsCount[address(arg1)][arg2].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit 0x91ddf252: (tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, msg.sender
}

function grantVestedTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5, bool arg6, bool arg7) {
    require owner == msg.sender
    require arg4 >= arg3
    require arg5 >= arg4
    require tokenGrantsCount[address(arg1)].field_0 < stor5
    tokenGrantsCount[address(arg1)].field_0++
    if not tokenGrantsCount[address(arg1)].field_0 > tokenGrantsCount[address(arg1)].field_0 + 1:
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            require stor10
            require intervalDuration
            if not uint8(stor4.field_64):
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _424 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_424] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_424 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_424 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_424 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_424 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_424 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_424 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
                    emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
                    ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _425 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_425] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_425 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_425 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_425 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_425 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_425 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_425 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            require stor10
            require intervalDuration
            if not uint8(stor4.field_64):
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _426 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_426] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_426 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_426 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_426 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_426 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_426 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_426 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
                    emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
                    ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _427 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_427] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_427 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_427 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_427 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_427 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_427 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_427 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = (3 * tokenGrantsCount[address(arg1)].field_0) + 3
        while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
            tokenGrantsCount[address(arg1)][idx].field_0 = 0
            tokenGrantsCount[address(arg1)][idx].field_256 = 0
            tokenGrantsCount[address(arg1)][idx].field_512 = 0
            idx = idx + 3
            continue 
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            require stor10
            require intervalDuration
            if not uint8(stor4.field_64):
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _760 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_760] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_760 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_760 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_760 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_760 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_760 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_760 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
                    emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
                    ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _761 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_761] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_761 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_761 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_761 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_761 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_761 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_761 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            require stor10
            require intervalDuration
            if not uint8(stor4.field_64):
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _762 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_762] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_762 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_762 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_762 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_762 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_762 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_762 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
            else:
                if uint64(uint64(block.timestamp - lastUpdate) / intervalDuration) > 0:
                    emit 0xff0e4649: stor3, uint64(uint64(block.timestamp - lastUpdate) / intervalDuration)
                    ...  # unusual jump ('remco jump', ('type', 32, ('field', 72, ('stor', ('name', 'stor4', 4))))), couldn't decompile, sorry
                if not tokenGrantsCount[address(msg.sender)].field_0:
                    require arg2 <= balanceOf[address(msg.sender)]
                else:
                    idx = 0
                    s = 0
                    while idx < tokenGrantsCount[address(msg.sender)].field_0:
                        mem[32] = 6
                        require idx < tokenGrantsCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        _763 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_763] = tokenGrantsCount[address(msg.sender)][idx].field_0
                        mem[_763 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                        mem[_763 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                        mem[_763 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                        mem[_763 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                        mem[_763 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                        mem[_763 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                        if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                            if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                    idx = idx + 1
                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                    continue 
                        else:
                            if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if s >= s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                            if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                        idx = idx + 1
                                                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                        continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                                    if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                        if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                            if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                                idx = idx + 1
                                                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                                continue 
                        revert
                    require s <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                        require arg2 <= balanceOf[address(msg.sender)] - s
                    else:
                        require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x91ddf252: arg2, msg.sender, arg1
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}



}
