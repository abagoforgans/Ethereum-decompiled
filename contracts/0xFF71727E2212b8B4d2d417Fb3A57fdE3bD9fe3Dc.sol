contract main {


// =======================  Init code  ======================


address stor0;
mapping of address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor16;
address stor7DFE;
address storD9D1;
address storE268;

function _fallback() payable {
    stor2 = 421232 * 3600
    stor3 = 1519171199
    stor4 = 400000
    stor5 = 1240000 * 10^18
    stor6 = 9240000 * 10^18
    stor7 = 20000 * 10^18
    stor8 = 10^13 * 3600
    stor16 = 1
    require not msg.value
    stor1[0] = 0xe06bd713b2e33c218fdd56295af74d45ce8c9d98
    stor[code.data[13014 len 32]] = 0xddc98d7d9cdd82172dad7467c8e341cfbeb077dd
    storD9D1 = msg.sender
    stor7DFE = 0x76d737f21296cd1ed6938dbca217615681b06336
    stor[code.data[13046 len 32]] = 0x4918fc7974d7ee6f266f9256dfca610fd735bf27
    storE268 = 0xc59403026685f553f8a6937c53452b9d1de4c707
    stor[code.data[13078 len 32]] = 0xc59403026685f553f8a6937c53452b9d1de4c707
    stor0 = code.data[13122 len 20]
    require ext_code.size(code.data[13122 len 20])
    call code.data[13122 len 20].0x40caae06 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xabb00601 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xabb00601 with:
         gas gas_remaining - 710 wei
        args stor[code.data[13078 len 32]]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xabb00601 with:
         gas gas_remaining - 710 wei
        args stor[code.data[13046 len 32]]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xabb00601 with:
         gas gas_remaining - 710 wei
        args stor[code.data[13014 len 32]]
    require ext_call.success
    if code.data[13142 len 32] > 0:
        require ext_code.size(stor0)
        call stor0.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, code.data[13142 len 32]
        require ext_call.success
    return code.data[1531 len 11483]
}



// =====================  Runtime code  =====================


#
#  - finalizeAll()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 stor0; offset 176
uint16 stor0; offset 160
address tokenAddress;
mapping of address wallets;
uint256 startTime;
uint256 endTime;
uint256 rate;
uint256 softCap;
uint256 hardCap;
uint256 overLimit;
uint256 minPay;
uint256 ethWeiRaised;
uint256 nonEthWeiRaised;
uint256 stor11;
uint256 tokenReserved;
address vaultAddress;
address lockedAllocationAddress;
array of struct bonusPattern;
uint8 stor16;
uint256 stor17;
bool stor18; offset 256
uint8 bounty;
uint8 team; offset 8
uint8 company; offset 16
uint8 partners; offset 24
address stor7DFE;
address stor8F33;
address storE268;
address storEDC9;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function isInitialized() {
    return bool(uint8(stor0.field_168))
}

function ethWeiRaised() {
    return ethWeiRaised
}

function company() {
    return bool(company)
}

function wallets(uint8 arg1) {
    return wallets[arg1]
}

function startTime() {
    return startTime
}

function bonusPattern(uint256 arg1) {
    require arg1 < bonusPattern.length
    return uint256(bonusPattern[arg1].field_0), uint256(bonusPattern[arg1].field_256)
}

function partners() {
    return bool(partners)
}

function minPay() {
    return minPay
}

function team() {
    return bool(team)
}

function isFinalized() {
    return bool(uint8(stor0.field_160))
}

function softCap() {
    return softCap
}

function bounty() {
    return bool(bounty)
}

function nonEthWeiRaised() {
    return nonEthWeiRaised
}

function isPausedCrowdsale() {
    return bool(uint8(stor0.field_176))
}

function lockedAllocation() {
    return lockedAllocationAddress
}

function overLimit() {
    return overLimit
}

function tokenReserved() {
    return tokenReserved
}

function hardCap() {
    return hardCap
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function ICOSaleType() {
    require stor16 <= 1
    if not stor16:
        return 'round1'
    return 'round2'
}

function weiRaised() {
    require nonEthWeiRaised + ethWeiRaised >= ethWeiRaised
    return (nonEthWeiRaised + ethWeiRaised)
}

function crowdsalePause() {
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_176)
    uint8(stor0.field_176) = 1
}

function crowdsaleUnpause() {
    require stor[code.data[11408 len 32]] == msg.sender
    require 1 == bool(uint8(stor0.field_176))
    uint8(stor0.field_176) = 0
}

function changeRate(uint256 arg1, uint256 arg2) {
    if stor[code.data[11408 len 32]] != msg.sender:
        require stor7DFE == msg.sender
    require arg1 > 0
    rate = arg1
    minPay = arg2
}

function weiTotalRaised() {
    require nonEthWeiRaised + ethWeiRaised >= ethWeiRaised
    require nonEthWeiRaised + ethWeiRaised + stor11 >= stor11
    return (nonEthWeiRaised + ethWeiRaised + stor11)
}

function claimRefund() {
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function changeCap(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_168)
    require arg2 > arg1
    softCap = arg1
    hardCap = arg2
    overLimit = arg3
}

function changePeriod(uint256 arg1, uint256 arg2) {
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_168)
    require block.timestamp <= arg1
    require arg1 < arg2
    startTime = arg1
    endTime = arg2
}

