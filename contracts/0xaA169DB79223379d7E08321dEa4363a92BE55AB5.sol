contract main {




// =====================  Runtime code  =====================


uint256 startTime;
uint256 endTime;
uint256 rate;
uint256 weiRaised;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address _owner;
uint256 softCap;
uint256 crowdsaleCap;
uint256 tokensSold;
uint256 sub_fffae044;
uint256 sub_08095329;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint128 stor10; offset 168
uint128 stor10; offset 160
address sub_f07a1d62Address;
address whitelistAddress;
address starTokenAddress;
address walletAddress;
address sub_60e6a440Address;

function sub_08095329(?) {
    return sub_08095329
}

function isMinting() {
    return bool(uint8(stor10.field_168))
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

function crowdsaleCap() {
    return crowdsaleCap
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor4.field_168))
}

function sub_60e6a440(?) {
    return sub_60e6a440Address
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor4.field_160))
}

function owner() {
    return _owner
}

function softCap() {
    return softCap
}

function whitelist() {
    return whitelistAddress
}

function _owner() {
    return _owner
}

function starToken() {
    return starTokenAddress
}

function sub_f07a1d62(?) {
    return sub_f07a1d62Address
}

function sub_f5ba03dd(?) {
    return bool(uint8(stor10.field_160))
}

function sub_fffae044(?) {
    return sub_fffae044
}

function isOwner() {
    return (msg.sender == _owner)
}

function _fallback() payable {
    revert with 0, 'No fallback function defined!'
}

function hasReachedSoftCap() {
    if tokensSold < softCap:
        return 0
    return 1
}

function hasEnded() {
    if tokensSold < crowdsaleCap:
        return (block.timestamp > endTime)
    return 1
}

function renounceOwnership() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function pause() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    if uint8(stor4.field_168):
        revert with 0, 'must not be paused'
    Mask(88, 0, stor4.field_168) = 1
    emit Pause()
}

function unpause() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    if not uint8(stor4.field_168):
        revert with 0, 'must be paused'
    Mask(88, 0, stor4.field_168) = 0
    emit Unpause()
}

function setStarRate(uint256 arg1) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    if not arg1:
        revert with 0, 'Star rate must be more than 0!'
    emit TokenStarRateChanged(sub_08095329, arg1);
    sub_08095329 = arg1
}

function setRate(uint256 arg1) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    if not uint8(stor10.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sale must allow Wei for purchases to set a rate for Wei!'
    if not arg1:
        revert with 0, 'ETH rate must be more than 0!'
    emit TokenRateChanged(rate, arg1);
    rate = arg1
}

function setIsWeiAccepted(bool arg1, uint256 arg2) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    if not arg1:
        if arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'When not accepting Wei, you need to set a conversion rate of 0!'
    else:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'When accepting Wei, you need to set a conversion rate!'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
    rate = arg2
}

function initCrowdsale(uint256 arg1, uint256 arg2, uint256 arg3) {
    if startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Global variables must be empty when initializing crowdsale!'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Global variables must be empty when initializing crowdsale!'
    if rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Global variables must be empty when initializing crowdsale!'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_startTime must be more than current time!'
    if arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_endTime must be more than _startTime!'
    startTime = arg1
    endTime = arg2
    rate = arg3
}

function finalize() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this function'
    require not uint8(stor4.field_160)
    if tokensSold < crowdsaleCap:
        require block.timestamp > endTime
    if uint8(stor10.field_168):
        require tokensSold <= crowdsaleCap
        if crowdsaleCap - tokensSold > 0:
            require ext_code.size(sub_60e6a440Address)
            if uint8(stor10.field_168):
                call sub_60e6a440Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args walletAddress, crowdsaleCap - tokensSold
            else:
                call sub_60e6a440Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args walletAddress, crowdsaleCap - tokensSold
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_60e6a440Address)
        call sub_60e6a440Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(sub_60e6a440Address)
            if uint8(stor10.field_168):
                call sub_60e6a440Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args walletAddress, ext_call.return_data[0]
            else:
                call sub_60e6a440Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args walletAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if uint8(stor10.field_168):
        require ext_code.size(sub_60e6a440Address)
        call sub_60e6a440Address.0xf2fde38b with:
             gas gas_remaining wei
            args sub_f07a1d62Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor4.field_160) = 1
}

function init(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, address arg9, uint256 arg10, uint256 arg11, bool arg12, bool arg13) {
    if whitelistAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if starTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if sub_f07a1d62Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if sub_08095329:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if sub_60e6a440Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if softCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if crowdsaleCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if walletAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Global variables should not have been set before!'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if not arg7:
        if not arg8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if not arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if not arg10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if not arg11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if not arg9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Parameter variables cannot be empty!'
    if arg10 >= arg11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SoftCap should be smaller than crowdsaleCap!'
    if not arg12:
        if arg7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only set a rate for Wei, when it is accepted for purchases!'
    else:
        if arg7 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Set a rate for Wei, when it is accepted for purchases!'
    if startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Global variables must be empty when initializing crowdsale!'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Global variables must be empty when initializing crowdsale!'
    if rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Global variables must be empty when initializing crowdsale!'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_startTime must be more than current time!'
    if arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_endTime must be more than _startTime!'
    startTime = arg1
    endTime = arg2
    rate = arg7
    sub_60e6a440Address = arg5
    whitelistAddress = arg3
    starTokenAddress = arg4
    walletAddress = arg9
    sub_f07a1d62Address = arg6
    sub_08095329 = arg8
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg12)
    Mask(88, 0, stor10.field_168) = Mask(88, 0, arg13)
    _owner = tx.origin
    if not arg10:
        softCap = 0
    else:
        require arg10
        require 10^18 * arg10 / arg10 == 10^18
        softCap = 10^18 * arg10
    if not arg11:
        crowdsaleCap = 0
    else:
        require arg11
        require 10^18 * arg11 / arg11 == 10^18
        crowdsaleCap = 10^18 * arg11
    if not uint8(stor10.field_168):
        if sub_f07a1d62Address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TokenOwnerAftersale must be empty when minting tokens!'
    else:
        if not sub_f07a1d62Address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TokenOwnerAftersale cannot be empty when minting tokens!'
        require ext_code.size(sub_60e6a440Address)
        call sub_60e6a440Address.0x5c975abb with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Company token must be paused upon initialization!'
    require ext_code.size(sub_60e6a440Address)
    call sub_60e6a440Address.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != 18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only sales for tokens with 18 decimals are supported!'
}

