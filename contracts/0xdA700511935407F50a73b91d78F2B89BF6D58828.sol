contract main {




// =====================  Runtime code  =====================


const name = 'ZAB Token'

const decimals = 18

const symbol = 'ZAB'

const DATE_LIMIT = (436688 * 3600)

const MAX_TOTAL_TOKEN_SUPPLY = 100 * 10^18

const LOCK_SLOTS = 5

const MAXIMUM_FIRST_DAY_CONTRIBUTION = 5 * 10^16

const TOKEN_MAIN_CAP = 20 * 10^18

const MINIMUM_CONTRIBUTION = 2 * 10^16


address owner;
address newOwner;
mapping of uint8 stor2;
uint256 tokensIssuedTotal;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address walletAddress;
array of uint256 lockTerm;
array of uint256 lockAmnt;
mapping of uint8 stor9;
uint256 dateMainStart;
uint256 dateMainEnd;
uint256 tokensPerEth;
uint8 tokensTradeable;
mapping of uint8 stor14;
uint256 numberWhitelisted;
uint256 tokensMain;
mapping of uint256 balancesMain;
uint256 totalEthContributed;
mapping of uint256 ethContributed;
uint256 tokensMinted;
mapping of uint256 balancesMinted;
mapping of uint256 balancesMintedByType;
uint8 isMigrationPhaseOpen;

function totalSupply() {
    return tokensIssuedTotal
}

function isAdmin(address arg1) {
    return bool(stor2[arg1])
}

function balancesMinted(address arg1) {
    return balancesMinted[arg1]
}

function dateMainEnd() {
    return dateMainEnd
}

function lockTerm(address arg1, uint256 arg2) {
    require arg2 < 5
    return lockTerm[arg1][arg2]
}

function wallet() {
    return walletAddress
}

function numberWhitelisted() {
    return numberWhitelisted
}

function tokensMinted() {
    return tokensMinted
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensIssuedTotal() {
    return tokensIssuedTotal
}

function balancesMintedByType(address arg1, uint256 arg2) {
    return balancesMintedByType[arg1][arg2]
}

function owner() {
    return owner
}

function balancesMain(address arg1) {
    return balancesMain[arg1]
}

function whitelist(address arg1) {
    return bool(stor14[arg1])
}

function dateMainStart() {
    return dateMainStart
}

function isMigrationPhaseOpen() {
    return bool(isMigrationPhaseOpen)
}

function totalEthContributed() {
    return totalEthContributed
}

function tokensTradeable() {
    return bool(tokensTradeable)
}

function tokensPerEth() {
    return tokensPerEth
}

function newOwner() {
    return newOwner
}

function tokensMain() {
    return tokensMain
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function lockAmnt(address arg1, uint256 arg2) {
    require arg2 < 5
    return lockAmnt[arg1][arg2]
}

function mayHaveLockedTokens(address arg1) {
    return bool(stor9[arg1])
}

function ethContributed(address arg1) {
    return ethContributed[arg1]
}

function tokensToEth(uint256 arg1) {
    require tokensPerEth
    return (arg1 / tokensPerEth)
}

function availableToMint() {
    require tokensMinted <= 80 * 10^18
    return (-tokensMinted + 80 * 10^18)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function openMigrationPhase() {
    require msg.sender == owner
    require block.timestamp > dateMainEnd
    isMigrationPhaseOpen = 1
}

function firstDayTokenLimit() {
    require 5 * 10^16 * tokensPerEth / 5 * 10^16 == tokensPerEth
    return (5 * 10^16 * tokensPerEth)
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
    emit WalletUpdated(arg1);
}

function makeTradeable() {
    if owner != msg.sender:
        require block.timestamp > dateMainEnd + (3360 * 24 * 3600)
    tokensTradeable = 1
}

function isMain() {
    if block.timestamp <= dateMainStart:
        return 0
    if block.timestamp >= dateMainEnd:
        return 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferProposed(owner, arg1);
    newOwner = arg1
}

function addAdmin(address arg1) {
    require msg.sender == owner
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit AdminChange(1, arg1);
}

function ethToTokens(uint256 arg1) {
    if arg1:
        require arg1
        require arg1 * tokensPerEth / arg1 == tokensPerEth
    return (arg1 * tokensPerEth)
}

function isMainFirstDay() {
    if block.timestamp <= dateMainStart:
        return 0
    if block.timestamp > dateMainStart + (24 * 3600):
        return 0
    return 1
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    require bool(stor2[address(arg1)]) == 1
    stor2[address(arg1)] = 0
    emit AdminChange(0, arg1);
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < dateMainStart
    tokensPerEth = arg1
    emit UpdatedTokensPerEth(tokensPerEth);
}

function addToWhitelist(address arg1) {
    require stor2[address(msg.sender)]
    if not stor14[address(arg1)]:
        stor14[address(arg1)] = 1
        require numberWhitelisted + 1 >= numberWhitelisted
        numberWhitelisted++
        emit Whitelisted(numberWhitelisted, arg1);
}

function setDateMainEnd(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < arg1
    require block.timestamp < dateMainEnd
    dateMainEnd = arg1
    emit IcoDateUpdated(2, arg1);
    require dateMainStart < dateMainEnd
    require dateMainEnd < 436688 * 3600
}

function setDateMainStart(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < arg1
    require block.timestamp < dateMainStart
    dateMainStart = arg1
    emit IcoDateUpdated(1, arg1);
    require dateMainStart < dateMainEnd
    require dateMainEnd < 436688 * 3600
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAvailableLockSlot(address arg1, uint256 arg2) {
    if not stor9[address(arg1)]:
        return 1
    if arg2 < block.timestamp:
        return 1
    idx = 0
    while idx < 5:
        if lockTerm[address(arg1)][idx] >= block.timestamp:
            require idx < 5
            if lockTerm[address(arg1)][idx] != arg2:
                idx = idx + 1
                continue 
        return 1
    return 0
}

function lockedTokens(address arg1) {
    if not stor9[address(arg1)]:
        return 0
    idx = 0
    s = 0
    while idx < 5:
        if lockTerm[address(arg1)][idx] < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        require s + lockAmnt[address(arg1)][idx] >= s
        idx = idx + 1
        s = s + lockAmnt[address(arg1)][idx]
        continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unlockedTokens(address arg1) {
    if not stor9[address(arg1)]:
        require 0 <= balanceOf[address(arg1)]
        return balanceOf[address(arg1)]
    idx = 0
    s = 0
    while idx < 5:
        if lockTerm[address(arg1)][idx] < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        require s + lockAmnt[address(arg1)][idx] >= s
        idx = idx + 1
        s = s + lockAmnt[address(arg1)][idx]
        continue 
    require s <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - s)
}

function addToWhitelistMultiple(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor2[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        if not stor14[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[address(mem[(32 * idx) + 128])] = 1
            require numberWhitelisted + 1 >= numberWhitelisted
            numberWhitelisted++
            mem[(32 * arg1.length) + 128] = numberWhitelisted
            emit Whitelisted(numberWhitelisted, address(_12));
        idx = idx + 1
        continue 
}

function mintTokens(uint256 arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require stor14[address(arg2)]
    require arg2
    require arg3 > 0
    require tokensMinted <= 80 * 10^18
    if arg3 > -tokensMinted + 80 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'not enough tokens available to mint'
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balancesMinted[address(arg2)] + arg3 >= balancesMinted[address(arg2)]
    balancesMinted[address(arg2)] += arg3
    require balancesMintedByType[address(arg2)][arg1] + arg3 >= balancesMintedByType[address(arg2)][arg1]
    balancesMintedByType[address(arg2)][arg1] += arg3
    require tokensMinted + arg3 >= tokensMinted
    tokensMinted += arg3
    require tokensIssuedTotal + arg3 >= tokensIssuedTotal
    tokensIssuedTotal += arg3
    emit Transfer(arg3, 0, arg2);
    emit TokensMinted(arg3, 0, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require tokensTradeable
    if not stor9[address(msg.sender)]:
        require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = 0
        s = 0
        while idx < 5:
            if lockTerm[address(msg.sender)][idx] < block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < 5
            require s + lockAmnt[address(msg.sender)][idx] >= s
            idx = idx + 1
            s = s + lockAmnt[address(msg.sender)][idx]
            continue 
        if not s:
            stor9[address(msg.sender)] = 0
        require s <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)] - s
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function requestTokenExchange(uint256 arg1) {
    require isMigrationPhaseOpen
    require arg1 > 0
    if not stor9[address(msg.sender)]:
        require arg1 <= balanceOf[address(msg.sender)]
    else:
        idx = 0
        s = 0
        while idx < 5:
            if lockTerm[address(msg.sender)][idx] < block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < 5
            require s + lockAmnt[address(msg.sender)][idx] >= s
            idx = idx + 1
            s = s + lockAmnt[address(msg.sender)][idx]
            continue 
        if not s:
            stor9[address(msg.sender)] = 0
        require s <= balanceOf[address(msg.sender)]
        require arg1 <= balanceOf[address(msg.sender)] - s
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= tokensIssuedTotal
    tokensIssuedTotal -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit TokenExchangeRequested(arg1, msg.sender);
}

function transferMultiple(address[] arg1, uint256[] arg2) {
    require arg1.length <= 100
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require tokensTradeable
        if not stor9[address(msg.sender)]:
            require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(msg.sender)]
        else:
            s = 0
            t = 0
            while s < 5:
                if lockTerm[address(msg.sender)][s] < block.timestamp:
                    s = s + 1
                    t = t
                    continue 
                require s < 5
                require t + lockAmnt[address(msg.sender)][s] >= t
                s = s + 1
                t = t + lockAmnt[address(msg.sender)][s]
                continue 
            if not t:
                stor9[address(msg.sender)] = 0
            require t <= balanceOf[address(msg.sender)]
            require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(msg.sender)] - t
        require address(cd[((32 * idx) + arg1 + 36)])
        require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function mintTokensMultiple(uint256 arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _27 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _29 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require stor14[mem[(32 * idx) + 140 len 20]]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg2.length) + 160] > 0
        require tokensMinted <= 80 * 10^18
        if mem[(32 * idx) + (32 * arg2.length) + 160] > -tokensMinted + 80 * 10^18:
            revert with 0, 'not enough tokens available to mint'
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
        require balancesMinted[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balancesMinted[address(mem[(32 * idx) + 128])]
        balancesMinted[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
        require balancesMintedByType[address(mem[(32 * idx) + 128])][arg1] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balancesMintedByType[address(mem[(32 * idx) + 128])][arg1]
        mem[0] = arg1
        mem[32] = sha3(address(mem[(32 * idx) + 128]), 22)
        balancesMintedByType[address(mem[(32 * idx) + 128])][arg1] += mem[(32 * idx) + (32 * arg2.length) + 160]
        require tokensMinted + mem[(32 * idx) + (32 * arg2.length) + 160] >= tokensMinted
        tokensMinted += mem[(32 * idx) + (32 * arg2.length) + 160]
        require tokensIssuedTotal + mem[(32 * idx) + (32 * arg2.length) + 160] >= tokensIssuedTotal
        tokensIssuedTotal += mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], 0, address(_27));
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = _29
        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0
        emit TokensMinted(_29, 0, arg1, address(_27));
        idx = idx + 1
        continue 
}

function mintTokensLocked(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require stor14[address(arg2)]
    require arg2
    require arg3 > 0
    require tokensMinted <= 80 * 10^18
    if arg3 > -tokensMinted + 80 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'not enough tokens available to mint'
    if arg4:
        if arg4 <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'either without lock term, or lock term must be in the future'
    if arg4 > 0:
        if arg4 <= block.timestamp:
            revert with 0, 'lock term must be in the future'
        idx = 0
        s = 9999
        while idx < 5:
            require idx < 5
            if lockTerm[address(arg2)][idx] >= block.timestamp:
                if lockTerm[address(arg2)][idx] != arg4:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                lockTerm[address(arg2)][idx] = 0
                lockAmnt[address(arg2)][idx] = 0
                require idx < 5
                if s != 9999:
                    if lockTerm[address(arg2)][idx] != arg4:
                        idx = idx + 1
                        s = s
                        continue 
                else:
            idx = idx + 1
            s = idx
            continue 
        if s == 9999:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'registerLockedTokens: no available slot found'
        require s < 5
        require s < 5
        if lockTerm[address(arg2)][s]:
        else:
            lockTerm[address(arg2)][s] = arg4
        require lockAmnt[address(arg2)][s] + arg3 >= lockAmnt[address(arg2)][s]
        require s < 5
        lockAmnt[address(arg2)][s] += arg3
        stor9[address(arg2)] = 1
        emit RegisteredLockedTokens(arg3, arg4, arg2, s);
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balancesMinted[address(arg2)] + arg3 >= balancesMinted[address(arg2)]
    balancesMinted[address(arg2)] += arg3
    require balancesMintedByType[address(arg2)][arg1] + arg3 >= balancesMintedByType[address(arg2)][arg1]
    balancesMintedByType[address(arg2)][arg1] += arg3
    require tokensMinted + arg3 >= tokensMinted
    tokensMinted += arg3
    require tokensIssuedTotal + arg3 >= tokensIssuedTotal
    tokensIssuedTotal += arg3
    emit Transfer(arg3, 0, arg2);
    emit TokensMinted(arg3, arg4, arg1, arg2);
}

function requestTokenExchangeMax() {
    if not stor9[address(msg.sender)]:
        require isMigrationPhaseOpen
        require balanceOf[address(msg.sender)] > 0
        if not stor9[address(msg.sender)]:
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < 5:
                if lockTerm[address(msg.sender)][idx] < block.timestamp:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 5
                require s + lockAmnt[address(msg.sender)][idx] >= s
                idx = idx + 1
                s = s + lockAmnt[address(msg.sender)][idx]
                continue 
            if not s:
                stor9[address(msg.sender)] = 0
            require s <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)] - s
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        require balanceOf[address(msg.sender)] <= tokensIssuedTotal
        tokensIssuedTotal -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        emit TokenExchangeRequested(balanceOf[address(msg.sender)], msg.sender);
    else:
        idx = 0
        s = 0
        while idx < 5:
            if lockTerm[address(msg.sender)][idx] < block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < 5
            require s + lockAmnt[address(msg.sender)][idx] >= s
            idx = idx + 1
            s = s + lockAmnt[address(msg.sender)][idx]
            continue 
        if not s:
            stor9[address(msg.sender)] = 0
        require s <= balanceOf[address(msg.sender)]
        require isMigrationPhaseOpen
        require balanceOf[address(msg.sender)] - s > 0
        if not stor9[address(msg.sender)]:
            require balanceOf[address(msg.sender)] - s <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            t = 0
            while idx < 5:
                if lockTerm[address(msg.sender)][idx] < block.timestamp:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < 5
                require t + lockAmnt[address(msg.sender)][idx] >= t
                idx = idx + 1
                t = t + lockAmnt[address(msg.sender)][idx]
                continue 
            if not t:
                stor9[address(msg.sender)] = 0
            require t <= balanceOf[address(msg.sender)]
            require -s <= -t
        require balanceOf[address(msg.sender)] - s <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = s
        require balanceOf[address(msg.sender)] - s <= tokensIssuedTotal
        tokensIssuedTotal = tokensIssuedTotal - balanceOf[address(msg.sender)] + s
        emit Transfer((balanceOf[address(msg.sender)] - s), msg.sender, 0);
        emit TokenExchangeRequested((balanceOf[address(msg.sender)] - s), msg.sender);
}

function mintTokensLockedMultiple(uint256 arg1, address[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require arg2.length == arg3.length
    require arg2.length == arg4.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _54 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _56 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < arg4.length
        _58 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require stor14[mem[(32 * idx) + 140 len 20]]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg2.length) + 160] > 0
        require tokensMinted <= 80 * 10^18
        if mem[(32 * idx) + (32 * arg2.length) + 160] > -tokensMinted + 80 * 10^18:
            revert with 0, 'not enough tokens available to mint'
        if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
            if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= block.timestamp:
                revert with 0, 'either without lock term, or lock term must be in the future'
        if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= 0:
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require balancesMinted[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balancesMinted[address(mem[(32 * idx) + 128])]
            balancesMinted[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require balancesMintedByType[address(mem[(32 * idx) + 128])][arg1] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balancesMintedByType[address(mem[(32 * idx) + 128])][arg1]
            mem[0] = arg1
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 22)
            balancesMintedByType[address(mem[(32 * idx) + 128])][arg1] += mem[(32 * idx) + (32 * arg2.length) + 160]
            require tokensMinted + mem[(32 * idx) + (32 * arg2.length) + 160] >= tokensMinted
            tokensMinted += mem[(32 * idx) + (32 * arg2.length) + 160]
            require tokensIssuedTotal + mem[(32 * idx) + (32 * arg2.length) + 160] >= tokensIssuedTotal
            tokensIssuedTotal += mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], 0, address(_54));
        else:
            if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= block.timestamp:
                revert with 0, 'lock term must be in the future'
            s = 0
            t = 9999
            while s < 5:
                require s < 5
                if lockTerm[address(mem[(32 * idx) + 128])][s] >= block.timestamp:
                    if lockTerm[address(mem[(32 * idx) + 128])][s] != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        s = s + 1
                        t = t
                        continue 
                else:
                    lockTerm[address(mem[(32 * idx) + 128])][s] = 0
                    lockAmnt[address(mem[(32 * idx) + 128])][s] = 0
                    require s < 5
                    if t != 9999:
                        if lockTerm[address(mem[(32 * idx) + 128])][s] != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            s = s + 1
                            t = t
                            continue 
                    else:
                s = s + 1
                t = s
                continue 
            if t == 9999:
                revert with 0, 'registerLockedTokens: no available slot found'
            require t < 5
            require t < 5
            if lockTerm[address(mem[(32 * idx) + 128])][t]:
            else:
                lockTerm[address(mem[(32 * idx) + 128])][t] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            require lockAmnt[address(mem[(32 * idx) + 128])][t] + mem[(32 * idx) + (32 * arg2.length) + 160] >= lockAmnt[address(mem[(32 * idx) + 128])][t]
            require t < 5
            lockAmnt[address(mem[(32 * idx) + 128])][t] += mem[(32 * idx) + (32 * arg2.length) + 160]
            stor9[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit RegisteredLockedTokens(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192], _58, address(_54), t);
            require balanceOf[address(_54)] + _56 >= balanceOf[address(_54)]
            balanceOf[address(_54)] += _56
            require balancesMinted[address(_54)] + _56 >= balancesMinted[address(_54)]
            balancesMinted[address(_54)] += _56
            require balancesMintedByType[address(_54)][arg1] + _56 >= balancesMintedByType[address(_54)][arg1]
            mem[0] = arg1
            mem[32] = sha3(address(_54), 22)
            balancesMintedByType[address(_54)][arg1] += _56
            require tokensMinted + _56 >= tokensMinted
            tokensMinted += _56
            require tokensIssuedTotal + _56 >= tokensIssuedTotal
            tokensIssuedTotal += _56
            emit Transfer(_56, 0, address(_54));
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = _56
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = _58
        emit TokensMinted(_56, _58, arg1, address(_54));
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require block.timestamp > dateMainStart
    require block.timestamp < dateMainEnd
    require msg.value >= 2 * 10^16
    require stor14[address(msg.sender)]
    require tokensMain <= 20 * 10^18
    if block.timestamp <= dateMainStart:
        require -tokensMain + 20 * 10^18 > 0
        if msg.value:
            require msg.value
            require msg.value * tokensPerEth / msg.value == tokensPerEth
        if msg.value * tokensPerEth <= -tokensMain + 20 * 10^18:
            require balanceOf[address(msg.sender)] + (msg.value * tokensPerEth) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth
            require balancesMain[address(msg.sender)] + (msg.value * tokensPerEth) >= balancesMain[address(msg.sender)]
            balancesMain[address(msg.sender)] += msg.value * tokensPerEth
            require tokensMain + (msg.value * tokensPerEth) >= tokensMain
            tokensMain += msg.value * tokensPerEth
            require tokensIssuedTotal + (msg.value * tokensPerEth) >= tokensIssuedTotal
            tokensIssuedTotal += msg.value * tokensPerEth
            require ethContributed[address(msg.sender)] + msg.value >= ethContributed[address(msg.sender)]
            ethContributed[address(msg.sender)] += msg.value
            require totalEthContributed + msg.value >= totalEthContributed
            totalEthContributed += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer((msg.value * tokensPerEth), 0, msg.sender);
            emit RegisterContribution(msg.value * tokensPerEth, msg.value, 0, msg.sender);
        else:
            require -tokensMain + 20 * 10^18 <= msg.value * tokensPerEth
            require tokensPerEth
            require (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth <= msg.value
            require balanceOf[address(msg.sender)] + -tokensMain + 20 * 10^18 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensMain + 20 * 10^18
            require balancesMain[address(msg.sender)] + -tokensMain + 20 * 10^18 >= balancesMain[address(msg.sender)]
            balancesMain[address(msg.sender)] = balancesMain[address(msg.sender)] + -tokensMain + 20 * 10^18
            require 20 * 10^18 >= tokensMain
            tokensMain = 20 * 10^18
            require tokensIssuedTotal + -tokensMain + 20 * 10^18 >= tokensIssuedTotal
            tokensIssuedTotal = tokensIssuedTotal + -tokensMain + 20 * 10^18
            require ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) >= ethContributed[address(msg.sender)]
            ethContributed[address(msg.sender)] = ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth)
            require totalEthContributed + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) >= totalEthContributed
            totalEthContributed = totalEthContributed + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth)
            if (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth <= 0:
                call walletAddress with:
                   value msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call msg.sender with:
                   value (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call walletAddress with:
                   value msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) wei
                     gas 2300 * is_zero(value) wei
            emit Transfer((-tokensMain + 20 * 10^18), 0, msg.sender);
            emit RegisterContribution(-tokensMain + 20 * 10^18, msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth), (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth, msg.sender);
    else:
        if block.timestamp > dateMainStart + (24 * 3600):
            require -tokensMain + 20 * 10^18 > 0
            if msg.value:
                require msg.value
                require msg.value * tokensPerEth / msg.value == tokensPerEth
            if msg.value * tokensPerEth <= -tokensMain + 20 * 10^18:
                require balanceOf[address(msg.sender)] + (msg.value * tokensPerEth) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * tokensPerEth
                require balancesMain[address(msg.sender)] + (msg.value * tokensPerEth) >= balancesMain[address(msg.sender)]
                balancesMain[address(msg.sender)] += msg.value * tokensPerEth
                require tokensMain + (msg.value * tokensPerEth) >= tokensMain
                tokensMain += msg.value * tokensPerEth
                require tokensIssuedTotal + (msg.value * tokensPerEth) >= tokensIssuedTotal
                tokensIssuedTotal += msg.value * tokensPerEth
                require ethContributed[address(msg.sender)] + msg.value >= ethContributed[address(msg.sender)]
                ethContributed[address(msg.sender)] += msg.value
                require totalEthContributed + msg.value >= totalEthContributed
                totalEthContributed += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Transfer((msg.value * tokensPerEth), 0, msg.sender);
                emit RegisterContribution(msg.value * tokensPerEth, msg.value, 0, msg.sender);
            else:
                require -tokensMain + 20 * 10^18 <= msg.value * tokensPerEth
                require tokensPerEth
                require (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth <= msg.value
                require balanceOf[address(msg.sender)] + -tokensMain + 20 * 10^18 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensMain + 20 * 10^18
                require balancesMain[address(msg.sender)] + -tokensMain + 20 * 10^18 >= balancesMain[address(msg.sender)]
                balancesMain[address(msg.sender)] = balancesMain[address(msg.sender)] + -tokensMain + 20 * 10^18
                require 20 * 10^18 >= tokensMain
                tokensMain = 20 * 10^18
                require tokensIssuedTotal + -tokensMain + 20 * 10^18 >= tokensIssuedTotal
                tokensIssuedTotal = tokensIssuedTotal + -tokensMain + 20 * 10^18
                require ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) >= ethContributed[address(msg.sender)]
                ethContributed[address(msg.sender)] = ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth)
                require totalEthContributed + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) >= totalEthContributed
                totalEthContributed = totalEthContributed + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth)
                if (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth <= 0:
                    call walletAddress with:
                       value msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call msg.sender with:
                       value (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call walletAddress with:
                       value msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) wei
                         gas 2300 * is_zero(value) wei
                emit Transfer((-tokensMain + 20 * 10^18), 0, msg.sender);
                emit RegisterContribution(-tokensMain + 20 * 10^18, msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth), (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth, msg.sender);
        else:
            require 5 * 10^16 * tokensPerEth / 5 * 10^16 == tokensPerEth
            require balancesMain[address(msg.sender)] <= 5 * 10^16 * tokensPerEth
            if (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)] >= -tokensMain + 20 * 10^18:
                require -tokensMain + 20 * 10^18 > 0
                if msg.value:
                    require msg.value
                    require msg.value * tokensPerEth / msg.value == tokensPerEth
                if msg.value * tokensPerEth <= -tokensMain + 20 * 10^18:
                    require balanceOf[address(msg.sender)] + (msg.value * tokensPerEth) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * tokensPerEth
                    require balancesMain[address(msg.sender)] + (msg.value * tokensPerEth) >= balancesMain[address(msg.sender)]
                    balancesMain[address(msg.sender)] += msg.value * tokensPerEth
                    require tokensMain + (msg.value * tokensPerEth) >= tokensMain
                    tokensMain += msg.value * tokensPerEth
                    require tokensIssuedTotal + (msg.value * tokensPerEth) >= tokensIssuedTotal
                    tokensIssuedTotal += msg.value * tokensPerEth
                    require ethContributed[address(msg.sender)] + msg.value >= ethContributed[address(msg.sender)]
                    ethContributed[address(msg.sender)] += msg.value
                    require totalEthContributed + msg.value >= totalEthContributed
                    totalEthContributed += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer((msg.value * tokensPerEth), 0, msg.sender);
                    emit RegisterContribution(msg.value * tokensPerEth, msg.value, 0, msg.sender);
                else:
                    require -tokensMain + 20 * 10^18 <= msg.value * tokensPerEth
                    require tokensPerEth
                    require (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth <= msg.value
                    require balanceOf[address(msg.sender)] + -tokensMain + 20 * 10^18 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensMain + 20 * 10^18
                    require balancesMain[address(msg.sender)] + -tokensMain + 20 * 10^18 >= balancesMain[address(msg.sender)]
                    balancesMain[address(msg.sender)] = balancesMain[address(msg.sender)] + -tokensMain + 20 * 10^18
                    require 20 * 10^18 >= tokensMain
                    tokensMain = 20 * 10^18
                    require tokensIssuedTotal + -tokensMain + 20 * 10^18 >= tokensIssuedTotal
                    tokensIssuedTotal = tokensIssuedTotal + -tokensMain + 20 * 10^18
                    require ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) >= ethContributed[address(msg.sender)]
                    ethContributed[address(msg.sender)] = ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth)
                    require totalEthContributed + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) >= totalEthContributed
                    totalEthContributed = totalEthContributed + msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth)
                    if (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth <= 0:
                        call walletAddress with:
                           value msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call msg.sender with:
                           value (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call walletAddress with:
                           value msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth) wei
                             gas 2300 * is_zero(value) wei
                    emit Transfer((-tokensMain + 20 * 10^18), 0, msg.sender);
                    emit RegisterContribution(-tokensMain + 20 * 10^18, msg.value - ((msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth), (msg.value * tokensPerEth) + tokensMain - 20 * 10^18 / tokensPerEth, msg.sender);
            else:
                require (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)] > 0
                if msg.value:
                    require msg.value
                    require msg.value * tokensPerEth / msg.value == tokensPerEth
                if msg.value * tokensPerEth <= (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)]:
                    require balanceOf[address(msg.sender)] + (msg.value * tokensPerEth) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * tokensPerEth
                    require balancesMain[address(msg.sender)] + (msg.value * tokensPerEth) >= balancesMain[address(msg.sender)]
                    balancesMain[address(msg.sender)] += msg.value * tokensPerEth
                    require tokensMain + (msg.value * tokensPerEth) >= tokensMain
                    tokensMain += msg.value * tokensPerEth
                    require tokensIssuedTotal + (msg.value * tokensPerEth) >= tokensIssuedTotal
                    tokensIssuedTotal += msg.value * tokensPerEth
                    require ethContributed[address(msg.sender)] + msg.value >= ethContributed[address(msg.sender)]
                    ethContributed[address(msg.sender)] += msg.value
                    require totalEthContributed + msg.value >= totalEthContributed
                    totalEthContributed += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer((msg.value * tokensPerEth), 0, msg.sender);
                    emit RegisterContribution(msg.value * tokensPerEth, msg.value, 0, msg.sender);
                else:
                    require (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)] <= msg.value * tokensPerEth
                    require tokensPerEth
                    require (msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth <= msg.value
                    require balanceOf[address(msg.sender)] + (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)]
                    require 5 * 10^16 * tokensPerEth >= balancesMain[address(msg.sender)]
                    balancesMain[address(msg.sender)] = 5 * 10^16 * tokensPerEth
                    require tokensMain + (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)] >= tokensMain
                    tokensMain = tokensMain + (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)]
                    require tokensIssuedTotal + (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)] >= tokensIssuedTotal
                    tokensIssuedTotal = tokensIssuedTotal + (5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)]
                    require ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth) >= ethContributed[address(msg.sender)]
                    ethContributed[address(msg.sender)] = ethContributed[address(msg.sender)] + msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth)
                    require totalEthContributed + msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth) >= totalEthContributed
                    totalEthContributed = totalEthContributed + msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth)
                    if (msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth <= 0:
                        call walletAddress with:
                           value msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call msg.sender with:
                           value (msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call walletAddress with:
                           value msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth) wei
                             gas 2300 * is_zero(value) wei
                    emit Transfer(((5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)]), 0, msg.sender);
                    emit RegisterContribution((5 * 10^16 * tokensPerEth) - balancesMain[address(msg.sender)], msg.value - ((msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth), (msg.value * tokensPerEth) - (5 * 10^16 * tokensPerEth) + balancesMain[address(msg.sender)] / tokensPerEth, msg.sender);
}



}
