contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
uint8 stor8;
address stor11;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    stor8 = 0
    require not msg.value
    require code.data[15859 len 32] >= code.data[15827 len 32]
    require code.data[15903 len 20]
    create contract with 0 wei
                    code: code.data[11570 len 4257]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor0 = address(create.new_address)
    stor1 = code.data[15827 len 32]
    stor2 = code.data[15859 len 32]
    stor4 = 300
    stor3 = code.data[15903 len 20]
    address(stor6.field_0) = msg.sender
    stor7 = 100000000 * 10^18
    require address(stor6.field_0) == msg.sender
    require not stor8
    stor8 = 1
    emit Pause()
    stor11 = code.data[15935 len 20]
    require address(stor6.field_0) == msg.sender
    require code.data[15967 len 20]
    require block.timestamp <= stor2
    require not uint8(stor6.field_160)
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + 70000000 * 10^18 >= ext_call.return_data[0]
    require ext_call.return_data[0] + 70000000 * 10^18 <= stor7
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args code.data[15967 len 20], 70000000 * 10^18
    require ext_call.success
    emit TokenMint(70000000 * 10^18, address(code.data[15955 len 32]));
    return code.data[1226 len 10344]
}



// =====================  Runtime code  =====================


const sub_72b9adfc(?) = 70000000 * 10^18

const sub_c6014014(?) = 300

const DECIMALS = 18

const BONUS_COEFF = 100

const CAP = 100000000 * 10^18


address tokenAddress;
uint256 startTime;
array of uint32 stor10;
address remainingTokensWalletAddress;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
address owner;
uint256 tokensCap;
uint8 stor8;
array of uint32 stor9;

function tokensCap() {
    return tokensCap
}

function bonusesForTimesCount() {
    return stor9.length
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
    return bool(stor6)
}

function owner() {
    return owner
}

function BONUS_TIMES_VALUES(uint256 arg1) {
    require arg1 < stor10.length
    return bONUS_TIMES_VALUES[uint8(arg1)]
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require stor8
    stor8 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor8
    stor8 = 1
    emit Pause()
}

function setWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function setRemainingTokensWallet(address arg1) {
    require owner == msg.sender
    require arg1
    remainingTokensWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pauseTokens() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function unpauseTokens() {
    require owner == msg.sender
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

function computeBonus() {
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

function mintTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    require block.timestamp <= endTime
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require arg2 + ext_call.return_data[0] <= tokensCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit TokenMint(arg2, arg1);
}

function setBonusesForTimes(uint32[] arg1, uint32[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
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

function buyTokens(address arg1) payable {
    if stor9.length:
        require block.timestamp >= startTime
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            require startTime <= block.timestamp
            if block.timestamp - startTime > stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
                idx = idx + 1
                continue 
            require idx < stor10.length
            if stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] < 30:
                require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100 >= 100
                if rate:
                    require rate
                    require (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100
                rate = (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 100
            else:
                if msg.value > 83 * 10^18:
                    require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100 >= 100
                    if rate:
                        require rate
                        require (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100
                    rate = (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 100
                else:
                    if stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] < 30:
                        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100 >= 100
                        if rate:
                            require rate
                            require (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100
                        rate = (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 100
            require arg1
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require (rate * msg.value) + ext_call.return_data[0] <= tokensCap
            require not stor8
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), rate * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        if rate:
            require rate
            require 100 * rate / rate == 100
        rate = 100 * rate / 100
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require (rate * msg.value) + ext_call.return_data[0] <= tokensCap
    require not stor8
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if stor9.length:
        require block.timestamp >= startTime
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            require startTime <= block.timestamp
            if block.timestamp - startTime > stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
                idx = idx + 1
                continue 
            require idx < stor10.length
            if stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] < 30:
                require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100 >= 100
                if rate:
                    require rate
                    require (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100
                rate = (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 100
            else:
                if msg.value > 83 * 10^18:
                    require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100 >= 100
                    if rate:
                        require rate
                        require (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100
                    rate = (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 100
                else:
                    if stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] < 30:
                        require stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100 >= 100
                        if rate:
                            require rate
                            require (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / rate == stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] + 100
                        rate = (100 * rate) + (stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)] * rate) / 100
            require msg.sender
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value
            require (rate * msg.value) + ext_call.return_data[0] <= tokensCap
            require not stor8
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, rate * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        if rate:
            require rate
            require 100 * rate / rate == 100
        rate = 100 * rate / 100
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require (rate * msg.value) + ext_call.return_data[0] <= tokensCap
    require not stor8
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function finalize() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] >= tokensCap:
        require owner == msg.sender
        require not stor6
        if ext_code.size(tokenAddress):
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if block.timestamp <= endTime:
                    require ext_call.return_data[0] >= tokensCap
                emit Finalized()
                stor6 = 1
                if ext_code.size(tokenAddress):
                    call tokenAddress.0x7d64bcb4 with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0x5c975abb with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0xf2fde38b with:
                                             gas gas_remaining - 710 wei
                                            args owner
                                        if ext_call.success:
                                else:
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0x3f4ba83a with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_code.size(tokenAddress):
                                                call tokenAddress.0xf2fde38b with:
                                                     gas gas_remaining - 710 wei
                                                    args owner
                                                if ext_call.success:
    else:
        if ext_code.size(tokenAddress):
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_call.return_data[0] <= tokensCap:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args remainingTokensWalletAddress, tokensCap - ext_call.return_data[0]
                        if ext_call.success:
                            emit TokenMint((tokensCap - ext_call.return_data[0]), remainingTokensWalletAddress);
                            require owner == msg.sender
                            require not stor6
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if block.timestamp <= endTime:
                                        require ext_call.return_data[0] >= tokensCap
                                    emit Finalized()
                                    stor6 = 1
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0x7d64bcb4 with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            if ext_code.size(tokenAddress):
                                                call tokenAddress.0x5c975abb with:
                                                     gas gas_remaining - 710 wei
                                                if ext_call.success:
                                                    if not ext_call.return_data[0]:
                                                        if ext_code.size(tokenAddress):
                                                            call tokenAddress.0xf2fde38b with:
                                                                 gas gas_remaining - 710 wei
                                                                args owner
                                                            if ext_call.success:
                                                    else:
                                                        if ext_code.size(tokenAddress):
                                                            call tokenAddress.0x3f4ba83a with:
                                                                 gas gas_remaining - 710 wei
                                                            if ext_call.success:
                                                                if ext_code.size(tokenAddress):
                                                                    call tokenAddress.0xf2fde38b with:
                                                                         gas gas_remaining - 710 wei
                                                                        args owner
                                                                    if ext_call.success:
    revert
}



}
