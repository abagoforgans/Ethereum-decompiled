contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[109 len 14127]
}



// =====================  Runtime code  =====================


#
#  - buy(address arg1)
#
const MAX_PERIOD_COUNT = 8


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address kycAddress;
address tokenAddress;
address vaultAddress;
address presaleAddress;
address bountyAddress;
address partnersAddress;
address aTCReserveLockerAddress;
address teamLockerAddress;
uint256 baseRate;
array of uint256 additionalBonusAmounts;
array of struct periodBonus;
uint256 weiRaised;
uint256 maxEtherCap;
uint256 minEtherCap;
mapping of uint256 beneficiaryFunded;
array of address stor16;
mapping of uint8 stor17;
uint8 isFinalized; offset 160
uint128 stor18; offset 160
address aTCControllerAddress;
uint256 refundCompleted;
uint8 presaleFallBackCalled;
uint256 finalizedTime;
uint8 initialized;

function initialized() {
    return bool(initialized)
}

function baseRate() {
    return baseRate
}

function additionalBonusAmounts(uint256 arg1) {
    require arg1 < additionalBonusAmounts.length
    return additionalBonusAmounts[arg1].field_0
}

function maxEtherCap() {
    return maxEtherCap
}

function weiRaised() {
    return weiRaised
}

