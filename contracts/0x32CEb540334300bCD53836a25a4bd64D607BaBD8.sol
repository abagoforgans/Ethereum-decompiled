contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor3;
uint256 stor8;
address stor9;

function _fallback() {
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor8 = block.timestamp
    stor3 = 1
    stor9 = code.data[8223 len 20]
    return code.data[169 len 8042]
}



// =====================  Runtime code  =====================


address authorityAddress;
uint8 stor1; offset 160
address owner;
uint256 betCount;
uint256 roundCount;
mapping of struct bets;
mapping of uint256 balancesForWithdraw;
uint256 poolAmount;
uint256 initializeTime;
address plsAddress;
bool stor10; offset 256
uint8 stor10;
address stor10;
address stor10; offset 8
uint256 stor10;
uint256 stor11;

function roundCount() {
    return roundCount
}

function pls() {
    return plsAddress
}

function bets(uint256 arg1) {
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_768,
           bool(bets[arg1].field_1024),
           bets[arg1].field_1280,
           bool(bets[arg1].field_1536),
           bets[arg1].field_1792
}

function getBetSizeAtRound(uint256 arg1) {
    return betSizeAtRound[arg1].field_256
}

function initializeTime() {
    return initializeTime
}

function stopped() {
    return bool(stor1)
}

function rounds(uint256 arg1) {
    return betSizeAtRound[arg1].field_0, 
           betSizeAtRound[arg1].field_512,
           betSizeAtRound[arg1].field_768,
           betSizeAtRound[arg1].field_1024,
           betSizeAtRound[arg1].field_1280,
           betSizeAtRound[arg1].field_1536
}

function owner() {
    return owner
}

function poolAmount() {
    return poolAmount
}

function getBetIds(uint256 arg1) {
    idx = 0
    while idx < betSizeAtRound[arg1].field_256:
        require idx < betSizeAtRound[arg1].field_256
        require idx < betSizeAtRound[arg1].field_256
        mem[(32 * idx) + 160] = betSizeAtRound[arg1][idx + 1].field_0
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        continue 
    mem[(32 * betSizeAtRound[arg1].field_256) + 224 len floor32(betSizeAtRound[arg1].field_256)] = mem[160 len floor32(betSizeAtRound[arg1].field_256)]
    return Array(len=betSizeAtRound[arg1].field_256, data=mem[160 len floor32(betSizeAtRound[arg1].field_256)], mem[(32 * betSizeAtRound[arg1].field_256) + floor32(betSizeAtRound[arg1].field_256) + 224 len (32 * betSizeAtRound[arg1].field_256) - floor32(betSizeAtRound[arg1].field_256)]), 
}

function getBetIdAtRound(uint256 arg1, uint256 arg2) {
    require arg2 < betSizeAtRound[arg1].field_256
    return stor[arg2 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'betSizeAtRound', 5)))].field_0
}

function authority() {
    return authorityAddress
}

function betCount() {
    return betCount
}

function balancesForWithdraw(address arg1) {
    return balancesForWithdraw[arg1]
}

function _fallback() payable {
    revert
}

function receiveToken(address arg1, uint256 arg2, address arg3) {
  stop
}

function tokenMsg() {
    return bool(uint8(stor10.field_0)), address(stor10.field_0), stor11
}

function calculateSecretHash(uint256 arg1, bool arg2, bytes32 arg3) {
    return sha3(arg1, uint8(arg2), arg3)
}

function onTokenTransfer(address arg1, address arg2, uint256 arg3) {
    if arg2 != this.address:
        return 1
    if not stor1:
        return 1
    else:
        return 0
}

function isPlayerInRound(uint256 arg1, address arg2) {
    idx = 0
    while idx < betSizeAtRound[arg1].field_256:
        require idx < betSizeAtRound[arg1].field_256
        if bets[stor5[arg1][idx + 1].field_0].field_0 == arg2:
            return 1
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        continue 
    return 0
}