function buyTokens(address arg1) payable {
    if uint8(stor4.field_168):
        revert with 0, 'must not be paused'
    require ext_code.size(whitelistAddress)
    call whitelistAddress.allowedAddresses(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Beneficiary not whitelisted!'
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require tokensSold < crowdsaleCap
    if uint8(stor10.field_168):
        require ext_code.size(sub_60e6a440Address)
        call sub_60e6a440Address.0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token owner must be contract address!'
    if not uint8(stor10.field_160):
        require not msg.value
    else:
        if msg.value > 0:
            if not msg.value:
                require tokensSold >= tokensSold
                require tokensSold <= crowdsaleCap
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokensSold >= tokensSold
                require ext_code.size(sub_60e6a440Address)
                if uint8(stor10.field_168):
                    call sub_60e6a440Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                else:
                    call sub_60e6a440Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require tokensSold + (msg.value * rate) >= tokensSold
                if tokensSold + (msg.value * rate) <= crowdsaleCap:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokensSold + (msg.value * rate) >= tokensSold
                    tokensSold += msg.value * rate
                    require ext_code.size(sub_60e6a440Address)
                    if uint8(stor10.field_168):
                        call sub_60e6a440Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), msg.value * rate
                    else:
                        call sub_60e6a440Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                else:
                    require tokensSold <= crowdsaleCap
                    require rate
                    require crowdsaleCap - tokensSold / rate <= msg.value
                    require weiRaised + (crowdsaleCap - tokensSold / rate) >= weiRaised
                    weiRaised += crowdsaleCap - tokensSold / rate
                    require crowdsaleCap >= tokensSold
                    tokensSold = crowdsaleCap
                    require ext_code.size(sub_60e6a440Address)
                    if uint8(stor10.field_168):
                        call sub_60e6a440Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), crowdsaleCap - tokensSold
                    else:
                        call sub_60e6a440Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), crowdsaleCap - tokensSold
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(crowdsaleCap - tokensSold / rate, crowdsaleCap - tokensSold, msg.sender, arg1);
                    if msg.value - (crowdsaleCap - tokensSold / rate) > 0:
                        call msg.sender with:
                           value msg.value - (crowdsaleCap - tokensSold / rate) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(walletAddress)
            call walletAddress.splitFunds() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(starTokenAddress)
    call starTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if not ext_call.return_data[0]:
            require tokensSold >= tokensSold
            require tokensSold <= crowdsaleCap
            require sub_fffae044 + ext_call.return_data[0] >= sub_fffae044
            sub_fffae044 += ext_call.return_data[0]
            require tokensSold >= tokensSold
            require ext_code.size(sub_60e6a440Address)
            if uint8(stor10.field_168):
                call sub_60e6a440Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                call sub_60e6a440Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchaseWithStar(ext_call.return_data[0], 0, msg.sender, arg1);
            require ext_code.size(starTokenAddress)
            call starTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), walletAddress, ext_call.return_data[0]
        else:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * sub_08095329 / ext_call.return_data[0] == sub_08095329
            require tokensSold + (ext_call.return_data[0] * sub_08095329) >= tokensSold
            if tokensSold + (ext_call.return_data[0] * sub_08095329) <= crowdsaleCap:
                require sub_fffae044 + ext_call.return_data[0] >= sub_fffae044
                sub_fffae044 += ext_call.return_data[0]
                require tokensSold + (ext_call.return_data[0] * sub_08095329) >= tokensSold
                tokensSold += ext_call.return_data[0] * sub_08095329
                require ext_code.size(sub_60e6a440Address)
                if uint8(stor10.field_168):
                    call sub_60e6a440Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] * sub_08095329
                else:
                    call sub_60e6a440Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0] * sub_08095329
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchaseWithStar(ext_call.return_data[0], ext_call.return_data[0] * sub_08095329, msg.sender, arg1);
                require ext_code.size(starTokenAddress)
                call starTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), walletAddress, ext_call.return_data[0]
            else:
                require tokensSold <= crowdsaleCap
                require sub_08095329
                require sub_fffae044 + (crowdsaleCap - tokensSold / sub_08095329) >= sub_fffae044
                sub_fffae044 += crowdsaleCap - tokensSold / sub_08095329
                require crowdsaleCap >= tokensSold
                tokensSold = crowdsaleCap
                require ext_code.size(sub_60e6a440Address)
                if uint8(stor10.field_168):
                    call sub_60e6a440Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), crowdsaleCap - tokensSold
                else:
                    call sub_60e6a440Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), crowdsaleCap - tokensSold
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchaseWithStar(crowdsaleCap - tokensSold / sub_08095329, crowdsaleCap - tokensSold, msg.sender, arg1);
                require ext_code.size(starTokenAddress)
                call starTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), walletAddress, crowdsaleCap - tokensSold / sub_08095329
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(walletAddress)
        call walletAddress.splitStarFunds() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