function moveTokens(address arg1) {
    require stor[code.data[11408 len 32]] == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x75e2ff65 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function tokenPause() {
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function goalReached() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
    return tokenReserved + ext_call.return_data[0] >= softCap
}

function distructVault() {
    require stor[code.data[11376 len 32]] == msg.sender
    require block.timestamp > startTime + (9600 * 24 * 3600)
    require ext_code.size(vaultAddress)
    call vaultAddress.del(address rg1) with:
         gas gas_remaining - 710 wei
        args stor[code.data[11376 len 32]]
    require ext_call.success
}

function initialize() {
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_168)
    require block.timestamp <= startTime
    create contract with 0 wei
                    code: code.data[9895 len 1481]
    require create.new_address
    vaultAddress = address(create.new_address)
    emit Initialized()
    uint8(stor0.field_168) = 1
}

function finalize2() {
    if stor[code.data[11408 len 32]] != msg.sender:
        require stor[code.data[11376 len 32]] == msg.sender
    require bounty
    bounty = 0
    if stor17:
        require stor17
        require 2 * stor17 / stor17 == 2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args wallets[4], 2 * stor17 / 77
    require ext_call.success
}

function finalize3() {
    if stor[code.data[11408 len 32]] != msg.sender:
        require stor[code.data[11376 len 32]] == msg.sender
    require company
    company = 0
    if stor17:
        require stor17
        require 2 * stor17 / stor17 == 2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args wallets[6], 2 * stor17 / 77
    require ext_call.success
}

function finalize4() {
    if stor[code.data[11408 len 32]] != msg.sender:
        require stor[code.data[11376 len 32]] == msg.sender
    require partners
    partners = 0
    if stor17:
        require stor17
        require 13 * stor17 / stor17 == 13
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args wallets[1], 13 * stor17 / 77
    require ext_call.success
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp <= endTime:
        if tokenReserved + ext_call.return_data[0] < hardCap:
            return tokenReserved + ext_call.return_data[0] >= hardCap
    return bool(uint8(stor0.field_168))
}

function paymentsInOtherCurrency(uint256 arg1, uint256 arg2) {
    require stor7DFE == msg.sender
    require overLimit + hardCap >= hardCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require arg1 + ext_call.return_data[0] <= overLimit + hardCap
    require uint8(stor0.field_168)
    nonEthWeiRaised = arg2
    tokenReserved = arg1
}