function betRevealed(uint256 arg1) {
    s = 0
    idx = 0
    while idx < betSizeAtRound[arg1].field_256:
        require idx < betSizeAtRound[arg1].field_256
        if not bets[stor5[arg1][idx + 1].field_0].field_1024:
            return 0
        mem[0] = arg1
        mem[32] = 5
        s = sha3(betSizeAtRound[arg1][idx + 1].field_0, 4)
        idx = idx + 1
        continue 
    return 1
}

function withdraw() {
    if balancesForWithdraw[address(msg.sender)] <= 0:
        return 1
    balancesForWithdraw[address(msg.sender)] = 0
    require ext_code.size(plsAddress)
    call plsAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balancesForWithdraw[address(msg.sender)]
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function revealBet(uint256 arg1, uint256 arg2, bool arg3, bytes32 arg4) {
    require betSizeAtRound[stor4[arg1].field_768].field_256 == betSizeAtRound[stor4[arg1].field_768].field_0
    require not betSizeAtRound[stor4[arg1].field_768].field_1536
    if bets[arg1].field_256 != sha3(arg2, uint8(arg3), arg4):
        return 0
    bets[arg1].field_1024 = 1
    bets[arg1].field_1280 = arg2
    bets[arg1].field_1536 = uint8(arg3)
    bets[arg1].field_1792 = arg4
    return 1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function claimFromPool() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    call owner with:
       value poolAmount wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ClaimFromPool()
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require plsAddress == msg.sender
    require not stor1
    uint8(stor10.field_0) = 1
    address(stor10.field_8) = arg1
    stor10.field_256 % 1 = 0
    stor11 = arg2
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call this.address.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call this.address.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    Mask(168, 0, stor10.field_0) = 0
    stor11 = 0
}

function claimTokens(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function getJackpotResults(uint256 arg1) {
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < betSizeAtRound[arg1].field_256:
        require idx < betSizeAtRound[arg1].field_256
        require bets[stor5[arg1][idx + 1].field_0].field_512 + u >= u
        require idx < betSizeAtRound[arg1].field_256
        require bets[stor5[arg1][idx + 1].field_0].field_1792 + t >= t
        require idx < betSizeAtRound[arg1].field_256
        if not bets[stor5[arg1][idx + 1].field_0].field_1536:
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            s = s
            t = bets[stor5[arg1][idx + 1].field_0].field_1792 + t
            u = bets[stor5[arg1][idx + 1].field_0].field_512 + u
            continue 
        require idx < betSizeAtRound[arg1].field_256
        require bets[stor5[arg1][idx + 1].field_0].field_512 + s >= s
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = bets[stor5[arg1][idx + 1].field_0].field_512 + s
        t = bets[stor5[arg1][idx + 1].field_0].field_1792 + t
        u = bets[stor5[arg1][idx + 1].field_0].field_512 + u
        continue 
    if s:
        if s != u:
            return u, s, bool(t) == 1
    if s > 0:
        return u, s, 1
    return u, s, 0
}

function startRoundWithFirstBet(uint256 arg1, uint256 arg2, uint256 arg3, bytes32 arg4) {
    require msg.sender == this.address
    require uint8(stor10.field_0)
    require arg1 >= 2
    require arg2 >= 100
    require arg3 >= 100
    require stor11 > 0
    require address(stor10.field_8)
    bets[stor2].field_0 = address(stor10.field_8)
    bets[stor2].field_256 = arg4
    bets[stor2].field_512 = stor11
    bets[stor2].field_768 = 0
    bets[stor2].field_1024 = 0
    bets[stor2].field_1280 = 0
    bets[stor2].field_1536 = 0
    bets[stor2].field_1792 = 0
    betCount++
    emit BetSubmission(betCount);
    betSizeAtRound[stor3].field_0 = arg1
    betSizeAtRound[stor3].field_1024 = arg2
    betSizeAtRound[stor3].field_1280 = arg3
    betSizeAtRound[stor3].field_256++
    if not betSizeAtRound[stor3].field_256 <= betSizeAtRound[stor3].field_256 + 1:
        idx = betSizeAtRound[stor3].field_256 + 1
        while betSizeAtRound[stor3].field_256 > idx:
            betSizeAtRound[stor3][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[('array', 1, ('map', ('stor', ('name', 'stor3', 3)), ('name', 'betSizeAtRound', 5))) + betSizeAtRound[stor3].field_256].field_0 = betCount
    betSizeAtRound[stor3].field_512 = block.number
    betSizeAtRound[stor3].field_768 = 0
    betSizeAtRound[stor3].field_1536 = 0
    bets[stor2].field_768 = roundCount
    roundCount++
    emit RoundSubmission(roundCount);
    emit RoundBetStarted(betSizeAtRound[stor3].field_512, roundCount);
    return roundCount
}

function betWithRound(uint256 arg1, bytes32 arg2) {
    require msg.sender == this.address
    require uint8(stor10.field_0)
    require stor11 > 0
    require not betSizeAtRound[arg1].field_1536
    require betSizeAtRound[arg1].field_256 < betSizeAtRound[arg1].field_0
    idx = 0
    while idx < betSizeAtRound[arg1].field_256:
        require idx < betSizeAtRound[arg1].field_256
        require bets[stor5[arg1][idx + 1].field_0].field_0 != address(stor10.field_8)
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        continue 
    require address(stor10.field_8)
    bets[stor2].field_0 = address(stor10.field_8)
    bets[stor2].field_256 = arg2
    bets[stor2].field_512 = stor11
    bets[stor2].field_768 = 0
    bets[stor2].field_1024 = 0
    bets[stor2].field_1280 = 0
    bets[stor2].field_1536 = 0
    bets[stor2].field_1792 = 0
    betCount++
    emit BetSubmission(betCount);
    betSizeAtRound[arg1].field_256++
    if not betSizeAtRound[arg1].field_256 <= betSizeAtRound[arg1].field_256 + 1:
        idx = betSizeAtRound[arg1].field_256 + 1
        while betSizeAtRound[arg1].field_256 > idx:
            betSizeAtRound[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'betSizeAtRound', 5))) + betSizeAtRound[arg1].field_256].field_0 = betCount
    bets[stor2].field_768 = arg1
    if betSizeAtRound[arg1].field_256 == betSizeAtRound[arg1].field_0:
        betSizeAtRound[arg1].field_768 = block.number
        emit RoundRevealStarted(block.number, arg1);
}

