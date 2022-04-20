contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
uint16 stor6; offset 160
uint16 stor6; offset 176
uint16 stor6; offset 192
uint64 stor6; offset 208
address stor6;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor3 = 672 * 24 * 3600
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor5 = code.data[5376 len 20]
    address(stor6.field_0) = code.data[5408 len 20]
    stor2 = code.data[5428 len 32]
    stor4 = code.data[5472 len 20]
    uint16(stor6.field_160) = code.data[5522 len 2]
    uint16(stor6.field_176) = code.data[5554 len 2]
    uint16(stor6.field_192) = code.data[5586 len 2]
    stor6.field_208 % 281474976710656 = bool(code.data[5588 len 32]) % 281474976710656
    return code.data[542 len 4822]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 totalRaised;
uint256 startTimestamp;
uint256 duration;
address rateOracleAddress;
address fundsWalletAddress;
uint8 stor6; offset 208
uint8 stor6; offset 216
uint16 bonus1; offset 160
uint16 bonus2; offset 176
uint16 bonus3; offset 192
uint64 stor6; offset 216
address tokenAddress;

function duration() {
    return duration
}

function fundsWallet() {
    return fundsWalletAddress
}

function bonus1() {
    return bonus1
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function bonus2() {
    return bonus2
}

function owner() {
    return owner
}

function rateOracle() {
    return rateOracleAddress
}

function bonus3() {
    return bonus3
}

function totalRaised() {
    return totalRaised
}

function startTimestamp() {
    return startTimestamp
}

function bonusForEveryone() {
    return bool(uint8(stor6.field_208))
}

function token() {
    return tokenAddress
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isCrowdsaleOpen() {
    if uint8(stor6.field_216):
        return not bool(uint8(stor6.field_216))
    if block.timestamp < startTimestamp:
        return block.timestamp >= startTimestamp
    return block.timestamp <= startTimestamp + duration
}

function success() {
    require block.timestamp > startTimestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp < startTimestamp + duration:
            return 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
    stor6.field_216 % 1099511627776 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xe3470882 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return 1
}

function calculateTokenAmount(uint256 arg1) {
    require ext_code.size(rateOracleAddress)
    call rateOracleAddress.0x987cec61 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not uint8(stor6.field_208):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return ext_call.return_data[0]
    if block.timestamp > startTimestamp + (240 * 24 * 3600):
        return ext_call.return_data[0]
    if block.timestamp > startTimestamp + (120 * 24 * 3600):
        if not ext_call.return_data[0]:
            return (ext_call.return_data[0] * bonus3 / 100)
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * bonus3 / ext_call.return_data[0] == bonus3:
                return (ext_call.return_data[0] * bonus3 / 100)
    else:
        if block.timestamp > startTimestamp + (48 * 24 * 3600):
            if not ext_call.return_data[0]:
                return (ext_call.return_data[0] * bonus2 / 100)
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * bonus2 / ext_call.return_data[0] == bonus2:
                    return (ext_call.return_data[0] * bonus2 / 100)
        else:
            if not ext_call.return_data[0]:
                return (ext_call.return_data[0] * bonus1 / 100)
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * bonus1 / ext_call.return_data[0] == bonus1:
                    return (ext_call.return_data[0] * bonus1 / 100)
    revert
}

function buyTokens() payable {
    require not uint8(stor6.field_216)
    require block.timestamp >= startTimestamp
    require block.timestamp <= startTimestamp + duration
    require not uint8(stor0.field_160)
    require ext_code.size(rateOracleAddress)
    call rateOracleAddress.0x987cec61 with:
         gas gas_remaining - 710 wei
        args msg.value
    require ext_call.success
    if uint8(stor6.field_208):
        if block.timestamp > startTimestamp + (240 * 24 * 3600):
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require totalRaised + msg.value >= totalRaised
                totalRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if msg.value:
                    require msg.value
                    require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                require ext_call.return_data[0]
                require msg.value * ext_call.return_data[0] / ext_call.return_data[0] <= msg.value
                stor6.field_216 % 1099511627776 = 1
                require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) >= totalRaised
                totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value * ext_call.return_data[0] / ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) > 0:
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if block.timestamp > startTimestamp + (120 * 24 * 3600):
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require ext_call.return_data[0] * bonus3 / ext_call.return_data[0] == bonus3
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] >= ext_call.return_data[0] * bonus3 / 100:
                    require totalRaised + msg.value >= totalRaised
                    totalRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] * bonus3 / 100
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require ext_call.return_data[0] * bonus3 / 100
                    require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 <= msg.value
                    stor6.field_216 % 1099511627776 = 1
                    require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) >= totalRaised
                    totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) > 0:
                        call msg.sender with:
                           value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                if block.timestamp > startTimestamp + (48 * 24 * 3600):
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus2 / ext_call.return_data[0] == bonus2
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= ext_call.return_data[0] * bonus2 / 100:
                        require totalRaised + msg.value >= totalRaised
                        totalRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] * bonus2 / 100
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus2 / 100
                        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 <= msg.value
                        stor6.field_216 % 1099511627776 = 1
                        require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) >= totalRaised
                        totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) > 0:
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus1 / ext_call.return_data[0] == bonus1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= ext_call.return_data[0] * bonus1 / 100:
                        require totalRaised + msg.value >= totalRaised
                        totalRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] * bonus1 / 100
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus1 / 100
                        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 <= msg.value
                        stor6.field_216 % 1099511627776 = 1
                        require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) >= totalRaised
                        totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) > 0:
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require totalRaised + msg.value >= totalRaised
                totalRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if msg.value:
                    require msg.value
                    require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                require ext_call.return_data[0]
                require msg.value * ext_call.return_data[0] / ext_call.return_data[0] <= msg.value
                stor6.field_216 % 1099511627776 = 1
                require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) >= totalRaised
                totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value * ext_call.return_data[0] / ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) > 0:
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if block.timestamp > startTimestamp + (240 * 24 * 3600):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require totalRaised + msg.value >= totalRaised
                    totalRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require ext_call.return_data[0]
                    require msg.value * ext_call.return_data[0] / ext_call.return_data[0] <= msg.value
                    stor6.field_216 % 1099511627776 = 1
                    require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) >= totalRaised
                    totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value * ext_call.return_data[0] / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) > 0:
                        call msg.sender with:
                           value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                if block.timestamp > startTimestamp + (120 * 24 * 3600):
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus3 / ext_call.return_data[0] == bonus3
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= ext_call.return_data[0] * bonus3 / 100:
                        require totalRaised + msg.value >= totalRaised
                        totalRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] * bonus3 / 100
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus3 / 100
                        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 <= msg.value
                        stor6.field_216 % 1099511627776 = 1
                        require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) >= totalRaised
                        totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) > 0:
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    if block.timestamp > startTimestamp + (48 * 24 * 3600):
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus2 / ext_call.return_data[0] == bonus2
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= ext_call.return_data[0] * bonus2 / 100:
                            require totalRaised + msg.value >= totalRaised
                            totalRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0] * bonus2 / 100
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus2 / 100
                            require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 <= msg.value
                            stor6.field_216 % 1099511627776 = 1
                            require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) >= totalRaised
                            totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    else:
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus1 / ext_call.return_data[0] == bonus1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= ext_call.return_data[0] * bonus1 / 100:
                            require totalRaised + msg.value >= totalRaised
                            totalRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0] * bonus1 / 100
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus1 / 100
                            require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 <= msg.value
                            stor6.field_216 % 1099511627776 = 1
                            require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) >= totalRaised
                            totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
}

