contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 totalToken;
uint256 startingTime;
uint256 nStages;
uint256 period;
uint256 vestInterval;
uint8 stor7; offset 160
uint128 stor7; offset 160
address beneficiaryAddress;

function nStages() {
    return nStages
}

function beneficiary() {
    return beneficiaryAddress
}

function startingTime() {
    return startingTime
}

function totalToken() {
    return totalToken
}

function owner() {
    return owner
}

function period() {
    return period
}

function vestInterval() {
    return vestInterval
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function revoke() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(96, 0, stor7.field_160) = 1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) {
    require msg.sender == owner
    require not tokenAddress
    require arg3 > 0
    require arg4 > 0
    require arg5 > 0
    require arg3
    require not arg4 % arg3
    require arg5
    require not arg4 % arg5
    tokenAddress = arg1
    startingTime = arg2
    nStages = arg3
    period = arg4
    vestInterval = arg5
    beneficiaryAddress = arg6
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalToken = ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), totalToken
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimable() {
    if block.timestamp - startingTime <= 0:
        return 0
    require vestInterval
    if not block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval:
        if nStages:
            if 0 < period / nStages:
                return 0
            if 0 <= period:
                if not totalToken:
                    if period:
                        if 0 / period <= totalToken:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if totalToken - (0 / period) <= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - totalToken + (0 / period))
                else:
                    if totalToken:
                        if not 0 / totalToken:
                            if period:
                                if 0 / period <= totalToken:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if totalToken - (0 / period) <= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - totalToken + (0 / period))
            else:
                if not totalToken:
                    if period:
                        if 0 / period <= totalToken:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if totalToken - (0 / period) <= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - totalToken + (0 / period))
                else:
                    if totalToken:
                        if totalToken * period / totalToken == period:
                            if period:
                                if totalToken * period / period <= totalToken:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if totalToken - (totalToken * period / period) <= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - totalToken + (totalToken * period / period))
    else:
        if block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval:
            if block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval == vestInterval:
                if nStages:
                    if block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval < period / nStages:
                        return 0
                    if block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval <= period:
                        if not totalToken:
                            if period:
                                if 0 / period <= totalToken:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if totalToken - (0 / period) <= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - totalToken + (0 / period))
                        else:
                            if totalToken:
                                if totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / totalToken == block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval:
                                    if period:
                                        if totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period <= totalToken:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x70a08231 with:
                                                 gas gas_remaining wei
                                                args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if totalToken - (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period) <= ext_call.return_data[0]:
                                                return (ext_call.return_data[0] - totalToken + (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period))
                    else:
                        if not totalToken:
                            if period:
                                if 0 / period <= totalToken:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if totalToken - (0 / period) <= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - totalToken + (0 / period))
                        else:
                            if totalToken:
                                if totalToken * period / totalToken == period:
                                    if period:
                                        if totalToken * period / period <= totalToken:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x70a08231 with:
                                                 gas gas_remaining wei
                                                args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if totalToken - (totalToken * period / period) <= ext_call.return_data[0]:
                                                return (ext_call.return_data[0] - totalToken + (totalToken * period / period))
    revert
}

function claim() {
    require not uint8(stor7.field_160)
    require block.timestamp - startingTime > 0
    require vestInterval
    if not block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval:
        require nStages
        require 0 >= period / nStages
        if 0 <= period:
            if totalToken:
                require totalToken
                require not 0 / totalToken
            require period
            require 0 / period <= totalToken
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require totalToken - (0 / period) <= ext_call.return_data[0]
            require ext_call.return_data[0] - totalToken + (0 / period) > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0] - totalToken + (0 / period)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Claimed((ext_call.return_data[0] - totalToken + (0 / period)));
        else:
            if not totalToken:
                require period
                require 0 / period <= totalToken
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require totalToken - (0 / period) <= ext_call.return_data[0]
                require ext_call.return_data[0] - totalToken + (0 / period) > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0] - totalToken + (0 / period)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claimed((ext_call.return_data[0] - totalToken + (0 / period)));
            else:
                require totalToken
                require totalToken * period / totalToken == period
                require period
                require totalToken * period / period <= totalToken
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require totalToken - (totalToken * period / period) <= ext_call.return_data[0]
                require ext_call.return_data[0] - totalToken + (totalToken * period / period) > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0] - totalToken + (totalToken * period / period)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claimed((ext_call.return_data[0] - totalToken + (totalToken * period / period)));
    else:
        require block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval
        require block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval == vestInterval
        require nStages
        require block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval >= period / nStages
        if block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval <= period:
            if not totalToken:
                require period
                require 0 / period <= totalToken
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require totalToken - (0 / period) <= ext_call.return_data[0]
                require ext_call.return_data[0] - totalToken + (0 / period) > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0] - totalToken + (0 / period)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claimed((ext_call.return_data[0] - totalToken + (0 / period)));
            else:
                require totalToken
                require totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / totalToken == block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval
                require period
                require totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period <= totalToken
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require totalToken - (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period) <= ext_call.return_data[0]
                require ext_call.return_data[0] - totalToken + (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period) > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0] - totalToken + (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claimed((ext_call.return_data[0] - totalToken + (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / vestInterval * vestInterval / period)));
        else:
            if not totalToken:
                require period
                require 0 / period <= totalToken
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require totalToken - (0 / period) <= ext_call.return_data[0]
                require ext_call.return_data[0] - totalToken + (0 / period) > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0] - totalToken + (0 / period)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claimed((ext_call.return_data[0] - totalToken + (0 / period)));
            else:
                require totalToken
                require totalToken * period / totalToken == period
                require period
                require totalToken * period / period <= totalToken
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require totalToken - (totalToken * period / period) <= ext_call.return_data[0]
                require ext_call.return_data[0] - totalToken + (totalToken * period / period) > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0] - totalToken + (totalToken * period / period)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claimed((ext_call.return_data[0] - totalToken + (totalToken * period / period)));
}



}