function presaleFallBackCalled() {
    return bool(presaleFallBackCalled)
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function ATCReserveLocker() {
    return aTCReserveLockerAddress
}

function partnersAddress() {
    return partnersAddress
}

function minEtherCap() {
    return minEtherCap
}

function teamLocker() {
    return teamLockerAddress
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function kyc() {
    return kycAddress
}

function ATCController() {
    return aTCControllerAddress
}

function refundCompleted() {
    return refundCompleted
}

function beneficiaryFunded(address arg1) {
    return beneficiaryFunded[arg1]
}

function bountyAddress() {
    return bountyAddress
}

function getPeriodBonus() payable {
    mem[64] = 96
    require not msg.value
    require var11001 < periodBonus.length
    mem[0] = 11
    if periodBonus[var11001].field_0 > block.timestamp:
        var11001 = var11001 + 1
        continue 
    require var11001 < periodBonus.length
    mem[0] = 11
    if block.timestamp > periodBonus[var11001].field_256:
        var11001 = var11001 + 1
        continue 
    require var11001 < periodBonus.length
    return periodBonus[var11001].field_512
}

function periods(uint256 arg1) {
    require arg1 < periodBonus.length
    return periodBonus[arg1].field_0, periodBonus[arg1].field_256, periodBonus[arg1].field_512
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function presale() {
    return presaleAddress
}

function finalizedTime() {
    return finalizedTime
}

function minReached() {
    return weiRaised >= minEtherCap
}

function maxReached() {
    return (weiRaised == maxEtherCap)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function presaleFallBack(uint256 arg1) {
    require not presaleFallBackCalled
    require msg.sender == presaleAddress
    weiRaised = arg1
    presaleFallBackCalled = 1
    emit PresaleFallBack(arg1);
    return 1
}

function claimRefund(address arg1) {
    require isFinalized
    require weiRaised < minEtherCap
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function onSale() {
    idx = 0
    while idx < periodBonus.length:
        mem[0] = 11
        if periodBonus[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        require idx < periodBonus.length
        mem[0] = 11
        if block.timestamp > periodBonus[idx].field_256:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function claimTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
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
        emit ClaimedTokens(address(arg1), owner, ext_call.return_data[0]);
}

function refundAll(uint256 arg1) {
    require msg.sender == owner
    require isFinalized
    require weiRaised < minEtherCap
    require arg1 > 0
    if refundCompleted + arg1 <= stor16.length:
        idx = refundCompleted
        while idx < refundCompleted + arg1:
            require idx < stor16.length
            mem[0] = 16
            mem[128] = 0
            mem[100] = address(stor16[idx])
            require ext_code.size(vaultAddress)
            call vaultAddress.refund(address rg1) with:
                 gas gas_remaining - 710 wei
                args address(stor16[idx])
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
        refundCompleted += arg1
    else:
        idx = refundCompleted
        while idx < stor16.length:
            mem[0] = 16
            mem[128] = 0
            mem[100] = address(stor16[idx])
            require ext_code.size(vaultAddress)
            call vaultAddress.refund(address rg1) with:
                 gas gas_remaining - 710 wei
                args address(stor16[idx])
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
        refundCompleted = stor16.length
    emit RefundAll(arg1);
}

function startPeriod(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require periodBonus.length < 8
    require block.timestamp < arg1
    require arg1 < arg2
    if periodBonus.length:
        require arg1 <= arg2
        require arg2 - arg1 <= 168 * 24 * 3600
        require periodBonus.length - 1 < periodBonus.length
        require periodBonus[periodBonus.length].field_0 < arg1
    if periodBonus.length >= 3:
        periodBonus.length++
        if not periodBonus.length <= periodBonus.length + 1:
            idx = (3 * periodBonus.length) + 3
            while 3 * periodBonus.length > idx:
                periodBonus[idx].field_0 = 0
                periodBonus[idx].field_256 = 0
                periodBonus[idx].field_512 = 0
                idx = idx + 3
                continue 
        periodBonus[periodBonus.length].field_0 = arg1
        periodBonus[periodBonus.length].field_256 = arg2
        periodBonus[periodBonus.length].field_512 = 0
        emit StartPeriod(arg1, arg2, 0);
    else:
        require 5 * periodBonus.length / 5 == periodBonus.length
        require 5 * periodBonus.length <= 15
        periodBonus.length++
        if not periodBonus.length <= periodBonus.length + 1:
            idx = (3 * periodBonus.length) + 3
            while 3 * periodBonus.length > idx:
                periodBonus[idx].field_0 = 0
                periodBonus[idx].field_256 = 0
                periodBonus[idx].field_512 = 0
                idx = idx + 3
                continue 
        periodBonus[periodBonus.length].field_0 = arg1
        periodBonus[periodBonus.length].field_256 = arg2
        periodBonus[periodBonus.length].field_512 = (-5 * periodBonus.length) + 15
        emit StartPeriod(arg1, arg2, (-5 * periodBonus.length) + 15);
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, uint256 arg10, uint256 arg11, uint256 arg12, uint256[] arg13) {
    mem[96] = arg13.length
    mem[128 len 32 * arg13.length] = call.data[arg13 + 36 len 32 * arg13.length]
    require msg.sender == owner
    require not initialized
    require arg1
    require arg2
    require arg3
    require arg4
    require arg5
    require arg6
    require arg7
    require arg8
    require arg9
    require 0 < arg11
    require arg11 < arg10
    require arg12 > 0
    require 0 < arg13.length
    require mem[128] > 0
    idx = 0
    while idx < arg13.length - 1:
        require idx + 1 < arg13.length
        require idx < arg13.length
        require mem[(32 * idx) + 128] < mem[(32 * idx + 1) + 128]
        idx = idx + 1
        continue 
    kycAddress = arg1
    tokenAddress = arg2
    vaultAddress = arg3
    presaleAddress = arg4
    bountyAddress = arg5
    partnersAddress = arg6
    aTCReserveLockerAddress = arg7
    teamLockerAddress = arg8
    aTCControllerAddress = arg9
    maxEtherCap = arg10
    minEtherCap = arg11
    baseRate = arg12
    additionalBonusAmounts.length = arg13.length
    if not arg13.length:
        idx = 0
        while additionalBonusAmounts.length > idx:
            additionalBonusAmounts[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg13.length) + 128 > idx:
            additionalBonusAmounts[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg13.length) + 31) >> 5
        while additionalBonusAmounts.length > idx:
            additionalBonusAmounts[idx].field_0 = 0
            idx = idx + 1
            continue 
    initialized = 1
    emit Initialize()
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    idx = 0
    while idx < periodBonus.length:
        mem[0] = 11
        if periodBonus[idx].field_0 > block.timestamp:
            idx = idx + 1
            continue 
        require idx < periodBonus.length
        mem[0] = 11
        if block.timestamp > periodBonus[idx].field_256:
            idx = idx + 1
            continue 
        require weiRaised == maxEtherCap
        finalizedTime = block.timestamp
        require ext_code.size(vaultAddress)
        if weiRaised < minEtherCap:
            call vaultAddress.enableRefunds() with:
                 gas gas_remaining - 710 wei
        else:
            call vaultAddress.close() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
            require bountyAddress
            require partnersAddress
            require aTCReserveLockerAddress
            require teamLockerAddress
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args bountyAddress, 5 * ext_call.return_data[0] / 50
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args partnersAddress, 15 * ext_call.return_data[0] / 50
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args aTCReserveLockerAddress, 15 * ext_call.return_data[0] / 50
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args teamLockerAddress, 15 * ext_call.return_data[0] / 50
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf41e60c5 with:
                 gas gas_remaining - 710 wei
                args 1
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.finishGenerating() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3cebb823 with:
             gas gas_remaining - 710 wei
            args aTCControllerAddress
        require ext_call.success
        emit Finalized()
        stor18 = 1
    finalizedTime = block.timestamp
    require ext_code.size(vaultAddress)
    if weiRaised < minEtherCap:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 15 * ext_call.return_data[0] / ext_call.return_data[0] == 15
        require bountyAddress
        require partnersAddress
        require aTCReserveLockerAddress
        require teamLockerAddress
        require ext_code.size(tokenAddress)
        call tokenAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args bountyAddress, 5 * ext_call.return_data[0] / 50
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args partnersAddress, 15 * ext_call.return_data[0] / 50
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args aTCReserveLockerAddress, 15 * ext_call.return_data[0] / 50
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args teamLockerAddress, 15 * ext_call.return_data[0] / 50
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf41e60c5 with:
             gas gas_remaining - 710 wei
            args 1
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.finishGenerating() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args aTCControllerAddress
    require ext_call.success
    emit Finalized()
    stor18 = 1
}

function calculateRate(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require var12001 < periodBonus.length
    mem[0] = 11
    if periodBonus[var12001].field_0 > block.timestamp:
        var12001 = var12001 + 1
        continue 
    require var12001 < periodBonus.length
    mem[0] = 11
    if block.timestamp > periodBonus[var12001].field_256:
        var12001 = var12001 + 1
        continue 
    require var12001 < periodBonus.length
    require 0 < additionalBonusAmounts.length
    if uint256(additionalBonusAmounts.field_0) > arg1:
        if 1 < additionalBonusAmounts.length:
            if uint256(additionalBonusAmounts.field_256) > arg1:
                if 2 < additionalBonusAmounts.length:
                    if uint256(additionalBonusAmounts.field_512) <= arg1:
                        if 3 < additionalBonusAmounts.length:
                            if uint256(additionalBonusAmounts.field_768) > arg1:
                                if not baseRate:
                                    return (125 * baseRate / 100)
                                if baseRate:
                                    if 125 * baseRate / baseRate == 125:
                                        return (125 * baseRate / 100)
                            else:
                                if not baseRate:
                                    return (130 * baseRate / 100)
                                if baseRate:
                                    if 130 * baseRate / baseRate == 130:
                                        return (130 * baseRate / 100)
                    else:
                        if 3 < additionalBonusAmounts.length:
                            if uint256(additionalBonusAmounts.field_768) <= arg1:
                                if not baseRate:
                                    return (130 * baseRate / 100)
                                if baseRate:
                                    if 130 * baseRate / baseRate == 130:
                                        return (130 * baseRate / 100)
                            else:
                                if periodBonus[var12001].field_512 + 100 >= periodBonus[var12001].field_512:
                                    if not baseRate:
                                        return ((100 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                    if baseRate:
                                        if (100 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / baseRate == periodBonus[var12001].field_512 + 100:
                                            return ((100 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
            else:
                if periodBonus[var12001].field_512 + 5 >= periodBonus[var12001].field_512:
                    if 2 < additionalBonusAmounts.length:
                        if uint256(additionalBonusAmounts.field_512) > arg1:
                            if 3 < additionalBonusAmounts.length:
                                if uint256(additionalBonusAmounts.field_768) > arg1:
                                    if not baseRate:
                                        return ((105 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                    if baseRate:
                                        if (105 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / baseRate == periodBonus[var12001].field_512 + 105:
                                            return ((105 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                else:
                                    if not baseRate:
                                        return (130 * baseRate / 100)
                                    if baseRate:
                                        if 130 * baseRate / baseRate == 130:
                                            return (130 * baseRate / 100)
                        else:
                            if 3 < additionalBonusAmounts.length:
                                if uint256(additionalBonusAmounts.field_768) > arg1:
                                    if not baseRate:
                                        return (125 * baseRate / 100)
                                    if baseRate:
                                        if 125 * baseRate / baseRate == 125:
                                            return (125 * baseRate / 100)
                                else:
                                    if not baseRate:
                                        return (130 * baseRate / 100)
                                    if baseRate:
                                        if 130 * baseRate / baseRate == 130:
                                            return (130 * baseRate / 100)
    else:
        if periodBonus[var12001].field_512 + 5 >= periodBonus[var12001].field_512:
            if 1 < additionalBonusAmounts.length:
                if uint256(additionalBonusAmounts.field_256) > arg1:
                    if 2 < additionalBonusAmounts.length:
                        if uint256(additionalBonusAmounts.field_512) > arg1:
                            if 3 < additionalBonusAmounts.length:
                                if uint256(additionalBonusAmounts.field_768) > arg1:
                                    if not baseRate:
                                        return ((105 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                    if baseRate:
                                        if (105 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / baseRate == periodBonus[var12001].field_512 + 105:
                                            return ((105 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                else:
                                    if not baseRate:
                                        return (130 * baseRate / 100)
                                    if baseRate:
                                        if 130 * baseRate / baseRate == 130:
                                            return (130 * baseRate / 100)
                        else:
                            if 3 < additionalBonusAmounts.length:
                                if uint256(additionalBonusAmounts.field_768) > arg1:
                                    if not baseRate:
                                        return (125 * baseRate / 100)
                                    if baseRate:
                                        if 125 * baseRate / baseRate == 125:
                                            return (125 * baseRate / 100)
                                else:
                                    if not baseRate:
                                        return (130 * baseRate / 100)
                                    if baseRate:
                                        if 130 * baseRate / baseRate == 130:
                                            return (130 * baseRate / 100)
                else:
                    if 2 < additionalBonusAmounts.length:
                        if uint256(additionalBonusAmounts.field_512) > arg1:
                            if 3 < additionalBonusAmounts.length:
                                if uint256(additionalBonusAmounts.field_768) > arg1:
                                    if not baseRate:
                                        return ((110 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                    if baseRate:
                                        if (110 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / baseRate == periodBonus[var12001].field_512 + 110:
                                            return ((110 * baseRate) + (periodBonus[var12001].field_512 * baseRate) / 100)
                                else:
                                    if not baseRate:
                                        return (130 * baseRate / 100)
                                    if baseRate:
                                        if 130 * baseRate / baseRate == 130:
                                            return (130 * baseRate / 100)
                        else:
                            if 3 < additionalBonusAmounts.length:
                                if uint256(additionalBonusAmounts.field_768) > arg1:
                                    if not baseRate:
                                        return (125 * baseRate / 100)
                                    if baseRate:
                                        if 125 * baseRate / baseRate == 125:
                                            return (125 * baseRate / 100)
                                else:
                                    if not baseRate:
                                        return (130 * baseRate / 100)
                                    if baseRate:
                                        if 130 * baseRate / baseRate == 130:
                                            return (130 * baseRate / 100)
    revert
}

function _fallback() payable {
    mem[64] = 96
    require not uint8(stor0.field_160)
    require presaleFallBackCalled
    require msg.sender
    mem[128] = 0
    mem[100] = msg.sender
    require ext_code.size(kycAddress)
    call kycAddress.0xad1def42 with:
         gas gas_remaining - 710 wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require var17001 < periodBonus.length
    mem[0] = 11
    if periodBonus[var17001].field_0 > block.timestamp:
        var17001 = var17001 + 1
        continue 
    require var17001 < periodBonus.length
    mem[0] = 11
    if block.timestamp > periodBonus[var17001].field_256:
        var17001 = var17001 + 1
        continue 
    require msg.value
    require weiRaised != maxEtherCap
    require not isFinalized
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value <= maxEtherCap:
        require msg.value > 0
        require msg.value >= msg.value
        require var45001 < periodBonus.length
        mem[0] = 11
        if periodBonus[var45001].field_0 > block.timestamp:
            var45001 = var45001 + 1
            continue 
        require var45001 < periodBonus.length
        mem[0] = 11
        if block.timestamp > periodBonus[var45001].field_256:
            var45001 = var45001 + 1
            continue 
        require var45001 < periodBonus.length
        require 0 < additionalBonusAmounts.length
        if uint256(additionalBonusAmounts.field_0) > msg.value:
            require 1 < additionalBonusAmounts.length
            if uint256(additionalBonusAmounts.field_256) > msg.value:
                require 2 < additionalBonusAmounts.length
                require 3 < additionalBonusAmounts.length
                if uint256(additionalBonusAmounts.field_512) <= msg.value:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if msg.value:
                            require msg.value
                            require msg.value * 125 * baseRate / 100 / msg.value == 125 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 125 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 125 * baseRate / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) <= msg.value:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
                    else:
                        require periodBonus[var45001].field_512 + 100 >= periodBonus[var45001].field_512
                        if baseRate:
                            require baseRate
                            require (100 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / baseRate == periodBonus[var45001].field_512 + 100
                        if msg.value:
                            require msg.value
                            require msg.value * (100 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100 / msg.value == (100 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * (100 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * (100 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100, msg.sender, msg.sender);
            else:
                require periodBonus[var45001].field_512 + 5 >= periodBonus[var45001].field_512
                require 2 < additionalBonusAmounts.length
                require 3 < additionalBonusAmounts.length
                if uint256(additionalBonusAmounts.field_512) > msg.value:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / baseRate == periodBonus[var45001].field_512 + 105
                        if msg.value:
                            require msg.value
                            require msg.value * (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100 / msg.value == (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if msg.value:
                            require msg.value
                            require msg.value * 125 * baseRate / 100 / msg.value == 125 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 125 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 125 * baseRate / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
        else:
            require periodBonus[var45001].field_512 + 5 >= periodBonus[var45001].field_512
            require 1 < additionalBonusAmounts.length
            require 2 < additionalBonusAmounts.length
            require 3 < additionalBonusAmounts.length
            if uint256(additionalBonusAmounts.field_256) > msg.value:
                if uint256(additionalBonusAmounts.field_512) > msg.value:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / baseRate == periodBonus[var45001].field_512 + 105
                        if msg.value:
                            require msg.value
                            require msg.value * (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100 / msg.value == (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * (105 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if msg.value:
                            require msg.value
                            require msg.value * 125 * baseRate / 100 / msg.value == 125 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 125 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 125 * baseRate / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
            else:
                if uint256(additionalBonusAmounts.field_512) > msg.value:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require (110 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / baseRate == periodBonus[var45001].field_512 + 110
                        if msg.value:
                            require msg.value
                            require msg.value * (110 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100 / msg.value == (110 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * (110 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * (110 * baseRate) + (periodBonus[var45001].field_512 * baseRate) / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) > msg.value:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if msg.value:
                            require msg.value
                            require msg.value * 125 * baseRate / 100 / msg.value == 125 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 125 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 125 * baseRate / 100, msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if msg.value:
                            require msg.value
                            require msg.value * 130 * baseRate / 100 / msg.value == 130 * baseRate / 100
                        require msg.value <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 130 * baseRate / 100
                        require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(msg.value, msg.value * 130 * baseRate / 100, msg.sender, msg.sender);
    else:
        require weiRaised <= maxEtherCap
        require maxEtherCap - weiRaised > 0
        require msg.value >= maxEtherCap - weiRaised
        require var48001 < periodBonus.length
        mem[0] = 11
        if periodBonus[var48001].field_0 > block.timestamp:
            var48001 = var48001 + 1
            continue 
        require var48001 < periodBonus.length
        mem[0] = 11
        if block.timestamp > periodBonus[var48001].field_256:
            var48001 = var48001 + 1
            continue 
        require var48001 < periodBonus.length
        require 0 < additionalBonusAmounts.length
        if uint256(additionalBonusAmounts.field_0) > maxEtherCap - weiRaised:
            require 1 < additionalBonusAmounts.length
            if uint256(additionalBonusAmounts.field_256) > maxEtherCap - weiRaised:
                require 2 < additionalBonusAmounts.length
                require 3 < additionalBonusAmounts.length
                if uint256(additionalBonusAmounts.field_512) <= maxEtherCap - weiRaised:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100) / maxEtherCap - weiRaised == 125 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) <= maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
                    else:
                        require periodBonus[var48001].field_512 + 100 >= periodBonus[var48001].field_512
                        if baseRate:
                            require baseRate
                            require (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / baseRate == periodBonus[var48001].field_512 + 100
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) / maxEtherCap - weiRaised == (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (100 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100), msg.sender, msg.sender);
            else:
                require periodBonus[var48001].field_512 + 5 >= periodBonus[var48001].field_512
                require 2 < additionalBonusAmounts.length
                require 3 < additionalBonusAmounts.length
                if uint256(additionalBonusAmounts.field_512) > maxEtherCap - weiRaised:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / baseRate == periodBonus[var48001].field_512 + 105
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) / maxEtherCap - weiRaised == (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100) / maxEtherCap - weiRaised == 125 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
        else:
            require periodBonus[var48001].field_512 + 5 >= periodBonus[var48001].field_512
            require 1 < additionalBonusAmounts.length
            require 2 < additionalBonusAmounts.length
            require 3 < additionalBonusAmounts.length
            if uint256(additionalBonusAmounts.field_256) > maxEtherCap - weiRaised:
                if uint256(additionalBonusAmounts.field_512) > maxEtherCap - weiRaised:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / baseRate == periodBonus[var48001].field_512 + 105
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) / maxEtherCap - weiRaised == (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (105 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100) / maxEtherCap - weiRaised == 125 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
            else:
                if uint256(additionalBonusAmounts.field_512) > maxEtherCap - weiRaised:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / baseRate == periodBonus[var48001].field_512 + 110
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) / maxEtherCap - weiRaised == (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100) - (weiRaised * (110 * baseRate) + (periodBonus[var48001].field_512 * baseRate) / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
                else:
                    if uint256(additionalBonusAmounts.field_768) > maxEtherCap - weiRaised:
                        if baseRate:
                            require baseRate
                            require 125 * baseRate / baseRate == 125
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100) / maxEtherCap - weiRaised == 125 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 125 * baseRate / 100) - (weiRaised * 125 * baseRate / 100), msg.sender, msg.sender);
                    else:
                        if baseRate:
                            require baseRate
                            require 130 * baseRate / baseRate == 130
                        if maxEtherCap - weiRaised:
                            require maxEtherCap - weiRaised
                            require (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100) / maxEtherCap - weiRaised == 130 * baseRate / 100
                        require maxEtherCap - weiRaised <= msg.value
                        if not stor17[address(msg.sender)]:
                            stor17[address(msg.sender)] = 1
                            stor16.length++
                            if not stor16.length <= stor16.length + 1:
                                idx = stor16.length + 1
                                while stor16.length > idx:
                                    uint256(stor16[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(stor16[stor16.length]) = msg.sender
                            emit PushInvestorList(msg.sender);
                        require maxEtherCap >= weiRaised
                        weiRaised = maxEtherCap
                        require beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised >= beneficiaryFunded[address(msg.sender)]
                        beneficiaryFunded[address(msg.sender)] = beneficiaryFunded[address(msg.sender)] + maxEtherCap - weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100)
                        require ext_call.success
                        if msg.value - maxEtherCap + weiRaised > 0:
                            call msg.sender with:
                               value msg.value - maxEtherCap + weiRaised wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        require ext_code.size(vaultAddress)
                        call vaultAddress.deposit(address rg1) with:
                           value maxEtherCap - weiRaised wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        emit CrowdSaleTokenPurchase(maxEtherCap - weiRaised, (maxEtherCap * 130 * baseRate / 100) - (weiRaised * 130 * baseRate / 100), msg.sender, msg.sender);
}



}