function finalizeRound(uint256 arg1) {
    require not betSizeAtRound[arg1].field_1536
    if betSizeAtRound[arg1].field_256 >= betSizeAtRound[arg1].field_0:
        require betSizeAtRound[arg1].field_256 == betSizeAtRound[arg1].field_0
        s = 0
        idx = 0
        while idx < betSizeAtRound[arg1].field_256:
            require idx < betSizeAtRound[arg1].field_256
            if bets[stor5[arg1][idx + 1].field_0].field_1024:
                mem[0] = arg1
                mem[32] = 5
                s = sha3(betSizeAtRound[arg1][idx + 1].field_0, 4)
                idx = idx + 1
                continue 
            require betSizeAtRound[arg1].field_768 <= block.number
            require block.number - betSizeAtRound[arg1].field_768 > betSizeAtRound[arg1].field_1280
            idx = 0
            while idx < betSizeAtRound[arg1].field_256:
                require idx < betSizeAtRound[arg1].field_256
                require idx < betSizeAtRound[arg1].field_256
                if not bets[stor5[arg1][idx + 1].field_0].field_1024:
                    require bets[stor5[arg1][idx + 1].field_0].field_512 + poolAmount >= poolAmount
                    poolAmount += bets[stor5[arg1][idx + 1].field_0].field_512
                else:
                    require idx < betSizeAtRound[arg1].field_256
                    require bets[stor5[arg1][idx + 1].field_0].field_512 + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                    require idx < betSizeAtRound[arg1].field_256
                    balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += bets[stor5[arg1][idx + 1].field_0].field_512
                mem[0] = arg1
                mem[32] = 5
                idx = idx + 1
                continue 
            betSizeAtRound[arg1].field_1536 = block.number
            emit RoundFinalized(arg1);
        idx = 0
        s = 0
        t = 0
        u = 0
        while idx < betSizeAtRound[arg1].field_256:
            require idx < betSizeAtRound[arg1].field_256
            require bets[stor5[arg1][idx + 1].field_0].field_512 + u >= u
            require idx < betSizeAtRound[arg1].field_256
            require bets[stor5[arg1][idx + 1].field_0].field_1792 + t >= t
            require idx < betSizeAtRound[arg1].field_256
            if not bets[stor5[arg1][idx + 1].field_0].field_1536:
                mem[0] = arg1
                mem[32] = 5
                idx = idx + 1
                s = s
                t = bets[stor5[arg1][idx + 1].field_0].field_1792 + t
                u = bets[stor5[arg1][idx + 1].field_0].field_512 + u
                continue 
            require idx < betSizeAtRound[arg1].field_256
            require bets[stor5[arg1][idx + 1].field_0].field_512 + s >= s
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            s = bets[stor5[arg1][idx + 1].field_0].field_512 + s
            t = bets[stor5[arg1][idx + 1].field_0].field_1792 + t
            u = bets[stor5[arg1][idx + 1].field_0].field_512 + u
            continue 
        if not s:
            if s > 0:
                idx = 0
                t = u
                while idx < betSizeAtRound[arg1].field_256:
                    require idx < betSizeAtRound[arg1].field_256
                    if not bets[stor5[arg1][idx + 1].field_0].field_1536:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        t = t
                        continue 
                    if bets[stor5[arg1][idx + 1].field_0].field_512:
                        require bets[stor5[arg1][idx + 1].field_0].field_512
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                    require s
                    require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                    balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / s
                    require u * bets[stor5[arg1][idx + 1].field_0].field_512 / s <= t
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s)
                    continue 
            else:
                idx = 0
                t = u
                while idx < betSizeAtRound[arg1].field_256:
                    require idx < betSizeAtRound[arg1].field_256
                    if bets[stor5[arg1][idx + 1].field_0].field_1536:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        t = t
                        continue 
                    if bets[stor5[arg1][idx + 1].field_0].field_512:
                        require bets[stor5[arg1][idx + 1].field_0].field_512
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                    require u - s
                    require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                    balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s
                    require u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s <= t
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s)
                    continue 
            require t + poolAmount >= poolAmount
            poolAmount += t
        else:
            if s != u:
                idx = 0
                v = u
                while idx < betSizeAtRound[arg1].field_256:
                    require idx < betSizeAtRound[arg1].field_256
                    if bool(t) == 1:
                        if bets[stor5[arg1][idx + 1].field_0].field_1536:
                            if bets[stor5[arg1][idx + 1].field_0].field_512:
                                require bets[stor5[arg1][idx + 1].field_0].field_512
                                require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                            require s
                            require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                            balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / s
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / s <= v
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            v = v - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s)
                            continue 
                        if bool(t) == 1:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            v = v
                            continue 
                    if bets[stor5[arg1][idx + 1].field_0].field_1536:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        v = v
                        continue 
                    if bets[stor5[arg1][idx + 1].field_0].field_512:
                        require bets[stor5[arg1][idx + 1].field_0].field_512
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                    require u - s
                    require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                    balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s
                    require u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s <= v
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    v = v - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s)
                    continue 
                require v + poolAmount >= poolAmount
                poolAmount += v
            else:
                if s > 0:
                    idx = 0
                    t = u
                    while idx < betSizeAtRound[arg1].field_256:
                        require idx < betSizeAtRound[arg1].field_256
                        if not bets[stor5[arg1][idx + 1].field_0].field_1536:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            t = t
                            continue 
                        if bets[stor5[arg1][idx + 1].field_0].field_512:
                            require bets[stor5[arg1][idx + 1].field_0].field_512
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                        require s
                        require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                        balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / s
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / s <= t
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s)
                        continue 
                else:
                    idx = 0
                    t = u
                    while idx < betSizeAtRound[arg1].field_256:
                        require idx < betSizeAtRound[arg1].field_256
                        if bets[stor5[arg1][idx + 1].field_0].field_1536:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            t = t
                            continue 
                        if bets[stor5[arg1][idx + 1].field_0].field_512:
                            require bets[stor5[arg1][idx + 1].field_0].field_512
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                        require u - s
                        require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                        balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s <= t
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s)
                        continue 
                require t + poolAmount >= poolAmount
                poolAmount += t
    else:
        require betSizeAtRound[arg1].field_512 <= block.number
        if block.number - betSizeAtRound[arg1].field_512 > betSizeAtRound[arg1].field_1024:
            s = 0
            idx = 0
            while idx < betSizeAtRound[arg1].field_256:
                require idx < betSizeAtRound[arg1].field_256
                require bets[stor5[arg1][idx + 1].field_0].field_512 + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += bets[stor5[arg1][idx + 1].field_0].field_512
                mem[0] = arg1
                mem[32] = 5
                s = sha3(betSizeAtRound[arg1][idx + 1].field_0, 4)
                idx = idx + 1
                continue 
        else:
            require betSizeAtRound[arg1].field_256 == betSizeAtRound[arg1].field_0
            s = 0
            idx = 0
            while idx < betSizeAtRound[arg1].field_256:
                require idx < betSizeAtRound[arg1].field_256
                if bets[stor5[arg1][idx + 1].field_0].field_1024:
                    mem[0] = arg1
                    mem[32] = 5
                    s = sha3(betSizeAtRound[arg1][idx + 1].field_0, 4)
                    idx = idx + 1
                    continue 
                require betSizeAtRound[arg1].field_768 <= block.number
                require block.number - betSizeAtRound[arg1].field_768 > betSizeAtRound[arg1].field_1280
                idx = 0
                while idx < betSizeAtRound[arg1].field_256:
                    require idx < betSizeAtRound[arg1].field_256
                    require idx < betSizeAtRound[arg1].field_256
                    if not bets[stor5[arg1][idx + 1].field_0].field_1024:
                        require bets[stor5[arg1][idx + 1].field_0].field_512 + poolAmount >= poolAmount
                        poolAmount += bets[stor5[arg1][idx + 1].field_0].field_512
                    else:
                        require idx < betSizeAtRound[arg1].field_256
                        require bets[stor5[arg1][idx + 1].field_0].field_512 + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                        require idx < betSizeAtRound[arg1].field_256
                        balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += bets[stor5[arg1][idx + 1].field_0].field_512
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    continue 
                betSizeAtRound[arg1].field_1536 = block.number
                emit RoundFinalized(arg1);
            idx = 0
            s = 0
            t = 0
            u = 0
            while idx < betSizeAtRound[arg1].field_256:
                require idx < betSizeAtRound[arg1].field_256
                require bets[stor5[arg1][idx + 1].field_0].field_512 + u >= u
                require idx < betSizeAtRound[arg1].field_256
                require bets[stor5[arg1][idx + 1].field_0].field_1792 + t >= t
                require idx < betSizeAtRound[arg1].field_256
                if not bets[stor5[arg1][idx + 1].field_0].field_1536:
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    s = s
                    t = bets[stor5[arg1][idx + 1].field_0].field_1792 + t
                    u = bets[stor5[arg1][idx + 1].field_0].field_512 + u
                    continue 
                require idx < betSizeAtRound[arg1].field_256
                require bets[stor5[arg1][idx + 1].field_0].field_512 + s >= s
                mem[0] = arg1
                mem[32] = 5
                idx = idx + 1
                s = bets[stor5[arg1][idx + 1].field_0].field_512 + s
                t = bets[stor5[arg1][idx + 1].field_0].field_1792 + t
                u = bets[stor5[arg1][idx + 1].field_0].field_512 + u
                continue 
            if not s:
                if s > 0:
                    idx = 0
                    t = u
                    while idx < betSizeAtRound[arg1].field_256:
                        require idx < betSizeAtRound[arg1].field_256
                        if not bets[stor5[arg1][idx + 1].field_0].field_1536:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            t = t
                            continue 
                        if bets[stor5[arg1][idx + 1].field_0].field_512:
                            require bets[stor5[arg1][idx + 1].field_0].field_512
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                        require s
                        require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                        balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / s
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / s <= t
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s)
                        continue 
                else:
                    idx = 0
                    t = u
                    while idx < betSizeAtRound[arg1].field_256:
                        require idx < betSizeAtRound[arg1].field_256
                        if bets[stor5[arg1][idx + 1].field_0].field_1536:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            t = t
                            continue 
                        if bets[stor5[arg1][idx + 1].field_0].field_512:
                            require bets[stor5[arg1][idx + 1].field_0].field_512
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                        require u - s
                        require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                        balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s <= t
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s)
                        continue 
                require t + poolAmount >= poolAmount
                poolAmount += t
            else:
                if s != u:
                    idx = 0
                    v = u
                    while idx < betSizeAtRound[arg1].field_256:
                        require idx < betSizeAtRound[arg1].field_256
                        if bool(t) == 1:
                            if bets[stor5[arg1][idx + 1].field_0].field_1536:
                                if bets[stor5[arg1][idx + 1].field_0].field_512:
                                    require bets[stor5[arg1][idx + 1].field_0].field_512
                                    require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                                require s
                                require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                                balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / s
                                require u * bets[stor5[arg1][idx + 1].field_0].field_512 / s <= v
                                mem[0] = arg1
                                mem[32] = 5
                                idx = idx + 1
                                v = v - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s)
                                continue 
                            if bool(t) == 1:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = idx + 1
                                v = v
                                continue 
                        if bets[stor5[arg1][idx + 1].field_0].field_1536:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            v = v
                            continue 
                        if bets[stor5[arg1][idx + 1].field_0].field_512:
                            require bets[stor5[arg1][idx + 1].field_0].field_512
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                        require u - s
                        require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                        balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s
                        require u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s <= v
                        mem[0] = arg1
                        mem[32] = 5
                        idx = idx + 1
                        v = v - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s)
                        continue 
                    require v + poolAmount >= poolAmount
                    poolAmount += v
                else:
                    if s > 0:
                        idx = 0
                        t = u
                        while idx < betSizeAtRound[arg1].field_256:
                            require idx < betSizeAtRound[arg1].field_256
                            if not bets[stor5[arg1][idx + 1].field_0].field_1536:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = idx + 1
                                t = t
                                continue 
                            if bets[stor5[arg1][idx + 1].field_0].field_512:
                                require bets[stor5[arg1][idx + 1].field_0].field_512
                                require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                            require s
                            require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                            balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / s
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / s <= t
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / s)
                            continue 
                    else:
                        idx = 0
                        t = u
                        while idx < betSizeAtRound[arg1].field_256:
                            require idx < betSizeAtRound[arg1].field_256
                            if bets[stor5[arg1][idx + 1].field_0].field_1536:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = idx + 1
                                t = t
                                continue 
                            if bets[stor5[arg1][idx + 1].field_0].field_512:
                                require bets[stor5[arg1][idx + 1].field_0].field_512
                                require u * bets[stor5[arg1][idx + 1].field_0].field_512 / bets[stor5[arg1][idx + 1].field_0].field_512 == u
                            require u - s
                            require (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s) + balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] >= balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0]
                            balancesForWithdraw[stor4[stor5[arg1][idx + 1].field_0].field_0] += u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s
                            require u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s <= t
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            t = t - (u * bets[stor5[arg1][idx + 1].field_0].field_512 / u - s)
                            continue 
                    require t + poolAmount >= poolAmount
                    poolAmount += t
    betSizeAtRound[arg1].field_1536 = block.number
    emit RoundFinalized(arg1);
}



}
