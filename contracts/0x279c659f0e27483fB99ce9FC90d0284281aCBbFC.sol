contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
uint256 stor7;
uint8 stor8;
uint256 stor13;
address stor14;
address stor15;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    stor8 = 0
    require not msg.value
    require code.data[27709 len 32] >= block.timestamp
    require code.data[27741 len 32] >= code.data[27709 len 32]
    require code.data[27773 len 32] > 0
    require code.data[27817 len 20]
    create contract with 0 wei
                    code: code.data[20141 len 7568]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor0 = address(create.new_address)
    stor1 = code.data[27709 len 32]
    stor2 = code.data[27741 len 32]
    stor4 = code.data[27773 len 32]
    stor3 = code.data[27817 len 20]
    address(stor6.field_0) = msg.sender
    stor7 = 2000000000 * 10^18
    require msg.sender == address(stor6.field_0)
    require not stor8
    stor8 = 1
    emit Pause()
    stor13 = 10
    stor14 = code.data[27849 len 20]
    stor15 = this.address
    require msg.sender == address(stor6.field_0)
    require code.data[27881 len 20]
    require block.timestamp <= stor2
    require not uint8(stor6.field_160)
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + 1000000000 * 10^18 >= ext_call.return_data[0]
    require ext_call.return_data[0] + 1000000000 * 10^18 <= stor7
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args code.data[27881 len 20], 1000000000 * 10^18
    require ext_call.success
    return code.data[1816 len 18325]
}



// =====================  Runtime code  =====================


const DECIMALS = 18

const TOKEN_USDCENT_PRICE = 10

const BITCLAVE_AMOUNT = 1000000000 * 10^18

const BONUS_COEFF = 1000

const CAP = 2000000000 * 10^18


address tokenAddress;
uint256 startTime;
array of uint32 stor10;
array of uint32 stor11;
array of uint32 stor12;
uint256 tokenPriceInCents;
address remainingTokensWalletAddress;
address presaleWalletAddress;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
uint256 tokensCap;
uint8 stor8;
array of uint32 stor9;

function tokensCap() {
    return tokensCap
}

function BONUS_AMOUNTS(uint256 arg1) {
    require arg1 < stor11.length
    return bONUS_AMOUNTS[uint8(arg1)]
}

function BONUS_AMOUNTS_VALUES(uint256 arg1) {
    require arg1 < stor12.length
    return bONUS_AMOUNTS_VALUES[uint8(arg1)]
}

function bonusesForTimesCount() {
    return stor9.length
}

function presaleWallet() {
    return presaleWalletAddress
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function bonusesForAmountsCount() {
    return stor11.length
}

function BONUS_TIMES(uint256 arg1) {
    require arg1 < stor9.length
    return bONUS_TIMES[uint8(arg1)]
}

function paused() {
    return bool(stor8)
}

function remainingTokensWallet() {
    return remainingTokensWalletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function tokenPriceInCents() {
    return tokenPriceInCents
}

function BONUS_TIMES_VALUES(uint256 arg1) {
    require arg1 < stor10.length
    return bONUS_TIMES_VALUES[uint8(arg1)]
}

function token() {
    return tokenAddress
}

function unpause() {
    require msg.sender == owner
    require stor8
    stor8 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor8
    stor8 = 1
    emit Pause()
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require arg1
    rate = arg1
    emit RateChange(arg1);
}

function setRemainingTokensWallet(address arg1) {
    require msg.sender == owner
    require arg1
    remainingTokensWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require arg1 >= startTime
    require arg1 >= block.timestamp
    endTime = arg1
}

function pauseTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function unpauseTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return ext_call.return_data[0] >= tokensCap
}

function computeAmountBonus(uint256 arg1) {
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if arg1 < stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor12.length
        return stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]
    return 0
}

function computeTimeBonus() {
    require block.timestamp >= startTime
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require startTime <= block.timestamp
        if block.timestamp - startTime > stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor10.length
        return stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)]
    return 0
}

function transferPresaleTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require block.timestamp <= endTime
    require not uint8(stor6.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= tokensCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function mintPresaleTokens(uint256 arg1) {
    require msg.sender == owner
    require presaleWalletAddress
    require arg1 > 0
    require block.timestamp <= endTime
    require not uint8(stor6.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + arg1 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg1 <= tokensCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args presaleWalletAddress, arg1
    require ext_call.success
    presaleWalletAddress = 0
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp <= endTime:
        require ext_call.return_data[0] >= tokensCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] < tokensCap:
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= tokensCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args remainingTokensWalletAddress, tokensCap - ext_call.return_data[0]
        require ext_call.success
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function computeBonus(uint256 arg1) {
    require block.timestamp >= startTime
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require startTime <= block.timestamp
        if block.timestamp - startTime > stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor10.length
        s = 0
        while s < stor11.length:
            mem[0] = 11
            if arg1 < stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor11', 11))[uint8(s)]:
                s = s + 1
                continue 
            require s < stor12.length
            require stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] >= stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)]
            return (stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)])
        if stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] >= 0:
            return stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)]
        revert
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if arg1 < stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor12.length
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] >= stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]
        return stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]
    return 0
}