function tokenUnpause() {
    if stor[code.data[11408 len 32]] != msg.sender:
        require block.timestamp > endTime + (720 * 24 * 3600)
        require stor16 <= 1
        require stor16 == 1
        require uint8(stor0.field_160)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
        require tokenReserved + ext_call.return_data[0] >= softCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function finalize1() {
    if stor[code.data[11408 len 32]] != msg.sender:
        require stor[code.data[11376 len 32]] == msg.sender
    require team
    team = 0
    create contract with 0 wei
                    code: code.data[9227 len 668], tokenAddress, storE268
    require create.new_address
    lockedAllocationAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xabb00601 with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    if stor17:
        require stor17
        require 6 * stor17 / stor17 == 6
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args lockedAllocationAddress, 6 * stor17 / 77
    require ext_call.success
}

function setBonusPattern(uint256[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[32] = 1
    mem[0] = 2
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_168)
    require arg1.length == arg2.length
    bonusPattern.length = arg1.length
    if not bonusPattern.length > arg1.length:
        idx = 0
        while idx < arg1.length:
            _28 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_28] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_28 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < bonusPattern.length
            mem[0] = 15
            uint256(bonusPattern[idx].field_0) = mem[_28]
            uint256(bonusPattern[idx].field_256) = mem[_28 + 32]
            idx = idx + 1
            continue 
    else:
        mem[0] = 15
        idx = 2 * arg1.length
        while 2 * bonusPattern.length > idx:
            uint256(bonusPattern[idx].field_0) = 0
            uint256(bonusPattern[idx].field_256) = 0
            idx = idx + 2
            continue 
        idx = 0
        while idx < arg1.length:
            _46 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_46] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_46 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < bonusPattern.length
            mem[0] = 15
            uint256(bonusPattern[idx].field_0) = mem[_46]
            uint256(bonusPattern[idx].field_256) = mem[_46 + 32]
            idx = idx + 1
            continue 
}

function changeWallet(uint8 arg1, address arg2) {
    require arg1 <= 6
    if wallets[arg1 << 248] != msg.sender:
        require stor[code.data[11408 len 32]] == msg.sender
        if uint8(stor0.field_168):
            require arg1 <= 6
            require arg1 == 3
    else:
        require arg1 <= 6
        if arg1 == 3:
            require stor[code.data[11408 len 32]] == msg.sender
            if uint8(stor0.field_168):
                require arg1 <= 6
                require arg1 == 3
    require arg1 <= 6
    wallets[arg1 << 248] = arg2
    if wallets[arg1 << 248] != wallets[1]:
        if wallets[arg1 << 248] != stor[code.data[11408 len 32]]:
            if wallets[arg1 << 248] != storEDC9:
                if stor8F33 != wallets[arg1 << 248]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.delUnpausedWallet(address rg1) with:
                         gas gas_remaining - 710 wei
                        args wallets[arg1 << 248]
                    require ext_call.success
    if arg2 == wallets[1]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xabb00601 with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
    else:
        if arg2 == stor[code.data[11408 len 32]]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xabb00601 with:
                 gas gas_remaining - 710 wei
                args arg2
            require ext_call.success
        else:
            if arg2 == storEDC9:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xabb00601 with:
                     gas gas_remaining - 710 wei
                    args arg2
                require ext_call.success
            else:
                if stor8F33 == arg2:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xabb00601 with:
                         gas gas_remaining - 710 wei
                        args arg2
                    require ext_call.success
}