function _fallback() payable {
    require not uint8(stor6.field_216)
    require block.timestamp >= startTimestamp
    require block.timestamp <= startTimestamp + duration
    require not uint8(stor0.field_160)
    require ext_code.size(rateOracleAddress)
    call rateOracleAddress.0x987cec61 with:
         gas gas_remaining - 710 wei
        args msg.value
    require ext_call.success
    if uint8(stor6.field_208):
        if block.timestamp > startTimestamp + (240 * 24 * 3600):
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require totalRaised + msg.value >= totalRaised
                totalRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if msg.value:
                    require msg.value
                    require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                require ext_call.return_data[0]
                require msg.value * ext_call.return_data[0] / ext_call.return_data[0] <= msg.value
                stor6.field_216 % 1099511627776 = 1
                require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) >= totalRaised
                totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value * ext_call.return_data[0] / ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) > 0:
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if block.timestamp > startTimestamp + (120 * 24 * 3600):
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require ext_call.return_data[0] * bonus3 / ext_call.return_data[0] == bonus3
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] >= ext_call.return_data[0] * bonus3 / 100:
                    require totalRaised + msg.value >= totalRaised
                    totalRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] * bonus3 / 100
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require ext_call.return_data[0] * bonus3 / 100
                    require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 <= msg.value
                    stor6.field_216 % 1099511627776 = 1
                    require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) >= totalRaised
                    totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) > 0:
                        call msg.sender with:
                           value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                if block.timestamp > startTimestamp + (48 * 24 * 3600):
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus2 / ext_call.return_data[0] == bonus2
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= ext_call.return_data[0] * bonus2 / 100:
                        require totalRaised + msg.value >= totalRaised
                        totalRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] * bonus2 / 100
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus2 / 100
                        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 <= msg.value
                        stor6.field_216 % 1099511627776 = 1
                        require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) >= totalRaised
                        totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) > 0:
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus1 / ext_call.return_data[0] == bonus1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= ext_call.return_data[0] * bonus1 / 100:
                        require totalRaised + msg.value >= totalRaised
                        totalRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] * bonus1 / 100
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus1 / 100
                        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 <= msg.value
                        stor6.field_216 % 1099511627776 = 1
                        require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) >= totalRaised
                        totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) > 0:
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require totalRaised + msg.value >= totalRaised
                totalRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if msg.value:
                    require msg.value
                    require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                require ext_call.return_data[0]
                require msg.value * ext_call.return_data[0] / ext_call.return_data[0] <= msg.value
                stor6.field_216 % 1099511627776 = 1
                require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) >= totalRaised
                totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                call fundsWalletAddress with:
                   value msg.value * ext_call.return_data[0] / ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) > 0:
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if block.timestamp > startTimestamp + (240 * 24 * 3600):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require totalRaised + msg.value >= totalRaised
                    totalRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require ext_call.return_data[0]
                    require msg.value * ext_call.return_data[0] / ext_call.return_data[0] <= msg.value
                    stor6.field_216 % 1099511627776 = 1
                    require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) >= totalRaised
                    totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    call fundsWalletAddress with:
                       value msg.value * ext_call.return_data[0] / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) > 0:
                        call msg.sender with:
                           value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                if block.timestamp > startTimestamp + (120 * 24 * 3600):
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus3 / ext_call.return_data[0] == bonus3
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if ext_call.return_data[0] >= ext_call.return_data[0] * bonus3 / 100:
                        require totalRaised + msg.value >= totalRaised
                        totalRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0] * bonus3 / 100
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require ext_call.return_data[0] * bonus3 / 100
                        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 <= msg.value
                        stor6.field_216 % 1099511627776 = 1
                        require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) >= totalRaised
                        totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        call fundsWalletAddress with:
                           value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) > 0:
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    if block.timestamp > startTimestamp + (48 * 24 * 3600):
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus2 / ext_call.return_data[0] == bonus2
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= ext_call.return_data[0] * bonus2 / 100:
                            require totalRaised + msg.value >= totalRaised
                            totalRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0] * bonus2 / 100
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus2 / 100
                            require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 <= msg.value
                            stor6.field_216 % 1099511627776 = 1
                            require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) >= totalRaised
                            totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus2 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                    else:
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus1 / ext_call.return_data[0] == bonus1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if ext_call.return_data[0] >= ext_call.return_data[0] * bonus1 / 100:
                            require totalRaised + msg.value >= totalRaised
                            totalRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0] * bonus1 / 100
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require ext_call.return_data[0] * bonus1 / 100
                            require msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 <= msg.value
                            stor6.field_216 % 1099511627776 = 1
                            require totalRaised + (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) >= totalRaised
                            totalRaised += msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            call fundsWalletAddress with:
                               value msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) > 0:
                                call msg.sender with:
                                   value msg.value - (msg.value * ext_call.return_data[0] / ext_call.return_data[0] * bonus1 / 100) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
}



}