function setBonusesForTimes(uint32[] arg1, uint32[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx + 1 < arg1.length:
        require idx + 1 < arg1.length
        require idx < arg1.length
        require mem[(32 * idx) + 156 len 4] < mem[(32 * idx + 1) + 156 len 4]
        idx = idx + 1
        continue 
    stor9.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor9.length + 7 / 8 > idx:
            uint32(stor9[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor9) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor9)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(arg1.length) >> 3
        s = sha3(9)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(arg1.length) >> 3) + Mask(252, 2, None + -(floor32(arg1.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg1.length) >> 3) + 5) >> 2
        while stor9.length + 7 / 8 > idx:
            uint32(stor9[idx]) = 0
            idx = idx + 1
            continue 
    stor10.length = arg2.length
    if not arg2.length:
        idx = 0
        while stor10.length + 7 / 8 > idx:
            uint32(stor10[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            uint256(stor10) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor10)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(arg2.length) >> 3
        s = sha3(10)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(arg2.length) >> 3) + Mask(252, 2, None + -(floor32(arg2.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg2.length) >> 3) + 5) >> 2
        while stor10.length + 7 / 8 > idx:
            uint32(stor10[idx]) = 0
            idx = idx + 1
            continue 
}

function setBonusesForAmounts(uint32[] arg1, uint32[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx + 1 < arg1.length:
        require idx + 1 < arg1.length
        require idx < arg1.length
        require mem[(32 * idx) + 156 len 4] > mem[(32 * idx + 1) + 156 len 4]
        idx = idx + 1
        continue 
    stor11.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor11.length + 7 / 8 > idx:
            uint32(stor11[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor11) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor11)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(arg1.length) >> 3
        s = sha3(11)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(arg1.length) >> 3) + Mask(252, 2, None + -(floor32(arg1.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg1.length) >> 3) + 5) >> 2
        while stor11.length + 7 / 8 > idx:
            uint32(stor11[idx]) = 0
            idx = idx + 1
            continue 
    stor12.length = arg2.length
    if not arg2.length:
        idx = 0
        while stor12.length + 7 / 8 > idx:
            uint32(stor12[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            uint256(stor12) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor12)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(arg2.length) >> 3
        s = sha3(12)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(arg2.length) >> 3) + Mask(252, 2, None + -(floor32(arg2.length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(arg2.length) >> 3) + 5) >> 2
        while stor12.length + 7 / 8 > idx:
            uint32(stor12[idx]) = 0
            idx = idx + 1
            continue 
}

function buyTokens(address arg1) payable {
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if msg.value * rate:
        require msg.value * rate
        require msg.value * rate * tokenPriceInCents / msg.value * rate == tokenPriceInCents
    require block.timestamp >= startTime
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require startTime <= block.timestamp
        if block.timestamp - startTime > stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor10.length
        s = 0
        while s < stor11.length:
            mem[0] = 11
            if msg.value * rate * tokenPriceInCents / 100 / 10^18 < stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor11', 11))[uint8(s)]:
                s = s + 1
                continue 
            require s < stor12.length
            require stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] >= stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)]
            require stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000 >= 1000
            if rate:
                require rate
                require (1000 * rate) + (stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000
            rate = (1000 * rate) + (stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 1000
            require arg1
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
            require not stor8
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] >= 0
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000 >= 1000
        if rate:
            require rate
            require (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000
        rate = (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 1000
        require arg1
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
        require not stor8
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if msg.value * rate * tokenPriceInCents / 100 / 10^18 < stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor12.length
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] >= stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] + 1000 >= 1000
        if rate:
            require rate
            require (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] + 1000
        rate = (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] * rate) / 1000
        require arg1
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
        require not stor8
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    if rate:
        require rate
        require 1000 * rate / rate == 1000
    rate = 1000 * rate / 1000
    require arg1
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
    require not stor8
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if msg.value * rate:
        require msg.value * rate
        require msg.value * rate * tokenPriceInCents / msg.value * rate == tokenPriceInCents
    require block.timestamp >= startTime
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require startTime <= block.timestamp
        if block.timestamp - startTime > stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor10.length
        s = 0
        while s < stor11.length:
            mem[0] = 11
            if msg.value * rate * tokenPriceInCents / 100 / 10^18 < stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor11', 11))[uint8(s)]:
                s = s + 1
                continue 
            require s < stor12.length
            require stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] >= stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)]
            require stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000 >= 1000
            if rate:
                require rate
                require (1000 * rate) + (stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] + stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000
            rate = (1000 * rate) + (stor('array', ('div', 0.125, ('var', 1)), ('name', 'stor12', 12))[uint8(s)] * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 1000
            require msg.sender
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
            require not stor8
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * rate
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] >= 0
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000 >= 1000
        if rate:
            require rate
            require (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 1000
        rate = (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 1000
        require msg.sender
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
        require not stor8
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if msg.value * rate * tokenPriceInCents / 100 / 10^18 < stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
            idx = idx + 1
            continue 
        require idx < stor12.length
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] >= stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]
        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] + 1000 >= 1000
        if rate:
            require rate
            require (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] + 1000
        rate = (1000 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)] * rate) / 1000
        require msg.sender
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
        require block.timestamp >= startTime
        require block.timestamp <= endTime
        require msg.value
        require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
        require not stor8
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate
        require ext_call.success
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    if rate:
        require rate
        require 1000 * rate / rate == 1000
    rate = 1000 * rate / 1000
    require msg.sender
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ext_call.return_data[0] + (msg.value * rate) <= tokensCap
    require not stor8
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