function finalize() {
    if stor[code.data[11408 len 32]] != msg.sender:
        if stor[code.data[11376 len 32]] != msg.sender:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
            require tokenReserved + ext_call.return_data[0] < softCap
    require not uint8(stor0.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp <= endTime:
        require tokenReserved + ext_call.return_data[0] >= hardCap
    require uint8(stor0.field_168)
    uint8(stor0.field_160) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(vaultAddress)
    if tokenReserved + ext_call.return_data[0] < softCap:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
        require ext_call.success
    else:
        call vaultAddress.close(address rg1) with:
             gas gas_remaining - 710 wei
            args stor[code.data[11376 len 32]]
        require ext_call.success
        if tokenReserved > 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args wallets[1], tokenReserved
            require ext_call.success
            tokenReserved = 0
        require stor16 <= 1
        if not stor16:
            uint16(stor0.field_160) = 0
            stor16 = 1
            require nonEthWeiRaised + ethWeiRaised >= ethWeiRaised
            stor11 = nonEthWeiRaised + ethWeiRaised
            ethWeiRaised = 0
            nonEthWeiRaised = 0
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            stor17 = ext_call.return_data[0]
            bounty = 1
            team = 1
            company = 1
            partners = 1
            stor18 = 0
            stor18 = 0
            stor18 = 0
    emit Finalized()
}

function setup(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256[] arg8, uint256[] arg9) {
    mem[96] = arg8.length
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[64] = (32 * arg8.length) + (32 * arg9.length) + 160
    mem[(32 * arg8.length) + 128] = arg9.length
    mem[(32 * arg8.length) + 160 len 32 * arg9.length] = call.data[arg9 + 36 len 32 * arg9.length]
    require stor[code.data[11408 len 32]] == msg.sender
    require not uint8(stor0.field_168)
    require block.timestamp <= arg1
    require arg1 < arg2
    startTime = arg1
    endTime = arg2
    if stor[code.data[11408 len 32]] == msg.sender:
        require arg5 > 0
        rate = arg5
        minPay = arg7
        require stor[code.data[11408 len 32]] == msg.sender
        require not uint8(stor0.field_168)
        require arg4 > arg3
        softCap = arg3
        hardCap = arg4
        overLimit = arg6
        if arg8.length > 0:
            mem[32] = 1
            mem[0] = 2
            require stor[code.data[11408 len 32]] == msg.sender
            require not uint8(stor0.field_168)
            require arg8.length == arg9.length
            bonusPattern.length = arg8.length
            if not bonusPattern.length > arg8.length:
                idx = 0
                while idx < arg8.length:
                    _63 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_63] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg8.length) + 128]
                    mem[_63 + 32] = mem[(32 * idx) + (32 * arg8.length) + 160]
                    require idx < bonusPattern.length
                    mem[0] = 15
                    uint256(bonusPattern[idx].field_0) = mem[_63]
                    uint256(bonusPattern[idx].field_256) = mem[_63 + 32]
                    idx = idx + 1
                    continue 
            else:
                mem[0] = 15
                idx = 2 * arg8.length
                while 2 * bonusPattern.length > idx:
                    uint256(bonusPattern[idx].field_0) = 0
                    uint256(bonusPattern[idx].field_256) = 0
                    idx = idx + 2
                    continue 
                idx = 0
                while idx < arg8.length:
                    _99 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_99] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg8.length) + 128]
                    mem[_99 + 32] = mem[(32 * idx) + (32 * arg8.length) + 160]
                    require idx < bonusPattern.length
                    mem[0] = 15
                    uint256(bonusPattern[idx].field_0) = mem[_99]
                    uint256(bonusPattern[idx].field_256) = mem[_99 + 32]
                    idx = idx + 1
                    continue 
    else:
        require stor7DFE == msg.sender
        require arg5 > 0
        rate = arg5
        minPay = arg7
        require stor[code.data[11408 len 32]] == msg.sender
        require not uint8(stor0.field_168)
        require arg4 > arg3
        softCap = arg3
        hardCap = arg4
        overLimit = arg6
        if arg8.length > 0:
            mem[32] = 1
            mem[0] = 2
            require stor[code.data[11408 len 32]] == msg.sender
            require not uint8(stor0.field_168)
            require arg8.length == arg9.length
            bonusPattern.length = arg8.length
            if not bonusPattern.length > arg8.length:
                idx = 0
                while idx < arg8.length:
                    _65 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_65] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg8.length) + 128]
                    mem[_65 + 32] = mem[(32 * idx) + (32 * arg8.length) + 160]
                    require idx < bonusPattern.length
                    mem[0] = 15
                    uint256(bonusPattern[idx].field_0) = mem[_65]
                    uint256(bonusPattern[idx].field_256) = mem[_65 + 32]
                    idx = idx + 1
                    continue 
            else:
                mem[0] = 15
                idx = 2 * arg8.length
                while 2 * bonusPattern.length > idx:
                    uint256(bonusPattern[idx].field_0) = 0
                    uint256(bonusPattern[idx].field_256) = 0
                    idx = idx + 2
                    continue 
                idx = 0
                while idx < arg8.length:
                    _101 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_101] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg8.length) + 128]
                    mem[_101 + 32] = mem[(32 * idx) + (32 * arg8.length) + 160]
                    require idx < bonusPattern.length
                    mem[0] = 15
                    uint256(bonusPattern[idx].field_0) = mem[_101]
                    uint256(bonusPattern[idx].field_256) = mem[_101 + 32]
                    idx = idx + 1
                    continue 
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp > startTime
    require block.timestamp < endTime
    require msg.value >= minPay
    require uint8(stor0.field_168)
    require not uint8(stor0.field_176)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + tokenReserved >= tokenReserved
    idx = 0
    while uint16(idx) < bonusPattern.length:
        mem[0] = 15
        if ext_call.return_data[0] + tokenReserved >= uint256(bonusPattern[2 * uint16(idx)].field_0):
            idx = idx + 1
            continue 
        require uint16(idx) < bonusPattern.length
        require uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256)
        if msg.value * rate / 1000:
            require msg.value * rate / 1000
            require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / msg.value * rate / 1000 == uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000
        require uint16(idx) < bonusPattern.length
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 >= 0
        if ((100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000) + ext_call.return_data[0] + tokenReserved >= uint256(bonusPattern[2 * uint16(idx)].field_0):
            require uint16(idx) < bonusPattern.length
            require ext_call.return_data[0] + tokenReserved <= uint256(bonusPattern[2 * uint16(idx)].field_0)
            require uint16(idx) < bonusPattern.length
            mem[0] = 15
            require uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256)
            if not uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                    if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= msg.value * rate / 1000:
                        idx = idx + 1
                        continue 
            else:
                if uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                    if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved == 100000:
                        if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                            if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= msg.value * rate / 1000:
                                idx = idx + 1
                                continue 
            revert
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 >= 0
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 >= (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
        require tokenReserved + ext_call.return_data[0] <= hardCap
        require overLimit >= 0
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 <= overLimit + hardCap - tokenReserved - ext_call.return_data[0]
        require msg.value + ethWeiRaised >= ethWeiRaised
        ethWeiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000
        require ext_call.success
        emit TokenPurchase(msg.value, (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000, msg.sender, arg1);
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
    require msg.value * rate / 1000 >= 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
    require tokenReserved + ext_call.return_data[0] <= hardCap
    require overLimit >= 0
    require msg.value * rate / 1000 <= overLimit + hardCap - tokenReserved - ext_call.return_data[0]
    require msg.value + ethWeiRaised >= ethWeiRaised
    ethWeiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate / 1000
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate / 1000, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require block.timestamp > startTime
    require block.timestamp < endTime
    require msg.value >= minPay
    require uint8(stor0.field_168)
    require not uint8(stor0.field_176)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + tokenReserved >= tokenReserved
    idx = 0
    while uint16(idx) < bonusPattern.length:
        mem[0] = 15
        if ext_call.return_data[0] + tokenReserved >= uint256(bonusPattern[2 * uint16(idx)].field_0):
            idx = idx + 1
            continue 
        require uint16(idx) < bonusPattern.length
        require uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256)
        if msg.value * rate / 1000:
            require msg.value * rate / 1000
            require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / msg.value * rate / 1000 == uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000
        require uint16(idx) < bonusPattern.length
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 >= 0
        if ((100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000) + ext_call.return_data[0] + tokenReserved >= uint256(bonusPattern[2 * uint16(idx)].field_0):
            require uint16(idx) < bonusPattern.length
            require ext_call.return_data[0] + tokenReserved <= uint256(bonusPattern[2 * uint16(idx)].field_0)
            require uint16(idx) < bonusPattern.length
            mem[0] = 15
            require uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256)
            if not uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                    if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= msg.value * rate / 1000:
                        idx = idx + 1
                        continue 
            else:
                if uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                    if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved == 100000:
                        if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                            if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= msg.value * rate / 1000:
                                idx = idx + 1
                                continue 
            revert
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 >= 0
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 >= (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
        require tokenReserved + ext_call.return_data[0] <= hardCap
        require overLimit >= 0
        require (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000 <= overLimit + hardCap - tokenReserved - ext_call.return_data[0]
        require msg.value + ethWeiRaised >= ethWeiRaised
        ethWeiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000
        require ext_call.success
        emit TokenPurchase(msg.value, (100000 * msg.value * rate / 1000) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * msg.value * rate / 1000) / 100000, msg.sender, msg.sender);
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
    require msg.value * rate / 1000 >= 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require tokenReserved + ext_call.return_data[0] >= ext_call.return_data[0]
    require tokenReserved + ext_call.return_data[0] <= hardCap
    require overLimit >= 0
    require msg.value * rate / 1000 <= overLimit + hardCap - tokenReserved - ext_call.return_data[0]
    require msg.value + ethWeiRaised >= ethWeiRaised
    ethWeiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate / 1000
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate / 1000, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function getBonus(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + tokenReserved >= tokenReserved
    idx = 0
    while uint16(idx) < bonusPattern.length:
        mem[0] = 15
        if ext_call.return_data[0] + tokenReserved >= uint256(bonusPattern[2 * uint16(idx)].field_0):
            idx = idx + 1
            continue 
        require uint16(idx) < bonusPattern.length
        require uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256)
        if not arg1:
            if uint16(idx) < bonusPattern.length:
                if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000 >= 0:
                    if ((100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000) + ext_call.return_data[0] + tokenReserved < uint256(bonusPattern[2 * uint16(idx)].field_0):
                        if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000 >= 0:
                            if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000 >= (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000:
                                return ((100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000)
                    else:
                        if uint16(idx) < bonusPattern.length:
                            if ext_call.return_data[0] + tokenReserved <= uint256(bonusPattern[2 * uint16(idx)].field_0):
                                if uint16(idx) < bonusPattern.length:
                                    mem[0] = 15
                                    if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256):
                                        if not uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                                            if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                                                if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= arg1:
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                                                if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved == 100000:
                                                    if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                                                        if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= arg1:
                                                            idx = idx + 1
                                                            continue 
        else:
            if arg1:
                if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / arg1 == uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                    if uint16(idx) < bonusPattern.length:
                        if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000 >= 0:
                            if ((100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000) + ext_call.return_data[0] + tokenReserved < uint256(bonusPattern[2 * uint16(idx)].field_0):
                                if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000 >= 0:
                                    if (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000 >= (100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000:
                                        return ((100000 * arg1) + (uint256(bonusPattern[2 * uint16(idx)].field_256) * arg1) / 100000)
                            else:
                                if uint16(idx) < bonusPattern.length:
                                    if ext_call.return_data[0] + tokenReserved <= uint256(bonusPattern[2 * uint16(idx)].field_0):
                                        if uint16(idx) < bonusPattern.length:
                                            mem[0] = 15
                                            if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 >= uint256(bonusPattern[2 * uint16(idx)].field_256):
                                                if not uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                                                    if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                                                        if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= arg1:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved:
                                                        if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_0) - ext_call.return_data[0] - tokenReserved == 100000:
                                                            if uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000:
                                                                if (100000 * uint256(bonusPattern[2 * uint16(idx)].field_0)) - (100000 * ext_call.return_data[0]) - (100000 * tokenReserved) / uint256(bonusPattern[2 * uint16(idx)].field_256) + 100000 <= arg1:
                                                                    idx = idx + 1
                                                                    continue 
        revert
    if arg1 >= 0:
        return arg1
    revert
}



}
