contract main {




// =====================  Runtime code  =====================


address owner;
uint256 TOKEN_PRICE_D;
address FOUNDERS_WALLETAddress;
address RESERVE_WALLETAddress;
address BOUNTY_WALLETAddress;
uint256 BONUS_MULTIPLIER;
uint8 stor6;
array of uint256 PHASE;
mapping of struct phases;
address tokenAddress;

function TOKEN_PRICE_D() {
    return TOKEN_PRICE_D
}

function phases(uint256 arg1) {
    mem[128] = phases[arg1].field_0
    idx = 128
    s = 0
    while phases[arg1].length + 96 > idx:
        mem[idx + 32] = phases[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=phases[arg1].length, data=mem[128 len phases[arg1].length]), 
           phases[arg1].field_256,
           bool(phases[arg1].field_512),
           bool(phases[arg1].field_520)
}

function sub_5bf8a8d3(?) {
    return bool(stor6)
}

function FOUNDERS_WALLET() {
    return FOUNDERS_WALLETAddress
}

function BONUS_MULTIPLIER() {
    return BONUS_MULTIPLIER
}

function owner() {
    return owner
}

function PHASE() {
    return PHASE[0 len PHASE.length]
}

function RESERVE_WALLET() {
    return RESERVE_WALLETAddress
}

function BOUNTY_WALLET() {
    return BOUNTY_WALLETAddress
}

function token() {
    return tokenAddress
}

function setBonusMultiplier(uint256 arg1) {
    BONUS_MULTIPLIER = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function isValidAddress(address arg1) {
    if not arg1:
        return not not arg1
    return arg1 != this.address
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBountyWallet(address arg1) {
    require arg1
    require arg1 != this.address
    require msg.sender == owner
    BOUNTY_WALLETAddress = arg1
}

function setReserveWallet(address arg1) {
    require arg1
    require arg1 != this.address
    require msg.sender == owner
    RESERVE_WALLETAddress = arg1
}

function setFoundersWallet(address arg1) {
    require arg1
    require arg1 != this.address
    require msg.sender == owner
    FOUNDERS_WALLETAddress = arg1
}

function forwardFunds(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe6e8914d: arg1
}

function transferTokenOwnership(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startNextPhase() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require var11001 < 4
    mem[0] = var11001
    mem[32] = 8
    if not phases[var11001].field_512:
        var11001 = var11001 + 1
        continue 
    mem[0] = var11001
    mem[32] = 8
    if phases[var11001].field_520:
        var11001 = var11001 + 1
        continue 
    require var11001 + 1 <= 4
    require phases[var11001].field_520
    BONUS_MULTIPLIER = phases[var11001].field_256
    phases[var11001 + 1].field_512 = 1
}

function sub_9dedc854(?) {
    owner = msg.sender
    phases[0].field_0 = 0
    phases[0].field_1 = 7
    phases[0].field_8 = 'Presale' / 256
    idx = 0
    while phases[0].length + 31 / 32 > idx:
        phases[0][idx].field_0 = 0
        idx = idx + 1
        continue 
    phases[0].field_256 = 25
    phases[0].field_512 = 0
    phases[0].field_520 = 0
    phases[1].field_0 = 0
    phases[1].field_1 = 7
    phases[1].field_8 = 'Phase 2' / 256
    idx = 0
    while phases[1].length + 31 / 32 > idx:
        phases[1][idx].field_0 = 0
        idx = idx + 1
        continue 
    phases[1].field_256 = 10
    phases[1].field_512 = 0
    phases[1].field_520 = 0
    phases[2].field_0 = 0
    phases[2].field_1 = 7
    phases[2].field_8 = 'Phase 3' / 256
    idx = 0
    while phases[2].length + 31 / 32 > idx:
        phases[2][idx].field_0 = 0
        idx = idx + 1
        continue 
    phases[2].field_256 = 5
    phases[2].field_512 = 0
    phases[2].field_520 = 0
    phases[3].field_0 = 0
    phases[3].field_1 = 7
    phases[3].field_8 = 'Phase 4' / 256
    idx = 0
    while phases[3].length + 31 / 32 > idx:
        phases[3][idx].field_0 = 0
        idx = idx + 1
        continue 
    phases[3].field_256 = 0
    phases[3].field_512 = 0
    phases[3].field_520 = 0
}

function startTokenSale() {
    require msg.sender == owner
    require FOUNDERS_WALLETAddress
    require FOUNDERS_WALLETAddress != this.address
    require RESERVE_WALLETAddress
    require RESERVE_WALLETAddress != this.address
    require BOUNTY_WALLETAddress
    require BOUNTY_WALLETAddress != this.address
    phases[0].field_512 = 1
    if 31 >= phases[0].length:
        PHASE.length = phases[0].field_0
        idx = 0
        while PHASE.length + 31 / 32 > idx:
            PHASE[idx] = 0
            idx = idx + 1
            continue 
    else:
        PHASE.length = Mask(255, 1, (256 * not phases[0].field_0) - 1 and phases[0].field_0) + 1
        if not Mask(255, 1, (256 * not phases[0].field_0) - 1 and phases[0].field_0):
            idx = 0
            while PHASE.length + 31 / 32 > idx:
                PHASE[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while phases[0].length + 31 / 32 > idx:
                PHASE[s] = phases[0][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = phases[0].length + 31 / 32
            while PHASE.length + 31 / 32 > idx:
                PHASE[idx] = 0
                idx = idx + 1
                continue 
}

function sub_2165af1e(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require var11001 < 4
    mem[0] = var11001
    mem[32] = 8
    if not phases[var11001].field_512:
        var11001 = var11001 + 1
        continue 
    mem[0] = var11001
    mem[32] = 8
    if phases[var11001].field_520:
        var11001 = var11001 + 1
        continue 
    require not stor6
    if not arg2:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 2600000018
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(arg2, 0, arg1);
    else:
        require arg2
        require arg2 * TOKEN_PRICE_D / arg2 == TOKEN_PRICE_D
        if not arg2 * TOKEN_PRICE_D / 100:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (arg2 * TOKEN_PRICE_D) <= 2600000018
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2 * TOKEN_PRICE_D
        else:
            require arg2 * TOKEN_PRICE_D / 100
            require arg2 * TOKEN_PRICE_D / 100 * phases[var11001].field_256 / arg2 * TOKEN_PRICE_D / 100 == phases[var11001].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (arg2 * TOKEN_PRICE_D) + (arg2 * TOKEN_PRICE_D / 100 * phases[var11001].field_256) <= 2600000018
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), (arg2 * TOKEN_PRICE_D) + (arg2 * TOKEN_PRICE_D / 100 * phases[var11001].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(arg2, arg2 * TOKEN_PRICE_D, arg1);
}

function _fallback() payable {
    mem[64] = 96
    require var8001 < 4
    mem[0] = var8001
    mem[32] = 8
    if not phases[var8001].field_512:
        var8001 = var8001 + 1
        continue 
    mem[0] = var8001
    mem[32] = 8
    if phases[var8001].field_520:
        var8001 = var8001 + 1
        continue 
    require msg.value > 10^17
    require not stor6
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 2600000018
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * TOKEN_PRICE_D / msg.value == TOKEN_PRICE_D
        if not msg.value * TOKEN_PRICE_D / 100:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (msg.value * TOKEN_PRICE_D) <= 2600000018
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value * TOKEN_PRICE_D
        else:
            require msg.value * TOKEN_PRICE_D / 100
            require msg.value * TOKEN_PRICE_D / 100 * phases[var8001].field_256 / msg.value * TOKEN_PRICE_D / 100 == phases[var8001].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (msg.value * TOKEN_PRICE_D) + (msg.value * TOKEN_PRICE_D / 100 * phases[var8001].field_256) <= 2600000018
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (msg.value * TOKEN_PRICE_D) + (msg.value * TOKEN_PRICE_D / 100 * phases[var8001].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, msg.value * TOKEN_PRICE_D, msg.sender);
}

function finalizeTokenSale() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args FOUNDERS_WALLETAddress, 800000018
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args RESERVE_WALLETAddress, 400000018
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args BOUNTY_WALLETAddress, 400000018
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args FOUNDERS_WALLETAddress, block.timestamp + (4380 * 3600), 800000018
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args FOUNDERS_WALLETAddress, block.timestamp + (8760 * 24 * 3600), 400000009
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args RESERVE_WALLETAddress, block.timestamp + (4380 * 3600), 200000009
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args BOUNTY_WALLETAddress, block.timestamp + (4380 * 3600), 200000009
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor6 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.resumeTransfers() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finishCurrentPhase() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require var11001 < 4
    mem[0] = var11001
    mem[32] = 8
    if not phases[var11001].field_512:
        var11001 = var11001 + 1
        continue 
    mem[0] = var11001
    mem[32] = 8
    if phases[var11001].field_520:
        var11001 = var11001 + 1
        continue 
    phases[var11001].field_520 = 1
    if var11001 + 1 == 4:
        require msg.sender == owner
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args FOUNDERS_WALLETAddress, 800000018
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args RESERVE_WALLETAddress, 400000018
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args BOUNTY_WALLETAddress, 400000018
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args FOUNDERS_WALLETAddress, block.timestamp + (4380 * 3600), 800000018
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args FOUNDERS_WALLETAddress, block.timestamp + (8760 * 24 * 3600), 400000009
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args RESERVE_WALLETAddress, block.timestamp + (4380 * 3600), 200000009
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.lock(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args BOUNTY_WALLETAddress, block.timestamp + (4380 * 3600), 200000009
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor6 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.finishMinting() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.resumeTransfers() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
